
"Check for PlugVim in in the relevent directories for nvim and vim
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

"Activate Plugins
call plug#begin()
Plug 'preservim/nerdtre'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
"Plug 'scrooloose/syntastic' --too many external dependencies.
Plug 'christoomey/vim-tmux-navigator'
Plug 'edkolev/tmuxline.vim'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'valloric/youcompleteme' --too many external dependencies and little
"RHEL support.
"Plug 'sjl/gundo.vim' --requires Python2 in 2021?
Plug 'mbbill/undotree'
Plug 'morhetz/gruvbox'
call plug#end()

"set rnu
set number
set nuw=2
syntax on
set mouse=a
filetype plugin indent on
set autoindent
set backspace=indent,eol,start
set listchars=eol:\\,tab:>-,trail:~,extends:>,precedes:<
set list
set noexpandtab
set wildmode=list:longest
set hlsearch
set incsearch
set termguicolors
set showcmd
set noshowmode

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

:map <F2> :NERDTreeToggle<CR>
:map <F3> :UndotreeToggle <CR> 
:map <C-B> :CtrlPBuffer <CR>

"airline settings
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod= ':t'
let g:airline_theme='tomorrow'


"tmuxline settings
let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '>',
    \ 'right' : '',
    \ 'right_alt' : '<',
    \ 'space' : ' '}

"syntastic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
":let g:syntastic_check_on_wq = 0


let gruvbox_contrast_light='hard'
colorscheme gruvbox
set background=light
