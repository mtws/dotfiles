"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use Vim settings, rather then Vi settings (much better!).
set nocompatible


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set backupdirectories
set backupdir=~/vimtmp,.
set directory=~/vimtmp,.

"set nobackup
"set nowritebackup
"set noswapfile

" Detect filetype
:filetype plugin on


" Associate filetypes
au BufRead,BufNewFile *.tt setfiletype html
au BufRead,BufNewFile *.scss set filetype=css

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Interactions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start scrolling slightly before the cursor reaches an edge
set scrolloff=3
set sidescrolloff=5

" Scroll sideways a character at a time, rather than a screen at a time
set sidescroll=1

"Allow motions and back-spacing over line-endings etc
set backspace=indent,eol,start
set whichwrap=h,l,b,<,>,~,[,]


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show status line
set laststatus=2

" Show what mode you.re currently in
set showmode

" Show what commands youre typing (how many characters are being selected)
set showcmd

" Allow modelines
set modeline

" Show the cursor position all the time
set ruler

"Highlight current line
set cursorline

" Show file title in terminal tab
set title

" Show line number...
set number
" ...and set them relative to the current line
"if exists("+relativenumber")
"    set relativenumber
"else
"    set number
"endif
" Limit line-length to 80 columns by highlighting col 81 onward
if exists("+colorcolumn")
    set colorcolumn=81
endif

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Show  tab characters. Visual Whitespace.
"set list

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
" http://tedlogan.com/techblog3.html
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
set softtabstop=2
" Round indent to nearst multiple of 2
set shiftround


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme settings
set t_Co=256
if &term =~ "xterm"
 set t_Co=256
 if has("terminfo")
   let &t_Sf=nr2char(27).'[3%p1%dm'
   let &t_Sb=nr2char(27).'[4%p1%dm'
 else
   let &t_Sf=nr2char(27).'[3%dm'
   let &t_Sb=nr2char(27).'[4%dm'
 endif
endif

"colorscheme xoria256
colorscheme zenburn
"set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM history
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VimTip 80: Restore cursor to file position in previous editing session
" " for unix/linux/solaris
" set viminfo='10,\"100,:20,%,n~/.viminfo
" Tell vim to remember certain things when we exit
" "  '10  :  marks will be remembered for up to 10 previously edited files
" "  "100 :  will save up to 100 lines for each register
" "  :20  :  up to 20 lines of command-line history will be remembered
" "  %    :  saves and restores the buffer list
" "  n... :  where to save the viminfo files
" Uncommenet everything below this line if histury doesnt work by default
"set viminfo='10,\"100,:20,%,n~/.viminfo
"
"function! ResCur()
"  if line("'\"") <= line("$")
"    normal! g`"
"    return 1
"  endif
"endfunction
"
"augroup resCur
"  autocmd!
"  autocmd BufWinEnter * call ResCur()
"augroup END
