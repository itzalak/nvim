local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
    return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics
-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/lua/null-ls/builtins/completion
local completion = null_ls.builtins.completion

null_ls.setup {
    debug = true,
    sources = {
        formatting.prettier.with {
            extra_filetypes = { "toml" },
            extra_args = {
                '--use-tabs',
                '--single-quote',
                '--prose-wrap always',
            }
        },
        completion.spell,
        formatting.black.with { extra_args = { "--fast" } },
        formatting.stylua,
        diagnostics.flake8,
    },
}
