"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle
"    https://github.com/VundleVim/Vundle.vim#about
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'airblade/vim-gitgutter'

Plugin 'tpope/vim-fugitive'

" You need to install YouCompleteMe following these instructions:
" https://github.com/Valloric/YouCompleteMe#mac-os-x
" Replace mac default vim with mvim (http://superuser.com/a/334271):
" brew install macvim --with-override-system-vim
Plugin 'Valloric/YouCompleteMe'
Plugin 'Townk/vim-autoclose'
Plugin 'ap/vim-css-color'
Plugin 'vim-syntastic/syntastic'
Plugin 'alvan/vim-closetag'
Plugin 'terryma/vim-expand-region'
Plugin 'Yggdroot/indentLine'
Plugin 'yonchu/accelerated-smooth-scroll'
Plugin 'lepture/vim-jinja'
"Plugin 'elzr/vim-json'
"Plugin 'tpope/vim-surround'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



set encoding=utf-8



" Comma as a Leader
let mapleader = ","



" Syntax highlighting

" Enable syntax highighting
syntax enable
" 256 colours please
set t_Co=256
" Dark solarized scheme
set background=dark
colorscheme solarized



" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500



" CtrlP
"set runtimepath^=~/.vim/bundle/ctrlp.vim



" Set relevant filetypes
au BufRead,BufNewFile *.scss set filetype=css
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.hbs set filetype=html
au BufNewFile,BufRead *.nunjucks set ft=jinja



" Buffer management

" Open splits to the right or below; more natural than the default
set splitright
set splitbelow
" Set the working directory to wherever the open file lives (can be problematic)
set autochdir
" set path+=**
" Show file options above the command line
set wildmenu



" Text management

" 2 spaces please
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
" Round indent to nearest multiple of 2
set shiftround
" No line-wrapping
set nowrap
" Spell-check always on
set spell
" Underscores denote words
set iskeyword-=_
" No extra spaces when joining lines
set nojoinspaces
" Interpret numbers with leading zeroes as decimal, not octal
set nrformats=



" Interactions

" Start scrolling slightly before the cursor reaches an edge
set scrolloff=3
set sidescrolloff=5
" Scroll sideways a character at a time, rather than a screen at a time
set sidescroll=1
" Allow motions and back-spacing over line-endings etc
set backspace=indent,eol,start
set whichwrap=h,l,b,<,>,~,[,]



" Visual decorations

" Show status line
set laststatus=2
" Show what mode you're currently in
set showmode
" Show what commands you're typing
set showcmd
" Allow modelines
set modeline
" Show current line and column position in file
set ruler
" Show file title in terminal tab
set title
" Show invisibles
set list
set listchars=tab:»-,trail:•
" Set relative line numbers...
set relativenumber
" ...but absolute numbers on the current line
set number
" Limit line-length to 80 columns by highlighting col 81 onward
set colorcolumn=81
" Force cursor onto a new line after 80 characters
set textwidth=80
" Highlight current line
set cursorline



" Search

" Don't keep results highlighted after searching...
set nohlsearch
" ...just highlight as we type
set incsearch
" Ignore case when searching...
set ignorecase
" ...except if we input a capital letter
set smartcase



" Key mappings

" jj to throw you into normal mode from insert mode
inoremap jj <esc>
" jk to throw you into normal mode from insert mode
inoremap jk <esc>
" Disable arrow keys (hardcore)
map  <up>    <nop>
imap <up>    <nop>
map  <down>  <nop>
imap <down>  <nop>
map  <left>  <nop>
imap <left>  <nop>
map  <right> <nop>
imap <right> <nop>
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
" Make `Y` behave like `C` and `D`
map Y y$
" `vv` to highlight just the text (i.e. no indents) in a line
map vv ^vg_
" `<Cr` in normal mode inserts a break at the cursor and enters insert mode
nnoremap <Cr> i<CR><ESC>I
" `G` skips to bottom of file and places line in middle of screen
nnoremap G :norm! Gzz<CR>
" Switch to previous window
map <leader>` <C-w><C-p>
" Vim-like window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" `gb` switches to next buffer, like `gt` does with tabs
nnoremap gb :bn<Cr>
" `gB` switches to previous buffer, like `gT` does with tabs
nnoremap gB :bp<Cr>
" `gf` opens file under cursor in a new vertical split
nnoremap gf :vertical wincmd f<CR>
" `gF` opens file under cursor in a new split
nnoremap gF <C-w>f
" Toggle `hlsearch` with comma/
nnoremap <leader>/ :set hlsearch!<CR>


" Make keypad function correctly
map <Esc>Oq 1
map <Esc>Or 2
map <Esc>Os 3
map <Esc>Ot 4
map <Esc>Ou 5
map <Esc>Ov 6
map <Esc>Ow 7
map <Esc>Ox 8
map <Esc>Oy 9
map <Esc>Op 0
map <Esc>On .
map <Esc>OQ /
map <Esc>OR *
map <kPlus> +
map <Esc>OS -
map <Esc>OM <CR>
map! <Esc>Oq 1
map! <Esc>Or 2
map! <Esc>Os 3
map! <Esc>Ot 4
map! <Esc>Ou 5
map! <Esc>Ov 6
map! <Esc>Ow 7
map! <Esc>Ox 8
map! <Esc>Oy 9
map! <Esc>Op 0
map! <Esc>On .
map! <Esc>OQ /
map! <Esc>OR *
map! <kPlus> +
map! <Esc>OS -
map! <Esc>OM <CR>



" Copy & paste to system clipboard with ,p and ,y
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P



" Abbreviations and auto-completions, does not seem to work with autocomplete

" lipsum<Enter> drops some Lorem ipsum text into the document
iab lipsum Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.
" Insert email address
"iab @@ mats.tuovinen@gmail.com



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "SETTINGS FOR VARIOUS PLUGINS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Closetag plugin options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.js,*.nunjucks"



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-airline plugin options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#whitespace#enabled = 1

let g:airline_theme='solarized'
" let g:airline_theme='powerlineish'

" Set powerline fonts. Fonts should be installed and then activated in iTerm2:
" Profile -> Text -> Non-ASCII Font = 12pt DejaVu Sans Mono for Powerline
" http://vi.stackexchange.com/a/3363
let g:airline_powerline_fonts = 1



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree plugin options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree

" Run NERDTree as soon as we launch Vim...
autocmd vimenter * NERDTree
"" ...but focus on the file itself, rather than NERDTree
autocmd VimEnter * wincmd p
" Close Vim if only NERDTree is left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDCommenter plugin options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1"
" Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'"
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1"
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1"

" Press ,, to toggle comments
map <leader><leader> <leader>c<space>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CTRL-P plugin options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe

"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic plugin options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
