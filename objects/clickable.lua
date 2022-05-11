Clickable = Object:extend()

function Clickable:new(x, y, func)
    self.x = x
    self.y = y

    -- the function that should fire if the clickable is clicked
    self.func = func
end

function Clickable:isClicked ()
    -- "abstract" function, so it does not really do anything 
    return false
end

function Clickable:click()
    self.func()
end