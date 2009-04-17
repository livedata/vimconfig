set nocompatible

" General Vim behaviour.
set nowrap 
set autoindent expandtab smarttab           " settings for indentation
set tabstop=2 shiftwidth=2 softtabstop=2    " use 2 spaces for indenting
set nobackup nowritebackup                  " turn off backup file creation
set statusline=%<%f\ %h%m%r%=%-20.(line=%l,col=%c%V,totlin=%L%)\%h%m%r%=%-40(,%n%Y%)\%P
set laststatus=2                            " always show the status line
set incsearch ignorecase smartcase hlsearch " search options
set hidden
set history=1000                            " remember the last 1000 command instead of the default 20
set cursorline                              " highlight the current line
filetype plugin indent on                   " Enable filetype-specific indenting and plugins

syntax on                                   " syntax highlighting

set wildmenu                                " Make the command/file menu completion show more information
set wildmode=list:longest                   " Make the completions window larger

" Fuzzy Finder Settings
let g:fuzzy_ignore = "*.log"
let g:fuzzy_matching_limit = 70

" Leader mappings
let mapleader = ","                         " The leader character is like a vim modifier key
map <leader>f :FuzzyFinderTextMate<CR>
map <leader>b :FuzzyFinderBuffer<CR>
map <leader>r :ruby finder.rescan!<CR>:FuzzyFinderRemoveCache<CR>
map <leader>a :Ack<SPACE>
map <leader>n :NERDTreeToggle<CR>
map <leader>tl :TlistToggle<CR>

" Custom key mappings
" Pressing enter to add a newline after the cursor without entering insert mode
map <CR> o<Esc>
" Pressing S-enter to add a newline before the cursor without entering insert mode
map <S-Enter> O<Esc>
