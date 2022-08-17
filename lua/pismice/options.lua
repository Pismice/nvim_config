local options = {
   backup = false, -- creates a backup file
   clipboard = "unnamedplus", -- allows neovim to access the system clipboard
   cmdheight = 2, -- more space in the neovim command line for displaying messages
   mouse = "a", -- allow the mouse to be used in neovim
   pumheight = 10, -- pop up menu height
   smartcase = true, -- smart case
   smartindent = true, -- make indenting smarter again
   splitbelow = true, -- force all horizontal splits to go below current window
   splitright = true, -- force all vertical splits to go to the right of current window
   termguicolors = true, -- set term gui colors (most terminals support this)
   timeoutlen = 100, -- time to wait for a mapped sequence to complete (in milliseconds)
   undofile = true, -- enable persistent undo
   updatetime = 300, -- faster completion (4000ms default)
   expandtab = true, -- convert tabs to spaces
   shiftwidth = 3, -- the number of spaces inserted for each indentation
   tabstop = 3, -- insert 2 spaces for a tab
   number = true, -- set numbered lines
   relativenumber = true, -- set relative numbered lines
   numberwidth = 3, -- set number column width to 2 {default 4}
   signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
   wrap = false, -- display lines as one long line
   scrolloff = 8, -- is one of my fav
   sidescrolloff = 8,
   guifont = "monospace:h17", -- the font used in graphical neovim applications
}

vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
-- or
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]

vim.g.mapleader = " "

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
   vim.opt[k] = v
end
