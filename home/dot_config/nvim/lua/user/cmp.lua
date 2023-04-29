vim.opt.completeopt={"menu", "menuone", "noselect"}
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local custom_attach = function()
  vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
  --vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
  --vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
  --vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
  vim.keymap.set("n", "<leader>df", vim.diagnostic.goto_next, {buffer=0})
  vim.keymap.set("n", "<leader>db", vim.diagnostic.goto_prev, {buffer=0})
  vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer=0})
  vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", {buffer=0})

end

require'lspconfig'.gopls.setup{
  capabilities = capabilities,
  on_attach = custom_attach 
}

require'lspconfig'.pyright.setup{
  capabilities = capabilities,
  on_attach = custom_attach 
}

  -- Setup nvim-cmp.
local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  mapping = {
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' }, -- For luasnip users.
  }, {
    { name = 'buffer' },
  })
})
