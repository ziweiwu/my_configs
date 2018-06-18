"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                   General Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off
set encoding=utf-8
syntax enable
syntax on
"set autoread "read the changes in the file
"set incsearch "browser like search"
"set hlsearch "highlight search result

"prevent cursor blinking"
set gcr=a:block-blinkon0
set clipboard=unnamed
set mouse=a
set number
set ts=2
set autoindent
set smartindent
set hlsearch
set expandtab
set shiftwidth=2
"set cursorline
set showmatch
set breakindent
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-d> "+d

" Set extra options when running in GUI mode
if has("gui_running")
    colorscheme dracula
endif

set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                   Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
"Plug 'ntpeters/vim-better-whitespace'
Plug 'mileszs/ack.vim'
Plug 'agfline/c-syntax.vim'
Plug 'ekalinin/Dockerfile.vim'
"Plug 'altercation/vim-colors-solarized'
Plug 'gabrielelana/vim-markdown'
"Plug 'ervandew/supertab'
"Plug 'kien/ctrlp.vim'
Plug 'vim-latex/vim-latex'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
"Plug 'ajh17/VimCompletesMe'
"Plug 'scrooloose/nerdtree'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'junegunn/fzf' "fuzzy search
Plug 'tpope/vim-surround'
"Plug 'vim-latex/vim-latex'
Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'justinmk/vim-sneak'
"Plug 'nikvdp/ejs-syntax'
Plug 'jiangmiao/auto-pairs'
Plug 'rhysd/vim-clang-format'
Plug 'Chiel92/vim-autoformat'
Plug 'mattn/emmet-vim'
Plug 'marijnh/tern_for_vim'
"Plug 'vim-syntastic/syntastic'
"Plug 'w0rp/ale'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'enricobacis/vim-airline-clock'
"Plug 'shime/vim-livedown'
Plug 'scrooloose/nerdcommenter'
Plug 'itchyny/vim-parenmatch'
Plug 'tpope/vim-fugitive'
Plug 'digitaltoad/vim-pug'

call plug#end()
"disable folding in mark down
let g:vim_markdown_folding_disabled = 1

"Silence bell
set noerrorbells visualbell t_vb=
if has('autocmd')
    autocmd GUIEnter * set visualbell t_vb=
endif
"===============================================================
"  YCM
"================================================================
"You complete me"
let g:ycm_global_ycm_extra_conf = '/Users/ziweiwu/school/ycm_extra_conf.py'
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_auto_trigger = 1
let g:ycm_filetype_blacklist = {
            \ 'tagbar' : 1,
            \ 'md' : 1,
            \ 'txt' : 1,
            \ 'qf' : 1,
            \ 'unite' : 1,
            \ 'text' : 1,
            \ 'vimwiki' : 1,
            \ 'pandoc' : 1,
            \ 'infolog' : 1,
            \ 'mail' : 1
            \}
let g:ycm_complete_in_strings = 1 "string completion
"tern start for YCM
let g:tern#command = ['tern']

"===============================================================
"   code snippet
"================================================================
"c++ snippet"
nnoremap ,cout :-1read /Users/ziweiwu/school/code_snippets/cout.cpp<CR>4whi
nnoremap ,valid :-1read /Users/ziweiwu/school/code_snippets/input_validation.cpp<CR>

"html snippet"
nnoremap ,html :-1read /Users/ziweiwu/school/code_snippets/html_template.html<CR>

"===============================================================
"   Plugin settings
"================================================================
"mapping for fzf
noremap <Leader>f :FZF<CR>

"quick key to save file \s
noremap <Leader>s :update<CR>

let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
nnoremap <Leader>g :NERDTreeToggle<Enter>
"===============================================================
"   vim markdown settings
"================================================================
let g:markdown_enable_spell_checking = 0
let g:jsx_ext_required = 0

"===============================================================
"   autoformat
"================================================================
noremap <Leader>r :Autoformat<CR>
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

"===============================================================
"   Linter
"================================================================
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11"}

"===============================================================
"  color theme
"================================================================
set laststatus=2
if has("nvim")
   colorscheme slate
endif
"===============================================================
" automatic actions
"================================================================
"remove white space in code on save"
"however enable this causes problems when using git in a team setting""
"autocmd BufEnter * EnableStripWhitespaceOnSave

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                   Terminal
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("mvim")
   set tms=200x50
endif
