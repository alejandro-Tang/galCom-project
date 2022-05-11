Button = Rectangle:extend();

-- TODO: have an attribute that has the button be an 
-- external image
function Button:new(x, y, width, height, text, func, imgPath)
    Button.super.new(self, x, y, width, height, func)
    self.text = text

    if imgPath ~= nil then
        self.img = love.graphics.newImage(imgPath)
    end
end

-- Untested constructor, and until now not really needed
--function Button:new(x, y, width, height, text, func, frame)
--    Button.super.new(self, x, y, width, height, goToFuncFactory(frame))
--    self.text = text
--end

function Button:draw()
    -- TODO: text functionality
--    love.graphics.setColor(1, 0, 0)
--    love.graphics.print(self.text, self.x, self.y)
--    love.graphics.setColor(1, 1, 1)

    if self.img ~= nil then
        love.graphics.draw(self.img, self.x, self.y)
    end

end

function Button:linkToFrame(next_frame)
    self.func = goToFuncFactory(next_frame)
end