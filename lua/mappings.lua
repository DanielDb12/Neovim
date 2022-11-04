-- Define Mapleader
vim.g.mapleader = ' '

-- Escape from insert mode
vim.keymap.set('i', '<C-c>', '<Esc>')

-- Duplicate Line
vim.keymap.set('n', 'tt', ':t.<CR>')

-- Toggle Numbers
vim.keymap.set('n', '<leader>n', ':set nu! rnu!<CR>')

-- Turn off search highlighting
vim.keymap.set('n', '<Esc>', ':noh<CR>')

-- Get out of the Terminal
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- Resize with arrows
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>')
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>')
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>')
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>')

-- Copy to OS clipboard.
vim.keymap.set('n', '<Leader>y', '"+y')
vim.keymap.set('v', '<Leader>y', '"+y')
vim.keymap.set('n', '<Leader>yy', '"+yy')

-- Paste from OS clipboard
vim.keymap.set('n', '<Leader>p', '"+p')
vim.keymap.set('n', '<Leader>P', '"+P')
vim.keymap.set('v', '<Leader>p', '"+p')
vim.keymap.set('v', '<Leader>P', '"+P"`"`"')

vim.keymap.set('n', 'J', 'mzJ`z')

-- Plugins Mappings ↓

vim.keymap.set('n', '<C-F>', ':Telescope live_grep<CR>')
vim.keymap.set('n', '<C-P>', ':Telescope find_files<CR>')

vim.keymap.set('n', '<C-n>', ':Ranger<CR>')


--Save
vim.keymap.set('n', '<C-d>', ':w!<CR>')

--bufferdelete
vim.keymap.set('n', '<C-x>', ':bdelete<CR>')

vim.keymap.set('n', '<C-Tab>', ':bprevious')

--java
vim.keymap.set('n','<F8>',':!javac % <CR>')
vim.keymap.set('n', '<F9>', ':terminal java % <CR>i')

--pretty
vim.keymap.set('n','<C-a>',':Pretty')

--Prettier
vim.keymap.set('n','<C-c>',':Prettier<CR>');

vim.keymap.set('n','<C-n>',':NvimTreeToggle<CR>');

--coc-explorer
vim.keymap.set('n','<C-b>', '')

vim.cmd([[
nnoremap <silent> <M-Up>    :<C-U>exec "exec 'norm m`' \| move -" . (1+v:count1)<CR>``
nnoremap <silent> <M-Down>  :<C-U>exec "exec 'norm m`' \| move +" . (0+v:count1)<CR>``
vnoremap <silent> <M-Up>    :<C-U>exec "'<,'>move '<-" . (1+v:count1)<CR>gv
vnoremap <silent> <M-Down>  :<C-U>exec "'<,'>move '>+" . (0+v:count1)<CR>gv
nnoremap <silent> <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>



inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<C-g>u\<TAB>"


]])
