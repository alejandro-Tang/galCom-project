function love.load()
    -- called only once at the beginning
    -- Load global variables
    require("global")

    -- Resize window as wanted
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT)

    -- Load utility functions
    require("utils")

    -- NOTICE: load this before any object in the "/objects" folder
    Object = require("libs.classic.classic")

    -- load objects
    require("objects.clickable")
    require("objects.rectangle")
    require("objects.frame")
    require("objects.button")

    -- Set initial Frame
    b1 = Button(200, 150, 200, 100, "button 1", nil, "images/test-button-1.png")
    b2 = Button(300, 500, 200, 100, "button 2", nil, "images/test-button-1.png")

    first_frame = Frame({b1}, "images/neutral-bg.png")
    second_frame = Frame({b2}, "images/neutral-bg.png")

    b1:linkToFrame(second_frame)
    b2:linkToFrame(first_frame)

    current_frame = first_frame
end

function love.update(dt)

end

function love.draw()
    love.graphics.print(current_key, 400, 300)
    current_frame:draw()
end

function love.mousepressed(x, y, button, istouch)
    -- button: 1 is primary, 2 secondary, 3, middle

    -- primary button handler
    if button == 1 then
        -- check if a button of the current frame was pressed
        current_frame:checkPressButton(x, y);
    end
end

function love.keypressed(key)
    current_key = key
    -- esc -> escape

    if(key == "escape") then
        love.event.quit(0)
    end
end
