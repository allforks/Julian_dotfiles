require('config.completion')
require('config.lsp')
require('config.treesitter')

require('lean').setup{
  abbreviations = { builtin = true },
  lsp = {
    cmd = {"frankenlean", "-M", "4096"},
    on_attach = require('config.lsp').on_attach,
  },
  mappings = true,
  infoview = { max_width = 48 },
}

require('nvim-treesitter.configs').setup{
  playground = {
    enable = true,
    disable = {},
    updatetime = 25,
  },
  query_linter = {
    enable = true,
    use_virtual_text = true,
    lint_events = {"BufWrite", "CursorHold"},
  },
}
