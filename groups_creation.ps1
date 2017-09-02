# ****************************************************************
		
# Scripted By: Carlos Sechi (carlos.sechi@hotmail.com)
# Creation Date: 05/10/2015
# Modification Date: 08/10/2015

# ****************************************************************

# ARQUIVO UTILIZADO PARA CRIAR GRUPOS NO AD

# ESSE SCRIPT ADICIONA SOMENTE GRUPOS EM {PRIVATE INFORMATION}

# CHAME ESSE SCIPT COM OS ARGUMENTOS ESPECIFICOS DE NOME DO GUPO, DESCRIÇÃO DO GRUPO, OWNER DO GRUPO E USUARIOS NO GRUPO

# EXEMPLO ABAIXO

# .\groups_creation.ps1	 AMS_BR-SPL_GROUPS_PM_PROJXX_XXXXX_RW	 {PRIVATE INFORMATION}

# EXISTE UM ESPAÇO (ESPAÇO MESMO) ANTES DE CADA ARGUMENTO, ISSO É NECESSARIO PARA O POWERSHELL LER O SCRIPT CORRETEMENTE

# ****************************************************************

#QUANTIDADE DE USUARIOS

$QuantUsers = $args.Length

#NOME DO GRUPO

$NomeGrupo = $args[0]

#DESCRICAO DO GRUPO

$DescNomeGrupo = $args[1]

$OwnerFinal = $args[2] + " " + $args[3] + " " + $args[4]

$DescNomeGrupoandOwner = $DescNomeGrupo + " - " + $OwnerFinal

#USANDO O SCRIPT CORRETO, CORFORME A QUANTIDADE DE USUARIOS

Switch ($QuantUsers){
#QUANTIDADE MINIMA DE VARIAVEIS = 5

#GRUPO SEM USUARIOS
5{
dsadd group "{PRIVATE INFORMATION}" -secgrp yes -scope u -desc "$DescNomeGrupoandOwner"
}

#6 VARIAVEIS CASO ESTEJA CRIANDO UM GRUPO COM 1 USARIOS
6{
dsadd group "{PRIVATE INFORMATION}" -secgrp yes -scope u -desc "$DescNomeGrupoandOwner" -members $args[5]
}

#7 VARIAVEIS CASO ESTEJA CRIANDO UM GRUPO COM 2 USARIOS
7 {
dsadd group "{PRIVATE INFORMATION}" -secgrp yes -scope u -desc "$DescNomeGrupoandOwner" -members $args[5] $args[6]
}

#3 USUARIOS
8 {
dsadd group "{PRIVATE INFORMATION}" -secgrp yes -scope u -desc "$DescNomeGrupoandOwner" -members $args[5] $args[6] $args[7]
}

#4 USUARIOS
9 {
dsadd group "{PRIVATE INFORMATION}" -secgrp yes -scope u -desc "$DescNomeGrupoandOwner" -members $args[5] $args[6] $args[7] $args[8]
}

#5 USUARIOS
10 {
dsadd group "{PRIVATE INFORMATION}" -secgrp yes -scope u -desc "$DescNomeGrupoandOwner" -members $args[5] $args[6] $args[7] $args[8] $args[9]
}

#6 USUARIOS
11{
dsadd group "{PRIVATE INFORMATION}" -secgrp yes -scope u -desc "$DescNomeGrupoandOwner" -members $args[5] $args[6] $args[7] $args[8] $args[9] $args[10]
}

#7 USUARIOS
12{
dsadd group "{PRIVATE INFORMATION}" -secgrp yes -scope u -desc "$DescNomeGrupoandOwner" -members $args[5] $args[6] $args[7] $args[8] $args[9] $args[10] $args[11]
}

#8 USUARIOS
13{
dsadd group "{PRIVATE INFORMATION}" -secgrp yes -scope u -desc "$DescNomeGrupoandOwner" -members $args[5] $args[6] $args[7] $args[8] $args[9] $args[10] $args[11] $args[12]
}

#9 USUARIOS
14{
dsadd group "{PRIVATE INFORMATION}" -secgrp yes -scope u -desc "$DescNomeGrupoandOwner" -members $args[5] $args[6] $args[7] $args[8] $args[9] $args[10] $args[11] $args[12] $args[13]
}

#10 USUARIOS
15{
dsadd group "{PRIVATE INFORMATION}" -secgrp yes -scope u -desc "$DescNomeGrupoandOwner" -members $args[5] $args[6] $args[7] $args[8] $args[9] $args[10] $args[11] $args[12] $args[13] $args[14]
}

#11 USUARIOS
16{
dsadd group "{PRIVATE INFORMATION}" -secgrp yes -scope u -desc "$DescNomeGrupoandOwner" -members $args[5] $args[6] $args[7] $args[8] $args[9] $args[10] $args[11] $args[12] $args[13] $args[14] $args[15]
}

#12 USUARIOS
17{
dsadd group "{PRIVATE INFORMATION}" -secgrp yes -scope u -desc "$DescNomeGrupoandOwner" -members $args[5] $args[6] $args[7] $args[8] $args[9] $args[10] $args[11] $args[12] $args[13] $args[14] $args[15] $args[16]
}

#13 USUARIOS
18{
dsadd group "{PRIVATE INFORMATION}" -secgrp yes -scope u -desc "$DescNomeGrupoandOwner" -members $args[5] $args[6] $args[7] $args[8] $args[9] $args[10] $args[11] $args[12] $args[13] $args[14] $args[15] $args[16] $args[17]
}

#14 USUARIOS
19{
dsadd group "{PRIVATE INFORMATION}" -secgrp yes -scope u -desc "$DescNomeGrupoandOwner" -members $args[5] $args[6] $args[7] $args[8] $args[9] $args[10] $args[11] $args[12] $args[13] $args[14] $args[15] $args[16] $args[17] $args[18]
}

#15 USUARIOS
20{
dsadd group "{PRIVATE INFORMATION}" -secgrp yes -scope u -desc "$DescNomeGrupoandOwner" -members $args[5] $args[6] $args[7] $args[8] $args[9] $args[10] $args[11] $args[12] $args[13] $args[14] $args[15] $args[16] $args[17] $args[18] $args[19]
}

#16 USUARIOS
21{
dsadd group "{PRIVATE INFORMATION}" -secgrp yes -scope u -desc "$DescNomeGrupoandOwner" -members $args[5] $args[6] $args[7] $args[8] $args[9] $args[10] $args[11] $args[12] $args[13] $args[14] $args[15] $args[16] $args[17] $args[18] $args[19] $args[20]
}

#17 USUARIOS
22{
dsadd group "{PRIVATE INFORMATION}" -secgrp yes -scope u -desc "$DescNomeGrupoandOwner" -members $args[5] $args[6] $args[7] $args[8] $args[9] $args[10] $args[11] $args[12] $args[13] $args[14] $args[15] $args[16] $args[17] $args[18] $args[19] $args[20] $args[21]
}

#18 USUARIOS
23{
dsadd group "{PRIVATE INFORMATION}" -secgrp yes -scope u -desc "$DescNomeGrupoandOwner" -members $args[5] $args[6] $args[7] $args[8] $args[9] $args[10] $args[11] $args[12] $args[13] $args[14] $args[15] $args[16] $args[17] $args[18] $args[19] $args[20] $args[21] $args[22]
}

#19 USUARIOS
24{
dsadd group "{PRIVATE INFORMATION}" -secgrp yes -scope u -desc "$DescNomeGrupoandOwner" -members $args[5] $args[6] $args[7] $args[8] $args[9] $args[10] $args[11] $args[12] $args[13] $args[14] $args[15] $args[16] $args[17] $args[18] $args[19] $args[20] $args[21] $args[22] $args[23]
}

#20 USUARIOS
25{
dsadd group "{PRIVATE INFORMATION}" -secgrp yes -scope u -desc "$DescNomeGrupoandOwner" -members $args[5] $args[6] $args[7] $args[8] $args[9] $args[10] $args[11] $args[12] $args[13] $args[14] $args[15] $args[16] $args[17] $args[18] $args[19] $args[20] $args[21] $args[22] $args[23] $args[24]
}

#21 USUARIOS
26{
dsadd group "{PRIVATE INFORMATION}" -secgrp yes -scope u -desc "$DescNomeGrupoandOwner" -members $args[5] $args[6] $args[7] $args[8] $args[9] $args[10] $args[11] $args[12] $args[13] $args[14] $args[15] $args[16] $args[17] $args[18] $args[19] $args[20] $args[21] $args[22] $args[23] $args[24] $args[25]
}

#22 USUARIOS
27{
dsadd group "{PRIVATE INFORMATION}" -secgrp yes -scope u -desc "$DescNomeGrupoandOwner" -members $args[5] $args[6] $args[7] $args[8] $args[9] $args[10] $args[11] $args[12] $args[13] $args[14] $args[15] $args[16] $args[17] $args[18] $args[19] $args[20] $args[21] $args[22] $args[23] $args[24] $args[25] $args[26]
}

#CASO ACONTECA ALGUM ERRO, ELE CRIA O GRUPO SEM OS USUARIOS
default {
ECHO "NAO FOI POSSIVEL LER A QUANTDADE DE USUARIOS, GRUPO CRIADO SEM USUARIOS!"
dsadd group "{PRIVATE INFORMATION}" -secgrp yes -scope u -desc "$DescNomeGrupoandOwner"
}

}