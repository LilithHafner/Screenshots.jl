using FileIO

function screenshot()
    file = tempname() * ".png"
    save(file, load(pipeline(`xwd -root`, `convert xwd:- png:-`)))
    file
end
