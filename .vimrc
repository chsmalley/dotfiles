" Necesary  for lots of cool vim things
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
Plugin 'VundleVim/Vundle.vim'

Plugin 'andviro/flake8-vim'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()           " required
filetype plugin indent on   " required


"set ruler

" This shows what you are typing as a command.  I love this!
set showcmd

" Folding Stuffs
set foldmethod=marker

" Needed for Syntax Highlighting and stuff
filetype on
filetype plugin on
syntax enable
set grepprg=grep\ -nH\ $*

" Who doesn't like autoindent?
set autoindent
set smartindent

" Spaces are better than a tab character
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

set textwidth=78 "another useful value is 78
set wrapmargin=0

set tags=./tags;

"Status line gnarliness
set laststatus=2
set statusline=%F%m%r%h%w%<\ (%{&ff}){%Y}\ %=%l,%v\ %p%%

" LOOK AND FEEL
" Favorite Color Scheme
if has("gui_running")
   "colorscheme inkpot
   " Remove Toolbar
   set guioptions-=m
   set guioptions-=M
   set guioptions-=T
   "Terminus is AWESOME
   "set guifont=Terminus\ 9
   hi statusline guifg=White guibg=Blue ctermfg=Black ctermbg=Blue
else
   "colorscheme metacosm
   hi statusline guifg=White guibg=Blue ctermfg=Black ctermbg=Blue
endif


set hidden
set backspace=2

let g:tex_flavor='latex'
let g:text_comment_nospell=1
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats = 'dvi,pdf'
:autocmd BufEnter *.tex syntax cluster texCommentGroup contains=texTodo,@NoSpell
"set spell

function! MySetXeTeX()
    let g:Tex_CompileRule_pdf = 'xelatex -shell-escape -interaction=nonstopmode $*'
endfunction
map <Leader>lx :<C-U>call MySetXeTeX()<CR>

