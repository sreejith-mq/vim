set nocompatible
filetype off
let mapleader=","
set tabstop=4
set shiftwidth=4
set expandtab
set number

" Bind nohl
" " Removes highlight of your last search
" " ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase


filetype plugin indent on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" ==============================================================================
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
"------------------------------------------------------------------------------

" ==============================================================================
" Install powerline to get a nice status bar at the bottom
" You should install the fonts from https://github.com/powerline/fonts
" after this to work
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2
"------------------------------------------------------------------------------

" ==============================================================================
" For git integration
Bundle 'tpope/vim-fugitive'
"------------------------------------------------------------------------------

" ==============================================================================
" For getting the file browser NerdTree
Bundle 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>
"------------------------------------------------------------------------------

" ==============================================================================
Bundle 'klen/python-mode'
" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator
" modes)
" ]]            Jump on next class or function (normal, visual, operator
" modes)
" [M            Jump on previous class or method (normal, visual, operator
" modes)
" ]M            Jump on next class or method (normal, visual, operator
" modes)
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

"-----------------------------------------------------------------------------------

" ==============================================================================
" Jedi-vim for all manners for python code completion
Bundle 'davidhalter/jedi-vim'
"-----------------------------------------------------------------------------------


" ==============================================================================
" For getting commenting going with <leader>cc
Bundle 'scrooloose/nerdcommenter'
"-----------------------------------------------------------------------------------


augroup vimrc_autocmds
    autocmd!
	" highlight characters past column 120
	autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
	autocmd FileType python match Excess /\%120v.*/
	autocmd FileType python set nowrap
	augroup END

