local nvim_lsp = require 'lspconfig'

-- local nvim_lsp = require('nvim_lsp')
local configs = require('lspconfig/configs')
local util = require('lspconfig/util')

local dap_breakpoint = require('dap/breakpoints')
local dap_ui = require('dap/ui')

local on_attach = function(client)
  -- Set up DAP UI
  dap_ui.setup(client)

  -- Set up DAP breakpoints
  dap_breakpoint.setup(client)

  -- Enable DAP breakpoint toggling with <leader>b
  util.set_keymap('n', '<leader>b', '<cmd>lua dap_breakpoint.toggle()<cr>', {
    noremap = true,
    silent = true,
  })
end

-- Set up DAP for languages that support it
nvim_lsp.dap.setup {
  on_attach = on_attach,
  init_options = {
    -- Customize DAP settings here
  },
}

-- Set up DAP for languages that don't have built-in support
local custom_attach = function(client)
  -- Customize DAP setup here
  on_attach(client)
end

-- Add custom attach function for languages that don't have built-in DAP support
-- configs.custom_attach['my_language'] = custom_attach

