"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=/Users/candres/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/candres/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
"NeoBundle 'Shougo/neosnippet.vim'
"NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-obsession'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-heroku'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-rails'


NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'

" NeoBundle 'mattn/webapi-vim'
NeoBundle 'mattn/emmet-vim'

NeoBundle 'scrooloose/nerdtree'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'suan/vim-instant-markdown'
NeoBundle 'bling/vim-airline'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'briancollins/vim-jst'
NeoBundle 'rking/ag.vim'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'groenewege/vim-less'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'Shutnik/jshint2.vim'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'evidens/vim-twig'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'elzr/vim-json'
"NeoBundle 'flazz/vim-colorschemes'
"NeoBundle 'chriskempson/base16-vim'
"NeoBundle 'reedes/vim-thematic'

" Track the engine.
NeoBundle 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
NeoBundle 'honza/vim-snippets'

NeoBundle 'goldfeld/vim-seek'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" call pathogen#infect()
" call pathogen#helptags()

set t_Co=256

" Set syntax highlighting on
syntax on
set background=dark
" colorscheme elflord
" colorscheme vividchalk
colorscheme railscasts
"colorscheme solarized

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

set hlsearch                    " Disable hilight searches
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

set nowrap                   " Don't wrap lines
set tabstop=2                " A tab is two spaces
set softtabstop=2            " ????
set shiftwidth=2             " An autoindent with >> is 2 spaces
set expandtab                " Use spaces, not tabs

"<CR> - remove highlighting after search
" Other options here: http://stackoverflow.com/questions/657447/vim-clear-last-search-highlighting
noremap <CR> :noh<CR><CR>

" Another way to turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=100

set statusline+=%#warningmsg#
set statusline+=%*
set guifont=Monaco:h18 "Change default font and size for MacVim
set shellcmdflag=-ic "Make :! behave like the command prompt

set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

" Let's make it easy to edit this file (mnemonic for the key sequence is
" 'e'dit 'v'imrc)
nmap <silent> ,ev :e $MYVIMRC<cr>

" And to source this file as well (mnemonic for the key sequence is
" 's'ource 'v'imrc)
nmap <silent> ,sv :so $MYVIMRC<cr>

" Emmet settings
" imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
" let g:user_emmet_expandabbr_key = '<Tab>'
" Make emmet complete tags using omnifunc
let g:user_emmet_complete_tag = 1
let g:user_emmet_settings = {
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

" Quickly switch to previous buffer
nnoremap <leader><leader> <c-^>

"USeful shortcuts for searching and replacing
"noremap ;; :%s:::g<Left><Left><Left>
"noremap ;' :%s:::cg<Left><Left><Left><Left>

set splitright
set splitbelow

" set foldenable  "Enable folding
" set foldlevel=2
" set foldmethod=syntax

" This didn't work well for me
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
" nnoremap <leader>g :GundoToggle<CR>
let g:gundo_width = 30
let g:gundo_preview_bottom = 1

"prevent expand tab in .snippets files
au Filetype snippets setl noet

"Add .md extension as markdown filetype
autocmd BufRead,BufNewFile  *.md set filetype=markdown

"Open current file in chrome
nnoremap <leader>c :exe ':silent !firefox %'<CR>

"Prevent instant markdown from starting automatically
" you can invoke it with :InstantMarkdownPreview
let g:instant_markdown_autostart = 0

" Let vim-airline use powerline patched fonts
" let g:airline_powerline_fonts = 1

" VIM Resources
" http://robots.thoughtbot.com/integrating-vim-into-your-life

" Call TagbarToggle
nnoremap <leader>t :TagbarToggle<CR>
nnoremap <leader>T :TagbarOpenAutoClose<CR>

" Faster search and replace (see vimregex.com/#substitute )
" This currently conflicts with use of semicolon to
" repeat last fast search
" noremap ;; :%s:::cg<Left><Left><Left>
" noremap ;' :%s:::g<Left><Left><Left><Left>

" Remove spaces trailing spaces in lines
nnoremap <leader>s :%s/\s\+$//<CR>

" Automatically call JSHint when buffer is saved
let jshint2_save = 1

" Automatically close error list
let jshint2_close = 1

" Set up some custom ignores
" call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
call unite#custom_source('file_rec,file_rec/async',
      \ 'ignore_pattern', join([
      \ '\.git/',
      \ ], '\|'))

if executable('ag')
  let g:unite_source_rec_async_command= 'ag --follow --nocolor --nogroup --ignore ".hg" --ignore ".svn" --ignore ".git" --ignore ".bzr" -g ""'
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--column --nogroup --nocolor --follow'
  let g:unite_source_grep_recursive_opt = ''
endif

" let g:unite_source_rec_max_cache_files = 99999

" See https://github.com/Shougo/unite.vim/issues/236#issuecomment-51983184
let g:unite_source_rec_unit = 250

" Allow longer search patterns
let g:unite_matcher_fuzzy_max_input_length = 30

let g:unite_source_history_yank_enable = 1
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <leader>F :<C-u>Unite -no-split -buffer-name=files   -auto-highlight -start-insert file<cr>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
nnoremap <leader>b :<C-u>Unite -no-split -buffer-name=buffer  -start-insert buffer<cr>
nnoremap <leader>G :<C-u>Unite -no-split grep:.<cr>

nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gd :Gdiff<cr>

" Set the size of the preview window used by fugitive
" and others
set previewheight=20

" Prevent cursor from jumping to beginning of line
" when switching between buffers
set nostartofline

" Shortcut to close all other windows
nnoremap <leader>o :only<cr>

" Toogle NERDTree
" Remember unite's <leader>F is better at looking for paths
nnoremap <leader>n :NERDTreeToggle<cr>

" Gists
" let g:gist_detect_filetype = 1
" let g:gist_post_private = 1

" Remove spaces at the end of lines (doesn't keep cursor position)
:nnoremap <Space>s :%s/\<<C-r><C-w>\>/

" Don't hide quotes on JSON files
let g:vim_json_syntax_conceal = 0

"Add a colored column at column 85
set colorcolumn=85

nnoremap <silent>[menu]g :Unite -silent -start-insert menu:grep<CR>

let g:unite_source_menu_menus = {}
let g:unite_source_menu_menus.grep = {
    \ 'description' : '            gestionar repositorios git
        \                            ⌘ [espacio]g',
    \}
let g:unite_source_menu_menus.grep.command_candidates = [
    \['▷ grep (ag → ack → grep)                                     ⌘ ,a',
        \'Unite -no-quit grep'],
    \['▷ find',
        \'Unite find'],
    \['▷ locate',
        \'Unite -start-insert locate'],
    \['▷ vimgrep (very slow)',
        \'Unite vimgrep'],
    \]

