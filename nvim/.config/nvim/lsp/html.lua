return {
    cmd = { 'vscode-html-language-server', '--stdio' },
    filetypes = {
        'html',
        'blade',
        'javascriptreact',
        'typescriptreact',
        'svelte',
        'templ',
    },
    root_markers = { 'index.html', '.git' },
    init_options = { provideFormatter = true },
}
