
# Converte o valor após o caractere arroba '@'
# em um valor hexadecimal de 2 dígitos (8 bits)
from itertools import count


def converteArroba(line):
    line = line.split('@')
    bit9 = ""
    print(line[1])
    print(line[1].isnumeric())
    if line[1].isnumeric():
        if int(line[1]) > 255:
            line[1] = hex(int(line[1])-256)[2:].upper().zfill(2)
            bit9 = "&'1'"
        else:
            line[1] = hex(int(line[1]))[2:].upper().zfill(2)
            bit9 = "&'0'"
    else:
        # print(labels)
        line[1] = labels[line[1]]
        if int(line[1], 16) > 255:
            bit9 = "&'1'"
        else:
            bit9 = "&'0'"
    return line[1], bit9

# Converte o valor após o caractere cifrão'$'
# em um valor hexadecimal de 2 dígitos (8 bits)


def converteCifrao(line):
    line = line.split('$')
    line[1] = hex(int(line[1]))[2:].upper().zfill(2)
    return line[1]

# Define a string que representa o comentário
# a partir do caractere cerquilha '#'


def defineComentario(line):
    if '#' in line:
        line = line.split('#')
        line = line[0] + "\t#" + line[1]
        return line
    else:
        return line

# Remove o comentário a partir do caractere cerquilha '#',
# deixando apenas a instrução


def defineInstrucao(line):
    line = line.split('#')
    line = line[0]
    return line

# Consulta o dicionário e "converte" o mnemônico em
# seu respectivo valor em hexadecimal


def trataMnemonico(line):
    line = line.replace("\n", "")  # Remove o caracter de final de linha
    line = line.replace("\t", "")  # Remove o caracter de tabulacao
    line = line.split(' ')
    if line[0] in mne.keys():
        line[0] = mne[line[0]]
    else:
        line[0] = "0"
    line = "".join(line)
    return line


assembly = 'ASM.txt'  # Arquivo de entrada que contém o assembly
destinoBIN = 'BIN.txt'  # Arquivo de saída que contém o binário formatado para VHDL

# definição dos mnemônicos e seus
# respectivos OPCODEs (em Hexadecimal)
mne = {
    "NOP":   "0",
    "LDA":   "1",
    "SOMA":  "2",
    "SUB":   "3",
    "LDI":   "4",
    "STA":   "5",
    "JMP":   "6",
    "JEQ":   "7",
    "CEQ":   "8",
    "JSR":   "9",
    "RET":   "A",
}

labels = {}

with open(assembly, "r") as f:  # Abre o arquivo ASM
    lines = f.readlines()  # Verifica a quantidade de linhas


with open(destinoBIN, "w") as f:  # Abre o destino BIN

    cont = 0  # Cria uma variável para contagem
    instruBit9 = "&'0'"

    for line in lines:

        # Verifica se a linha começa com alguns caracteres invalidos ('\n' ou ' ' ou '#')
        if (line.startswith('\n') or line.startswith(' ') or line.startswith('#')):
            line = line.replace("\n", "")
            print("-- Sintaxe invalida" + ' na Linha: ' +
                  ' --> (' + line + ')')  # Print apenas para debug

        # Se a linha for válida para conversão, executa
        else:
            instrucaoLine = defineInstrucao(line).replace(
                "\n", "")  # Define a instrução. Ex: JSR @14

            instrucaoLine = instrucaoLine.replace("\n", "")
            instrucaoLine = instrucaoLine.replace(" ", "")
            if('@' not in instrucaoLine) and ('$' not in instrucaoLine) and (instrucaoLine not in mne.keys()):
                if cont < 256:
                    labels[instrucaoLine] = str(hex(cont)[2:].upper().zfill(2))
                else:
                    labels[instrucaoLine] = str(
                        hex(cont-256)[2:].upper().zfill(2))

        cont += 1

    cont = 0

    for line in lines:

        # Verifica se a linha começa com alguns caracteres invalidos ('\n' ou ' ' ou '#')
        if (line.startswith('\n') or line.startswith(' ') or line.startswith('#')):
            line = line.replace("\n", "")
            print("-- Sintaxe invalida" + ' na Linha: ' +
                  ' --> (' + line + ')')  # Print apenas para debug

        # Se a linha for válida para conversão, executa
        else:

            # Exemplo de linha => 1. JSR @14 #comentario1
            # Define o comentário da linha. Ex: #comentario1
            comentarioLine = defineComentario(line).replace("\n", "")
            instrucaoLine = defineInstrucao(line).replace(
                "\n", "")  # Define a instrução. Ex: JSR @14

            # Trata o mnemonico. Ex(JSR @14): x"9" @14
            instrucaoLine = trataMnemonico(instrucaoLine)
            instruMne = instrucaoLine[0]

            if '@' in instrucaoLine:  # Se encontrar o caractere arroba '@'
                # converte o número após o caractere Ex(JSR @14): x"9" x"0E"
                instrucaoLine, instruBit9 = converteArroba(instrucaoLine)

            elif '$' in instrucaoLine:  # Se encontrar o caractere cifrao '$'
                # converte o número após o caractere Ex(LDI $5): x"4" x"05"
                instrucaoLine = converteCifrao(instrucaoLine)

            else:  # Senão, se a instrução nao possuir nenhum imediator, ou seja, nao conter '@' ou '$'
                instrucaoLine = instrucaoLine.replace(
                    "\n", "")  # Remove a quebra de linha
                # Acrescenta o valor x"00". Ex(RET): x"A" x"00"
                instruBit9 = "&'0'"
                instrucaoLine = "00"

            line = 'tmp(' + str(cont) + ') := x"' + instruMne + '"' + instruBit9 + '&x"' + \
                instrucaoLine + '";\t-- ' + comentarioLine + '\n'  # Formata para o arquivo BIN
            # Entrada => 1. JSR @14 #comentario1
            # Saída =>   1. tmp(0) := x"90E";	-- JSR @14 	#comentario1

            cont += 1  # Incrementa a variável de contagem, utilizada para incrementar as posições de memória no VHDL
            f.write(line)  # Escreve no arquivo BIN.txt

            print(line, end='')  # Print apenas para debug
