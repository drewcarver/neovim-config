return {
  'ThePrimeagen/harpoon',
  config = function()
    local harpoonMark = require('harpoon.mark')
    local harpoonUI = require('harpoon.ui')

    vim.keymap.set('n', '<leader>hm', harpoonMark.add_file, {})
    vim.keymap.set('n', '<leader>hu', harpoonUI.toggle_quick_menu, {})
    vim.keymap.set('n', '<leader>hn', harpoonUI.nav_next, {})
    vim.keymap.set('n', '<leader>hp', harpoonUI.nav_prev, {})
  end
}
