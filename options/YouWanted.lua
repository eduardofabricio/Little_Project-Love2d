local dindin = {}
-- Não sei o que fazer Então só vai

dindin.money = 95
dindin.qut = 1

function dindin:more()
	dindin.money = dindin.money + dindin.qut
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