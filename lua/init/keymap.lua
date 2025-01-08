vim.g.mapleader = ","

-- > cursor
vim.keymap.set('n', 'j', function() vim.cmd('call VSCodeCall("cursorDown")') end, { silent = true })
vim.keymap.set('n', 'k', function() vim.cmd('call VSCodeCall("cursorUp")') end, { silent = true })
-- >

-- > fold
vim.keymap.set('n', 'zM', function() vim.cmd('call VSCodeNotify("editor.foldAll")') end, { silent = true })
vim.keymap.set('n', 'zR', function() vim.cmd('call VSCodeNotify("editor.unfoldAll")') end, { silent = true })
vim.keymap.set('n', 'zc', function() vim.cmd('call VSCodeNotify("editor.fold")') end, { silent = true })
vim.keymap.set('n', 'zC', function() vim.cmd('call VSCodeNotify("editor.foldRecursively")') end, { silent = true })
vim.keymap.set('n', 'zo', function() vim.cmd('call VSCodeNotify("editor.unfold")') end, { silent = true })
vim.keymap.set('n', 'zO', function() vim.cmd('call VSCodeNotify("editor.unfoldRecursively")') end, { silent = true })
vim.keymap.set('n', 'za', function() vim.cmd('call VSCodeNotify("editor.toggleFold")') end, { silent = true })
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
