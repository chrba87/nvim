-- Set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

-- General
keymap.set("n", "<leader>pv", vim.cmd.Ex)
keymap.set("i", "ii", "<ESC>") -- exit insert mode with ii
keymap.set("n", "<leader>wq", ":wq<CR>") -- save and quit
keymap.set("n", "<leader>qq", ":q!<CR>") -- quit without saving
keymap.set("n", "<leader>ww", ":w<CR>") -- save
keymap.set("n", "gx", ":!open <c-r><c-a><CR>") -- open URL under cursor
keymap.set("n", "<c-d>" , "<c-d> zz")
keymap.set("n", "<c-u>" , "<c-u> zz")

-- Telescope
keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {})
keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, {})
keymap.set('n', '<leader>fw', function() 
	local word = vim.fn.expand("<cword>")
	require('telescope.builtin').grep_string({search = word}) 
	end) 
keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, {})
keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, {})
keymap.set('n', '<leader>fs', require('telescope.builtin').current_buffer_fuzzy_find, {})

-- Markdown - Allow j/k when navigating wrapped lines
keymap.set("n", "j", "gj")
keymap.set("n", "k", "gk")


-- Split window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>ss", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close split window
keymap.set("n", "<leader>sj", "<C-w>-") -- make split window height shorter
keymap.set("n", "<leader>sk", "<C-w>+") -- make split windows height taller
keymap.set("n", "<leader>sl", "<C-w>>5") -- make split windows width bigger 
keymap.set("n", "<leader>sh", "<C-w><5") -- make split windows width smaller

-- Obsidian
keymap.set("n", "<leader>os", ":ObsidianFollowLink<CR>")
keymap.set("n", "<leader>ov", ":ObsidianFollowLink vsplit<CR>")
keymap.set("n", "<leader>oh", ":ObsidianFollowLink hsplit<CR>")
