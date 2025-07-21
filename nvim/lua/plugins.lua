-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

require("lazy").setup({
    { "nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate" },

    { 
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            explorer = { enabled = true },
            input = { enabled = true },
            picker = { enabled = true },
            quickfile = { enabled = true },
        },
        keys = {
            { "<leader><space>", function() Snacks.picker.buffers() end, desc = "Buffers" },
            { "<leader>:", function() Snacks.picker.command_history() end, desc = "Commands" },
            { "<leader>e", function() Snacks.explorer() end, desc = "Explorer" },
            { "<leader>/", function() Snacks.picker.grep() end, desc = "Grep" },
            { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
            { "<leader>fr", function() Snacks.picker.recent() end, desc = "Find Recent" },
            { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
            { "<leader>gb", function() Snacks.picker.git_branches() end, desc = "Git Branches" },
            { "<leader>gl", function() Snacks.picker.git_log() end, desc = "Git Log" },
            { "<leader>gL", function() Snacks.picker.git_log_line() end, desc = "Git Log Line" },
            { "<leader>gs", function() Snacks.picker.git_status() end, desc = "Git Status" },
            { "<leader>gS", function() Snacks.picker.git_stash() end, desc = "Git Stash" },
            { "<leader>gd", function() Snacks.picker.git_diff() end, desc = "Git Diff (Hunks)" },
            { "<leader>gf", function() Snacks.picker.git_log_file() end, desc = "Git Log File" },
            { "<leader>fc", function() Snacks.picker.commands() end, desc = "Commands" },
            { "<leader>fq", function() Snacks.picker.qflist() end, desc = "QuickFix" },
            { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
            { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
            { "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
            { "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
            { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
            { "<leader>ss", function() Snacks.picker.lsp_symbols() end, desc = "LSP Symbols" },
            { "<leader>sS", function() Snacks.picker.lsp_workspace_symbols() end, desc = "LSP Workspace Symbols" },
            { "<leader>z",  function() Snacks.zen() end, desc = "Toggle Zen Mode" },
            { "<leader>Z",  function() Snacks.zen.zoom() end, desc = "Toggle Zoom" },
            { "<M-t>",      function() Snacks.terminal() end, desc = "Toggle Terminal" },
            { "]]",         function() Snacks.words.jump(vim.v.count1) end, desc = "Next Reference", mode = { "n", "t" } },
            { "[[",         function() Snacks.words.jump(-vim.v.count1) end, desc = "Prev Reference", mode = { "n", "t" } },




        }
    },

    {
        'echasnovski/mini.nvim',
        version = false,
        config = function() 
            require("mini.keymap").setup()
            require("mini.surround").setup()
            require("mini.clue").setup()
            require("mini.statusline").setup()
            require("mini.starter").setup()
        end,
    
    },

})
