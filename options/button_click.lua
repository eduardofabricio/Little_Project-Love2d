local dindi  = require 'options/YouWanted'
local Button = {}
Button.img = love.graphics.newImage('image/Button_frame01.png')

-- Ainda tem que ver essa coisa que está dando erro Urgente
--talvez não tão urgente mais tem que ver
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
	--love.graphics.draw(Button.img, 50,40)
	love.graphics.setColor(0,0,100)
	love.graphics.rectangle("fill", 50,40, 50,50)
end


return Button