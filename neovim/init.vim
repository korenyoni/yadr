call plug#begin('~/.local/share/nvim/plugged')

" deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
Plug 'zchee/deoplete-go', { 'do': 'make'}
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

" Nerdtree
Plug 'scrooloose/nerdtree'
nmap <C-E> :call NERDTreeToggleInCurDir()<CR>
function! NERDTreeToggleInCurDir()                                                                                                                                                             
    if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
        exe ":NERDTreeClose"
    else
        if (expand("%:t") != '')
            exe ":NERDTreeFind"
        else
            exe ":NERDTreeToggle"
        endif
    endif
endfunction

" material theme
Plug 'kaicataldo/material.vim'
set background=dark
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

let g:material_theme_style='palenight'

" Gitgutter (show git diff)
Plug 'airblade/vim-gitgutter'
set updatetime=100

" Ctrlp
Plug 'ctrlpvim/ctrlp.vim'

" Jsonnet 
Plug 'google/vim-jsonnet'

" YAML 
Plug 'stephpy/vim-yaml' 

call plug#end()

colorscheme material

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" resize current buffer by +/- 5
nnoremap <S-left> :vertical resize -5<cr>
nnoremap <S-down> :resize +5<cr>
nnoremap <S-up> :resize -5<cr>
nnoremap <S-right> :vertical resize +5<cr>

" don't wrap
set nowrap

" diable mouse
set mouse=a

" peristent undo
set undofile   " Maintain undo history between sessions
set undodir=~/.vim/undodir
