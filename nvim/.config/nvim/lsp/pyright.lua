return {
    cmd = { 'pyright-langserver', '--stdio' },
    filetypes = { 'python' },
    root_markers = { 
        'pyproject.toml',
        'setup.py',
        'setup.cfg',
        'requirements.txt',
        'Pipfile',
        'pyrightconfig.json',
        '.git'
    },
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "openFilesOnly", -- "workspace" для полного анализа
                useLibraryCodeForTypes = true,
                typeCheckingMode = "basic", -- "off", "basic", "strict"
                autoImportCompletions = true,
                diagnosticSeverityOverrides = {
                    reportUnusedVariable = "warning",
                    reportUnusedImport = "warning",
                    reportMissingImports = "error",
                    reportMissingTypeStubs = "none",
                    reportGeneralTypeIssues = "warning",
                },
            },
        },
    },
}
