highlight clear

if exists("syntax_on")
  syntax reset
endif

exec "source " . expand('<sfile>:p:h') . "/default-light.vim"

let colors_name = "dim"

" In diffs, added lines are green, changed lines are yellow, deleted lines are
" red, and changed text (within a changed line) is bright yellow and bold.
highlight DiffAdd        ctermfg=Black    ctermbg=DarkGreen
highlight DiffChange     ctermfg=Black    ctermbg=DarkYellow
highlight DiffDelete     ctermfg=Black    ctermbg=DarkRed
highlight DiffText       ctermfg=Black    ctermbg=Yellow   cterm=bold

" Invert selected lines in visual mode
highlight Visual         ctermfg=NONE ctermbg=NONE cterm=inverse

" Highlight search matches in black, with a yellow background
highlight Search         ctermfg=Black    ctermbg=Yellow

" Dim line numbers, comments, color columns, the status line, splits and sign
" columns.
if &background == "light"
  highlight LineNr       ctermfg=Gray
  highlight CursorLineNr ctermfg=DarkGray
  highlight Comment      ctermfg=Gray
  highlight ColorColumn  ctermfg=DarkGray    ctermbg=Gray
  highlight Folded       ctermfg=DarkGray    ctermbg=Gray
  highlight FoldColumn   ctermfg=DarkGray    ctermbg=Gray
  highlight Pmenu        ctermfg=Black    ctermbg=Gray
  highlight PmenuSel     ctermfg=Gray    ctermbg=Black
  highlight SpellCap     ctermfg=DarkGray    ctermbg=Gray
  highlight StatusLine   ctermfg=Black    ctermbg=Gray    cterm=bold
  highlight StatusLineNC ctermfg=DarkGray    ctermbg=Gray    cterm=NONE
  highlight VertSplit    ctermfg=DarkGray    ctermbg=Gray    cterm=NONE
  highlight SignColumn                ctermbg=Gray
else
  highlight LineNr       ctermfg=DarkGray
  highlight CursorLineNr ctermfg=Gray
  highlight Comment      ctermfg=DarkGray
  highlight ColorColumn  ctermfg=Gray    ctermbg=DarkGray
  highlight Folded       ctermfg=Gray    ctermbg=DarkGray
  highlight FoldColumn   ctermfg=Gray    ctermbg=DarkGray
  highlight Pmenu        ctermfg=White   ctermbg=DarkGray
  highlight PmenuSel     ctermfg=DarkGray    ctermbg=White
  highlight SpellCap     ctermfg=Gray    ctermbg=DarkGray
  highlight StatusLine   ctermfg=White   ctermbg=DarkGray    cterm=bold
  highlight StatusLineNC ctermfg=Gray    ctermbg=DarkGray    cterm=NONE
  highlight VertSplit    ctermfg=Gray    ctermbg=DarkGray    cterm=NONE
  highlight SignColumn                ctermbg=DarkGray
endif

highlight link DimFzfFg     Normal
highlight link DimFzfBg     Normal
highlight link DimFzfFgPlus PmenuSel
highlight link DimFzfBgPlus PmenuSel
highlight link DimFzfInfo   Comment

highlight DimFzfHl      ctermfg=DarkGreen
highlight DimFzfPrompt  ctermfg=Blue
highlight DimFzfPointer ctermfg=DarkRed
highlight DimFzfMarker  ctermfg=Red

let g:fzf_colors = { 'fg':      ['fg', 'DimFzfFg'],
                   \ 'bg':      ['bg', 'DimFzfBg'],
                   \ 'hl':      ['fg', 'DimFzfHl'],
                   \ 'fg+':     ['fg', 'DimFzfFgPlus'],
                   \ 'bg+':     ['bg', 'DimFzfbgPlus'],
                   \ 'hl+':     ['fg', 'DimFzfHl'],
                   \ 'info':    ['fg', 'DimFzfInfo'],
                   \ 'prompt':  ['fg', 'DimFzfPrompt'],
                   \ 'pointer': ['fg', 'DimFzfPointer'],
                   \ 'marker':  ['fg', 'DimFzfMarker']}
