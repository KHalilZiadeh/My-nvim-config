-- Initialize global variable to keep track of the last visited tab
vim.g.lasttab = 1

-- Function to update the last visited tab number
local function update_last_tab()
  vim.g.lasttab = vim.fn.tabpagenr()
end

-- Setup an autocommand to update the last visited tab number on TabLeave
local function setup_autocmd()
  vim.api.nvim_create_augroup('TabTracking', { clear = true })
  vim.api.nvim_create_autocmd('TabLeave', {
    group = 'TabTracking',
    callback = update_last_tab
  })
end

-- Function to switch to the last visited tab
local function switch_to_last_tab()
  vim.cmd('tabnext ' .. vim.g.lasttab)
end

-- Initialize the module
local M = {
  setup = function()
    setup_autocmd()
  end,
  switch_to_last_tab = switch_to_last_tab
}

return M

