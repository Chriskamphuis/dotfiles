filetype indent plugin on                                                      
syntax enable                                                                  

autocmd! bufwritepost .vimrc source % 
autocmd! bufwritepost .bashrc source %
autocmd! bufwritepost .Xresources !xrdb -merge %

execute pathogen#infect()

set encoding=utf-8                                                              
set history=1000                                                                
set number                                                                      
set ruler                                                                      
set backspace=eol,start,indent                                                  
set whichwrap+=<,>,h,l                                                          
set incsearch                                                                  
set noerrorbells                                                                
set novisualbell                                                                
set nobackup                                                                    
set nowb                                                                        
set noswapfile
set noerrorbells
set novisualbell
set noeb vb t_vb=
set shiftwidth=2                                                                
set tabstop=2                                                                  
set foldmethod=indent                                                          
set foldnestmax=2                                                              
set nofoldenable                                                                
set cc=80                                                                      
set textwidth=79
                                                           
" Search results stay in middle of screen                                      
nnoremap n nzzzv                                                                
nnoremap N Nzzzv                                                                
                                                                               
" Unmap the arrow keys!!!                                                      
for prefix in ['i', 'n', 'v']                                                  
  for key in ['<Up>', '<Down>', '<Left>', '<Right>']                            
    exe prefix . "noremap " . key . " <Nop>"                                    
  endfor                                                                        
endfor
