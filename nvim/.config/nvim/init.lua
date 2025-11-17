-- ============================================================================
-- Initialize the Neovim configuration
-- ============================================================================
require 'core.mason-path' -- Mason path configuration
require 'core.lsp' -- LSP server definitions
require 'config.options' -- Load general options
require 'config.keymaps' -- Load general keymaps
require 'config.snippets' -- Load custom code snippets
require 'config.autocmds' -- Autocommands
require 'config.mason-verify' -- Mason verification
require 'config.health-check' -- Health check
-- ============================================================================
-- Set up the Lazy plugin manager
-- ============================================================================
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazypath) then
    vim.fn.system {
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    }
end
vim.opt.rtp:prepend(lazypath)

-- ============================================================================
-- Setup the Lazy plugin manager
-- ============================================================================
require('lazy').setup {
    -- require 'plugins.telescope', -- Telescope
    require 'plugins.everforest', -- Colorscheme
    require 'plugins.neo-tree', -- Explorer
    require 'plugins.statusline', -- Statusline
    require 'plugins.treesitter', -- Treesitter
    require 'plugins.noice', -- Notification
    require 'plugins.snacks', -- Snacks
    require 'plugins.bufferline', -- Bufferline

    require 'plugins.mason', -- Mason
    require 'plugins.conform', -- Conform
    require 'plugins.blink', -- Blink
    require 'plugins.trouble', -- Trouble
    require 'plugins.tiny-inline-diagnostic', -- Inline Diagnostic
    require 'plugins.debuging', -- Debuging
    require 'plugins.lint', -- Linting
    require 'plugins.gitsigns', -- Git Signs
    require 'plugins.ai', -- AI
    require 'plugins.misc', -- Misc
    require 'plugins.which-key', -- Keybind hints

    --- Performance
    install = {
        missing = true,
    },
    checker = {
        enabled = true,
        notify = false,
    },
    change_detection = {
        enabled = true,
        notify = false,
    },
    ui = {
        -- border = "rounded"
    },
    performance = {
        rtp = {
            disabled_plugins = {
                'gzip',
                'tarPlugin',
                'tohtml',
                'tutor',
                'zipPlugin',
            },
        },
    },
}
