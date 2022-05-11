-- Represents a whole set of background, together with buttons
-- to be displayed for the player

Frame = Object:extend()

function Frame:new(buttons, bgImgPath)
    -- attributes:
    -- background image (possibly many images to make a moving background)
    self.buttons = buttons
    self.bgImg = love.graphics.newImage(bgImgPath)

    -- scaling factors to resize the background image
    self.sx = WINDOW_WIDTH / self.bgImg:getWidth()
    self.sy = WINDOW_HEIGHT / self.bgImg:getHeight()
end

function Frame:draw()
    -- x and y must be 0 (they fill the whole background)
    love.graphics.draw(self.bgImg, 0, 0, 0, self.sx, self.sy)

    for i,button in ipairs(self.buttons) do
        button:draw()
    end
end

function Frame:checkPressButton(x, y)
    for i,button in ipairs(self.buttons) do
        if button:isClicked(x, y) then 
            current_key = "button pressed"
            button:click()
            break 
        end
    end
end