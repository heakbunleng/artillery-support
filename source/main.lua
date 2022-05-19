import "CoreLibs/graphics"

local gfx <const> = playdate.graphics

function playdate.update() 
    gfx.clear()
    gfx.drawText("Hello hi", 200, 120)
end