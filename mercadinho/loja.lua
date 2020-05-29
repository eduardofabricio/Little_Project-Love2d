local loja  = {}
loja.pa     = require 'mercadinho/papa'
loja.cebola = require 'mercadinho/cebola'

function loja:buy(x,y,key)
	loja.cebola:buy(x,y,key)
	loja.pa:buy(x,y,key)
end
function loja:auto(dt)
	loja.cebola:auto(dt)
end
function loja:draw()
	loja.cebola:draw()
	loja.pa:draw()
end

return loja