-- vim.g.mapleader = " "
local vscode = require('vscode')

-- > cursor
vim.keymap.set('n', 'j', function()
  local count = vim.v.count == 0 and 1 or vim.v.count
  vscode.call("cursorMove", {
    args = {
      to = "down",
      by = "wrappedLine",
      value = count,
    }
  })
end, { silent = true })
vim.keymap.set('n', 'k', function()
  local count = vim.v.count == 0 and 1 or vim.v.count
  vscode.call("cursorMove", {
    args = {
      to = "up",
      by = "wrappedLine",
      value = count,
    }
  })
end, { silent = true })
-- vim.keymap.set('n', 'j', 'gj', { silent = true })
-- vim.keymap.set('n', 'k', 'gk', { silent = true })
-- >

-- > fold
vim.keymap.set('n', 'zM', function() vscode.call("editor.foldAll") end, { silent = true })
vim.keymap.set('n', 'zR', function() vscode.call("editor.unfoldAll") end, { silent = true })
vim.keymap.set('n', 'zc', function() vscode.call("editor.fold") end, { silent = true })
vim.keymap.set('n', 'zC', function() vscode.call("editor.foldRecursively") end, { silent = true })
vim.keymap.set('n', 'zo', function() vscode.call("editor.unfold") end, { silent = true })
vim.keymap.set('n', 'zO', function() vscode.call("editor.unfoldRecursively") end, { silent = true })
vim.keymap.set('n', 'za', function() vscode.call("editor.toggleFold") end, { silent = true })
-- >

-- > explorer
-- vim.keymap.set('n', '<leader>t', function() vim.cmd('call VSCodeNotify("workbench.action.toggleSidebarVisibility")') end, { silent = true })
-- vim.keymap.set('n', '<leader>f', function() vim.cmd('call VSCodeNotify("workbench.view.explorer")') end, { silent = true })
-- >
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.opt.ignorecase = true
  end,
})
