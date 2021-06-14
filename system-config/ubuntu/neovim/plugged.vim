if has('win32')
    let $VIMPLUGDIRECTORY = '~/appdata/local/nvim-data/plugged'
else
    let $VIMPLUGDIRECTORY = '~/.local/share/nvim/plugged'
endif

  " neovim settings for ordinary vim
call plug#begin($VIMPLUGDIRECTORY)

" Colored braces
Plug 'oblitum/rainbow'

" Colorschemes for vim
Plug 'flazz/vim-colorschemes'

" Material monokai theme
Plug 'skielbasa/vim-material-monokai'

" Intellisense for vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Lean & mean status for vim that's light as air
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Linting for vim
Plug 'dense-analysis/ale'

" Icons
Plug 'ryanoasis/vim-devicons'

" Forget trailing spaces
Plug 'ntpeters/vim-better-whitespace'

" Better indented pasting
Plug 'sickill/vim-pasta'

" Formatting
Plug 'Chiel92/vim-autoformat'

" Quoting/paranthesizing made simple
Plug 'tpope/vim-surround'

" Indentation guide
Plug 'yggdroot/indentline'

" File system explorer
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'

" To avoid jk mappings
Plug 'zhou13/vim-easyescape'

" Detects indent settings on a file by file basis
Plug 'ciaranm/detectindent'

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Syntax/indent etc.
Plug 'sheerun/vim-polyglot'

" Maintain a histroy of undo in a tree structure
Plug 'mbbill/undotree'

" View and search LSP symbols, tags
Plug 'liuchengxu/vista.vim'

" Commenting lines
Plug 'tpope/vim-commentary'

" Easy motion
" Plug 'easymotion/vim-easymotion'
Plug 'https://github.com/asvetliakov/vim-easymotion.git'

" Markdown preview with sync scroll
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}

" I'm smooth as fuck boi
Plug 'yuttie/comfortable-motion.vim'

" Comments in vim made powerful
Plug 'preservim/nerdcommenter'
" Initialize plugin system

call plug#end()


