"---------------------------------------------------------
"STANDARD VIM CHANGES
"---------------------------------------------------------
" presents tabs as two spaces
set tabstop=2
set shiftwidth=2

" vsplit window on right and split window on bottom
set splitright
set splitbelow

" Allow wrapping to go on
set nowrap
" Shows numbers as relative
set relativenumber

"---------------------------------------------------------
" PLUGINS (run :PlugInstall to install/deinstall plugins)
"---------------------------------------------------------
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'fatih/molokai'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'AndrewRadev/splitjoin.vim'
"Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'pangloss/vim-javascript'
" Plug 'HerringtonDarkholme/yats.vim'
" Plug 'codechips/coc-svelte', {'do': 'npm install'}
" If you have nodejs and yarn
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
call plug#end()

"---------------------------------------------------------
" VIM-GO CHANGES
"---------------------------------------------------------
" automatically highlight variable your cursor is on
let g:go_auto_sameids = 1

let g:go_code_completion_enabled = 0
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
" 

"---------------------------------------------------------
" THEME RELATED
"---------------------------------------------------------
" config step for installing gruvbox
" autocmd vimenter * ++nested colorscheme gruvbox
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai
"---------------------------------------------------------
"Vim-Go BINDINGS
"---------------------------------------------------------
"	TDD
autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>t <Plug>(go-test)
autocmd FileType go nmap <leader>tf <Plug>(go-test-func)
autocmd FileType go nmap <leader>c <Plug>(go-coverage-toggle)
autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

" Comprehension
autocmd FileType go nmap <leader>d <Plug>(go-doc)
autocmd FileType go nmap <leader>db <Plug>(go-doc-browser)

"---------------------------------------------------------
"Vim BINDINGS
"---------------------------------------------------------
"Ctrl+c to copy to clipboard yaked selection
" vmap <C-c> "+y (does not work on linux)
