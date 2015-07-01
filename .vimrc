set nocompatible

"Pathogen, carregar plugins em ~/.vim/bundle
call pathogen#helptags()
call pathogen#infect()

syntax on
set hidden "esconder buffers em vez de os fechar
set tabstop=4 "1 tab sao 4 espacos
set backspace=indent,eol,start
set autoindent
set copyindent
set smartindent
set shiftwidth=4 "numero de espacos para o autoident
set number "mostrar sempre a linha
set showcmd
set showmatch "mostrar o outro ( ) correspondente
set hlsearch
set incsearch
set ignorecase
set smartcase
set smarttab
"mostar espacos
autocmd filetype py, py2 set list
autocmd filetype py, py2 set listchars=tab:>.,trail:.,extends:#,nbsp:.
"autocmd filetype html,xml set listchars-=tab:>. "nao mostrar espcos em html e xml
"modo paste
set pastetoggle=<F2>
"nao fazer backups
set nobackup
set noswapfile
" Auto complete HTML
filetype plugin on
set omnifunc=syntaxcomplete#Complete
inoremap <C-a> <C-x><C-o>
" Fechar a tag automaticamente ao premir <//
noremap <lt>// </<C-X><C-O>
"--Keybindings
"nao deixar usar setas
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" limpar buffer de procura
nmap <silent> º :nohlsearch<CR>

"usar w!! para gravar quando esqucer do sudo
cmap w!! w !sudo tee % >/dev/null

"VIM AIRLINE CONF
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" Enable powerline fonts
let g:airline_powerline_fonts = 1
" Always show bottomline
set laststatus=2

"Autocomplete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
