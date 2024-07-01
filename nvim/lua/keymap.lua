vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
-- vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Buffer navigation
vim.keymap.set("n", "<Tab>", "<cmd>:bnext<CR>", { desc = "<Tab> to next buffer" })
vim.keymap.set("n", "<S-Tab>", "<cmd>:bprev<CR>", { desc = "<Shift+Tab> to previous buffer" })
vim.keymap.set("n", "<C-N>", "<cmd>:enew<CR>", { desc = "<Ctrl+N> to open a new buffer" })

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("n", "<leader><left>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<leader><right>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<leader><down>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<leader><up>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Tabbing --
vim.keymap.set("i", "<S-Tab>", "<C-d>", { desc = "Decrease tab" })
