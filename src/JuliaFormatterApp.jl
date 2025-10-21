module JuliaFormatterApp

export compile

using ArgParse: ArgParseSettings, @add_arg_table!, parse_args
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
    s = ArgParseSettings()

    @add_arg_table! s begin
        "--format-docstrings"
        arg_type = Bool
        default = false

        "--format-markdown"
        arg_type = Bool
        default = false

        "files"
        nargs = '*'
    end

    parsed_args = parse_args(s)

    format(
        parsed_args["files"],
        format_docstrings = parsed_args["format-docstrings"],
        format_markdown = parsed_args["format-markdown"],
    )

    return 0
end

end
