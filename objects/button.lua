Button = Object.extend(Object);

-- TODO: have an attribute that has the button be an 
-- external image
function Button:new(x, y, width, height, text, func)
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.text = text
    self.func = func
end

function Button:draw()
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height, 0, 0)
    love.graphics.setColor(1, 0, 0)
    love.graphics.print(self.text, self.x, self.y)
    love.graphics.setColor(1, 1, 1)
end

function Button:press()
    self.func()
end