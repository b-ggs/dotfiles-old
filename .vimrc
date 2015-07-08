" Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" general settings
syntax enable
filetype plugin indent on
set nocompatible
set ruler

" Unity.vim
" nnoremap ,f :Unite file_rec/async<CR>

" EasyMotion.vim
" Gif config
" map  ' <Plug>(easymotion-sn)
" omap ' <Plug>(easymotion-tn)

" highlight kill
nnoremap <silent> <esc> :noh<CR><esc>

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)

" bell
set noerrorbells
set visualbell

" Path relative to working directory
set statusline+=%f

" show statusline even when no window split
set laststatus=2

" autoread files
set autoread

" indentation
set breakindent

" system clipboard
set clipboard=unnamedplus,unnamed

" move via display line
map j gj
map k gk

" ctrlp
" ,f : open ctrlp
map ,f :CtrlP<CR>

" file tabs
" ,t : new tab
" ,p : previous tab
" ,n : next tab
map ,t :tabe<CR>#
map ,p :tabp<CR>#
map ,n :tabn<CR>#

" mru
" ,o : open MRU
map ,o :MRU<CR>#

" line numbers
set number
set numberwidth=3

" highlighting search
set hlsearch
set incsearch

" tab == 2 spaces
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

" case insensitive search
set ignorecase
" search becomes case sensitive if caps used
set smartcase

" remap splits
" ,v : split vertically
" ,h : split horizontally
noremap ,v <C-w>v
noremap ,h <C-w>s

" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

" Buffer number next to filename
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" NERDTree
" Ctrl-N : NERDTreeToggle
map <C-n> :NERDTreeToggle<CR>

" Lightline
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }
      " \ 'separator': { 'left': '', 'right': '' },
      " \ 'subseparator': { 'left': '', 'right': '' }
  
set noshowmode

" Startify stuff
" Let ctrlp.vim replace startify buffer
let g:ctrlp_reuse_window  = 'startify'
" Ctrlp ignore
" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.DS_Store$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp$',
"   \ 'file': '\.exe$\|\.so$\|\.dat$'
"   \ }

let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'"

" Set Startify header
let g:startify_custom_header = [
		\'   888                                           .d8888888b.           d8b               ',
		\'   888                                          d88P"   "Y88b          Y8P               ',
		\'   888                                          888  d8b  888                            ',
		\'   88888b.   .d88b.   .d88b.   .d88b.  .d8888b  888  888  888 888  888 888 88888b.d88b.  ',
		\'   888 "88b d88""88b d88P"88b d88P"88b 88K      888  888bd88P 888  888 888 888 "888 "88b ',
		\'   888  888 888  888 888  888 888  888 "Y8888b. 888  Y8888P"  Y88  88P 888 888  888  888 ',
		\'   888 d88P Y88..88P Y88b 888 Y88b 888      X88 Y88b.     .d8  Y8bd8P  888 888  888  888 ',
		\'   88888P"   "Y88P"   "Y88888  "Y88888  88888P   "Y88888888P"   Y88P   888 888  888  888 ',
		\'                          888      888                                                   ',
		\'                     Y8b d88P Y8b d88P                                                   ',
		\'                      "Y88P"   "Y88P"                                                    ',
		\'',
		\ ]

highlight Visual cterm=NONE ctermbg=3 ctermfg=Black guibg=Gray
highlight Search cterm=NONE ctermbg=3 ctermfg=Black guibg=Gray
