"search for all files
nmap <Leader>f :Files<CR> 
"search in open buffers
nmap <Leader>b :Buffers<CR>
"search tags in current buffer
nmap <Leader>t :BTags<CR> 
"search tags in whole project - look for gutentag
nmap <Leader>T :Tags<CR> 
"search line in current buffer
nmap <Leader>l :BLines<CR> 
"search for line in loaded buffers
nmap <Leader>L :Lines<CR> 
"search in project
nmap <Leader>r :Rg<Space> 
"search in buffer history
nmap <Leader>h :History<CR>

nmap <Leader>g :GFiles<CR>

command! -bang -nargs=* All
    \ call fzf#run(fzf#wrap({'source': 'rg --files --hidden --no-ignore-vcs --glob "!{node_modules/*, .git/*}"', 'down': '40%', 'options': '--expect=ctrl-t,ctrl-x,ctrl-v --multi --reverse'}))
nmap <Leader>o :All<CR>

let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-i': 'split',
    \ 'ctrl-v': 'vsplit'}

