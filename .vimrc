if has("gui_running")
    set nocompatible
    filetype off                  " required
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'
    Plugin 'vim-scripts/L9'
    Plugin 'tpope/vim-fugitive'
    Plugin 'valloric/YouCompleteMe'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'git://git.wincent.com/command-t.git'
    Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    Plugin 'scrooloose/syntastic'
    Plugin 'scrooloose/nerdtree'
    Plugin 'christoomey/vim-conflicted'
    Plugin 'terryma/vim-multiple-cursors'
    Plugin 'sjl/gundo.vim'
    Plugin 'mattn/emmet-vim'
    Plugin 'easymotion/vim-easymotion'
    Plugin 'tpope/vim-surround'
    Plugin 'kien/ctrlp.vim'

    Plugin 'vim-scripts/darktango.vim'
    Plugin 'morhetz/gruvbox'

    Plugin 'cakebaker/scss-syntax.vim'
    Plugin 'hdima/python-syntax'
    Plugin 'othree/yajs.vim'
    Plugin 'mitsuhiko/vim-jinja'
    Plugin 'plasticboy/vim-markdown'

    call vundle#end()            " required
    filetype plugin indent on    " required

    colorscheme gruvbox
    set guifont=Ubuntu\ Mono\ 14
    set fillchars+=vert:\$
    "syntax enable
    set background=dark
    set hidden
    set laststatus=2
    set number
    set relativenumber
    set smartindent
    set ruler
    set tabstop=4
    set shiftwidth=4
    set expandtab
    :set guioptions-=m
    :set guioptions-=T
    :set guioptions-=r
    :set guioptions-=L
    :set lines=999 columns=999

    let NERDTreeIgnore = ['\.pyc$', '\.o$', '[a-zA-Z]*egg[a-zA-Z]*', '[a-zA-Z]*cache[a-zA-Z]*']
    let g:NERDTreeWinPos="left"
    let g:NERDTreeDirArrows=0
    map <F2> :NERDTreeToggle<CR>

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntastic_javascript_checkers = ['eslint']
    let g:syntastic_javascript_mri_args = "--config=$HOME/.jshintrc"
    let g:syntastic_python_checkers = ['pylint', 'flake8', 'pep8', 'pyflakes', 'python']
    "let g:syntastic_yaml_checkers = ['jsyaml']
    let g:syntastic_html_tidy_exec = 'tidy'

    let g:EasyMotion_do_mapping = 0
    let g:EasyMotion_smartcase = 1
    nmap f <Plug>(easymotion-s)

    vnoremap <C-c>"*y :let @+=@*<CR>
    map <C-v> "+P <CR>

    let g:ycm_server_keep_logfiles = 1
    let g:ycm_server_log_level = 'debug'

else
    set number
    set relativenumber
    set ruler
    set expandtab
    set smartindent
    set shiftwidth=4
    set tabstop=4
endif
