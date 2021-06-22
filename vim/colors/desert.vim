" desert -- Vim color scheme.
" Opinionated fork of 'desert' by Hans Fugal.
set background=dark

hi clear
let g:colors_name = 'desert'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['#7f7f8c', '#cd5c5c', '#9acd32', '#bdb76b',
        \ '#75a0ff', '#eeee00', '#cd853f', '#666666', '#8a7f7f', '#ff0000',
        \ '#89fb98', '#f0e68c', '#6dceeb', '#ffde9b', '#ffa0a0', '#c2bfa5']
  hi Normal guifg=#ffffff guibg=#333333 gui=NONE cterm=NONE
  hi EndOfBuffer guifg=#7f7f8c guibg=#4d4d4d gui=NONE cterm=NONE
  hi Statusline guifg=#333333 guibg=#c2bfa5 gui=NONE cterm=NONE
  hi StatuslineNC guifg=#7f7f8c guibg=#c2bfa5 gui=NONE cterm=NONE
  hi StatuslineTerm guifg=#333333 guibg=#c2bfa5 gui=NONE cterm=NONE
  hi StatuslineTermNC guifg=#ffffff guibg=#c2bfa5 gui=NONE cterm=NONE
  hi VertSplit guifg=#7f7f8c guibg=#c2bfa5 gui=NONE cterm=NONE
  hi Pmenu guifg=#ffffff guibg=#666666 gui=NONE cterm=NONE
  hi PmenuSel guifg=#333333 guibg=#f0e68c gui=NONE cterm=NONE
  hi PmenuSbar guifg=NONE guibg=#7f7f8c gui=NONE cterm=NONE
  hi PmenuThumb guifg=NONE guibg=#cd5c5c gui=NONE cterm=NONE
  hi TabLine guifg=#333333 guibg=#c2bfa5 gui=NONE cterm=NONE
  hi TabLineFill guifg=NONE guibg=#c2bfa5 gui=NONE cterm=NONE
  hi TabLineSel guifg=#333333 guibg=#f0e68c gui=NONE cterm=NONE
  hi ToolbarLine guifg=NONE guibg=#666666 gui=NONE cterm=NONE
  hi ToolbarButton guifg=#333333 guibg=#ffde9b gui=bold cterm=bold
  hi NonText guifg=#8a7f7f guibg=NONE gui=NONE cterm=NONE
  hi SpecialKey guifg=#9acd32 guibg=NONE gui=NONE cterm=NONE
  hi Folded guifg=#eeee00 guibg=#4d4d4d gui=NONE cterm=NONE
  hi Visual guifg=#f0e68c guibg=#6b8e24 gui=NONE cterm=NONE
  hi VisualNOS guifg=#f0e68c guibg=#6dceeb gui=NONE cterm=NONE
  hi LineNr guifg=#eeee00 guibg=NONE gui=NONE cterm=NONE
  hi FoldColumn guifg=#eeee00 guibg=#4d4d4d gui=NONE cterm=NONE
  hi CursorLine guifg=NONE guibg=#444444 gui=NONE cterm=NONE
  hi CursorColumn guifg=NONE guibg=#666666 gui=NONE cterm=NONE
  hi CursorLineNr guifg=#eeee00 guibg=NONE gui=bold cterm=bold
  hi QuickFixLine guifg=NONE guibg=#666666 gui=NONE cterm=NONE
  hi SignColumn guifg=#eeee00 guibg=#4d4d4d gui=NONE cterm=NONE
  hi Underlined guifg=#75a0ff guibg=NONE gui=underline cterm=underline
  hi Error guifg=#ffffff guibg=#ff0000 gui=NONE cterm=NONE
  hi ErrorMsg guifg=#ffffff guibg=#ff0000 gui=NONE cterm=NONE
  hi ModeMsg guifg=#ffde9b guibg=NONE gui=bold cterm=bold
  hi WarningMsg guifg=#cd5c5c guibg=NONE gui=bold cterm=bold
  hi MoreMsg guifg=#9acd32 guibg=NONE gui=bold cterm=bold
  hi Question guifg=#89fb98 guibg=NONE gui=bold cterm=bold
  hi Todo guifg=#ff0000 guibg=#eeee00 gui=NONE cterm=NONE
  hi MatchParen guifg=#7f7f8c guibg=#bdb76b gui=NONE cterm=NONE
  hi Search guifg=#f0e68c guibg=#7f7f8c gui=NONE cterm=NONE
  hi IncSearch guifg=#f0e68c guibg=#cd853f gui=NONE cterm=NONE
  hi WildMenu guifg=#333333 guibg=#f0e68c gui=NONE cterm=NONE
  hi ColorColumn guifg=#333333 guibg=#cd5c5c gui=NONE cterm=NONE
  hi Cursor guifg=#333333 guibg=#f0e68c gui=NONE cterm=NONE
  hi lCursor guifg=#333333 guibg=#ff0000 gui=NONE cterm=NONE
  hi DiffAdd guifg=#333333 guibg=#89fb98 gui=NONE cterm=NONE
  hi DiffChange guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi DiffText guifg=#333333 guibg=#ffde9b gui=NONE cterm=NONE
  hi DiffDelete guifg=#cd5c5c guibg=#4d4d4d gui=NONE cterm=NONE
  hi SpellBad guifg=#ff0000 guibg=NONE guisp=#7f7f8c gui=undercurl cterm=underline
  hi SpellCap guifg=#cd5c5c guibg=NONE guisp=#cd5c5c gui=undercurl cterm=underline
  hi SpellLocal guifg=#bdb76b guibg=NONE guisp=#bdb76b gui=undercurl cterm=underline
  hi SpellRare guifg=#f0e68c guibg=NONE guisp=#f0e68c gui=undercurl cterm=underline
  hi Comment guifg=#6dceeb guibg=NONE gui=NONE cterm=NONE
  hi Identifier guifg=#89fb98 guibg=NONE gui=NONE cterm=NONE
  hi Statement guifg=#f0e68c guibg=NONE gui=bold cterm=bold
  hi Constant guifg=#ffa0a0 guibg=NONE gui=NONE cterm=NONE
  hi PreProc guifg=#cd5c5c guibg=NONE gui=NONE cterm=NONE
  hi Type guifg=#bdb76b guibg=NONE gui=bold cterm=bold
  hi Special guifg=#ffde9b guibg=NONE gui=NONE cterm=NONE
  hi Directory guifg=#6dceeb guibg=NONE gui=NONE cterm=NONE
  hi Conceal guifg=#666666 guibg=NONE gui=NONE cterm=NONE
  hi Ignore guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Title guifg=#cd5c5c guibg=NONE gui=NONE cterm=NONE
  unlet s:t_Co
  finish
endif

if s:t_Co >= 256
  hi Normal ctermfg=231 ctermbg=236 cterm=NONE
  if !has('patch-8.0.0616') " Fix for Vim bug
    set background=dark
  endif
  hi EndOfBuffer ctermfg=242 ctermbg=239 cterm=NONE
  hi Statusline ctermfg=236 ctermbg=144 cterm=NONE
  hi StatuslineNC ctermfg=242 ctermbg=144 cterm=NONE
  hi StatuslineTerm ctermfg=236 ctermbg=144 cterm=NONE
  hi StatuslineTermNC ctermfg=231 ctermbg=144 cterm=NONE
  hi VertSplit ctermfg=242 ctermbg=144 cterm=NONE
  hi Pmenu ctermfg=231 ctermbg=241 cterm=NONE
  hi PmenuSel ctermfg=236 ctermbg=186 cterm=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=242 cterm=NONE
  hi PmenuThumb ctermfg=NONE ctermbg=167 cterm=NONE
  hi TabLine ctermfg=236 ctermbg=144 cterm=NONE
  hi TabLineFill ctermfg=NONE ctermbg=144 cterm=NONE
  hi TabLineSel ctermfg=236 ctermbg=186 cterm=NONE
  hi ToolbarLine ctermfg=NONE ctermbg=241 cterm=NONE
  hi ToolbarButton ctermfg=236 ctermbg=222 cterm=bold
  hi NonText ctermfg=244 ctermbg=NONE cterm=NONE
  hi SpecialKey ctermfg=112 ctermbg=NONE cterm=NONE
  hi Folded ctermfg=226 ctermbg=239 cterm=NONE
  hi Visual ctermfg=186 ctermbg=64 cterm=NONE
  hi VisualNOS ctermfg=186 ctermbg=81 cterm=NONE
  hi LineNr ctermfg=226 ctermbg=NONE cterm=NONE
  hi FoldColumn ctermfg=226 ctermbg=239 cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=238 cterm=NONE
  hi CursorColumn ctermfg=NONE ctermbg=241 cterm=NONE
  hi CursorLineNr ctermfg=226 ctermbg=NONE cterm=bold
  hi QuickFixLine ctermfg=NONE ctermbg=241 cterm=NONE
  hi SignColumn ctermfg=226 ctermbg=239 cterm=NONE
  hi Underlined ctermfg=111 ctermbg=NONE cterm=underline
  hi Error ctermfg=231 ctermbg=196 cterm=NONE
  hi ErrorMsg ctermfg=231 ctermbg=196 cterm=NONE
  hi ModeMsg ctermfg=222 ctermbg=NONE cterm=bold
  hi WarningMsg ctermfg=167 ctermbg=NONE cterm=bold
  hi MoreMsg ctermfg=112 ctermbg=NONE cterm=bold
  hi Question ctermfg=120 ctermbg=NONE cterm=bold
  hi Todo ctermfg=196 ctermbg=226 cterm=NONE
  hi MatchParen ctermfg=242 ctermbg=143 cterm=NONE
  hi Search ctermfg=186 ctermbg=242 cterm=NONE
  hi IncSearch ctermfg=186 ctermbg=172 cterm=NONE
  hi WildMenu ctermfg=236 ctermbg=186 cterm=NONE
  hi ColorColumn ctermfg=236 ctermbg=167 cterm=NONE
  hi Cursor ctermfg=236 ctermbg=186 cterm=NONE
  hi lCursor ctermfg=236 ctermbg=196 cterm=NONE
  hi DiffAdd ctermfg=236 ctermbg=120 cterm=NONE
  hi DiffChange ctermfg=NONE ctermbg=NONE cterm=NONE
  hi DiffText ctermfg=236 ctermbg=222 cterm=NONE
  hi DiffDelete ctermfg=167 ctermbg=239 cterm=NONE
  hi SpellBad ctermfg=196 ctermbg=NONE cterm=underline
  hi SpellCap ctermfg=167 ctermbg=NONE cterm=underline
  hi SpellLocal ctermfg=143 ctermbg=NONE cterm=underline
  hi SpellRare ctermfg=186 ctermbg=NONE cterm=underline
  hi Comment ctermfg=81 ctermbg=NONE cterm=NONE
  hi Identifier ctermfg=120 ctermbg=NONE cterm=NONE
  hi Statement ctermfg=186 ctermbg=NONE cterm=bold
  hi Constant ctermfg=217 ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=167 ctermbg=NONE cterm=NONE
  hi Type ctermfg=143 ctermbg=NONE cterm=bold
  hi Special ctermfg=222 ctermbg=NONE cterm=NONE
  hi Directory ctermfg=81 ctermbg=NONE cterm=NONE
  hi Conceal ctermfg=241 ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Title ctermfg=167 ctermbg=NONE cterm=NONE
  unlet s:t_Co
  finish
endif

" Background: dark
" Color: foreground #ffffff 231;done
" Color: background #333333 236;done
" Color: color00    #7f7f8c 242;done
" Color: color08    #8a7f7f 244;done
" Color: color01    #cd5c5c 167;done
" Color: color09    #ff0000 196;done
" Color: color02    #9acd32 112;done
" Color: color10    #89fb98 120;done
" Color: color03    #bdb76b 143;done
" Color: color11    #f0e68c 186;done
" Color: color04    #75a0ff 111;done
" Color: color12    #6dceeb 81;done
" Color: color05    #eeee00 226;done
" Color: color13    #ffde9b 222;done
" Color: color06    #cd853f 172;done
" Color: color14    #ffa0a0 217;done
" Color: color07    #666666 241;done
" Color: color15    #c2bfa5 144;done
" Color: color16    #6b8e24 64;done
" Color: color17    #4d4d4d 239;done
" Term colors: color00 color01 color02 color03 color04 color05 color06 color07
" Term colors: color08 color09 color10 color11 color12 color13 color14 color15
" vim: et ts=2 sw=2
