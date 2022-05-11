function checkIfInArea(x, y, areaX, areaY, width, height)
    if x > areaX and x < areaX + width then
        if y > areaY and y < areaY + height then
            return true
        end
    end

    return false
end

function goToFuncFactory(next_frame)
    return (function()
                current_frame = next_frame
            end)
end