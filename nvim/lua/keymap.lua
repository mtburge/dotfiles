vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Buffer navigation
vim.keymap.set("n", "<Tab>", "<cmd>:bnext<CR>", { desc = "<Tab> to next buffer" })
vim.keymap.set("n", "<S-Tab>", "<cmd>:bprev<CR>", { desc = "<Shift+Tab> to previous buffer" })
vim.keymap.set("n", "<leader><Tab>", "<C-^>", { desc = "<Leader+Tab> to last active buffer" })

-- Focus --
vim.keymap.set("n", "<leader><left>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<leader><right>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<leader><down>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<leader><up>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Tabbing --
vim.keymap.set("i", "<S-Tab>", "<C-d>", { desc = "Decrease tab" })

-- Trouble --
vim.keymap.set("n", "<leader>x", "<cmd>Trouble diagnostics toggle<CR>")
vim.keymap.set("n", "<leader>xt", "<cmd>Trouble todo toggle<CR>")
