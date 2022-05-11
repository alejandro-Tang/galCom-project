Rectangle = Clickable:extend()

function Rectangle:new(x, y, width, height, func)
    Rectangle.super.new(self, x, y, func)

    self.height = height
    self.width = width
end

function Rectangle:isClicked (clickX, clickY)
    if clickX > self.x and clickX < self.x + self.width then
        if clickY > self.y and clickY < self.y + self.height then
            return true
        end
    end

    return false
end