"set ruler
set nocursorline
set relativenumber
set number
set mouse=a "activar mouse
set noshowmode "no mostrar el modo en que estamos
set encoding=utf-8 "codificar todos los archivos en utf-8
set cursorline "mostrar linea de codigo
set hidden "mover entre buffers
set background=dark
set termguicolors
"identar
set expandtab
set shiftwidth=3

"set nerdfont
set guifont=JetBrainsMono\ Nerd\ Font:h11

"plugins
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'hrsh7th/vim-vsnip' "snippets
Plug 'voldikss/vim-floaterm' "floaterm
Plug 'ghifarit53/tokyonight-vim' "colorscheme
Plug 'vim-airline/vim-airline' "barra de estado
Plug 'vim-airline/vim-airline-themes' "barra de estado
Plug 'navarasu/onedark.nvim' "onedark 
Plug 'ryanoasis/vim-devicons' "devicons
Plug 'grvcoelho/vim-javascript-snippets' "javascript snippets
Plug 'ellisonleao/gruvbox.nvim' "gruvbox 
Plug 'honza/vim-snippets' "snippets para varios lenguajes de programacion
Plug 'junegunn/fzf.vim' "fzf
Plug 'yggdroot/indentline' "identacion 
Plug 'sheerun/vim-polyglot'
"prettier
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html','ejs'] }
"FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"THEMES
Plug 'arcticicestudio/nord-vim' "nord
Plug 'arcticicestudio/nord-vim', { 'on': 'NERDTreeToggle' }
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'ghifarit53/tokyonight-vim'
Plug 'sainnhe/sonokai'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'sainnhe/gruvbox-material'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'artanikin/vim-synthwave84'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'connorholyday/vim-snazzy'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'dunstontc/vim-vscode-theme'
call plug#end()

"config tokyonight
if has('termguicolors')
      set termguicolors
endif
let g:tokyonight_transparent='true'
let g:tokyonight_transparent_background=0
let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1

"config sonokai  espresso, maia, shusia, andromeda, atlantis
if has('termguicolors')
      set termguicolors
endif
let g:sonokai_style = 'atlantis'
let g:sonokai_enabled_italic=1
let g:sonokai_transparent_background=1
"red,orange,yellow,green,blue,purple
let g:sonokai_cursor='purple' 

"config ayu
let ayucolor='dark'

"config gruvbox-material hard,medium,soft
let g:gruvbox_material_background = 'soft'
let g:gruvbox_material_cursor="orange"
let g:gruvbox_material_transparent_background=0

"config material theme
let g:material_terminal_italics = 1
let g:material_theme_style = 'default'  "'default' | 'palenight' | 'ocean' | 'lighter' | 'darker'

"set theme
colorscheme gruvbox-material 

"vim airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='gruvbox_material'

"keybins
let mapleader=" "
nmap <TAB> :bnext<CR>
nmap <S-TAB> :bprevious<CR>
"guardar un archivo
nmap <leader>w :w<CR>
"salir de un archivo 
nmap <leader>q :q<CR>
"guardar y salir de un archivo
nmap <leader>wq :wq<CR>
"recargar nvim 
nmap <leader>so :so%<CR>
"instalar plugins 
nmap <leader>pi :PlugInstall<CR>
"eliminar plugins 
nmap <leader>pc :PlugClean<CR>
nmap <leader>t :FloatermNew<CR>
nmap <leader>tt :FloatermToggle<CR>
"cerrar buffer
nmap <leader>bd :bdelete<CR>
"cerrar todos los buffer
nmap <leader>bdd :%bdelete<CR>
"prettier
nmap <leader>b :Prettier<CR>
"FZF
nmap <leader>f :Files<CR>
"LISTA DE BUFFERS
map <leader>ob :Buffers<cr>
"run archivo js
nnoremap <leader>x :!node %<cr>

" faster scrolling
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>
nmap <Leader>s <Plug>(easymotion-s2)


"------------------------------------------------COC EXPLORER CONFIG
"Disable netrw.
let g:loaded_netrw  = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1
let g:loaded_netrwFileHandlers = 1
let g:loaded_matchit = 1

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '%APPDATA%\Local\nvim',
\   },
\   'cocConfig': {
\      'root-uri': '%APPDATA%\Local\nvim\coc-settings.json',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   },
\   'buffer': {
\     'sources': [{'name': 'buffer', 'expand': v:true}]
\   },
\   'git': {
\     'sources': [{'name': 'git', 'expand': v:true}]
\   },
\ }

autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
augroup coc-explorer
  if @% == '' || @% == '.'
    autocmd User CocNvimInit bd
    autocmd User CocNvimInit CocCommand explorer
  endif
augroup END
if exists('#User#CocGitStatusChange')
  doautocmd <nomodeline> User CocGitStatusChange
endif

" asignar enter para seleccionar el autocompletado
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>" 
 
nnoremap <leader>e :CocCommand explorer<CR>
nnoremap <leader>p :CocCommand explorer --preset floating<CR>


" Snipets
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" See https://github.com/hrsh7th/vim-vsnip/pull/50
nmap        s   <Plug>(vsnip-select-text)
xmap        s   <Plug>(vsnip-select-text)
nmap        S   <Plug>(vsnip-cut-text)
xmap        S   <Plug>(vsnip-cut-text)

" If you want to use snippet for multiple filetypes, you can `g:vsnip_filetypes` for it.
let g:vsnip_filetypes = {}
let g:vsnip_filetypes.javascriptreact = ['javascript']
let g:vsnip_filetypes.typescriptreact = ['typescript']
