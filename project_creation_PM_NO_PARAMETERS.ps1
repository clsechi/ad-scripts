﻿# ****************************************************************
		
# Scripted By: Carlos Sechi (carlos.sechi@hotmail.com)
# Creation Date: 09/10/2015
# Modification Date: 27/07/2016

# ****************************************************************

# ARQUIVO UTILIZADO PARA CRIAR PROJETOS PARA O DEPARTAMENTO DO PM

# ESSE SCRIPT PRECISA TER O ENDERCO ({PRIVATE INFORMATION}) MAPEADO NO COMPUTADOR PARA FUNCIONAR CORRETEMENTE

# SOMENTE UM ADMSIDOM TEM ACESSO AO ENDERECO ACIMA

# PASTAS COM GRUPOS DE SOMENTE LEITURA SAO NECESSARIAS PARA QUE OS USUARIOS POSSAM CHEGAR ATÉ AS PASTAS FILHOS

# EXECUTE O ARQUIVE DIRETAMENTE PARA UM ARQUIVO .LOG PARA REVISÃO FUTURA

# ****************************************************************

#O LOCAL ONDE O PROJETO SERA CRIADO

#NEW SERVER = {PRIVATE INFORMATION}

#OLD SERVER = {PRIVATE INFORMATION}

#CRIE A PASTA DO ANO DO PROJETO MANUALMENTE E APLIQUE PERMISSAO DE SOMENTE LEITURA PARA O GRUPO =  {PRIVATE INFORMATION}_GROUPS_PM_PROJXX_RO
#APLICAR PERMISSAO SOMENTE A PASTA ATUAL UTILIZANDO AS OPÇOES AVANCADAS

$Local = "{PRIVATE INFORMATION}\BR-SPL\Groups\PM\PROJ17"

#MUDE A QUANTIDADE DE PROJETOS CRIADOS

$QuantProjects = 100

#NOME DO PRIMEIRO PROJETO

$ProjectName = 56000

#CRIANDO FUNCAO PRE_CONTRACTING

Function Function_PRE_CONTRACTING {

#CRIANDO PASTA PRE_CONTRACTING

New-Item -ItemType Directory -Path $Local\$ProjectName\PRE_CONTRACTING

$PRE_CONTRACTING = "$Local\$ProjectName\PRE_CONTRACTING"

#APLICANDO PERMISSAO DE SOMENTE LEITURA A PASTA PRE_CONTRACTING

icacls $Local\$ProjectName\PRE_CONTRACTING /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_RO:(RX)" /c

#PASTAS EM PRE_CONTRACTING

#CRIANDO PASTA RFQ

New-Item -ItemType Directory -Path $PRE_CONTRACTING\RFQ

#APLICANDO PERMISSOES PASTA RFQ 

icacls $PRE_CONTRACTING\RFQ /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_RFQ_RO:(OI)(CI)(RX)" /c

icacls $PRE_CONTRACTING\RFQ /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_RFQ_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA CONSTING_TABLE

New-Item -ItemType Directory -Path $PRE_CONTRACTING\CONSTING_TABLE

#APLICANDO PERMISSOES PASTA CONSTING_TABLE 

icacls $PRE_CONTRACTING\CONSTING_TABLE /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_COSTING_TABLE_RO:(OI)(CI)(RX)" /c

icacls $PRE_CONTRACTING\CONSTING_TABLE /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_COSTING_TABLE_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA OFFER

New-Item -ItemType Directory -Path $PRE_CONTRACTING\OFFER

#APLICANDO PERMISSOES PASTA OFFER

icacls $PRE_CONTRACTING\OFFER /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_OFFER_RO:(OI)(CI)(RX)" /c

icacls $PRE_CONTRACTING\OFFER /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_OFFER_Rw:(OI)(CI)(M)" /c

#CRIANDO PASTA V_GRAFIC

New-Item -ItemType Directory -Path $PRE_CONTRACTING\V_GRAFIC

#APLICANDO PERMISSOES PASTA V_GRAFIC

icacls $PRE_CONTRACTING\V_GRAFIC /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_V_GRAFIC_RO:(OI)(CI)(RX)" /c

icacls $PRE_CONTRACTING\V_GRAFIC /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_V_GRAFIC_Rw:(OI)(CI)(M)" /c

#CRIANDO PASTA DRAWINGS

New-Item -ItemType Directory -Path $PRE_CONTRACTING\DRAWINGS

#APLICANDO PERMISSOES PASTA DRAWINGS

icacls $PRE_CONTRACTING\DRAWINGS /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_DRAWINGS_RO:(OI)(CI)(RX)" /c

icacls $PRE_CONTRACTING\DRAWINGS /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_DRAWINGS_Rw:(OI)(CI)(M)" /c

#CRIANDO PASTA LAYOUT

New-Item -ItemType Directory -Path $PRE_CONTRACTING\LAYOUT

#APLICANDO PERMISSOES PASTA LAYOUT

icacls $PRE_CONTRACTING\LAYOUT /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_LAYOUT_RO:(OI)(CI)(RX)" /c

icacls $PRE_CONTRACTING\LAYOUT /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_LAYOUT_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA UTILITY_CONSUMPTION

New-Item -ItemType Directory -Path $PRE_CONTRACTING\UTILITY_CONSUMPTION

#APLICANDO PERMISSOES PASTA UTILITY_CONSUMPTION

icacls $PRE_CONTRACTING\UTILITY_CONSUMPTION /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_UTILITY_CONSUMPTION_RO:(OI)(CI)(RX)" /c

icacls $PRE_CONTRACTING\UTILITY_CONSUMPTION /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_UTILITY_CONSUMPTION_Rw:(OI)(CI)(M)" /c

#CRIANDO PASTA INTERNAL_OFFER

New-Item -ItemType Directory -Path $PRE_CONTRACTING\INTERNAL_OFFER

#APLICANDO PERMISSOES PASTA INTERNAL_OFFER

icacls $PRE_CONTRACTING\INTERNAL_OFFER /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_INTERNAL_OFFER_RO:(OI)(CI)(RX)" /c

icacls $PRE_CONTRACTING\INTERNAL_OFFER /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_INTERNAL_OFFER_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA CUSTOMER_SPECIFICATION

New-Item -ItemType Directory -Path $PRE_CONTRACTING\CUSTOMER_SPECIFICATION

#APLICANDO PERMISSOES PASTA CUSTOMER_SPECIFICATION

icacls $PRE_CONTRACTING\CUSTOMER_SPECIFICATION /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_CUSTOMER_SPECIFICATION_RO:(OI)(CI)(RX)" /c

icacls $PRE_CONTRACTING\CUSTOMER_SPECIFICATION /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_CUSTOMER_SPECIFICATION_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA PO_AND_LOI

New-Item -ItemType Directory -Path $PRE_CONTRACTING\PO_AND_LOI

#APLICANDO PERMISSOES PASTA PO_AND_LOI

icacls $PRE_CONTRACTING\PO_AND_LOI /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_PO_AND_LOI_RO:(OI)(CI)(RX)" /c

icacls $PRE_CONTRACTING\PO_AND_LOI /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_PO_AND_LOI_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA MOM

New-Item -ItemType Directory -Path $PRE_CONTRACTING\MOM

#APLICANDO PERMISSOES PASTA MOM

icacls $PRE_CONTRACTING\MOM /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_MOM_RO:(OI)(CI)(RX)" /c

icacls $PRE_CONTRACTING\MOM /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_MOM_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA SCHEDULE

New-Item -ItemType Directory -Path $PRE_CONTRACTING\SCHEDULE

#APLICANDO PERMISSOES PASTA SCHEDULE

icacls $PRE_CONTRACTING\SCHEDULE /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_SCHEDULE_RO:(OI)(CI)(RX)" /c

icacls $PRE_CONTRACTING\SCHEDULE /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_SCHEDULE_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA PRESENTATION

New-Item -ItemType Directory -Path $PRE_CONTRACTING\PRESENTATION

#APLICANDO PERMISSOES PASTA PRESENTATION

icacls $PRE_CONTRACTING\PRESENTATION /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_PRESENTATION_RO:(OI)(CI)(RX)" /c

icacls $PRE_CONTRACTING\PRESENTATION /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_PRESENTATION_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA RISK_ASSESSMENT

New-Item -ItemType Directory -Path $PRE_CONTRACTING\RISK_ASSESSMENT

#APLICANDO PERMISSOES PASTA RISK_ASSESSMENT

icacls $PRE_CONTRACTING\RISK_ASSESSMENT /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_RISK_ASSESSMENT_RO:(OI)(CI)(RX)" /c

icacls $PRE_CONTRACTING\RISK_ASSESSMENT /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_RISK_ASSESSMENT_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA LINE_ENGINEERING

New-Item -ItemType Directory -Path $PRE_CONTRACTING\LINE_ENGINEERING

#APLICANDO PERMISSOES PASTA LINE_ENGINEERING

icacls $PRE_CONTRACTING\LINE_ENGINEERING /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_LINE_ENGINEERING_RO:(OI)(CI)(RX)" /c

icacls $PRE_CONTRACTING\LINE_ENGINEERING /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_LINE_ENGINEERING_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA PROJECT_FOLDER

New-Item -ItemType Directory -Path $PRE_CONTRACTING\PROJECT_FOLDER

#APLICANDO PERMISSOES PASTA PROJECT_FOLDER

icacls $PRE_CONTRACTING\PROJECT_FOLDER /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_PROJECT_FOLDER_RO:(OI)(CI)(RX)" /c

icacls $PRE_CONTRACTING\PROJECT_FOLDER /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_PROJECT_FOLDER_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA GENERAL

New-Item -ItemType Directory -Path $PRE_CONTRACTING\GENERAL

#APLICANDO PERMISSOES PASTA GENERAL

icacls $PRE_CONTRACTING\GENERAL /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_GENERAL_RO:(OI)(CI)(RX)" /c

icacls $PRE_CONTRACTING\GENERAL /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PRE_CONTRACTING_GENERAL_RW:(OI)(CI)(M)" /c

}

#CRIANDO FUNCAO PROJECT_EXECUTION

Function Function_PROJECT_EXECUTION {

#CRIANDO PASTA PROJECT_EXECUTION

New-Item -ItemType Directory -Path $Local\$ProjectName\PROJECT_EXECUTION

$PROJECT_EXECUTION = "$Local\$ProjectName\PROJECT_EXECUTION"

#APLICANDO PERMISSAO DE SOMENTE LEITURA A PASTA PROJECT_EXECUTION

icacls $Local\$ProjectName\PROJECT_EXECUTION /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_RO:(RX)" /c

#PASTAS EM PROJECT_EXECUTION

#CRIANDO PASTA SCHEDULE

New-Item -ItemType Directory -Path $PROJECT_EXECUTION\SCHEDULE

#APLICANDO PERMISSOES PASTA SCHEDULE

icacls $PROJECT_EXECUTION\SCHEDULE /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_SCHEDULE_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_EXECUTION\SCHEDULE /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_SCHEDULE_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA RISK_ASSESSMENT

New-Item -ItemType Directory -Path $PROJECT_EXECUTION\RISK_ASSESSMENT

#APLICANDO PERMISSOES PASTA RISK_ASSESSMENT

icacls $PROJECT_EXECUTION\RISK_ASSESSMENT /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_RISK_ASSESSMENT_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_EXECUTION\RISK_ASSESSMENT /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_RISK_ASSESSMENT_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA CONTRACT

New-Item -ItemType Directory -Path $PROJECT_EXECUTION\CONTRACT

#APLICANDO PERMISSOES PASTA CONTRACT

icacls $PROJECT_EXECUTION\CONTRACT /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_CONTRACT_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_EXECUTION\CONTRACT /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_CONTRACT_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA ADDON

New-Item -ItemType Directory -Path $PROJECT_EXECUTION\ADDON

#APLICANDO PERMISSOES PASTA ADDON

icacls $PROJECT_EXECUTION\ADDON /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_ADDON_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_EXECUTION\ADDON /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_ADDON_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA PROJECT_BOOK

New-Item -ItemType Directory -Path $PROJECT_EXECUTION\PROJECT_BOOK

#APLICANDO PERMISSOES PASTA PROJECT_BOOK

icacls $PROJECT_EXECUTION\PROJECT_BOOK /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_PROJECT_BOOK_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_EXECUTION\PROJECT_BOOK /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_PROJECT_BOOK_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA DRAWINGS

New-Item -ItemType Directory -Path $PROJECT_EXECUTION\DRAWINGS

#APLICANDO PERMISSOES PASTA DRAWINGS

icacls $PROJECT_EXECUTION\DRAWINGS /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_DRAWINGS_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_EXECUTION\DRAWINGS /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_DRAWINGS_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA BOOKLET

New-Item -ItemType Directory -Path $PROJECT_EXECUTION\BOOKLET

#APLICANDO PERMISSOES PASTA BOOKLET

icacls $PROJECT_EXECUTION\BOOKLET /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_BOOKLET_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_EXECUTION\BOOKLET /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_BOOKLET_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA MOM

New-Item -ItemType Directory -Path $PROJECT_EXECUTION\MOM

#APLICANDO PERMISSOES PASTA MOM

icacls $PROJECT_EXECUTION\MOM /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_MOM_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_EXECUTION\MOM /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_MOM_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA INTERNAL_OFFER

New-Item -ItemType Directory -Path $PROJECT_EXECUTION\INTERNAL_OFFER

#APLICANDO PERMISSOES PASTA INTERNAL_OFFER

icacls $PROJECT_EXECUTION\INTERNAL_OFFER /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_INTERNAL_OFFER_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_EXECUTION\INTERNAL_OFFER /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_INTERNAL_OFFER_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA COSTING_TABLE

New-Item -ItemType Directory -Path $PROJECT_EXECUTION\COSTING_TABLE

#APLICANDO PERMISSOES PASTA COSTING_TABLE

icacls $PROJECT_EXECUTION\COSTING_TABLE /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_COSTING_TABLE_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_EXECUTION\COSTING_TABLE /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_COSTING_TABLE_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA MONTHLY_REPORT

New-Item -ItemType Directory -Path $PROJECT_EXECUTION\MONTHLY_REPORT

#APLICANDO PERMISSOES PASTA MONTHLY_REPORT

icacls $PROJECT_EXECUTION\MONTHLY_REPORT /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_MONTHLY_REPORT_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_EXECUTION\MONTHLY_REPORT /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_MONTHLY_REPORT_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA FAT

New-Item -ItemType Directory -Path $PROJECT_EXECUTION\FAT

#APLICANDO PERMISSOES PASTA FAT

icacls $PROJECT_EXECUTION\FAT /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_FAT_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_EXECUTION\FAT /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_FAT_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA FINAL_OFFER

New-Item -ItemType Directory -Path $PROJECT_EXECUTION\FINAL_OFFER

#APLICANDO PERMISSOES PASTA 

icacls $PROJECT_EXECUTION\FINAL_OFFER /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_FINAL_OFFER_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_EXECUTION\FINAL_OFFER /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_FINAL_OFFER_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA CUSTOMER_SPECIFICATION

New-Item -ItemType Directory -Path $PROJECT_EXECUTION\CUSTOMER_SPECIFICATION

#APLICANDO PERMISSOES PASTA CUSTOMER_SPECIFICATION

icacls $PROJECT_EXECUTION\CUSTOMER_SPECIFICATION /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_CUSTOMER_SPECIFICATION_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_EXECUTION\CUSTOMER_SPECIFICATION /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_CUSTOMER_SPECIFICATION_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA FINANCIAL_CONTROL

New-Item -ItemType Directory -Path $PROJECT_EXECUTION\FINANCIAL_CONTROL

#APLICANDO PERMISSOES PASTA FINANCIAL_CONTROL

icacls $PROJECT_EXECUTION\FINANCIAL_CONTROL /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_FINANCIAL_CONTROL_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_EXECUTION\FINANCIAL_CONTROL /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_FINANCIAL_CONTROL_Rw:(OI)(CI)(M)" /c

#CRIANDO PASTA PURCHASE_ORDER

New-Item -ItemType Directory -Path $PROJECT_EXECUTION\PURCHASE_ORDER

#APLICANDO PERMISSOES PASTA PURCHASE_ORDER

icacls $PROJECT_EXECUTION\PURCHASE_ORDER /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_PURCHASE_ORDER_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_EXECUTION\PURCHASE_ORDER /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_PURCHASE_ORDER_Rw:(OI)(CI)(M)" /c

#CRIANDO PASTA PACKING_LIST

New-Item -ItemType Directory -Path $PROJECT_EXECUTION\PACKING_LIST

#APLICANDO PERMISSOES PASTA PACKING_LIST

icacls $PROJECT_EXECUTION\PACKING_LIST /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_PACKING_LIST_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_EXECUTION\PACKING_LIST /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_PACKING_LIST_Rw:(OI)(CI)(M)" /c

#CRIAND PASTA CONTACT_LIST

New-Item -ItemType Directory -Path $PROJECT_EXECUTION\CONTACT_LIST

#APLICANDO PERMISSOES PASTA CONTACT_LIST

icacls $PROJECT_EXECUTION\CONTACT_LIST /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_CONTACT_LIST_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_EXECUTION\CONTACT_LIST /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_CONTACT_LIST_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA SPARE_PARTS_LIST

New-Item -ItemType Directory -Path $PROJECT_EXECUTION\SPARE_PARTS_LIST

#APLICANDO PERMISSOES PASTA SPARE_PARTS_LIST

icacls $PROJECT_EXECUTION\SPARE_PARTS_LIST /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_SPARE_PARTS_LIST_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_EXECUTION\SPARE_PARTS_LIST /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_SPARE_PARTS_LIST_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA GENERAL

New-Item -ItemType Directory -Path $PROJECT_EXECUTION\GENERAL

#APLICANDO PERMISSOES PASTA GENERAL

icacls $PROJECT_EXECUTION\GENERAL /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_GENERAL_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_EXECUTION\GENERAL /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_EXECUTION_GENERAL_RW:(OI)(CI)(M)" /c

}

#CRIANDO FUNCAO ON_SITE_ACTIVITIES

Function Function_ON_SITE_ACTIVITIES {

#CRIANDO PASTA ON_SITE_ACTIVITIES

New-Item -ItemType Directory -Path $Local\$ProjectName\ON_SITE_ACTIVITIES

$ON_SITE_ACTIVITIES = "$Local\$ProjectName\ON_SITE_ACTIVITIES"

#APLICANDO PERMISSAO DE SOMENTE LEITURA A PASTA ON_SITE_ACTIVITIES

icacls $Local\$ProjectName\ON_SITE_ACTIVITIES /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_ON_SITE_ACTIVITIES_RO:(RX)" /c

#PASTAS EM ON_SITE_ACTIVITIES

#CRIANDO PASTA SITE_REPORT

New-Item -ItemType Directory -Path $ON_SITE_ACTIVITIES\SITE_REPORT

#APLICANDO PERMISSOES PASTA SITE_REPORT

icacls $ON_SITE_ACTIVITIES\SITE_REPORT /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_ON_SITE_ACTIVITIES_SITE_REPORT_RO:(OI)(CI)(RX)" /c

icacls $ON_SITE_ACTIVITIES\SITE_REPORT /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_ON_SITE_ACTIVITIES_SITE_REPORT_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA SWP_REPORT

New-Item -ItemType Directory -Path $ON_SITE_ACTIVITIES\SWP_REPORT

#APLICANDO PERMISSOES PASTA SWP_REPORT

icacls $ON_SITE_ACTIVITIES\SWP_REPORT /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_ON_SITE_ACTIVITIES_SWP_REPORT_RO:(OI)(CI)(RX)" /c

icacls $ON_SITE_ACTIVITIES\SWP_REPORT /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_ON_SITE_ACTIVITIES_SWP_REPORT_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA WPMR

New-Item -ItemType Directory -Path $ON_SITE_ACTIVITIES\WPMR

#APLICANDO PERMISSOES PASTA WPMR

icacls $ON_SITE_ACTIVITIES\WPMR /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_ON_SITE_ACTIVITIES_WPMR_RO:(OI)(CI)(RX)" /c

icacls $ON_SITE_ACTIVITIES\WPMR /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_ON_SITE_ACTIVITIES_WPMR_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA PPP

New-Item -ItemType Directory -Path $ON_SITE_ACTIVITIES\PPP

#APLICANDO PERMISSOES PASTA PPP

icacls $ON_SITE_ACTIVITIES\PPP /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_ON_SITE_ACTIVITIES_PPP_RO:(OI)(CI)(RX)" /c

icacls $ON_SITE_ACTIVITIES\PPP /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_ON_SITE_ACTIVITIES_PPP_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA FINANCIAL_CONTROL

New-Item -ItemType Directory -Path $ON_SITE_ACTIVITIES\FINANCIAL_CONTROL

#APLICANDO PERMISSOES PASTA FINANCIAL_CONTROL

icacls $ON_SITE_ACTIVITIES\FINANCIAL_CONTROL /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_ON_SITE_ACTIVITIES_FINANCIAL_CONTROL_RO:(OI)(CI)(RX)" /c

icacls $ON_SITE_ACTIVITIES\FINANCIAL_CONTROL /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_ON_SITE_ACTIVITIES_FINANCIAL_CONTROL_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA ACTION_PLAN

New-Item -ItemType Directory -Path $ON_SITE_ACTIVITIES\ACTION_PLAN

#APLICANDO PERMISSOES PASTA ACTION_PLAN

icacls $ON_SITE_ACTIVITIES\ACTION_PLAN /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_ON_SITE_ACTIVITIES_ACTION_PLAN_RO:(OI)(CI)(RX)" /c

icacls $ON_SITE_ACTIVITIES\ACTION_PLAN /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_ON_SITE_ACTIVITIES_ACTION_PLAN_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA BIDDING_PROCESS

New-Item -ItemType Directory -Path $ON_SITE_ACTIVITIES\BIDDING_PROCESS

#APLICANDO PERMISSOES PASTA BIDDING_PROCESS

icacls $ON_SITE_ACTIVITIES\BIDDING_PROCESS /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_ON_SITE_ACTIVITIES_BIDDING_PROCESS_RO:(OI)(CI)(RX)" /c

icacls $ON_SITE_ACTIVITIES\BIDDING_PROCESS /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_ON_SITE_ACTIVITIES_BIDDING_PROCESS_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA SUB_SUPPLIER_OFFER

New-Item -ItemType Directory -Path $ON_SITE_ACTIVITIES\SUB_SUPPLIER_OFFER

#APLICANDO PERMISSOES PASTA SUB_SUPPLIER_OFFER

icacls $ON_SITE_ACTIVITIES\SUB_SUPPLIER_OFFER /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_ON_SITE_ACTIVITIES_SUB_SUPPLIER_OFFER_RO:(OI)(CI)(RX)" /c

icacls $ON_SITE_ACTIVITIES\SUB_SUPPLIER_OFFER /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_ON_SITE_ACTIVITIES_SUB_SUPPLIER_OFFER_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA HSE_AND_RV

New-Item -ItemType Directory -Path $ON_SITE_ACTIVITIES\HSE_AND_RV

#APLICANDO PERMISSOES PASTA HSE_AND_RV

icacls $ON_SITE_ACTIVITIES\HSE_AND_RV /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_ON_SITE_ACTIVITIES_HSE_AND_RV_RO:(OI)(CI)(RX)" /c

icacls $ON_SITE_ACTIVITIES\HSE_AND_RV /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_ON_SITE_ACTIVITIES_HSE_AND_RV_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA GENERAL

New-Item -ItemType Directory -Path $ON_SITE_ACTIVITIES\GENERAL

#APLICANDO PERMISSOES PASTA GENERAL

icacls $ON_SITE_ACTIVITIES\GENERAL /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_ON_SITE_ACTIVITIES_GENERAL_RO:(OI)(CI)(RX)" /c

icacls $ON_SITE_ACTIVITIES\GENERAL /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_ON_SITE_ACTIVITIES_GENERAL_RW:(OI)(CI)(M)" /c

}

#CRIANDO FUNCAO PROJECT_CLOSING

Function Function_PROJECT_CLOSING {

#CRIANDO PASTA PROJECT_CLOSING

New-Item -ItemType Directory -Path $Local\$ProjectName\PROJECT_CLOSING

$PROJECT_CLOSING = "$Local\$ProjectName\PROJECT_CLOSING"

#APLICANDO PERMISSAO DE SOMENTE LEITURA A PASTA PROJECT_CLOSING

icacls $Local\$ProjectName\PROJECT_CLOSING /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_CLOSING_RO:(RX)" /c

#PASTAS EM PROJECT_CLOSING

#CRIANDO PASTA AS_BUILT

New-Item -ItemType Directory -Path $PROJECT_CLOSING\AS_BUILT

#APLICANDO PERMISSOES PASTA AS_BUILT

icacls $PROJECT_CLOSING\AS_BUILT /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_CLOSING_AS_BUILT_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_CLOSING\AS_BUILT /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_CLOSING_AS_BUILT_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA TECHNICAL_MANUALS

New-Item -ItemType Directory -Path $PROJECT_CLOSING\TECHNICAL_MANUALS

#APLICANDO PERMISSOES PASTA TECHNICAL_MANUALS

icacls $PROJECT_CLOSING\TECHNICAL_MANUALS /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_CLOSING_TECHNICAL_MANUALS_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_CLOSING\TECHNICAL_MANUALS /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_CLOSING_TECHNICAL_MANUALS_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA CPE

New-Item -ItemType Directory -Path $PROJECT_CLOSING\CPE

#APLICANDO PERMISSOES PASTA CPE

icacls $PROJECT_CLOSING\CPE /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_CLOSING_CPE_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_CLOSING\CPE /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_CLOSING_CPE_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA CPA

New-Item -ItemType Directory -Path $PROJECT_CLOSING\CPA

#APLICANDO PERMISSOES PASTA

icacls $PROJECT_CLOSING\CPA /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_CLOSING_CPA_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_CLOSING\CPA /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_CLOSING_CPA_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA FSB

New-Item -ItemType Directory -Path $PROJECT_CLOSING\FSB

#APLICANDO PERMISSOES PASTA FSB

icacls $PROJECT_CLOSING\FSB /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_CLOSING_FSB_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_CLOSING\FSB /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_CLOSING_FSB_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA CAV

New-Item -ItemType Directory -Path $PROJECT_CLOSING\CAV

#APLICANDO PERMISSOES PASTA CAV

icacls $PROJECT_CLOSING\CAV /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_CLOSING_CAV_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_CLOSING\CAV /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_CLOSING_CAV_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA CONTRACT

New-Item -ItemType Directory -Path $PROJECT_CLOSING\CONTRACT

#APLICANDO PERMISSOES PASTA CONTRACT

icacls $PROJECT_CLOSING\CONTRACT /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_CLOSING_CONTRACT_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_CLOSING\CONTRACT /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_CLOSING_CONTRACT_RW:(OI)(CI)(M)" /c

#CRIANDO PASTA GENERAL

New-Item -ItemType Directory -Path $PROJECT_CLOSING\GENERAL

#APLICANDO PERMISSOES PASTA GENERAL

icacls $PROJECT_CLOSING\GENERAL /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_CLOSING_GENERAL_RO:(OI)(CI)(RX)" /c

icacls $PROJECT_CLOSING\GENERAL /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJECT_CLOSING_GENERAL_RW:(OI)(CI)(M)" /c

}

#FUNCAO FOR QUE CRIA TODAS AS PASTAS

for ($i = 0; $i -le $QuantProjects; $i ++){

#CRIANDO PASTA DO PROJETO

New-Item -ItemType Directory -Path $Local\$ProjectName

#APLICANDO PERMISSÃO DE SOMENTE LEITURA A PASTA COM NOME DO PROJETO

icacls $Local\$ProjectName /grant "{PRIVATE INFORMATION}\AMS_BR-SPL_GROUPS_PM_PROJXX_XXXXX_RO:(RX)" /c

#CHAMANDO FUNCOES CRIADAS ACIMA

Function_PRE_CONTRACTING

Function_PROJECT_EXECUTION

Function_ON_SITE_ACTIVITIES

Function_PROJECT_CLOSING

#EXIBE A MENSAGEM

Write-Host "PROJETO $ProjectName CRIADO COM SUCESSO!"

#NOME ATUAL DO PROJETO + 1

$ProjectName ++
}