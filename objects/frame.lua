-- Represents a whole set of background + buttons
-- to be displayed for the player

Frame = Object:extend()

function Frame:new(buttons)
    -- attributes:
    -- background image (possibly many images to make a moving background)
    self.buttons = buttons
end

function Frame:draw()
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