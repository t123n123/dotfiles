return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", 
            "MunifTanjim/nui.nvim",
            vim.fn.has "win32" and {} or {"3rd/image.nvim", opts = {}}, 
        },
        lazy = false, -- neo-tree will lazily load itself
        ---@module "neo-tree"
        ---@type neotree.Config?
        opts = {
            filesystem = {
                hijack_netrw_behavior = "open_default",
            },
        },
    }
}
