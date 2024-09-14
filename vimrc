set nocompatible              " be iMproved, required
set nowrap
set colorcolumn=100
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"""""""""""""""""""""""""
" Vim Plugins
"""""""""""""""""""""""""

" editing
Plugin 'kana/vim-textobj-user'
Plugin 'scrooloose/nerdcommenter'
Plugin 'sjl/gundo.vim'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'tpope/vim-surround'
Plugin 'tmhedberg/matchit'
Plugin 'vim-syntastic/syntastic'
Plugin 'w0rp/ale'
" Plugin 'mtscout6/syntastic-local-eslint.vim'

" navigation
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'

" languages
Plugin 'AndrewRadev/vim-eco'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'groenewege/vim-less'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'yaymukund/vim-rabl'
Plugin 'tpope/vim-endwise'
Plugin 'fatih/vim-go'

" frameworks
Plugin 'tpope/vim-rails'
Plugin 'burnettk/vim-angular'
Plugin 'othree/html5.vim'

" misc
Plugin 'vim-airline/vim-airline'
Plugin 'mattn/gist-vim'
Plugin 'mattn/webapi-vim'
Plugin 'tpope/vim-fugitive'

" deoplete
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'

" Plugins you want just for yourself go here
if filereadable(expand("~/.custom.vim-plugins"))
  source ~/.custom.vim-plugins
endif

set runtimepath^=~/.vim/bundle/ctrlp.vim

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""
" Basic features
"""""""""""""""""""""""""
" Display options
syntax on
set nocursorline
set number
set list!                       " Display unprintable characters
set listchars=tab:▸\ ,trail:•,extends:»,precedes:«
if $TERM =~ '256color'
  set t_Co=256
elseif $TERM =~ '^xterm$'
  set t_Co=256
endif

" Misc
set hidden                      " Don't abandon buffers moved to the background
set wildmenu                    " Enhanced completion hints in command line
set wildmode=list:longest,full  " Complete longest common match and show possible matches and wildmenu
set backspace=eol,start,indent  " Allow backspacing over indent, eol, & start
set complete=.,w,b,u,U,t,i,d    " Do lots of scanning on tab completion
set updatecount=100             " Write swap file to disk every 100 chars
set directory=~/.vim/swap       " Directory to use for the swap file
set diffopt=filler,iwhite       " In diff mode, ignore whitespace changes and align unchanged lines
set history=1000                " Remember 1000 commands
set scrolloff=3                 " Start scrolling 3 lines before the horizontal window border
set visualbell t_vb=            " Disable error bells
set shortmess+=A                " Always edit file, even when swap file is found
set directory=/tmp "sets the swap (.swp) file directory

" up/down on displayed lines, not real lines. More useful than painful.
noremap k gk
noremap j gj

" Formatting, indentation
set textwidth=80
set formatoptions-=t formatoptions+=croql

" viminfo: remember certain things when we exit
" (http://vimdoc.sourceforge.net/htmldoc/usr_21.html)
"   %    : saves and restores the buffer list
"   '100 : marks will be remembered for up to 30 previously edited files
"   /100 : save 100 lines from search history
"   h    : disable hlsearch on start
"   "500 : save up to 500 lines for each register
"   :1000 : up to 1000 lines of command-line history will be remembered
"   n... : where to save the viminfo files
set viminfo=%100,'100,/100,h,\"500,:1000,n~/.vim/viminfo

" ctags: recurse up to home to find tags.
set tags=tags;

" Undo
set undolevels=10000
if has("persistent_undo")
  set undodir=~/.vim/undo       " Allow undoes to persist even after a file is closed
  set undofile
endif

" Search settings
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch

" to_html settings
let html_number_lines = 1
let html_ignore_folding = 1
let html_use_css = 1
let xml_use_xhtml = 1

" When opening a file, always jump to the last cursor position
autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \     exe "normal g'\"zz" |
    \ endif |

" After 4s of inactivity, check for external file modifications on next keyrpress
au CursorHold * checktime

"""""""""""""""""""""""""
" Syntastic
"""""""""""""""""""""""""
let g:syntastic_check_on_open=0 " check syntax on open
let g:syntastic_check_on_wq=1
let g:syntastic_auto_loc_list=0 " note erros with a separate buffer
let g:syntastic_always_populate_loc_list=1 " update errors list
let g:syntastic_enable_highlighting=0
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"] " for angular
au BufRead,BufNewFile ~/dev/writability/* let g:syntastic_python_checker_args='--max-complexity 10'
" let g:syntastic_javascript_checkers = ['eslint']

" JAVASCRIPT:
" http://oli.me.uk/2014/11/21/essential-vim-bundles-for-javascript-and-clojure/
au FileType javascript setlocal shiftwidth=2 softtabstop=2
let g:jsx_ext_required = 0 " jsx syntax / indent on js files too.

"""""""""""""""""""""""""
" Deoplete
"""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1

"""""""""""""""""""""""""
" Keybindings
"""""""""""""""""""""""""
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

let mapleader=","
let localmapleader=","

nmap <Leader>s :%S/
vmap <Leader>s :S/

vnoremap . :normal .<CR>
vnoremap @ :normal! @

" Toggles
set pastetoggle=<F1>
" the nmap is just for quicker powerline feedback
nmap <silent> <F1>      :set invpaste<CR>
nmap          <F2>      :setlocal spell!<CR>
imap          <F2> <C-o>:setlocal spell!<CR>
nmap <silent> <F3>      :set invwrap<CR>
" TODO toggle numbers

map <Leader>/ :nohlsearch<cr>
map <Home> :tprev<CR>
map <End>  :tnext<CR>

" TODO Do also cnext and cprev as a fallback
map <PageDown> :lnext<CR>
map <PageUp>   :lprev<CR>

" Make Y consistent with D and C
function! YRRunAfterMaps()
  nnoremap <silent> Y :<C-U>YRYankCount 'y$'<CR>
endfunction

" Disable K for manpages - not used often and easy to accidentally hit
noremap K k

" Resize window splits
" TODO Fix mousewheel
nnoremap <Up>    3<C-w>-
nnoremap <Down>  3<C-w>+
nnoremap <Left>  3<C-w><
nnoremap <Right> 3<C-w>>

nnoremap _ :split<cr>
nnoremap \| :vsplit<cr>

map <Leader>w :set invwrap<cr>
map <Leader>p :set invpaste<cr>

vmap s :!sort<CR>
vmap u :!sort -u<CR>

" Write file when you forget to use sudo
cmap w!! w !sudo tee % >/dev/null

"""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""
nnoremap <Leader>b :BufSurfBack<cr>
nnoremap <Leader>f :BufSurfForward<cr>

nnoremap <S-u> :GundoToggle<CR>
let g:gundo_close_on_revert=1


" TODO Merge the NERDTreeFind with Toggle inteilligently.
nnoremap <C-g> :NERDTreeToggle<cr>
nnoremap <C-f> :NERDTreeFind<cr>

let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$', '\.o$',
                   \ '\.so$', '\.egg$', '^\.git$', '\.cmi', '\.cmo' ]
let NERDTreeHighlightCursorline=1
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1

map <silent> <Leader>gd :Gdiff<CR>
map <silent> <Leader>gb :Gblame<CR>
map <silent> <Leader>gg :Gbrowse<CR>

nnoremap <Leader>a :Ag

" Put a space around comment markers
let g:NERDSpaceDelims = 1

nnoremap <C-y> :YRShow<cr>
let g:yankring_history_dir = '$HOME/.vim'
let g:yankring_manual_clipboard_check = 0

let g:quickfixsigns_classes=['qfl', 'vcsdiff', 'breakpoints']

set laststatus=2

"""""""""""""""""""""""""
" Deoplete
"""""""""""""""""""""""""

inoremap <silent> <c-l> <c-x><c-o>

"""""""""""""""""""""""""
" CtrlP
"""""""""""""""""""""""""

let g:ctrlp_regexp = 1
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files']
let g:ctrlp_working_path_mode = 'ra'
map <Leader>, :CtrlP<CR>

"""""""""""""""""""""""""
nmap <leader>gi :Gist
let g:gist_post_private = 1
let g:gist_open_browser_after_post = 1

"""""""""""""""""""""""""
" Cscope
"""""""""""""""""""""""""
if has("cscope")
  " Use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
  set cscopetag

  " Check cscope for definition of a symbol before checking ctags. Set to 1 if
  " you want the reverse search order.
  set csto=0

  " Add any cscope database in current directory
  if filereadable("cscope.out")
    cs add cscope.out
  endif

  " Show msg when any other cscope db is added
  set cscopeverbose
end

" Source custom vim from ~/.custom.vim
if filereadable(expand("~/.custom.vim"))
  source ~/.custom.vim
endif

" RABL syntax highlighting
au BufRead,BufNewFile *.rabl setf ruby

"Matchit macro for ruby block text objects
runtime macros/matchit.vim

nnoremap <leader>er :call ToggleErrorPanel()<CR>

"""""""""""""""""""""""""
" Syntastic/ESLint/Ale
"""""""""""""""""""""""""

let g:syntastic_javascript_checkers = []
let g:syntastic_python_flake8_post_args='--ignore=E501,E128,E225'

function CheckJavaScriptLinter(filepath, linter)
  if exists('b:syntastic_checkers')
    return
  endif
  if filereadable(a:filepath)
    let b:syntastic_checkers = [a:linter]
    let {'b:syntastic_' . a:linter . '_exec'} = a:filepath
  endif
endfunction

function SetupJavaScriptLinter()
  let l:current_folder = expand('%:p:h')
  let l:bin_folder = fnamemodify(syntastic#util#findFileInParent('package.json', l:current_folder), ':h')
  let l:bin_folder = l:bin_folder . '/node_modules/.bin/'
  call CheckJavaScriptLinter(l:bin_folder . 'standard', 'standard')
  call CheckJavaScriptLinter(l:bin_folder . 'eslint', 'eslint')
endfunction

autocmd FileType javascript call SetupJavaScriptLinter()

let g:ale_python_flake8_options = '--ignore=E501,E402'
let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace'], 'javascript': ['eslint'], 'python': ['autopep8', 'yapf']}
let g:ale_fix_on_save = 1
