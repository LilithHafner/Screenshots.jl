function screenshot()
    file = tempname() * ".png"
    run(`screencapture -x $file`)
    file
end
