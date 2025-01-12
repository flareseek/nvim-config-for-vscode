if vim.g.vscode then
  -- if the -u option is used
  local current_file = debug.getinfo(1, "S").source:sub(2)
  local current_dir = vim.fn.fnamemodify(current_file, ":h")
  vim.o.runtimepath = vim.o.runtimepath .. "," .. current_dir
  -- OR
  -- vim.o.runtimepath = vim.o.runtimepath .. ",{YOUR_CONFIG_PATH}"

  require("init.keymap")
  vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
      vim.opt.ignorecase = true
    end,
  })
end
