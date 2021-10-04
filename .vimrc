call plug#begin()
" Autocompletion
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --all' }
" Custom colorscheme
Plug 'morhetz/gruvbox'
" Integrated file tree viewer, load on first toggle
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
" Add git awareness to NerdTree
Plug 'Xuyuanp/nerdtree-git-plugin'
" Show git differences while editing
Plug 'airblade/vim-gitgutter'
" Status bar - line #, errors/warnings, branch name
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
" Fuzzy file search
Plug 'ctrlpvim/ctrlp.vim'
" Code snippets (boilerplate sucks lol)
Plug 'epilande/vim-react-snippets'
Plug 'SirVer/ultisnips'
" Comment and uncomment lines
Plug 'tpope/vim-commentary'
" Markdown viewer
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
call plug#end()

" Reminder:
" Use :PlugInstall to install plugins
" Use :PlugUpdate to update plugins

" Open NerdTree whenever vim is opened
autocmd VimEnter * NERDTree
" ... but don't focus it.
autocmd VimEnter * wincmd p
" Quit NerdTree when no files are open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NerdTree bindings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" NerdTree git symbols
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" gitgutter config
set signcolumn=yes

nmap ]h <Plug>(GitGutterNextHunk) "same as default
nmap [h <Plug>(GitGutterPrevHunk) "same as default

nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)

let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'

" Use airline's powerline font
let g:airline_powerline_fonts = 1

" Default <tab> US keymap conflicts with YCM
let g:UltiSnipsExpandTrigger="<c-e>"

" Remove preview window from YCM
set completeopt-=preview

" Markdown viewer options
let g:instant_markdown_autostart = 0
let g:instant_markdown_port = 4000
nnoremap <leader>p :InstantMarkdownPreview<CR>


" General config
syntax on
set background=dark
colorscheme gruvbox
filetype plugin indent on
set number
set ruler
set title
set expandtab

" Set make shortcut
nnoremap <F4> :make!<cr>

" Allow loading local .vimrc files for project-specific settings
set exrc
set secure

" Set a warning boundary at 100 characters
set colorcolumn=100
highlight ColorColumn ctermbg=darkgray

" Set default tab lengths
set tabstop=8 softtabstop=8 shiftwidth=8
set textwidth=79

" Adjust preferred tab lengths and expansion
autocmd BufEnter *.c    set noexpandtab
autocmd BufEnter *.cpp  set noexpandtab
autocmd BufEnter *.h    set noexpandtab
autocmd BufEnter *.html set noexpandtab tabstop=4 softtabstop=4 shiftwidth=4
autocmd BufEnter *.py   set tabstop=4 softtabstop=4 shiftwidth=4
autocmd BufEnter *.lua  set tabstop=4 softtabstop=4 shiftwidth=4
autocmd BufEnter *.js   set tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufEnter *.rb   set tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufEnter *.sh   set tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufEnter *.yml  set tabstop=2 softtabstop=2 shiftwidth=2

" Set Python indents
let g:pyindent_open_paren = 'shiftwidth()'
let g:pyindent_nested_paren = 'shiftwidth()'
let g:pyindent_continue = 'shiftwidth()'

" Cobol
autocmd BufEnter *.cobol    set tabstop=3
autocmd BufEnter *.cob      set tabstop=3
autocmd BufEnter *.cobcopy  set tabstop=3
autocmd BufEnter *.copybook set tabstop=3
autocmd BufEnter *.copy     set tabstop=3
