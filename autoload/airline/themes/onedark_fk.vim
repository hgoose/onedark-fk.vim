" [onedark_fk.vim](https://github.com/joshdick/onedark_fk.vim/)

" This is a [vim-airline](https://github.com/vim-airline/vim-airline) theme for use with
" the [onedark_fk.vim](https://github.com/joshdick/onedark_fk.vim) colorscheme.

" It is based on vim-airline's ["tomorrow" theme](https://github.com/vim-airline/vim-airline-themes/blob/master/autoload/airline/themes/tomorrow.vim).
function! airline#themes#onedark_fk#refresh()
  let s:colors = onedark_fk#GetColors()

  if get(g:, 'onedark_fk_termcolors', 256) == 16
    let s:term_red = s:colors.red.cterm16
    let s:term_green = s:colors.green.cterm16
    let s:term_yellow = s:colors.yellow.cterm16
    let s:term_blue = s:colors.blue.cterm16
    let s:term_purple = s:colors.purple.cterm16
    let s:term_white = s:colors.white.cterm16
    let s:term_cursor_grey = s:colors.cursor_grey.cterm16
    let s:term_visual_grey = s:colors.visual_grey.cterm16
  else
    let s:term_red = s:colors.red.cterm
    let s:term_green = s:colors.green.cterm
    let s:term_yellow = s:colors.yellow.cterm
    let s:term_blue = s:colors.blue.cterm
    let s:term_purple = s:colors.purple.cterm
    let s:term_white = s:colors.white.cterm
    let s:term_cursor_grey = s:colors.cursor_grey.cterm
    let s:term_visual_grey = s:colors.visual_grey.cterm
  endif

  let g:airline#themes#onedark_fk#palette = {}

  let g:airline#themes#onedark_fk#palette.accents = {
        \ 'red': [ s:colors.red.gui, '', s:term_red, 0 ]
        \ }

  let s:N1 = [ s:colors.cursor_grey.gui, s:colors.green.gui, s:term_cursor_grey, s:term_green ]
  let s:N2 = [ s:colors.white.gui, s:colors.visual_grey.gui, s:term_white, s:term_visual_grey ]
  let s:N3 = [ s:colors.green.gui, s:colors.cursor_grey.gui, s:term_green, s:term_cursor_grey ]
  let g:airline#themes#onedark_fk#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

  let group = airline#themes#get_highlight('vimCommand')
  let g:airline#themes#onedark_fk#palette.normal_modified = {
        \ 'airline_c': [ group[0], '', group[2], '', '' ]
        \ }

  let s:I1 = [ s:colors.cursor_grey.gui, s:colors.blue.gui, s:term_cursor_grey, s:term_blue ]
  let s:I2 = s:N2
  let s:I3 = [ s:colors.blue.gui, s:colors.cursor_grey.gui, s:term_blue, '' ]
  let g:airline#themes#onedark_fk#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#onedark_fk#palette.insert_modified = g:airline#themes#onedark_fk#palette.normal_modified

  let s:R1 = [ s:colors.cursor_grey.gui, s:colors.red.gui, s:term_cursor_grey, s:term_red ]
  let s:R2 = s:N2
  let s:R3 = [ s:colors.red.gui, s:colors.cursor_grey.gui, s:term_red, '' ]
  let g:airline#themes#onedark_fk#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#onedark_fk#palette.replace_modified = g:airline#themes#onedark_fk#palette.normal_modified

  let s:V1 = [ s:colors.cursor_grey.gui, s:colors.purple.gui, s:term_cursor_grey, s:term_purple ]
  let s:V2 = s:N2
  let s:V3 = [ s:colors.purple.gui, s:colors.cursor_grey.gui, s:term_purple, '' ]
  let g:airline#themes#onedark_fk#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#onedark_fk#palette.visual_modified = g:airline#themes#onedark_fk#palette.normal_modified

  let s:IA1 = [ s:colors.cursor_grey.gui, s:colors.white.gui, s:term_cursor_grey, s:term_white ]
  let s:IA2 = [ s:colors.white.gui, s:colors.visual_grey.gui, s:term_white, s:term_visual_grey ]
  let s:IA3 = s:N2
  let g:airline#themes#onedark_fk#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
  let g:airline#themes#onedark_fk#palette.inactive_modified = {
        \ 'airline_c': [ group[0], '', group[2], '', '' ]
        \ }

  " Warning/Error styling code from vim-airline's ["base16" theme](https://github.com/vim-airline/vim-airline-themes/blob/master/autoload/airline/themes/base16.vim)

  " Warnings
  let s:WI = [ s:colors.cursor_grey.gui, s:colors.yellow.gui, s:term_cursor_grey, s:term_yellow ]
  let g:airline#themes#onedark_fk#palette.normal.airline_warning = [
       \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
       \ ]

  let g:airline#themes#onedark_fk#palette.normal_modified.airline_warning =
      \ g:airline#themes#onedark_fk#palette.normal.airline_warning

  let g:airline#themes#onedark_fk#palette.insert.airline_warning =
      \ g:airline#themes#onedark_fk#palette.normal.airline_warning

  let g:airline#themes#onedark_fk#palette.insert_modified.airline_warning =
      \ g:airline#themes#onedark_fk#palette.normal.airline_warning

  let g:airline#themes#onedark_fk#palette.visual.airline_warning =
      \ g:airline#themes#onedark_fk#palette.normal.airline_warning

  let g:airline#themes#onedark_fk#palette.visual_modified.airline_warning =
      \ g:airline#themes#onedark_fk#palette.normal.airline_warning

  let g:airline#themes#onedark_fk#palette.replace.airline_warning =
      \ g:airline#themes#onedark_fk#palette.normal.airline_warning

  let g:airline#themes#onedark_fk#palette.replace_modified.airline_warning =
      \ g:airline#themes#onedark_fk#palette.normal.airline_warning

  " Errors
  let s:ER = [ s:colors.cursor_grey.gui, s:colors.red.gui, s:term_cursor_grey, s:term_red ]
  let g:airline#themes#onedark_fk#palette.normal.airline_error = [
       \ s:ER[0], s:ER[1], s:ER[2], s:ER[3]
       \ ]

  let g:airline#themes#onedark_fk#palette.normal_modified.airline_error =
      \ g:airline#themes#onedark_fk#palette.normal.airline_error

  let g:airline#themes#onedark_fk#palette.insert.airline_error =
      \ g:airline#themes#onedark_fk#palette.normal.airline_error

  let g:airline#themes#onedark_fk#palette.insert_modified.airline_error =
      \ g:airline#themes#onedark_fk#palette.normal.airline_error

  let g:airline#themes#onedark_fk#palette.visual.airline_error =
      \ g:airline#themes#onedark_fk#palette.normal.airline_error

  let g:airline#themes#onedark_fk#palette.visual_modified.airline_error =
      \ g:airline#themes#onedark_fk#palette.normal.airline_error

  let g:airline#themes#onedark_fk#palette.replace.airline_error =
      \ g:airline#themes#onedark_fk#palette.normal.airline_error

  let g:airline#themes#onedark_fk#palette.replace_modified.airline_error =
      \ g:airline#themes#onedark_fk#palette.normal.airline_error

endfunction

call airline#themes#onedark_fk#refresh()
