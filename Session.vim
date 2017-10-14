let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/pmg/dev/mollycat
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +6 cli/dbtest.py
badd +2 cli/up.sh
badd +3 db/flyway.conf
badd +2 db/createdb.sql
badd +12 db/sql/V1__create_tables.sql
badd +21 hub-server/pom.xml
badd +5 hub-server/src/main/java/com/possemeeg/mollycat/App.java
badd +41 doc/arc.plantuml
badd +0 ~/pmg/config/nvim/nvim/ftdetect/vagrant.vim
badd +1 ~/pmg/config/nvim/nvim/ftdetect/plantuml.vim
argglobal
silent! argdel *
set stal=2
edit cli/dbtest.py
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 32) / 65)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 014|
tabedit infra/vagrant/Vagrantfile
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 102) / 204)
exe '2resize ' . ((&lines * 32 + 34) / 68)
exe 'vert 2resize ' . ((&columns * 172 + 102) / 204)
exe '3resize ' . ((&lines * 32 + 34) / 68)
exe 'vert 3resize ' . ((&columns * 172 + 102) / 204)
argglobal
enew
file NERD_tree_2
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
lcd ~/pmg/dev/mollycat
wincmd w
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/pmg/dev/mollycat
wincmd w
argglobal
edit ~/pmg/config/nvim/nvim/ftdetect/vagrant.vim
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 047|
lcd ~/pmg/dev/mollycat
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 102) / 204)
exe '2resize ' . ((&lines * 32 + 34) / 68)
exe 'vert 2resize ' . ((&columns * 172 + 102) / 204)
exe '3resize ' . ((&lines * 32 + 34) / 68)
exe 'vert 3resize ' . ((&columns * 172 + 102) / 204)
tabnext 2
set stal=1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
