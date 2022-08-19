-----------------
--Data Settings--
-----------------

vim.cmd('set noswapfile')
vim.cmd('set nowritebackup')

---------
--Lines--
---------

vim.cmd('set linebreak')

------------
--Spelling--
------------

vim.cmd('set spell spelllang=en_us')

------------
--Vim Plug--
------------

local Plug = vim.fn['plug#']

--------------------------------------------------------------
--The default plugin directory will be as follows:          --
--Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'--
--------------------------------------------------------------

vim.call('plug#begin')

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'preservim/vim-pencil'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'base16-project/base16-vim'

vim.call('plug#end')

-----------------
--Color Control--
-----------------

vim.cmd('syntax on')
vim.cmd('set termguicolors')
vim.cmd(':colorscheme base16-colors')
vim.cmd(':hi Normal guibg=NONE ctermbg=NONE')
vim.cmd(':hi LineNr guibg=NONE ctermbg=NONE')
vim.cmd(':hi SignColumn guibg=NONE')

---------------
--KEYBINDINGS--
---------------

local bindsym = vim.keymap.set

---------------
--Save & Quit--
---------------

bindsym('i', '<A-s>', '<Esc><cmd>w<CR>')
bindsym('n', '<A-q>', '<cmd>x<CR>')

-------------
--Splitting--
-------------

bindsym('n', '<A-C-h>', '<C-w>s>') --horizontal-split
bindsym('n', '<A-C-v>', '<C-w>v>') --vertical-split

-------------------
--Splits Resizing--
-------------------

bindsym('n', '<C-h>', '<cmd>:vertical resize -2<CR>')
bindsym('n', '<C-j>', '<cmd>:resize -2<CR>')
bindsym('n', '<C-k>', '<cmd>:resize +2<CR>')
bindsym('n', '<C-l>', '<cmd>:vertical resize +2<CR>')

-------------------
--Splits Toggling--
-------------------

bindsym('n', '<A-h>',     '<C-w>h')
bindsym('n', '<A-j>',     '<C-w>j')
bindsym('n', '<A-k>',     '<C-w>k')
bindsym('n', '<A-l>',     '<C-w>l')

--------
--Tabs--
--------

bindsym('i', '<A-Insert>', '<cmd>:tabnew<CR>')
bindsym('n', '<A-Insert>', '<cmd>:tabnew<CR>')
bindsym('i', '<C-A-w>',    '<cmd>:tabclose<CR>')
bindsym('n', '<C-A-w>',    '<cmd>:tabclose<CR>')
bindsym('i', '<A-[>',      '<cmd>:tabprevious<CR>')
bindsym('n', '<A-[>',      '<cmd>:tabprevious<CR>')
bindsym('i', '<A-]>',      '<cmd>:tabnext<CR>')
bindsym('n', '<A-]>',      '<cmd>:tabnext<CR>')
