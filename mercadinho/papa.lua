local papa = {}
local didi = require 'options/YouWanted'

papa.x = 0
papa.cust = 100
function papa:buy(x,y,key)
	if key==1 and didi.money>=papa.cust then
		if x>380 and x<460 then
			if y>50 and y<80 then
				print("Parabéns você construi uma Pá")
				if papa.x == 0 then
					didi.money = didi.money - 100
					papa.cust = 120
					papa.x = papa.x + 1
					didi.qut = didi.qut + 1
				else
					didi.money = didi.money - papa.cust
					papa.x = papa.x + 1
					papa.cust = papa.cust + (papa.x * 20)
					didi.qut = didi.qut + 1
				end
			end
		end
	end
end

function papa:draw()
	love.graphics.setColor(20,20,20)
	love.graphics.print("R$ "..papa.cust, 380,30)
	love.graphics.print("Pá x"..papa.x, 390,60)--Nome Pá e Quantidade == x
	love.graphics.rectangle("line", 380,50, 80,30)
end

return papa