"
" Vim plugins (managed with vim-plug)
"
silent! call plug#begin('~/.vim/plugged') " Silent is set to avoid a warning on machines without git
Plug 'vim-airline/vim-airline' " Status line
Plug 'tpope/vim-fugitive' " Git integration
Plug 'morhetz/gruvbox' " Gruvbox colorscheme
Plug 'posva/vim-vue' " VueJS single file components support
Plug 'mbbill/undotree' " Display the undo history as a tree
Plug 'editorconfig/editorconfig-vim' " Make vim aware of .editorconfig files
Plug 'tpope/vim-surround' " Quickly Change brackets, tags, quotes arround 
Plug 'mattn/emmet-vim' " Improve web dev workflow, https://emmet.io/
Plug 'ap/vim-css-color' " Display colored hex color codes
Plug 'w0rp/ale' " Asynchronous syntax checker
call plug#end()
" Plugin config are defined near the end of this file

"
" Global vim behavior config
"
set number " Display line number
syntax on " Syntax coloration
set tabpagemax=1000 " Moar tabs
set ic " Insensitive case search (Warn : also active using the search & replace functionality)
set incsearch " Tell vim to search while typing
set laststatus=2 " Keep status always on 
set encoding=utf-8 " Open all files as utf-8
set termguicolors " Tell vim to use as much colors as the terminal emulator support
" Tabulation
set tabstop=4
set shiftwidth=4
set expandtab
" Colorscheme settings
set background=dark
if filereadable( expand("$HOME/.vim/plugged/gruvbox/colors/gruvbox.vim") )
    colorscheme gruvbox
endif
" Default splits opening below (split) and right (vsplit)
set splitbelow
set splitright
" Persist undo history after file saved (works only when the file is modified with vim by the same user)
if has("persistent_undo")
    " Making sure to have the directory to store changes of a file between each file editions
    silent !mkdir -p ~/.vim_undodir
    set undodir=~/.vim_undodir/
    set undofile
endif

"
" Keyboard shortcuts
"

" Remap // in visual mode to search text under the cursor
vnoremap // y/<C-R>"<CR>
nmap <space>u :UndotreeToggle<cr>
nmap <space>/ :noh<cr>
" vim-fugitive shortcuts
nmap <space>gb :Gblame<cr>
nmap <space>gs :Gstatus<cr>
nmap <space>gc :Gcommit -v<cr>
nmap <space>ga :Git add -p<cr>
nmap <space>gm :Gcommit --amend<cr>
nmap <space>gp :Gpush<cr>
nmap <space>gd :Gdiff<cr>
nmap <space>gw :Gwrite<cr>

"
" Vim plugins configurations
"

" ALE conf
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:ale_fixers = {
\  'javascript': ['eslint'],
\}

"
" Special fixes
"

" Vim conf to avoid losing syntax coloration on Vue files
let g:vue_disable_pre_processors=1
autocmd FileType vue syntax sync fromstart
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue
