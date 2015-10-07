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
" NeoBundle 'Shougo/neocomplete.vim'
" NeoBundle 'Shougo/neosnippet.vim'
" NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-obsession'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-repeat'
" NeoBundle 'justinmk/vim-sneak'
" NeoBundle 'tpope/vim-rails'
" NeoBundle 'tpope/vim-heroku'


NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle 'Shougo/neomru.vim'
" NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'

NeoBundle 'mattn/webapi-vim'
NeoBundle 'mattn/emmet-vim'
" NeoBundle 'mattn/gist-vim'

NeoBundle 'scrooloose/nerdtree'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'suan/vim-instant-markdown'
NeoBundle 'bling/vim-airline'

NeoBundle 'scrooloose/syntastic'

NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
" NeoBundle 'briancollins/vim-jst'
" NeoBundle 'groenewege/vim-less'
" NeoBundle 'mustache/vim-mustache-handlebars'
" NeoBundle 'evidens/vim-twig'
NeoBundle 'elzr/vim-json'
" NeoBundle 'Shutnik/jshint2.vim'

NeoBundle 'rking/ag.vim'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'tacroe/unite-mark'
" NeoBundle 'ujihisa/unite-colorscheme'

" NeoBundle 'flazz/vim-colorschemes'
"NeoBundle 'chriskempson/base16-vim'
"NeoBundle 'reedes/vim-thematic'

" Track the engine.
NeoBundle 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
NeoBundle 'honza/vim-snippets'

NeoBundle 'vim-scripts/closetag.vim'
NeoBundle 'justinmk/vim-gtfo'

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

set lazyredraw

" Set syntax highlighting on
syntax on
set background=dark
" colorscheme solarized
" colorscheme elflord
" colorscheme vividchalk
" colorscheme railscasts
colorscheme candres_colors

let mapleader=","

set nocompatible "Forget being compatible with good ol'vi
filetype plugin indent on " enable file-type-specific plugins and indentation.
set ruler "Show ruler
set nu "Show line numbers
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
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

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

set nowrap                   " Don't wrap lines
set tabstop=2                " A tab is two spaces
set softtabstop=2            " ????
set shiftwidth=2             " An autoindent with >> is 2 spaces
set expandtab                " Use spaces, not tabs

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=100

set statusline+=%#warningmsg#
set statusline+=%*
set guifont=Monaco:h18 "Change default font and size for MacVim
" set shellcmdflag=-ic "Make :! behave like the command prompt

" Let's make it easy to edit this file (mnemonic for the key sequence is
" 'e'dit 'v'imrc)
nmap <silent> ,ev :e $MYVIMRC<cr>

" And to source this file as well (mnemonic for the key sequence is
" 's'ource 'v'imrc)
nmap <silent> ,sv :so $MYVIMRC<cr>

" nmap <silent> <leader>av :e ~/.zsh-aliases<cr>
" nmap <silent> <leader>ez :e ~/.zshrc<cr>

" nmap <leader>as ! source ~/.aliases<cr>
nnoremap <leader>V :VimShell<cr>

" Use emmet only for html and css files
" let g:user_emmet_install_global = 0
" autocmd FileType html,css EmmetInstall

" from :h zencoding-customize-keymappings
let g:user_emmet_leader_key='<C-z>'
" imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

"let g:user_zen_expandabbr_key = '<c-e>'
" let g:user_emmet_complete_tag = 1
"
" let g:user_emmet_settings = {
" \  'scss' : {
" \    'filters' : 'fc',
" \  }
" \}
"
" space = pagedown, - = pageup
nnoremap <Space> <PageDown>
noremap + <PageDown>
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
" map <leader>d :call SearchDash()<CR>

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
nmap <Left>  :echo "no!"<cr>
nmap <Right> :echo "no!"<cr>
nmap <Up>    :echo "no!"<cr>
nmap <Down>  :echo "no!"<cr>


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
nnoremap <leader>gu :GundoToggle<CR>
let g:gundo_width = 30
let g:gundo_preview_bottom = 1

"prevent expand tab in .snippets files
au Filetype snippets setl noet

"Add .md extension as mkrkdown filetype
autocmd BufRead,BufNewFile  *.md set filetype=markdown
autocmd BufRead,BufNewFile  *.eslintrc set filetype=json

"Prevent instant markdown from starting automatically
" you can invoke it with :InstantMarkdownPreview
let g:instant_markdown_autostart = 0

" Let vim-airline use powerline patched fonts
" let g:airline_powerline_fonts = 1
let g:airline#extensions#syntastic#enabled = 1

" VIM Resources
" http://robots.thoughtbot.com/integrating-vim-into-your-life

" Call TagbarToggle
" nnoremap <leader>t :TagbarToggle<CR>
" nnoremap <leader>T :TagbarOpenAutoClose<CR>

" Faster search and replace (see vimregex.com/#substitute )
" This currently conflicts with use of semicolon to
" repeat last fast search
" noremap ;; :%s:::cg<Left><Left><Left>
" noremap ;' :%s:::g<Left><Left><Left><Left>

" Remove spaces trailing spaces in lines
" Mnemonic: change spaces
nnoremap <leader>cs :%s/\s\+$//<CR>

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

" Unite's fuzzy matchers input pattern max length
let g:unite_matcher_fuzzy_max_input_length = 50

if executable('ag')
  let g:unite_source_rec_async_command= 'ag --follow --skip-vcs-ignores --nocolor --nogroup --ignore ".hg" --ignore ".svn" --ignore ".git" --ignore ".bzr" -g ""'
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--column --nogroup --nocolor --follow --skip-vcs-ignores'
  let g:unite_source_grep_recursive_opt = ''
endif

" let g:unite_source_rec_max_cache_files = 99999

" See https://github.com/Shougo/unite.vim/issues/236#issuecomment-51983184
" let g:unite_source_rec_unit = 250

let g:unite_source_history_yank_enable = 1

call unite#filters#sorter_default#use(['sorter_selecta'])
" call unite#filters#sorter_default#use(['sorter_rank'])
call unite#filters#matcher_default#use(['matcher_fuzzy'])

nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <leader>F :<C-u>Unite -no-split -buffer-name=files    -start-insert file<cr>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <leader>b :<C-u>Unite -no-split -buffer-name=buffer  -start-insert buffer<cr>
nnoremap <leader>m :<C-u>Unite -no-split mark<cr>

" Limit recent files list to 10
call unite#custom#source('file_mru', 'max_candidates' , 10 )

" List colors schemes
nnoremap <leader>lc :<C-u>Unite -no-split colorscheme<cr>

" no-split allows unite results to take the whole current window
" no-quit, means that unite won't close as selections are made


" same as <leader>r (just because it makes sense)
nnoremap <leader>sr :<C-u>Unite -no-split -start-insert file_mru<cr>

" sg: search globally
nnoremap <leader>sg :<C-u>Unite -no-split grep:.<cr>

" si: search in...
nnoremap <leader>si :<C-u>Unite -no-split grep:<cr>

" sa: search again (resume lst Unite command)
nnoremap <leader>sa :<C-u>UniteResume<cr>

" sj: search only javascript files
nnoremap <leader>sj :<C-u>Unite -no-split grep:.:--js<cr>

" sJ: search only JS files but in specific folders
nnoremap <leader>sJ :<C-u>Unite -no-split grep::--js<cr>

" sh: search only html files
nnoremap <leader>sh :<C-u>Unite -no-split grep:.:--html<cr>

" sH: search only html files but inside specific folders
nnoremap <leader>sH :<C-u>Unite -no-split grep::--html<cr>

" sc search only css files
nnoremap <leader>sc :<C-u>Unite -no-split grep:.:--css\ --sass\ --less<cr>

" sc search only css files but on specific folder(s)
nnoremap <leader>sC :<C-u>Unite -no-split grep::--css\ --sass\ --less<cr>

" sx search only sass and less files
nnoremap <leader>sx :<C-u>Unite -no-split grep:.:--sass\ --less<cr>

" sw search globally for word under cursor
nnoremap <leader>sw :<C-u>UniteWithCursorWord -short-source-names -no-split grep:.<cr>

" sc search lines of text
nnoremap <leader>sl :<C-u>Unite -start-insert -no-split line<cr>

nnoremap <leader>ss :<C-u>Unite -start-insert -no-split ultisnips<cr>
" Unite -start-insert -winheight=100 -immediately -no-empty ultisnips

nnoremap <leader>sR :<C-u>Unite -start-insert -no-split directory_mru<cr>
" Unite -start-insert -winheight=100 -immediately -no-empty ultisnips

" Set the size of the preview window used by fugitive
" and others
set previewheight=20

" Prevent cursor from jumping to beginning of line
" when switching between buffers
set nostartofline

" Shortcut to close all other windows
nnoremap <leader>o :only<cr>

" Toogle NERDTree
nnoremap <leader>n :NERDTreeToggle<cr>

" Don't hide quotes on JSON files
let g:vim_json_syntax_conceal = 0

"Add a colored column at column 85
let &colorcolumn=join(range(81,999),",")
" set colorcolumn=85

" Gists
let g:gist_detect_filetype = 1
let g:gist_post_private = 1

" let g:user_emmet_expandabbr_key = '<C-y>,'
" let g:user_emmet_expandword_key = '<C-y>;'
" let g:user_emmet_update_tag = '<C-y>u'
" let g:user_emmet_balancetaginward_key = '<C-y>d'
" let g:user_emmet_balancetagoutward_key = '<C-y>D'
" let g:user_emmet_next_key = '<C-y>n'
" let g:user_emmet_prev_key = '<C-y>N'
" let g:user_emmet_imagesize_key = '<C-y>i'
" let g:user_emmet_togglecomment_key = '<C-y>/'
" let g:user_emmet_splitjointag_key = '<C-y>j'
" let g:user_emmet_removetag_key = '<C-y>k'
" let g:user_emmet_anchorizeurl_key = '<C-y>a'
" let g:user_emmet_anchorizesummary_key = '<C-y>A'
" let g:user_emmet_mergelines_key = '<C-y>m'
" let g:user_emmet_codepretty_key = '<C-y>c'

noremap <leader>d :bdelete<cr>

nnoremap <leader>h :<C-u>Gist 7796979<cr>

"<CR> - remove highlighting after search
" Other options here: http://stackoverflow.com/questions/657447/vim-clear-last-search-highlighting
" noremap <CR> :noh<CR><CR>

" This needs entering CR at the end and then redraw!
" nnoremap <leader>k :exec 'silent !open -a "Google Chrome"'

" Replace word under cursor
nnoremap <leader>cw :%s/\<<C-r><C-w>\>/


nnoremap <leader>eu :<C-u>UltiSnipsEdit<cr>

" Disable AutoComplPop.
" let g:acp_enableAtStartup = 0
" Use neocomplete.
" let g:neocomplete#enable_at_startup = 1
" Use smartcase.
" let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
" let g:neocomplete#sources#syntax#min_keyword_length = 3

" Examples of using the Ultisnips with unite function
" function! UltiSnipsCallUnite()
" Unite -start-insert -winheight=100 -immediately -no-empty ultisnips
" return ''
" endfunction

" inoremap <silent> <F12> <C-R>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>
" nnoremap <silent> <F12> a<C-R>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>

" menus {{{
let g:unite_source_menu_menus = {}
let g:unite_source_menu_menus.git = {
    \ 'description' : '            gestionar repositorios git
        \                            ⌘ [espacio]g',
    \}
let g:unite_source_menu_menus.git.command_candidates = [
    \['▷ ,cw          Replace word under cursor', 'normal ,cw'],
    \['▷ ^n           Multiple cursors', 'normal <C-n>'],
    \['▷ ,ss          Search snippets (list ultisnips)', 'normal ,ss>'],
    \['▷ ,eu          Edit ultisnips', 'normal ,eu>'],
    \['▷ icwa<tab>    Console warn arguments (snippet)', 'normal icwa<tab>'],
    \['▷ git cd           (Fugitive)',
        \'Gcd'],
    \]
nnoremap <leader>1 :Unite -silent -start-insert menu:git<CR>

" Edit in same path as current buffer
nnoremap <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>

" Join lines discarding empty spaces
nnoremap <leader>jj Jx


let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']



" " Fugitive shortcuts
nnoremap <leader>g :Git
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gp :Git push<cr>
nnoremap <leader>gr :Gremove<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>ga :Gwrite<cr>
nnoremap <leader>gg :w<cr>:Gwrite<cr>:Gcommit -m 'update'<cr>:Git push<cr><cr>:e<cr>
nnoremap <leader>gl :Glog --pretty=oneline -10<cr>

" Edit scheme
nnoremap <leader>es :e ~/.vim/colors/candres.vim<CR>

" " Make syntastic check on open and on save
let g:syntastic_check_on_open = 1
"
" "Make syntastic not check when quitting
let g:syntastic_check_on_wq = 1
"
" "Make syntastic stop checking for error all the time
let g:syntastic_enable_highlighting = 0


" nmap <silent> ,ev :e $MYVIMRC<cr>
nnoremap <leader>ea :e ~/.aliases<cr>
