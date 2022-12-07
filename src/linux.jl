using FileIO

function screenshot()
    file = tempname() * ".png"
    save(file, load(read(pipeline(`xwd -root`, `convert xwd:- png:-`))))
    file
end
