" Smart Dashes
" En Dash      – => -
" Em Dash      — => --
" Figure Date  ‒ => -
" Hyphen-Minus - => -
" Hyphen       ‐ => -
" Minus Sign   − => -

function! DumbChars() abort
  call DumbDashes()
  call DumbEllipses()
  call DumbQuotes()
endfunction

function! DumbDashes() abort

endfunction

function! DumbEllipses() abort
  %s/…/.../g
endfunction

function! DumbQuotes() abort
  %s/‘\|’/'/g
  %s/“\|”/"/g
endfunction

command! -bar DumbChars call DumbChars()
command! -bar DumbDashes call DumbDashes()
command! -bar DumbEllipses call DumbEllipses()
command! -bar DumbQuotes call DumbQuotes()
