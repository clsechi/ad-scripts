# ****************************************************************
		
# Scripted By: Carlos Sechi (carlos.sechi@hotmail.com)
# Creation Date: 20/10/2015
# Modification Date: 20/10/2015

# ****************************************************************

# ARQUIVO UTILIZADO PARA VERIFICAR A ESTABILIDADE DA REDE

# ****************************************************************

#NOME DO COMPUTADOR

$ComputerName = hostname

#CRIANDO VARIAVEL COM A DATA

$date = Get-Date -Format "HH:mm:ss dd/MM/yyyy"

$NameDate = "Hour (UTC -2) = " + $date

#CRIANDO NOME DO ARQUIVO COM A DATA E HORA DA EXECUCAO DO PS1

[string]$FileName = "$ComputerName ", (Get-Date).Hour, "h ",(Get-Date).Minute, "m ," ,(Get-Date).Day,"-",(Get-Date).Month,"-",(Get-Date).Year

#CRIANDO FUNCAO COM OS COMANDOS

Function Testes {

#TESTES {PRIVATE INFORMA}

ping {PRIVATE INFORMATION} /l 1400 /n 50 

tracert {PRIVATE INFORMATION}

pathping {PRIVATE INFORMATION}

#TESTES {PRIVATE INFORMATION}

ping {PRIVATE INFORMATION} /l 1400 /n 50

tracert {PRIVATE INFORMATION}

pathping {PRIVATE INFORMATION}

}

#New-Item -ItemType Directory -path C:\SpeedTests\ -ErrorAction Ignore

#ADICIANDO A DATA AO INICIO DO ARQUIVO DE SAIDA

$NameDate >> \\{PRIVATE INFORMATION}\Speedtests\$FileName.txt

Write-Host "
POR FAvOR AGUARDE..."

#CHAMANDO A FUNCAO E ENVIANDO OS DADOS DIRETAMTENTE PARA O ARQUIVO

Testes >> \\{PRIVATE INFORMATION}\Speedtests\$FileName.txt