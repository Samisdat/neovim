-- from the primagen
-- commented out what i don't know / or want

local keymap = vim.keymap -- for conciseness


--keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move around what ever is highlighted
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "J", "mzJ`z")

-- go up and down half page and keep cursor in the middle
keymap.set("n", "<C-d>", "<C-d>zz") 
keymap.set("n", "<C-u>", "<C-u>zz")

-- search and keep cursor in the middle
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
-- copy something and paste it over something else
-- without losing the first register
-- comment that out till I know if it helps me
--keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- yank into os clipboard
-- comment that out till I know if it helps me
--keymap.set({"n", "v"}, "<leader>y", [["+y]])
--keymap.set("n", "<leader>Y", [["+Y]])
--keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
-- keymap.set("i", "<C-c>", "<Esc>")

keymap.set("n", "Q", "<nop>")
-- keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
--keymap.set("n", "<leader>f", vim.lsp.buf.format)

keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

--keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
--keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
