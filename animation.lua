local Animation = {}
Animation.engine = require 'anim8'

-- Frames
function Animation:click()
	local click = {}

	function click:load()
		--Animação do Botão
		click.img = love.graphics.newImage('image/buttons/Button2.png')
		click.g = Animation.engine.newGrid( 50, 50, click.img:getWidth(), click.img:getHeight() )
		click.anim = Animation.engine.newAnimation( click.g( '1-2', 1 ), 0.01 )
	    --Fim da Animação do Botão 
	end

	function click:update(dt)
		click.anim:update(dt)
	end

	return click
end
-- Arquivo usado para as Animações (Emprodução)

return Animation