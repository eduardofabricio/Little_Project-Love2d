local dindi  = require 'options/YouWanted'
local anim8  = require 'animation'

local Button = {}

-- Ainda tem que ver essa coisa que está dando erro Urgente
--talvez não tão urgente mais tem que ver
--Não se preocupe o erro já foi resolvido Obrigado
function Button:tick(x,y,key)
	if key==1 then
		if x>50 and x<100 then
			if y>40 and y<110 then
				dindi:more()
			end
		end
	end
end

function Button:draw()
	--Código de Animação do Button or Click
	love.graphics.draw(img) -- Não ligue para isso
	--nem sei por que você está olhando para isso
	--love.graphics.setColor(0,0,100)
	--love.graphics.rectangle("fill", 50,40, 50,50)
end


return Button