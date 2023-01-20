vim.cmd([[
set nocompatible              " be iMproved, required
filetype off                  " required

"airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#show_buffers = 0

let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#tabs_label = ''

filetype plugin indent on

" nvim config
filetype on

"dart-vim-plugin
let dart_html_in_string=v:true

let $VIMBROWSER='google-chrome'
let $OPENBROWSER='nnoremap <F4> :!'. $VIMBROWSER .' %<CR>'

augroup OpenMdFile
	autocmd!
	autocmd BufEnter *.md exe $OPENBROWSER
	autocmd BufEnter *.md echom "Press F5 to Open .md File"
augroup END
]])
