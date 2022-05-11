set nu
set rnu
call plug#begin()
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
colorscheme challenger_deep
if &term =~ '^xterm'
  " solid underscore
  let &t_SI .= "\<Esc>[6 q"
  " solid block
  let &t_EI .= "\<Esc>[2 q"
  " 1 or 0 -> blinking block
  " 3 -> blinking underscore
  " Recent versions of xterm (282 or above) also support
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar
endif
