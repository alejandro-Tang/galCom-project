function goToFuncFactory(next_frame)
    return (function()
                current_frame = next_frame
            end)
end