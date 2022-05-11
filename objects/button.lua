Button = Rectangle:extend();

-- TODO: have an attribute that has the button be an 
-- external image
function Button:new(x, y, width, height, text, func)
    Button.super.new(self, x, y, width, height, func)
    self.text = text
end

-- Untested constructor, and until now not really needed
--function Button:new(x, y, width, height, text, func, frame)
--    Button.super.new(self, x, y, width, height, goToFuncFactory(frame))
--    self.text = text
--end

function Button:draw()
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height, 0, 0)
    love.graphics.setColor(1, 0, 0)
    love.graphics.print(self.text, self.x, self.y)
    love.graphics.setColor(1, 1, 1)
end

function Button:linkToFrame(next_frame)
    self.func = goToFuncFactory(next_frame)
end