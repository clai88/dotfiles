call plug#begin('~/.vim/plugged')
"Plug 'valloric/youcompleteme'

Plug 'scrooloose/syntastic'

Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'

"autocomplete
" Plug 'honza/vim-snippets'
" Plug 'garbas/vim-snipmate'
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'

Plug 'ervandew/supertab'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'

"comments
" Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'
Plug 'kien/ctrlp.vim'
Plug 'wakatime/vim-wakatime'
Plug 'Yggdroot/indentLine'
Plug 'terryma/vim-multiple-cursors'

Plug 'itchyny/lightline.vim'
" Plug 'vim-airline/vim-airline'
" Plug 'altercation/vim-colors-solarized'

Plug 'matze/vim-move'
Plug 'jacoborus/tender'
Plug 'craigemery/vim-autotag'
Plug 'flazz/vim-colorschemes'
Plug 'jiangmiao/auto-pairs'
Plug 'justinmk/vim-syntax-extra'
Plug 'svermeulen/vim-easyclip' 

Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'idanarye/vim-vebugger'

"ocaml + prolog
Plug 'the-lambda-church/merlin'
Plug 'rgrinberg/vim-ocaml'
Plug 'ocamlpro/ocp-indent'
Plug 'adimit/prolog.vim'

Plug 'mhinz/vim-startify'

call plug#end()

" toby vim
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=indent,eol,start

set mouse=a
set statusline+=%f
set number
set linebreak
set ruler
set showcmd

set smartcase
set laststatus=2

set incsearch           " search as characters are entered
set foldenable          " enable folding

nnoremap E ^

" Line Numbers
set number
set relativenumber

augroup lineNums
    autocmd!
    autocmd InsertEnter * set norelativenumber
    autocmd InsertLeave * set relativenumber
augroup END

" Copy Paste to System Clipboard
set clipboard=unnamed

" let mapleader="g"       "for nerdcommenter
" nnoremap gcc  :call NERDComment(0,"toggle")<CR>

filetype plugin on

" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
    set termguicolors
endif

" Theme
syntax enable
set background=dark
colorscheme onedark
let t_Co=256

set iskeyword-=_


" lightline
" let g:lightline = { 'colorscheme': 'solarized' }
" let g:lightline.component = { 'fname': '%<%f'}
" set noshowmode

"vim-move
let g:move_key_modifier = 'C'

:ca off SyntasticToggleMode

:ca WQ wq
:ca Wq wq
:ca wQ wq
:ca W w


let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }


"tips and tricks
"gc$    comment to end of line
"gjj    comment
"vi (   select text inside parentheses
"cs ds yss change, delete, whole line
"ysiw ( select all text inside parentheses
"<C-j/k>  toggle line/block up and down


" language stuff
" import c libraries

" iabbrev main int main(){<CR>}<Esc>ki<Tab>
" iabbrev pry binding.pry


" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_SR = "\<Esc>]50;CursorShape=2\x7"
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"

iabbrev adn and
iabbrev tehn then
iabbrev waht what
iabbrev teh the
iabbrev edn end
iabbrev fi if
iabbrev lenght length


" ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
let s:opam_share_dir = system("opam config var share")
let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

let s:opam_configuration = {}

function! OpamConfOcpIndent()
  execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
endfunction
let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

function! OpamConfOcpIndex()
  execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
endfunction
let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

function! OpamConfMerlin()
  let l:dir = s:opam_share_dir . "/merlin/vim"
  execute "set rtp+=" . l:dir
endfunction
let s:opam_configuration['merlin'] = function('OpamConfMerlin')

let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
for tool in s:opam_packages
  " Respect package order (merlin should be after ocp-index)
  if count(s:opam_available_tools, tool) > 0
    call s:opam_configuration[tool]()
  endif
endfor
" ## end of OPAM user-setup addition for vim / base ## keep this line
" ## added by OPAM user-setup for vim / ocp-indent ## ab8b5439fcadab840a5d161821e5bd38 ## you can edit, but keep this line
if count(s:opam_available_tools,"ocp-indent") == 0
  source "/Users/chris/.opam/system/share/vim/syntax/ocp-indent.vim"
endif
" ## end of OPAM user-setup addition for vim / ocp-indent ## keep this line

" stupid crontab stuff
au BufEnter /private/tmp/crontab.* setl backupcopy=yes
 
setlocal cm=blowfish
