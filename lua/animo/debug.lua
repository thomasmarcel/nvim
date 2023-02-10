return {
    definitions = function(use)
        use "mfussenegger/nvim-dap"
        use "nvim-telescope/telescope-dap.nvim"
        use "mfussenegger/nvim-dap-python"
        use "rcarriga/nvim-dap-ui"
        use "theHamsta/nvim-dap-virtual-text"

        local dap = require('dap')
        dap.adapters.codelldb = {
            type = 'server',
            port = "${port}",
            executable = {
                -- CHANGE THIS to your path!
                command = '/Users/thomas/.local/share/nvim/mason/bin/codelldb',
                args = { "--port", "${port}" },

                -- On windows you may have to uncomment this:
                -- detached = false,
            }
        }


        dap.configurations.cpp = {
            {
                name = "Launch file",
                type = "codelldb",
                request = "launch",
                program = function()
                    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                end,
                cwd = '${workspaceFolder}',
                stopOnEntry = false,
            },
        }

        dap.configurations.c = dap.configurations.cpp
        dap.configurations.rust = dap.configurations.cpp
    end,
}
