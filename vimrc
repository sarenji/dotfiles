" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

setl fo=aw2tq    " format option to autowrap

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif

set history=50		" keep 50 lines of command line history
set ruler		      " show the cursor position
set showcmd		    " display incomplete commands

set ttyfast     " optimize for fast terminal connections

" Searches!
set incsearch		" do incremental searching
set ignorecase  " case-insensitive searches
set smartcase   " ... unless they contain 1+ capital letter.

" Soft tabs!
set expandtab
set tabstop=2
set shiftwidth=2

set splitright       " new vsplit screen splits to the right
set splitbelow       " new split screen splits to the bottom

" Syntastic!
let g:syntastic_enable_signs=1

set number           " display line numbers
set cursorline       " highlight current line
set nolist           " don't display whitespace

set noerrorbells     " Disable error bells
set nostartofline    " Don’t reset cursor to start of line when moving around.
set visualbell t_vb= " turn off error beep/flash
set novisualbell     " turn off visual bell

" Colors
let &t_Co=256        " vim thinks the terminal only supports 8 colors.
colorscheme molokai

" Status Bar
set wildmenu      " tab complete status bar
set laststatus=2  " always show the status bar
set statusline=%<%f\ %h%w%m%r%y\ %{&ff}\ %=L:%l/%L\ (%p%%)\ C:%c%V\ B:%o\ F:%{foldlevel('.')} 

set showmode          " show the current mode
set title             " show filename in window titlebar

" Use relative line numbers
if exists("&relativenumber")
  set relativenumber
  au BufReadPost * set relativenumber
endif

" Mac OS X copy/paste!
nmap <F1> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
imap <F1> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
nmap <F2> :.w !pbcopy<CR><CR>
vmap <F2> :w !pbcopy<CR><CR>

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

au BufRead,BufNewFile *.scss set filetype=scss
call pathogen#infect()
