require 'conf'
--Recebimento de arquivos essenciais
local loja   = require 'mercadinho/loja'
local button = require 'options/button_click'
local dindi  = require 'options/YouWanted'

function love.load()

end

function love.mousepressed(x,y,key)
	button:tick(x,y,key) -- Click em "More One!"
	loja:buy(x,y,key) -- Click em Loja
end

function love.update(dt)
	loja:auto(dt)
end

function love.draw()
	dindi:draw() -- Dinheiro
	button:draw() -- Butão
	loja:draw() -- Loja
end
