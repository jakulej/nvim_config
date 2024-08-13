"Tab settings
set tabstop=4
set shiftwidth=4
set expandtab


" Space as Mapleader
let mapleader = " "

" Open NetRw on Space+b
nnoremap <leader>b :Ex<CR>
" Close on Space+q
nnoremap <leader>q :q<CR>
" Write on Space+w
nnoremap <leader>w :w<CR>

" Map Space+h/l to move between tabs
nnoremap <leader>h gT
nnoremap <leader>l gt

" Big jump on Space+j/k
nnoremap <leader>j <C-f>
nnoremap <leader>k <C-b>

" Open new tab on Space+n
nnoremap <leader>n :tabnew<CR>:Ex<CR>

" Terminal Actions
nnoremap <leader>tc :terminal<CR>i
nnoremap <leader>tv <C-w>v<C-w>l:terminal<CR>i
nnoremap <leader>ts <C-w>s<C-w>j:terminal<CR>i

" Do not copy the deleted text (Visual mode)
vnoremap d "_d
vnoremap D "_D
" Do not copy the deleted text (Normal mode)
nnoremap d "_d
nnoremap D "_D
nnoremap dd "_dd

" Always paste from clipboard (Visual mode)
vnoremap p "+P
vnoremap P "+p
" Always paste from clipboard (Normal mode)
nnoremap p "+p
nnoremap P "+P

" Always copy to clipboard (Visual mode)
vnoremap y "+y
vnoremap x "+x

" Do not end selection after adding/removing tabs
vnoremap > >gv
vnoremap <lt> <lt>gv

" Do not enter INSERT mode after adding newline
nnoremap o o<Esc>
nnoremap O O<Esc>

" Nice line deletions
nnoremap K kJ

" !!! This is necessary to exit the terminal with Escape
tnoremap <Esc> <C-\><C-n>

" Some remaps for Escape (Easier Access)
inoremap <C-c> <Esc>
nnoremap <C-h> <Esc>
inoremap <C-h> <Esc>
vnoremap <C-h> <Esc>
tnoremap <C-h> <C-\><C-n>
cnoremap <C-h> <Esc>

" Jumping to the start/end of the line
noremap <leader>a g_
nnoremap <leader>i _
vnoremap <leader>a g_
vnoremap <leader>i _

lua require('plugins')

" Telescope default 
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
