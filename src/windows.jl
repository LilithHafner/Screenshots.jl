using FileIO

function screenshot()
    file = tempname() * ".png"
    save(file, load("screenshot:"))
    file
end
