local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", ":", ";", { desc = "Repeat last f/t/F/T" })

map("i", "jk", "<ESC>")

map("n", "<leader>/", "gcc", { desc = "Toggle Comment", remap = true })
map("v", "<leader>/", "gc", { desc = "Toggle comment", remap = true })

