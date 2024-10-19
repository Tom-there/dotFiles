local dap = require("dap")
local dapui = require("dapui")

dap.listeners.before.launch.dapui_config = function ()
  dapui.open()
end
dap.listeners.before.attach.dapui_config = function ()
  dapui.open()
end

dap.listeners.before.event_terminated.dapui_config = function ()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function ()
  dapui.close()
end


-- KEYBINDS --
vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint)
vim.keymap.set("n", "<leader>dc", dap.continue)
