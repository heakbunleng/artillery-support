import "projectile"

local pd <const> = playdate
local gfx <const> = pd.graphics

class('Cannon').extends(gfx.sprite)

function Cannon:init(x, y, image)
    self:moveTo(x, y)
    self:setImage(image)
    self.moveSpeed = 1
    self.projectileSpeed = 1
end

function Cannon:shoot(x, y)
    local projectileInstance = Projectile(x + 17, y, self.projectileSpeed)
    projectileInstance:add()
end

function Cannon:update()
    Cannon.super.update(self)

    if pd.buttonJustPressed(pd.kButtonA) then
        self:shoot(self.x, self.y)
    end
    -- if pd.buttonJustPressed(pd.kButtonB) then
    --     self:ability()
    -- end
    -- if pd.cranked(change, acceleratedChange) then
    --     self:rotatedImage(acceleratedChange, 0,0)
    -- end
    if pd.buttonIsPressed(pd.kButtonUp) then
        if self.y - 16 > 0 then
            self:moveBy(0, -self.moveSpeed)
        end
        
    elseif pd.buttonIsPressed(pd.kButtonDown) then
        if self.y + 16  < 240 then
            self:moveBy(0, self.moveSpeed)
        end
    end
end