return {
  'ThePrimeagen/harpoon',
  config = function()
    local harpoonMark = require('harpoon.mark')
    local harpoonUI = require('harpoon.ui')

    vim.keymap.set('n', '<leader>hm', harpoonMark.add_file, {})
    vim.keymap.set('n', '<leader>hu', harpoonUI.toggle_quick_menu, {})
    vim.keymap.set('n', '<leader>hn', harpoonUI.nav_next, {})
    vim.keymap.set('n', '<leader>hp', harpoonUI.nav_prev, {})
    vim.keymap.set('n', '<leader>h1', function() harpoonUI.nav_file(1) end, {})
    vim.keymap.set('n', '<leader>h2', function() harpoonUI.nav_file(2) end, {})
    vim.keymap.set('n', '<leader>h3', function() harpoonUI.nav_file(3) end, {})
    vim.keymap.set('n', '<leader>h4', function() harpoonUI.nav_file(4) end, {})
    vim.keymap.set('n', '<leader>h5', function() harpoonUI.nav_file(5) end, {})
    vim.keymap.set('n', '<leader>h6', function() harpoonUI.nav_file(6) end, {})
  end
}
