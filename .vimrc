set clipboard=unnamed
execute pathogen#infect()


nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
let g:clj_fmt_autosave = 0


function Cljcformat()
	Cljfmt
	%s/\(#?\)\(\s\+\)*/\1/g
endfunction
