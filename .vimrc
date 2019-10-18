set tabstop=2
set background=dark
set syntax=python
set ignorecase
set smartcase
set number
set wrap!

" Set the filetype based on the file's extension, overriding any
" 'filetype' that has already been set
au BufRead,BufNewFile *.tpp set filetype=cpp

"
" Sample command W
" 
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
