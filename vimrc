set nocompatible " be iMproved
filetype off " required!

" Vundle setup
" " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle "scrooloose/nerdtree"
Bundle "msanders/snipmate.vim"
Bundle "ervandew/supertab"
Bundle "scrooloose/syntastic"
Bundle "altercation/solarized"
Bundle "ciaranm/inkpot"
Bundle "flazz/vim-colorschemes"
Bundle "SirVer/ultisnips"
Bundle "honza/vim-snippets"
Bundle "jshint/jshint"
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-q>"

"heme 

map <C-t> :NERDTreeToggle<CR>
set number
filetype plugin indent on

set shiftwidth=4            " Une tabulation = 4 espaces


if has('gui_running')
    set background=dark
else
    set background=dark
endif

set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized

set tabstop=4
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec = '/path/to/python3'
let g:syntastic_html_tidy_exec = 'tidy5'
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_javascript_checkers = ['jslint'] 

set hlsearch
set ai                     " Activer l'indentation automatique
set si                    " Activer l'indentation intelligente



" Splitter horizontalement
map <C-h> :sp<CR>
" " Splitter verticalement
map <C-v> :vsp<CR>
map <C-z>  u <CR>
"
" " Aller à l'onglet suivant
nnoremap <C-Left>  :tabprevious<CR>
" " Aller à l'onglet précédent
nnoremap <C-Right>  :tabnext<CR>
" " Fermer l'onglet courant
nnoremap <C-c> :tabclose<CR>
" " Ouvrir un nouvel onglet
nnoremap <C-n> :tabnew<CR>









