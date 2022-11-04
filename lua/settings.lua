--AESTETHIC
--NUMBER
vim.wo.relativenumber = true
vim.o.relativenumber = true
vim.o.number = true
vim.wo.number = true

--Lines Longer
vim.wo.wrap = true
vim.o.wrap = true

-- But don't break words
vim.wo.linebreak = true

--SplitBelow
vim.o.splitbelow = true

--SplitRight
vim.o.splitright = true

--vim RGB color
vim.termguicolors = true

-- Dark Background
vim.o.background = 'dark'

--Emoji
vim.o.emoji = true

--Hightlight
vim.wo.cursorline = true

vim.cmd("colorscheme gruvbox ")

--------------------GENERAL------------------------------
--SYNTAX
vim.g.syntax_on = true
vim.o.synmaxcol = 1500

--Fold Stuff
vim.wo.foldenable = false
vim.wo.foldnestmax = 10
vim.wo.foldmethod = "syntax"

--Wor with several
vim.o.hidden = true

--Nice TIme
vim.o.updatetime = 250

--Tabs to Space
vim.o.expandtab = true
vim.bo.expandtab = true

--Correct level of identation
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2

-- special configuration fo each file
vim.o.softtabstop = 2
vim.bo.softtabstop = 2

--Autoident
vim.o.autoident = true
vim.bo.autoident = true

-- Hightlight search
vim.o.increseacrh = true
vim.o.hlsearch = true

--Ignorecase ims search pattern
vim.o.ignorecase = true

--Override the ignorecase
vim.o.smartcase = true

--Swapfile
vim.o.swapfile = true

-- Swapfile config
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.directory = vim.fn.expand(vim.fn.stdpath('data') .. '/swap//')

--Backup are nice
vim.o.backup = true

--Backup config
vim.o.backucopy = "yes"
vim.o.backupdir = vim.fn.expand(vim.fn.stdpath('data') .. '/backup//')

--Undofiles
vim.o.undofile = true
vim.o.undodir = vim.fn.expand(vim.fn.stdpath('data') .. '/undo//')

vim.o.inccommand = 'split'

local wildignored = {
        'tags',
        '*/__pycache__/*',
        'build/*',
        'build.?/*',
        '*/node_modules/*',
        '*/env/*',
        '*.png',
        '*.jpg',
        '*.jpeg',
        '*/migrations/*',
        '*/.git/*',
}

local wildignore = ''
for i = 1, #wildignored do
        wildignore = wildignore .. wildignored[i] .. ','
end

vim.o.wildignore = wildignore

local suffixesed = {
        '.aux',
        '.log',
        '.dvi',
        '.bbl',
        '.blg',
        '.brf',
        '.cb',
        '.ind',
        '.idx',
        '.ilg',
        '.inx',
        '.out',
        '.toc',
        '.o',
        '.obj',
        '.dll',
        '.class',
        '.pyc',
        '.ipynb',
        '.so',
        '.swp',
        '.zip',
        '.exe',
        '.jar',
        '.gz',
}

local suffixes = ''
for i = 1, #suffixesed do
        suffixes = suffixes .. suffixesed[i] .. ','
end

vim.o.suffixes = suffixes

vim.o.wildignorecase = true
vim.o.wildcharm = 26

vim.o.wildmenu = true
vim.o.wildmode = 'longest:full,full'

vim.o.scrolloff = 3
vim.o.sidescrolloff = 3

vim.o.grepprg = 'rg --vimgrep --no-heading --hidden --smart-case --no-ignore-vcs'
vim.o.grepformat = '%f:%l:%c:%m,%f:%l:%m'

--vim.o.completeopt = 'menuone,noinsert,noselect'

vim.o.lazyredraw = true

vim.o.errorformat = vim.o.errorformat .. ',%f'

vim.cmd('filetype plugin indent on')

vim.o.mouse ='v'

vim.o.ttyfast = true

vim.o.ff = 'unix'

vim.g.history = 1000

vim.cmd([['

let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:user_emmet_node='n'
let g:user_emmet_leader_keys=','
let g:user_emmet_settings = {
\  'variables': {'lang': 'ja'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."<head>\n"
\              ."\t<meta charset=\"${charset}\">\n"
\              ."\t<title></title>\n"
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."</head>\n"
\              ."<body>\n\t${child}|\n</body>\n"
\              ."</html>",
\    },
\  },
\ }

let g:user_emmet_settings = {
\'javascript':{
\   'extends':'jsx''css'
\}
\}

let g:prettier#autoformat = 1

let g:ranger_map_keys = 0




autocmd BufNewFile *.java
 \ exe "normal O/** " . expand('%:t:r') ".java\n/ \n\npublic class " . expand('%:t:r') .
 \ "\n{\n\tpublic " . expand('%:t:r') "(){}\n}\n//" . expand('%:t:r') ".java \<Esc>1G"

autocmd BufNewFile *.java call InsertJavaPackage()
function! InsertJavaPackage()
  let dir = getcwd()
  let dir = substitute(dir, "^.*\/com\/", "com/", "")
  let dir = substitute(dir, "\/", ".", "g")
  let dir = "package " . dir . ";"
  let result = append(0, "")
  let result = append(1, dir)
  let filename = expand("%")
  let filename = substitute(filename, "\.java", "", "")
  let result = append(2, "")
  let result = append(3, "class " . filename . " {")
  let result = append(4, "}")
endfunction








']])
