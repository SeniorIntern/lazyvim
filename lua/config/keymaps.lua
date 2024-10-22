-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local set = vim.keymap.set

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
set("n", "<leader>fq", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- open netrw
set("n", "<leader>ex", vim.cmd.Ex)

-- move visual block up, down
set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")

set("n", "J", "mzJ`z")
-- append the line below to current line

-- jump up, down half page
set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")

-- allows search term to stay in the middle
set("n", "n", "nzzzv")
set("n", "N", "Nzzzv")

-- preserve value when paste
set("x", "<leader>p", [["_dP]])

-- delete without yanking
set({ "n", "v" }, "<leader>d", [["_d]])
