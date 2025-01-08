if vim.g.vscode then
  -- if the -u option is used
  local current_file = debug.getinfo(1, "S").source:sub(2)
  local current_dir = vim.fn.fnamemodify(current_file, ":h")
  vim.o.runtimepath = vim.o.runtimepath .. "," .. current_dir
  -- OR
  -- vim.o.runtimepath = vim.o.runtimepath .. ",{YOUR_CONFIG_PATH}"

  require("init.keymap")
end
