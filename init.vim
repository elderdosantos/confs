call plug#begin()
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } "tree of files
Plug 'morhetz/gruvbox'                                 "tema legal
Plug 'airblade/vim-gitgutter'                          "plugin do git
Plug 'sheerun/vim-polyglot'                            "identação e esquema de cores para varias linguagens
Plug 'editorconfig/editorconfig-vim'                   "interpreta .editorconfig
Plug 'itchyny/lightline.vim'                           "cores na barra de status
call plug#end()

colorscheme gruvbox

set background=dark

set number
set mouse=a
set inccommand=split

map <F9> :NERDTreeToggle <CR>
map <END> :A <CR>
map <F5> :w <CR>
map <F4> :q <CR>
map <F1> :GitGutterToggle <CR>

