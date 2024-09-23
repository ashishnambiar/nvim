local lsp = require('lsp-zero').preset({})

-- (Optional) Configure lua language server for neovim
require('lspconfig').bashls.setup {}
require('lspconfig').clangd.setup {}
-- require('lspconfig').dartls.setup {}
require('lspconfig').emmet_ls.setup {}
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
require('lspconfig').pylsp.setup {}
require('lspconfig').gopls.setup {}
require('lspconfig').tsserver.setup {}
require('lspconfig').sourcekit.setup {
  cmd = { '/usr/bin/sourcekit-lsp' }
}
require('lspconfig').zls.setup {}

local cmp = require('cmp')
-- local cmp_select = { behavior = cmp.SelectBehavior.Select }
-- local cmp_mappings = lsp.defaults.cmp_mappings({
--     ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
--     ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
--     ['<C-y>'] = cmp.mapping.confirm({ select = true }),
--     ['<C-Space>'] = cmp.mapping.complete(),
-- })
cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },

  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },

  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'luasnip' }, -- For luasnip users.
    { name = 'nvim_lsp' },
    { name = 'nvim_lua' },
  }, {
    { name = 'buffer', keyword_length = 3 },
  }),
  experimental = {
    native_menu = false,
    ghost_text = true,
  },
  -- formatting = {
  --     format = lspkind.cmp_format({
  --         -- mode = 'symbol', -- show only symbol annotations
  --         -- maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
  --         menu = {
  --             buffer = "[buf]",
  --             nvim_lsp = "[LSP]",
  --             nvim_lua = "[api]",
  --             path = "[path]",
  --             luasnip = "[snip]",
  --         }
  --     })
  -- }
}
)

lsp.set_preferences({
  sign_icons = {}
})

-- lsp.setup_nvim_cmp({
--     mapping = cmp_mappings
-- })

lsp.on_attach(function(client, bufnr)
  -- lsp.default_keymaps({buffer = bufnr})
  local opts = { buffer = bufnr, remap = false }
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "[w", function()
    vim.diagnostic.goto_prev({
      severity = vim.diagnostic.severity.WARN,
    })
  end, opts)
  vim.keymap.set("n", "]w", function()
    vim.diagnostic.goto_next({
      severity = vim.diagnostic.severity.WARN,
    })
  end, opts)
  vim.keymap.set("n", "[e", function()
    vim.diagnostic.goto_prev({
      severity = vim.diagnostic.severity.ERROR,
    })
  end, opts)
  vim.keymap.set("n", "]e", function()
    vim.diagnostic.goto_next({
      severity = vim.diagnostic.severity.ERROR,
    })
  end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-t>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()
