local Cebola = {}
local didi   = require 'options/YouWanted'

time = 50
stop = 100
Cebola.x = 0
Cebola.cust = 400
function Cebola:buy(x,y,key)
	if key==1 and didi.money>=Cebola.cust then
		if x>380 and x<460 then
			if y>110 and y<140 then
				print("Você comprou um Cebola")
				if Cebola.x == 0 then
					didi.money = didi.money - 400
					Cebola.cust = 440
					Cebola.x = Cebola.x + 1
				else
					didi.money = didi.money - Cebola.cust
					Cebola.x = Cebola.x + 1
					Cebola.cust = Cebola.cust + (Cebola.x * 25)
				end
			end
		end
	end
end

--AutoClick -- Aqui Mano
function Cebola:auto(dt)
	stop = stop - (100 * dt)
	didi:
end

function Cebola:draw()
	love.graphics.setColor(0,50,0)
	love.graphics.print("R$ "..Cebola.cust, 380,90) -- Preço
	love.graphics.print("Cebola x"..Cebola.x, 390,120)
	love.graphics.rectangle("line", 380,110, 80,30)
end

return Cebola