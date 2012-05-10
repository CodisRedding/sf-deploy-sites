@echo off
SET DEPLOYTYPE=deploy

IF "%2"=="sites" ( SET DEPLOYTYPE=sites )
IF "%1"=="" GOTO NoOrg
IF "%1"=="dev" GOTO DevOrg
IF "%1"=="qa" GOTO QAOrg
IF "%1"=="ci" GOTO CIOrg
IF "%1"=="ex" GOTO EXOrg
IF "%1"=="prod" GOTO ProdOrg

:NoOrg
echo Target Org: [NOT FOUND]
GOTO :END

:DevOrg
ECHO Target Org: [DEV]
ECHO [deploying...]
ant %DEPLOYTYPE% -propertyfile "%~dp0salesforce.properties.dev"
GOTO :END

:QAOrg
ECHO Target Org: [QA]
ECHO [deploying...]
ant %DEPLOYTYPE% -propertyfile "%~dp0salesforce.properties.qa"
GOTO :END

:CIOrg
ECHO Target Org: [CI]
ECHO [deploying...]
ant %DEPLOYTYPE% -propertyfile "%~dp0salesforce.properties.ci"
GOTO :END

:EXOrg
ECHO Target Org: [EX]
ECHO [deploying...]
ant %DEPLOYTYPE% -propertyfile "%~dp0salesforce.properties.ex"
GOTO :END

:ProdOrg
ECHO Target Org: [PROD]
ECHO [deploying...]
ant %DEPLOYTYPE% -propertyfile "%~dp0salesforce.properties.prod"
GOTO :END

:END