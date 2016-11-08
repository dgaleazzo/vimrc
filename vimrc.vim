" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'othree/eregex.vim'
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'Valloric/YouCompleteMe'
Plug 'neomake/neomake'
Plug 'airblade/vim-gitgutter'

Plug 'leafgarland/typescript-vim'

call plug#end()

" sets
set syntax
set number
set wildmenu
colorscheme Tomorrow-Night-Blue

" python
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

" youcompleteme
let g:ycm_goto_buffer_command = 'new-tab'
nnoremap <D-d> :YcmCompleter GoToDefinition <CR> 

" neomake
autocmd! BufWritePost,BufEnter * Neomake
let g:neomake_error_sign = {'text': "✖✖"}
let g:neomake_warning_sign = {'text': "⚑⚑"}
let g:neomake_serialize = 1
let g:neomake_serialize_abort_on_error = 1

let g:neomake_python_enabled_makers = ['pylint']
