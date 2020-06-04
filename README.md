# Little_Project-Love2d
Um simples projeto onde faço um teste de script criando um  jogo de gênero "Click" - Usando o Love2D

# Love2D
O arquivo Lua do jogo só pode ser rodado pelo Love2D que está disponivel neste Link para Download:
https://www.love2d.org

#Ajustes
O arquivo run.sh ele tem que ser usado como um atalho para a inicialização do aplicativo. Esse arquivo não vai funcionar em alguns sistemas operacionais como o Windows(não foi testado, mas ele pode funcionar no Mac, somente mudando a localização dos diretorios)

#Windows -- Arquivo Run.bat
(Cópie as linhas de baixo)
@echo off
cd /
cd "Program Files/LOVE" # <--se der erro, bote na pasta do LOVE
love.exe # (Localização do arquivo) Ex: Users/%username%/Desktop/
################################################################