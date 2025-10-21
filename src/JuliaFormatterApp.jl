module JuliaFormatterApp

export compile

using JuliaFormatter: format
using PackageCompiler: create_app

function compile()
    srcdir = @__DIR__
    rootdir = dirname(srcdir)
    builddir = joinpath(rootdir, "build")
    create_app(
        rootdir,
        builddir,
        executables = ["juliaformatter"=>"julia_main"],
        force = true,
    )
end

function julia_main()::Cint
    for arg in ARGS
        format(arg)
    end
    return 0
end

end
