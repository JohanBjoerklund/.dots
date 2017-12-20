;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
history=cat %CMDER_ROOT%\config\.history
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"
magic=%WINDIR%\System32\inetsrv\appcmd list wps

build-nemo=powershell Push-Location C:\src\Nemo\scripts; .\build.ps1
build-productdefinitions=powershell Push-Location C:\src\Nemo.ProductDefinitions\scripts; .\build.ps1
build-nautilus=powershell Push-Location C:\src\Nautilus\scripts; .\build.ps1
build-analytics=powershell Push-Location C:\src\Nautilus.Analytics\scripts; .\build.ps1
build-integrations=powershell Push-Location C:\src\Nautilus.Integrations\scripts; .\build.ps1
build-odysseus=powershell Push-Location C:\src\Odysseus\scripts; .\build.ps1
build-ddc=powershell Push-Location C:\src\DirectDebitConsents\scripts; .\build.ps1

debug-nemo=powershell Push-Location C:\src\Nemo\scripts; .\build.ps1 -Configuration Debug
debug-productdefinitions=powershell Push-Location C:\src\Nemo.ProductDefinitions\scripts; .\build.ps1 -Configuration Debug
debug-nautilus=powershell Push-Location C:\src\Nautilus\scripts; .\build.ps1 -Configuration Debug
debug-analytics=powershell Push-Location C:\src\Nautilus.Analytics\scripts; .\build.ps1 -Configuration Debug
debug-integrations=powershell Push-Location C:\src\Nautilus.Integrations\scripts; .\build.ps1 -Configuration Debug
debug-odysseus=powershell Push-Location C:\src\Odysseus\scripts; .\build.ps1 -Configuration Debug
debug-ddc=powershell Push-Location C:\src\DirectDebitConsents\scripts; .\build.ps1 -Configuration Debug

install-nemo=powershell Push-Location C:\src\Nemo\scripts; .\build.ps1 -Target Install
install-productdefinitions=powershell Push-Location C:\src\Nemo.ProductDefinitions\scripts; .\build.ps1 -Target Install
install-mautilus=powershell Push-Location C:\src\Nautilus\scripts; .\build.ps1 -Target Install
install-analytics=powershell Push-Location C:\src\Nautilus.Analytics\scripts; .\build.ps1 -Target Install
install-integrations=powershell Push-Location C:\src\Nautilus.Integrations\scripts; .\build.ps1 -Target Install
install-odysseus=powershell Push-Location C:\src\Odysseus\scripts; .\build.ps1 -Target Install
install-ddc=powershell Push-Location C:\src\DirectDebitConsents\scripts; .\build.ps1 -Target Install

bs=npm run build -- -s $1
