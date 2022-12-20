print("harpoon0")
-- import harpoon plugin safely
local status, mark = pcall(require, "harpoon.mark")
if not status then
  return
end

print("harpoon1")

local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>aa", mark.add_file, { desc = 'Harpoon [a]dd file' })
vim.keymap.set("n", "<leader>ee", ui.toggle_quick_menu, { desc = 'Harpoon [e]xplore files' })

vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end, { desc = 'Harpoon open file 1' })
vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end, { desc = 'Harpoon open file 2' })
vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end, { desc = 'Harpoon open file 3' })
vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end, { desc = 'Harpoon open file 4' })
