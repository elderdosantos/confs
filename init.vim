call plug#begin()
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } "tree of files
Plug 'morhetz/gruvbox'                                 "tema legal
Plug 'airblade/vim-gitgutter'                          "plugin do git
Plug 'sheerun/vim-polyglot'                            "identação e esquema de cores para varias linguagens
Plug 'editorconfig/editorconfig-vim'                   "interpreta .editorconfig
Plug 'itchyny/lightline.vim'                           "cores na barra de status
"Plug 'cloudhead/neovim-fuzzy'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

colorscheme gruvbox

set background=dark

set number
set mouse=a
set inccommand=split

nnoremap <C-p> :Files<CR>
nnoremap <C-l> :Ag<CR>

map <C-o> :NERDTreeToggle <CR>
map <END> :A <CR>
map <F5> :w <CR>
map <F4> :q <CR>
map <F1> :GitGutterToggle <CR>

" auto complete
"" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<Tab>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" gd to go to definition
nmap <silent> gd <Plug>(coc-definition)
" gr to go to reference
nmap <silent> gr <Plug>(coc-references)
