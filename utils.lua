-- Creates functions for buttons that lead to another frame
function goToFuncFactory(next_frame)
    return (function()
                current_frame = next_frame
            end)
end