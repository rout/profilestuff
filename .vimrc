" vimrc of Thomas Witt <http://github.com/thomaswitt>
"
" You should have the following plugins
" from http://www.vim.org/scripts/
" BufOnly, FindFile, grep, miniBufExpl, rails, repeat,
" supertab, surround, tcomment
"
" You may also want the colorscheme vividchalk

set autoindent          " Always set autoindenting on
set autoread            " Re-read files that changed on disk
set background=light    " Switch this to dark for dark terminals
set backspace=2         " Allow backspacing over everything in insert mode
set cmdheight=2         " Height of the command line , avoid hit enter prompts
set confirm             " Use confirmation dialogs
set encoding=utf-8      " The terminal encoding
set expandtab           " Use the appropriate number of spaces to insert a <Tab>
set hidden              " Allow several buffers to be opened (and unsaved)
set ignorecase          " Case-insensitive search by default
set incsearch           " Incremental search shows the first match while typing
set laststatus=2        " Always show a status line
set list                " List mode:Show tabs as CTRL-I, show end of line with $
set modeline            " Read vim configuration from inside loaded files
set modelines=5         " Scan up to 5 lines for a modeline
set nocompatible        " Use Vim defaults (much better!)
set nostartofline       " Don't move the cursor to the first non blank char
set report=0            " Always report number of lines changed
set ruler               " Show the line and column number of the cursor position
set scrolloff=4         " Minimal number of lines above and below the cursor
set shiftwidth=2        " Number of spaces to use for each step of (auto)indent
set showcmd             " Show (partial) command in the last line of the screen
set showmatch           " Highlight matching brackets
set smartcase           " Respect case if the pattern contains upper case chars
set smarttab            " Insert tabs according to shiftwidth
set softtabstop=2       " Number of spaces that a <Tab> counts
set tabstop=2           " Number of spaces that a <Tab> in the file counts for
set textwidth=72        " Textwidth 72 chars
set title               " Set/change the window title
set visualbell          " Use visual bell instead of a sound
set whichwrap=<,>,[,]   " dont wrap at these special movements
set wildignore+=.git    " Ignore .git repositories
set wildmenu            " Command-line completion operates in an enhanced mode
set wrap                " Display long lines wrapped

set formatoptions=ctqrl                 " wrap comments and text, allow gq,
                                        "cont. comments, keep long lines
set listchars=tab:»\ ,extends:¤,trail:· " Special chars
set viminfo=%,'500,<500,:5000,/500,@500 " viminfo: files, registers, cmds,
                                        " searches, input line history
set wildmode=list:longest,list:full     " Completion mode

set comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-,n:\| " What's a comment
set fileencodings=ucs-bom,utf-8,default,latin1               " order of file enc

if has("gui_running")                   " GUI running?
  set guifont=Andale\ Mono:h16          " Bigger font for MacVim
  set antialias                         " Anti Aliased Font
  winsize 80 80                         " Resize Window
  set guioptions-=m                     " Remove menu bar
  set guioptions-=T                     " Remove toolbar
endif


filetype plugin indent on                               " Load indent files

autocmd BufEnter,WinEnter,FileType mail set textwidth=60 encoding=utf8   " pine

if has("gui_running")
  colorscheme vividchalk
endif

" Change single- to doublequotes and vice versa (requires surround plugin)
nmap ,' cs"'
nmap ," cs'"

" VSplit
map ,vs :vsplit<CR>

" Strip Returns
map ,cel :%s/^\n//<CR>

" Strip Whitespaces
map ,sws :%s/\s\+$//<CR>

" JSLint
map ,j :!clear;java org.mozilla.javascript.tools.shell.Main ~/.vim/jslint.js %<CR>

" F1: Run Rake
map <F1> :Rake<CR>

" Shift-F1: GitX
map <S-F1> :!open -a GitX .<CR>

" F2: Select all.
nnoremap <F2> ggVG
nnoremap <S-F2> ggVG"+y

" F3: Toggle line wrapping
nnoremap <F3> :set wrap!<CR>

" F4: Toggle paste mode.
nnoremap \pt :set invpaste paste?<CR>
nmap <F4> \pt
imap <F4> <C-O>\pt
set pastetoggle=<F4>

" F5: Toggle line numbering.
nmap <silent> <F5> :set invnumber<CR>

" F6: none

" F7: none

" F8: none

" F9: Current Buffer will not be written (for templfiles)
map <F9> :set buftype=nofile<CR>
map <S-F9> :set buftype=<CR>

" F10: Buffer Explorer / Delete Buffers
nnoremap <silent> <F10> :TMiniBufExplorer<CR>

" F11: BufOnly
nnoremap <silent> <F11> :BufOnly!<CR>

" F12: Rails find
nnoremap <silent> <F12> :Rfind

" Remap []{}|\~ on the mac for easier typing on the Mac
map! <D-ü> [
map! <D-+> ]
map! <D-Ü> {
map! <D-*> }
map! <D-°> ~
map! <D-Ä> \
map! <D-'> \|

" RGrep
:let Grep_Find_Use_Xargs = 0

set nu
