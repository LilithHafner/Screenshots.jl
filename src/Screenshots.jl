module Screenshots

export screenshot

"""
    screenshot() -> filename::String

Take a screenshot and save it to a file. Return the absolute path to that file.

# Runtime
- apple: 0.3s
- windows: unknown
- linux: unknown
- other: not supported
"""
function screenshot end

if Sys.isapple()
    include("apple.jl")
elseif Sys.isWindows()
    include("windows.jl")
elseif Sys.islinux()
    include("linux.jl")
else
    error("Screenshots.jl does not currently support $(Sys.MACHINE). PRs welcome!")
end

end
