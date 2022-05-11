-- Represents a whole set of background + buttons
-- to be displayed for the player

Frame = Object.extend(Object)

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
        if checkIfInArea(x, y, button.x, button.y, button.width, button.height) then 
            current_key = "button pressed"
            button:press()
            break 
        end
    end
end