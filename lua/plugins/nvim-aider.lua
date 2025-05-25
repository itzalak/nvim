-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

return {
    "GeorgesAlkhouri/nvim-aider",
    cmd = "Aider",
    -- Example key mappings for common actions:
    keys = {
        { "<leader>a/", "<cmd>Aider toggle<cr>", desc = "Toggle Aider" },
        { "<leader>as", "<cmd>Aider send<cr>", desc = "Send to Aider", mode = { "n", "v" } },
        { "<leader>ac", "<cmd>Aider command<cr>", desc = "Aider Commands" },
        { "<leader>ab", "<cmd>Aider buffer<cr>", desc = "Send Buffer" },
        { "<leader>a+", "<cmd>Aider add<cr>", desc = "Add File" },
        { "<leader>a-", "<cmd>Aider drop<cr>", desc = "Drop File" },
        { "<leader>ar", "<cmd>Aider add readonly<cr>", desc = "Add Read-Only" },
        { "<leader>aR", "<cmd>Aider reset<cr>", desc = "Reset Session" },
    },
    dependencies = {
        "folke/snacks.nvim",
    },
    config = true,
}
