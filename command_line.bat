@echo off

echo Bem vindo ao command line do bat
echo --help para mais informações

:start

set /p var=

if %var% == --help (goto :help) else (goto :nohelp)
:help
echo -----------------------------------
echo --help para mais informacoes
echo --exit para sair
echo --list para listar os arquivos
echo --clear para limpar a tela
echo --version para ver a versao
echo --author para ver o autor
echo --date para ver a data atual
echo --ping para ver o ping
echo -----------------------------------

goto :start
:nohelp
if %var% == --exit (goto :exit) else (goto :noexit)
:exit
echo Obrigado por utilizar o command line do bat
exit

:noexit
if %var% == --clear (goto :clear) else (goto :noclear)
:clear
cls
goto :start

:noclear
if %var% == --list (goto :list) else (goto :nolist)
:list
dir
goto :start

:nolist
if %var% == --version (goto :version) else (goto :nover)
:version
echo Versao 1.0 - Command Line
goto :start

:nover
if %var% == --author (goto :author) else (goto :noauthor)
:author
echo Autor: Andre da Rocha Souza
goto :start

:noauthor
if %var% == --date (goto :date) else (goto :nodate)
:date
echo %date%
goto :start

:nodate
if %var% == --ping (goto :ping) else (goto :noping)
:ping
ping www.google.com.br
goto :start

:noping
echo Comando nao encontrado
goto :start