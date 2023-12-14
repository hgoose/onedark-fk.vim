" [onedark_fk.vim](https://github.com/joshdick/onedark_fk.vim/)

let s:overrides = get(g:, "onedark_fk_color_overrides", {})

let s:colors = {
      \ "dark_red": get(s:overrides, "dark_red", { "gui": "#BE5046", "cterm": "196", "cterm16": "9" }),
      \ "green": get(s:overrides, "green", { "gui": "#98C379", "cterm": "114", "cterm16": "2" }),
      \ "red": get(s:overrides, "red", { "gui": "#abb2bf", "cterm": "180", "cterm16": "3" }),
      \ "yellow": get(s:overrides, "yellow", { "gui": "#E06C75", "cterm": "204", "cterm16": "1" }),
      \ "dark_yellow": get(s:overrides, "dark_yellow", { "gui": "#D19A66", "cterm": "173", "cterm16": "11" }),
      \ "blue": get(s:overrides, "blue", { "gui": "#61AFEF", "cterm": "39", "cterm16": "4" }),
      \ "purple": get(s:overrides, "purple", { "gui": "#C678DD", "cterm": "170", "cterm16": "5" }),
      \ "cyan": get(s:overrides, "cyan", { "gui": "#56B6C2", "cterm": "38", "cterm16": "6" }),
      \ "white": get(s:overrides, "white", { "gui": "#ABB2BF", "cterm": "145", "cterm16": "15" }),
      \ "black": get(s:overrides, "black", { "gui": "#1e1e1e", "cterm": "235", "cterm16": "0" }),
      \ "foreground": get(s:overrides, "foreground", { "gui": "#ABB2BF", "cterm": "145", "cterm16": "NONE" }),
      \ "background": get(s:overrides, "background", { "gui": "#1e1e1e", "cterm": "235", "cterm16": "NONE" }),
      \ "comment_grey": get(s:overrides, "comment_grey", { "gui": "#5C6370", "cterm": "59", "cterm16": "7" }),
      \ "gutter_fg_grey": get(s:overrides, "gutter_fg_grey", { "gui": "#4B5263", "cterm": "238", "cterm16": "8" }),
      \ "cursor_grey": get(s:overrides, "cursor_grey", { "gui": "#1e1e1e", "cterm": "236", "cterm16": "0" }),
      \ "visual_grey": get(s:overrides, "visual_grey", { "gui": "#3E4452", "cterm": "237", "cterm16": "8" }),
      \ "menu_grey": get(s:overrides, "menu_grey", { "gui": "#1e1e1e", "cterm": "237", "cterm16": "7" }),
      \ "special_grey": get(s:overrides, "special_grey", { "gui": "#1e1e1e", "cterm": "238", "cterm16": "7" }),
      \ "vertsplit": get(s:overrides, "vertsplit", { "gui": "#f0f", "cterm": "59", "cterm16": "7" }),
      \}

function! onedark_fk#GetColors()
  return s:colors
endfunction
