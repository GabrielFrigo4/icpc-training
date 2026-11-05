syn on|se nu rnu cin noet ts=4 sw=4 sts=4 bs=2 is hls ww+=<,>,h,l,[,]
let &t_SI="\<Esc>[5 q"|let &t_EI="\<Esc>[1 q"
au BufNewFile *.cpp 0r ~/.template.cpp
map <F5> :w<CR>:!c++ -O3 -std=c++23 % -o %:r && ./%:r < input.txt<CR>
