require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = {
      "vim",
      "vimdoc",
      "query",
      "markdown",
      "markdown_inline",
      
      "c",
      'cpp',
      
      "lua",
        
      'typescript',
      'javascript',
      'html',
      'css',
      'php',
  },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
