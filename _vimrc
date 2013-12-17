call pathogen#infect()
call pathogen#helptags()

set t_Co=256
"

" Set syntax highlighting on
syntax on
set background=dark
" colorscheme elflord
" colorscheme railscasts
colorscheme solarized

let mapleader=","

set nocompatible "Forget being compatible with good ol'vi
filetype plugin indent on " enable file-type-specific plugins and indentation.
set ruler "Show ruler
set nu "Hide line numbers
set laststatus=2 "Show status line
set cursorline "highlight the line of the cursor
set scrolloff=8 " When the page starts to scroll, keep the cursor 8 lines from top and bottom

set list "Show invisible characters
set listchars=tab:▸\ ,trail:•,extends:❯,precedes:❮
set showbreak=↪\
set nojoinspaces                  " Use only 1 space after "." when joining lines, not 2

"set status line the way I like it
set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]
set showmode "Show which mode I am in
set wildmenu "Command autocomplettion with the TAB key
set autoread " Automatically updates buffer when file has been changed outside VIM
set hidden " Allow switch to another buffer without saving it (you can always do :wa)
"set autowrite " Write the old file out when switching between files

" Change the currently select tab label colors
hi TabLineSel ctermfg=Black ctermbg=Yellow

" Change cursor depending on insert mode
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

set nohlsearch                    " Disable hilight searches
set incsearch                     " Find next match as we type the search
set ignorecase                    " Searches are case insensitive
set smartcase                     " Unless there is at least one capital letter
set gdefault                      " have :s///g flag by default on

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" Add somting to runtimepath
" set runtimepath+=$HOME/vimfiles/vundle.git/

set nowrap                   " Don't wrap lines
set tabstop=2                " A tab is two spaces
set softtabstop=2            " ????
set shiftwidth=2             " An autoindent with >> is 2 spaces
set expandtab                " Use spaces, not tabs

"<CR> - remove highlighting after search
" Other options here: http://stackoverflow.com/questions/657447/vim-clear-last-search-highlighting
noremap <CR> :noh<CR><CR>

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=100

set statusline+=%#warningmsg#
set statusline+=%*
set guifont=Monaco:h18 "Change default font and size for MacVim
set shellcmdflag=-ic "Make :! behave like the command prompt

" Let's make it easy to edit this file (mnemonic for the key sequence is
" 'e'dit 'v'imrc)
nmap <silent> ,ev :e $MYVIMRC<cr>

" And to source this file as well (mnemonic for the key sequence is
" 's'ource 'v'imrc)
nmap <silent> ,sv :so $MYVIMRC<cr>

" from :h zencoding-customize-keymappings
let g:user_zen_leader_key='<c-e>'
"let g:user_zen_expandabbr_key = '<c-e>'
let g:use_zen_complete_tag = 1 

let g:user_zen_settings = {
\  'scss' : {
\    'filters' : 'fc',
\  }
\}


" space = pagedown, - = pageup
noremap <Space> <PageDown>
noremap - <PageUp>

" Search Dash for word under cursor
function! SearchDash()
  let s:browser = "/usr/bin/open"
  let s:wordUnderCursor = expand("<cword>")
  let s:url = "dash://".s:wordUnderCursor
  let s:cmd ="silent ! " . s:browser . " " . s:url
  execute s:cmd
  redraw!
endfunction
map <leader>d :call SearchDash()<CR>

" gist-vim configuration
let g:gist_show_privates = 1 " Show my private gists with ':Gist -l'
let g:gist_post_private = 1 " I want all my gists private by default

" Useful documentation:
"
" Add something to runtimepath
" set runtimepath+=$HOME/vimfiles/vundle.git/

"From mislav's VimRC
map <leader>F :CtrlP %%<cr>
map <leader>b :CtrlPBuffer<cr>
"
" Quickly switch to previous buffer
nnoremap <leader><leader> <c-^>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co']


"From tpope's VimRC
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"This allows using :E to invoke :Explore with Syntastic installed
cmap E<CR> Ex<CR> 

"USeful shortcuts for searching and replacing
"noremap ;; :%s:::g<Left><Left><Left>
"noremap ;' :%s:::cg<Left><Left><Left><Left>

set splitright
set splitbelow

" set foldenable  "Enable folding
" set foldlevel=2
" set foldmethod=syntax

"au VimLeave * :call MakeSession()

function! SaveSession()
  if v:this_session != ""
    echo "Saving."
    exe 'mksession! ' . '"' . v:this_session . '"'
  else
    echo "No Session."
  endif
endfunction

au VimLeave * :call SaveSession()

" Disable swap files, system dont crash that often these days
set updatecount=0

" disable cursor keys in normal mode
map <Left>  :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up>    :echo "no!"<cr>
map <Down>  :echo "no!"<cr>


" Paste toggle (,p)
set pastetoggle=<leader>p
map <leader>p :set invpaste paste?<CR>

" Remap :W to :w
" command W w

let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsListSnippets = '<c-g>'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

autocmd Filetype snippets setlocal expandtab tabstop=4 shiftwidth=4

" Saving options in sessions prevent them from benefitting from
" updates in this very file and can be the cause of serious headaches.
" Thus, I don't save them:
set sessionoptions-=options

" Quick Fix
function! ToggleQF() 
    if !exists("g:fx_toggle") 
        let g:fx_toggle = 0 
    endif 
    if g:fx_toggle == 0 
        let g:fx_toggle = 1 
        copen 
    else 
        let g:fx_toggle = 0 
        cclose 
    endif 
endfunc 

" Toggle quickfix
nnoremap <leader>q <ESC>:call ToggleQF() <CR>

" Call Gundo
nnoremap <leader>g :GundoToggle<CR>

"prevent expand tab in .snippets files
au Filetype snippets setl noet

"Add .md extension as markdown filetype
autocmd BufRead,BufNewFile  *.md set filetype=markdown

