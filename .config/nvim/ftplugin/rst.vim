setlocal makeprg=rst2html.py\ %

nnoremap <buffer> <localleader>_ yypVr-
nnoremap <buffer> <localleader>+ yypVr=

nnoremap <buffer> <localleader>- yyPVr-yyjp
nnoremap <buffer> <localleader>= yyPVr=yyjp
