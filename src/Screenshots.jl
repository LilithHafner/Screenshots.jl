module Screenshots

export screenshot

"""
    screenshot() -> filename::String

Take a screenshot and save it to a file. Return the absolute path to that file.

# Runtime
- apple: 0.3s
- linux: not supported
- windows: not supported
- other: not supported
"""
function screenshot end

if Sys.isapple()
    include("apple.jl")
else
    error("Unsupported OS")
end

end
