local dindin = {}
-- Não sei o que fazer Então só vai

dindin.money = 0
dindin.qut = 1

function dindin:more()
	dindin.money = dindin.money + dindin.qut
end
function dindin:click(dt,x)
	if x ~= 0 and x < 5 then
		dindin.money = dindin.money + 1
		print("Mandei")
	elseif x >= 5 then
		dindin.money = dindin.money + 2
		print("Mandei 2")
	end
end
--[[
a function autoclick ainda precisa ser mantida para
manter o valor que vai ser recebido
]]
function dindin:draw()
	love.graphics.rectangle('line',45,115,100,20)
	love.graphics.print("money R$: "..dindin.money,50,120)
end

return dindin