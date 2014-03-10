set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" enable syntax folding and set viewer
let g:LatexBox_Folding = 1
let g:LatexBox_latexmk_options = "-pvc -pdfps"
let g:LatexBox_latexmk_preview_continuously = 1
let g:LatexBox_latexmk_async = 1

let g:LatexBox_viewer = "open /Applications/preview.app"
let g:LatexBox_quickfix = 2
let g:LatexBox_show_warnings = 1

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" solarized colorscheme
Bundle 'altercation/vim-colors-solarized'
" matlab vim bindings
Bundle 'vim-scripts/matlab.vim'
" latex-box
Bundle 'LaTeX-Box-Team/LaTeX-Box'
" make sure the colorscheme is set after the bundle call

if has ("gui_running")
	colorscheme solarized
end

filetype plugin indent on     " required

" spell check

autocmd BufNewFile,BufRead *.tex,README setlocal spell spelllang=en_us

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
