local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

treesitter.setup({
  highlight = {
    enable = true
  },
  indent = { enable = true },
  autotag = { enable = true },
  ensure_installed = {
    "json",
    "astro",
    "javascript",
    "typescript",
    "tsx",
    "yaml",
    "html",
    "css",
    "markdown",
    "markdown_inline",
    "svelte",
    "graphql",
    "bash",
    "lua",
    "rust",
    "python",
    "regex",
    "vim",
    "dockerfile",
    "gitignore",
    "git_config",
    "git_rebase",
  },
  -- auto install above language parsers
  auto_install = true,
})

