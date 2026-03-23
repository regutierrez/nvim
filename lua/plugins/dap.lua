return {
  {
    "mfussenegger/nvim-dap-python",
    config = function()
      local dap = require("dap")
      local dap_python = require("dap-python")

      dap_python.setup("debugpy-adapter")
      dap_python.test_runner = "pytest"

      local configs = dap.configurations.python or {}
      dap.configurations.python = configs

      for _, config in ipairs(configs) do
        if config.name == "Pytest: current file" then
          return
        end
      end

      table.insert(configs, {
        type = "python",
        request = "launch",
        name = "Pytest: current file",
        module = "pytest",
        args = { "${file}", "-q" },
        cwd = "${workspaceFolder}",
        env = {
          PYTHONPATH = "${workspaceFolder}",
        },
        console = "integratedTerminal",
        justMyCode = false,
      })
    end,
  },
}
