":so ~/.vim/autoload/*.vim
"call pathogen#infect() 

:set nocompatible 
:set autoindent
:set nu
:set nowrap
:set notitle
:set hlsearch
:set expandtab
:set ignorecase
:set statusline=%<%F%=\ [%1*%M%*%n%R%H]\ %-19(%3l,%02c%03V%)%p'%02b'
:set laststatus=2
:set shiftwidth=2
:set tabstop=2
:set nocindent
:set viminfo='100,f1
:syn on
:set makeprg=make
:set cindent
:set cc=80

set guifont=Monospace\ 8
colors peachpuff

if has ('win32')
  :set tags=U:\git\CedexHires\tags
  :map <F3>  :!msbuild <CR>
  :map <F4>  :!msbuild /t:Clean<CR>
  :map <S-F2>  :!mpage -Pprinter -2 %<CR>
  :set path=.,U:\git\CedexHires,U:\,C:\Users\marc
else
  :set path=.,/home/marc/local/sbin,/usr/src,/usr/include,/home/marc/git/u411/3.3.3
  :map <F3>  :make <CR>
  :map <F4>  :make clean<CR>
endif

if &term =~? 'mlterm\|xterm'
set t_Co=512
endif

:map <BS>  X
:map <F1>  :cn<CR>
:map <F2>  :w<CR>

:map <F5>  :n<CR>
:map <F6>  :N<CR>
:map <F7>  :!p4 edit %<CR>
:map <F8>  :!mak<CR>
:map <F9>  :qa!<CR>
:map <F10>  :wq<CR>
:map <C-1>  :b1<CR>
:map <C-2>  :b2<CR>
:map <C-3>  :b3<CR>
:map <C-4>  :b4<CR>
:map <C-5>  :b5<CR>
:map <C-6>  :b6<CR>
:map <C-7>  :b7<CR>
:map <S-F8> 1GVG=:%s/^\s*END\s*/END/g<CR>
:map =n     :tn<CR>
:map =p     :tp<CR>
:map =f     :tn<CR>
:map =b     :tp<CR>
:map =co    :!p4 edit %<CR>
:map +h     :nohlsearch<CR>

" vim -b : edit binary using xxd-format!
augroup Binary
  au!
  au BufReadPre  *.bin let &bin=1
  au BufReadPost *.bin if &bin | %!xxd
  au BufReadPost *.bin set ft=xxd | endif
  au BufWritePre *.bin if &bin | %!xxd -r
  au BufWritePre *.bin endif
  au BufWritePost *.bin if &bin | %!xxd
  au BufWritePost *.bin set nomod | endif
augroup END

set verbose=0
"save session before exiting:
:augroup normal
au VimLeave * mks! /home/marc/.session.vim
:augroup END

" vim -b : edit binary using xxd-format!
augroup Binary
  au!
  au BufReadPre  *.bin let &bin=1
  au BufReadPost *.bin if &bin | %!xxd
  au BufReadPost *.bin set ft=xxd | endif
  au BufWritePre *.bin if &bin | %!xxd -r
  au BufWritePre *.bin endif
  au BufWritePost *.bin if &bin | %!xxd
  au BufWritePost *.bin set nomod | endif
augroup END

