" vim-plug
if has('win32')
  source $HOME/appdata/local/nvim/plugged.vim
else
  source $HOME/.config/nvim/plugged.vim
endif

if exists('g:vscode')
   "Easy Motion Configuration"
  map <Leader> <Plug>(easymotion-prefix)
  map f <Plug>(easymotion-bd-w)
  let g:EasyMotion_use_upper=1
  let g:EasyMotion_keys='SADFJKLEWCMPGH'
  let g:Easymotion_smartcase=1
  let g:EasyMotion_use_smartsign_us=1

  "Vim-commentary
  xmap gc <Plug>VSCodeCommentary
  nmap gc <Plug>VSCodeCommentary
  omap gc <Plug>VSCodeCommentary
  nmap gcc <Plug>VSCodeCommentaryLine


  " change the leader key from "\" to "," (";" is also popular)
  let mapleader=","

  " Maping shif-colon to just colon in normal mode"
  nnoremap ; :
  " Mapping L (end of line) to $ in normal mode
  nnoremap L $

else
  " change the leader key from "\" to "," (";" is also popular)
  let mapleader=","

  " Maping shif-colon to just colon in normal mode"
  nnoremap ; :
  " Mapping L (end of line) to $ in normal mode
  nnoremap L $
  " Mouse support
  set mouse=a

  " Identation
  set expandtab shiftwidth=2 softtabstop=2 tabstop=4 textwidth=80
  set modeline

  " Fold method
  set foldmethod=indent
  set foldnestmax=10
  set nofoldenable
  set foldlevel=1

  " Line numbers
  set number
  "set relativenumber

  " Highlight the current line
  set cursorline

  " Yes, the space exists
  set list lcs=tab:\¦\

  " To break long lines
  set breakindent
  set breakindentopt=shift:2
  set showbreak=↳

  " Set clipboard
  set clipboard=unnamed

  " ignores cases for search
  set ignorecase

  " Icons
  let g:lightline#bufferline#enable_devicons = 1

  " Copy to clipboard
  vnoremap y "+y
  nnoremap Y "+yg_
  nnoremap y "+y
  nnoremap yy "+yy

  " Paste from clipboard
  nnoremap P "+P
  nnoremap p "+p
  vnoremap P "+P
  vnoremap p "+p

  "Windows and tabs settings {{
  " Window tab opening and closing
  nnoremap <silent> <C-t> :tabnew <bar> :NERDTreeMirror <bar> wincmd p <CR>
  nnoremap <silent> <C-x> :tabclose<CR>

  " This remaps arrow keys to switch between windows
  nmap <silent> <Up> :wincmd k<CR>
  nmap <silent> <Down> :wincmd j<CR>
  nmap <silent> <Left> :wincmd h<CR>
  nmap <silent> <Right> :wincmd l<CR>

  " Move windows
  nmap <silent> <C-Up> :wincmd K<CR>
  nmap <silent> <C-Down> :wincmd J<CR>
  nmap <silent> <C-Left> :wincmd H<CR>
  nmap <silent> <C-Right> :wincmd L<CR>
  "}}
  " To execute a macro over visual line selections
  xnoremap Q :'<,'>:normal @q<CR>

  " To replace stuff globally
  set gdefault

  " Using tab to move to right when inside brackets
  inoremap <expr> <Tab> search('\%#[]>)}]', 'n') ? '<Right>' : '<Tab>'

  "#############################
  " Plugin settings
  "#############################

  " Rainbow bracket colors to match with the theme {{
  let g:rainbow_active = 1
  let rainbowcolors = ['hotpink3', 'cyan', 'mediumpurple', 'yellow']
  let g:rainbow_conf = {'guifgs': rainbowcolors}

  let g:colorizer_auto_filetype='css,html,vim'
  let g:colorizer_skip_comments = 1
  "}}

  "Material Monokai {{
  set background=dark
  set termguicolors
  colorscheme material-monokai
  " Subtle spell highlighting
  let g:materialmonokai_subtle_spell=1
  " Subtle mode indicator
  let g:materialmonokai_subtle_airline=1
  "}}

  " FZF {{
  let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-s': 'split',
    \ 'ctrl-v': 'vsplit'
    \}
  " }}

  " Undotree {{
  set undodir=~/.config/nvim/undodir " set undotree file directory
  set undofile " set undotree to save to file
  nnoremap <leader>u :UndotreeShow<CR>
  " }}

  " Indent line {{
  let g:indentLine_enabled = 1
  " Leading space characters
  let g:indentLine_leadingSpaceEnabled = 1
  let g:indentLine_leadingSpaceChar = '·'
  "}}

  "Vim airline theme
  let g:airline_theme='materialmonokai'

  " Ale (Asynchronous Lint Engine) {{{
  let g:ale_lint_on_buffer_change = 1
  let g:ale_echo_msg_error_str = 'E'
  let g:ale_echo_msg_warning_str = 'W'
  let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
  let g:ale_linters = {'python': ['flake8'], 'cpp':['ccls', 'clang']}
  let g:ale_fixers = {'python': ['yapf', 'black', 'add_blank_lines_for_python_control_statements', 'isort'], 'cpp':['clangtidy'], 'c':['clangtidy'], 'javascript':['fixjson'], 'markdown':['prettier']}
  let g:ale_fix_on_save = 1
  let g:airline#extensions#ale#enabled = 1
  " }}}
  "
  "Nerd tree setting {{
  let NERDTreeMinimalUI = 1
  let NERDTreeDirArrows = 1
  nnoremap <C-f> :NERDTreeFocus<CR>
  " Toggle nerdtree with Ctrl-f
  nnoremap <C-n> :NERDTreeToggle<CR>
  " Start NERDTree when Vim is started without file arguments.
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
  " Start NERDTree when Vim starts with a directory argument.
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
  " Exit Vim if NERDTree is the only window left.
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

  let g:NERDTreeWinSize=25
  let g:NERDTreeSyntaxDisableDefaultExtensions = 1
  let g:NERDTreeDisableExactMatchHighlight = 1
  let g:NERDTreeDisablePatternMatchHighlight = 1
  let g:NERDTreeSyntaxEnabledExtensions = ['c', 'cpp', 'dart', 'java', 'jpg', 'json', 'md', 'mp4', 'png', 'py', 'yaml']
  let g:NERDTreeHighlightCursorline = 0
  "}}

  "Easy escape {{
  let g:easyescape_chars = { "j": 1, "k": 1 }
  let g:easyescape_timeout = 200
  cnoremap jk <ESC>
  cnoremap kj <ESC>
  "}}

  " Nerd commenter {{
  " " to bind Ctmd+/ to ++
  vmap <C-c> <plug>NERDCommenterToggle
  nmap <C-c> <plug>NERDCommenterToggle
  " }}
  "Vista {{
  function! NearestMethodOrFunction() abort
      return get(b:, 'vista_nearest_method_or_function', '')
  endfunction

  set statusline+=%{NearestMethodOrFunction()}
  let g:vista_default_executive = 'coc'
  " let g:vista_sidebar_position='vertical botleft'
  let g:vista_sidebar_width=25
  let g:vista_fzf_preview = ['right:50%']
  let g:vista#renderer#enable_icon = 1
  let g:vista#renderer#icons = {
  \   "function": "\uf794",
  \   "variable": "\uf71b",
  \  }
  let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
  autocmd bufenter * if winnr("$") == 1 && vista#sidebar#IsOpen() | execute "normal! :q!\<CR>" | endif
  " By default vista.vim never run if you don't call it explicitly.
  " If you want to show the nearest function in your statusline automatically,
  " you can add the following line to your vimrc
  autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
  "}}

  "EasyMotion {{
  map <Leader> <Plug>(easymotion-prefix)
  map f <Plug>(easymotion-bd-w)
  let g:EasyMotion_use_upper=1
  let g:EasyMotion_keys='SADFJKLEWCMPGH'
  let g:Easymotion_smartcase=1
  let g:EasyMotion_use_smartsign_us=1
  "}}

  " Comfortable motion {{
  let g:comfortable_motion_no_default_key_mappings = 1
  let g:comfortable_motion_impulse_multiplier = 1  " Feel free to increase/decrease this value.

  noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 2)<CR>
  noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -2)<CR>
  " }}
  "Markdown preview {{
  " set to 1, nvim will open the preview window after entering the markdown buffer
  " default: 0
  let g:mkdp_auto_start = 0

  " set to 1, the nvim will auto close current preview window when change
  " from markdown buffer to another buffer
  " default: 1
  let g:mkdp_auto_close = 1

  " set to 1, the vim will refresh markdown when save the buffer or
  " leave from insert mode, default 0 is auto refresh markdown as you edit or
  " move the cursor
  " default: 0
  let g:mkdp_refresh_slow = 0

  " set to 1, the MarkdownPreview command can be use for all files,
  " by default it can be use in markdown file
  " default: 0
  let g:mkdp_command_for_global = 0

  " set to 1, preview server available to others in your network
  " by default, the server listens on localhost (127.0.0.1)
  " default: 0
  let g:mkdp_open_to_the_world = 0

  " use custom IP to open preview page
  " useful when you work in remote vim and preview on local browser
  " more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
  " default empty
  let g:mkdp_open_ip = ''

  " specify browser to open preview page
  " default: ''
  let g:mkdp_browser = ''

  " set to 1, echo preview page url in command line when open preview page
  " default is 0
  let g:mkdp_echo_preview_url = 0

  " a custom vim function name to open preview page
  " this function will receive url as param
  " default is empty
  let g:mkdp_browserfunc = ''

  " options for markdown render
  " mkit: markdown-it options for render
  " katex: katex options for math
  " uml: markdown-it-plantuml options
  " maid: mermaid options
  " disable_sync_scroll: if disable sync scroll, default 0
  " sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
  "   middle: mean the cursor position alway show at the middle of the preview page
  "   top: mean the vim top viewport alway show at the top of the preview page
  "   relative: mean the cursor position alway show at the relative positon of the preview page
  " hide_yaml_meta: if hide yaml metadata, default is 1
  " sequence_diagrams: js-sequence-diagrams options
  " content_editable: if enable content editable for preview page, default: v:false
  " disable_filename: if disable filename header for preview page, default: 0
  let g:mkdp_preview_options = {
      \ 'mkit': {},
      \ 'katex': {},
      \ 'uml': {},
      \ 'maid': {},
      \ 'disable_sync_scroll': 0,
      \ 'sync_scroll_type': 'middle',
      \ 'hide_yaml_meta': 1,
      \ 'sequence_diagrams': {},
      \ 'flowchart_diagrams': {},
      \ 'content_editable': v:false,
      \ 'disable_filename': 0
      \ }

  " use a custom markdown style must be absolute path
  " like '/Users/username/markdown.css' or expand('~/markdown.css')
  let g:mkdp_markdown_css = ''

  " use a custom highlight style must absolute path
  " like '/Users/username/highlight.css' or expand('~/highlight.css')
  let g:mkdp_highlight_css = ''

  " use a custom port to start server or random for empty
  let g:mkdp_port = ''

  " preview page title
  " ${name} will be replace with the file name
  let g:mkdp_page_title = '「${name}」'

  " recognized filetypes
  " these filetypes will have MarkdownPreview... commands
  let g:mkdp_filetypes = ['markdown']
  "}}


  " CoC below taken from the official repo {{{
  " TextEdit might fail if hidden is not set.
  set hidden

  " Some servers have issues with backup files, see #649.
  set nobackup
  set nowritebackup

  " Give more space for displaying messages.
  set cmdheight=2

  " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
  " delays and poor user experience.
  set updatetime=300

  " Don't pass messages to |ins-completion-menu|.
  set shortmess+=c

  " Always show the signcolumn, otherwise it would shift the text each time
  " diagnostics appear/become resolved.
  set signcolumn=yes

  " Use tab for trigger completion with characters ahead and navigate.
  " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
  " other plugin before putting this into your config.
  inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

  " Use <c-space> to trigger completion.
  inoremap <silent><expr> <c-space> coc#refresh()

  " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
  " position. Coc only does snippet and additional edit on confirm.
  if has('patch8.1.1068')
    " Use `complete_info` if your (Neo)Vim version supports it.
    inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
  else
    imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
  endif

  " Use `[g` and `]g` to navigate diagnostics
  nmap <silent> [g <Plug>(coc-diagnostic-prev)
  nmap <silent> ]g <Plug>(coc-diagnostic-next)

  " GoTo code navigation.
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)

  " Use K to show documentation in preview window.
  nnoremap <silent> K :call <SID>show_documentation()<CR>

  function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
      execute 'h '.expand('<cword>')
    else
      call CocAction('doHover')
    endif
  endfunction

  " Highlight the symbol and its references when holding the cursor.
  autocmd CursorHold * silent call CocActionAsync('highlight')

  " Symbol renaming.
  nmap <leader>rn <Plug>(coc-rename)

  " Formatting selected code.
  xmap <leader>f  <Plug>(coc-format-selected)
  nmap <leader>f  <Plug>(coc-format-selected)

  augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  augroup end

  " Applying codeAction to the selected region.
  " Example: `<leader>aap` for current paragraph
  xmap <leader>a  <Plug>(coc-codeaction-selected)
  nmap <leader>a  <Plug>(coc-codeaction-selected)

  " Remap keys for applying codeAction to the current line.
  nmap <leader>ac  <Plug>(coc-codeaction)
  " Apply AutoFix to problem on the current line.
  nmap <leader>qf  <Plug>(coc-fix-current)

  " Introduce function text object
  " NOTE: Requires 'textDocument.documentSymbol' support from the language server.
  xmap if <Plug>(coc-funcobj-i)
  xmap af <Plug>(coc-funcobj-a)
  omap if <Plug>(coc-funcobj-i)
  omap af <Plug>(coc-funcobj-a)

  " Use <TAB> for selections ranges.
  " NOTE: Requires 'textDocument/selectionRange' support from the language server.
  " coc-tsserver, coc-python are the examples of servers that support it.
  nmap <silent> <TAB> <Plug>(coc-range-select)
  xmap <silent> <TAB> <Plug>(coc-range-select)

  " Add `:Format` command to format current buffer.
  command! -nargs=0 Format :call CocAction('format')

  " Add `:Fold` command to fold current buffer.
  command! -nargs=? Fold :call     CocAction('fold', <f-args>)

  " Add `:OR` command for organize imports of the current buffer.
  command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

  " Add (Neo)Vim's native statusline support.
  " NOTE: Please see `:h coc-status` for integrations with external plugins that
  " provide custom statusline: lightline.vim, vim-airline.
  set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

  " Mappings using CoCList:
  " Show all diagnostics.
  nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
  " Manage extensions.
  nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
  " Show commands.
  nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
  " Find symbol of current document.
  nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
  " Search workspace symbols.
  nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
  " Do default action for next item.
  nnoremap <silent> <space>j  :<C-u>CocNext<CR>
  " Do default action for previous item.
  nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
  " Resume latest coc list.
  nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

  " For highlighting
  autocmd CursorHold * silent call CocActionAsync('highlight')

  " All plugins
  let g:coc_global_extensions = [
        \'coc-word',
        \'coc-syntax',
        \'coc-spell-checker',
        \'coc-snippets',
        \'coc-prettier',
        \'coc-pairs',
        \'coc-lists',
        \'coc-highlight',
        \'coc-git',
        \'coc-emoji',
        \'coc-dictionary',
        \'coc-calc',
        \'coc-actions',
        \'coc-markdownlint',
        \'coc-json',
        \'coc-java',
        \'coc-python',
        \'coc-flutter',
        \'coc-docker',
        \'coc-clangd',
        \'coc-cmake',
        \'coc-yaml',
  \]

  " Tab completion for coc-snippets like VSCode
  inoremap <silent><expr> <TAB>
        \ pumvisible() ? coc#_select_confirm() :
        \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()

  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

  let g:coc_snippet_next = '<tab>'
  " Coc ends here finally }}}
endif
