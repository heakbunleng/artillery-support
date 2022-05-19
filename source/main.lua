import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/ui"
-- import "CoreLibs/timer"

import "cannon"

local pd <const> = playdate
local gfx <const> = playdate.graphics

local function initialize()
    local cannonImage = gfx.image.new("images/cannon")
    local cannonInstance = Cannon(20, 120, cannonImage)
    cannonInstance.moveSpeed = 10
    cannonInstance.projectileSpeed = 10
    cannonInstance:add()
end

initialize()

function pd.update()
    gfx.sprite.update()
    -- pd.timer.updateTimers()
end