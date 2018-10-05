{:delegate_to} = howl.util.table

colors = {
  "#2e3440" -- nord0 (1)
  "#3b4252" -- nord1 (2)
  "#434c5e" -- nord2 (3)
  "#4c566a" -- nord3 (4)
  "#d8dee9" -- nord4 (5)
  "#e5e9f0" -- nord5 (6)
  "#eceff4" -- nord6 (7)
  "#8fbcbb" -- nord7 (8)
  "#88c0d0" -- nord8 (9)
  "#81a1c1" -- nord9 (10)
  "#5e81ac" -- nord10 (11)
  "#bf616a" -- nord11 (12)
  "#d08770" -- nord12 (13)
  "#ebcb8b" -- nord13 (14)
  "#a3be8c" -- nord14 (15)
  "#b48ead" -- nord15 (16)
}

content_box = {
  background:
    color: colors[1]
  border:
    width: 1
    color: colors[2]
  border_right:
    width: 3
    color: colors[2]
  border_bottom:
    width: 3
    color: colors[2]
  header:
    background:
      color: colors[2]
    border_bottom:
      color: colors[2]
    color: colors[5]
    font: bold: false
    padding: 1
  footer:
    background:
      color: colors[2]
    border_top:
      color: colors[2]
    color: colors[9]
    padding: 1
}

return {
  window:
    background:
      color: colors[2]
    status:
      font:
        bold: false
        italic: true
      color: colors[9]
      info: color: colors[9]
      warning: color: colors[14]
      'error': color: colors[12]

  :content_box

  popup:
    background:
      color: colors[1]
    border:
      color: colors[2]

  editor: delegate_to content_box, {
    indicators:
      default:
        color: colors[9]
      title:
        font: bold: false
      vi:
        font: bold: true

    caret:
      color: colors[1]
      width: 1

    current_line:
      background: colors[3] -- ?

    gutter:
      color: colors[10]
      background:
        color: colors[2]
  }

  flairs:
    indentation_guide:
      type: flair.PIPE,
      foreground: colors[4],
      foreground_alpha: 0.5,
      line_width: 0.5

    indentation_guide_1:
      type: flair.PIPE,
      foreground: colors[4],
      foreground_alpha: 0.5,
      line_width: 0.5

    indentation_guide_2:
      type: flair.PIPE,
      foreground: colors[4],
      foreground_alpha: 0.5,
      line_width: 0.5

    indentation_guide_3:
      type: flair.PIPE,
      foreground: colors[4],
      foreground_alpha: 0.5,
      line_width: 0.5
    edge_line:
      type: flair.PIPE,
      foreground: colors[5],
      foreground_alpha: 0.5,
      line_width: 0.5

    search: -- selected search
      type: highlight.ROUNDED_RECTANGLE
      -- foreground: colors[16]
      foreground_alpha: 1
      background: colors[1]
      text_color: colors[11]
      height: 'text'

    search_secondary: -- non selected search
      type: flair.ROUNDED_RECTANGLE
      background: colors[4]
      text_color: colors[11]
      height: 'text'

    replace_strikeout:
      type: flair.ROUNDED_RECTANGLE
      foreground: colors[14] -- ?
      background: colors[2]
      text_color: colors[14]
      height: 'text'

    brace_highlight:
      type: flair.RECTANGLE
      text_color: colors[7]
      height: 'text'

    brace_highlight_secondary:
      type: flair.RECTANGLE
      text_color: colors[6]
      height: 'text'

    list_selection:
      type: flair.RECTANGLE
      background: colors[7] -- CHECK!
      background_alpha: 0.3

    list_highlight:
      type: highlight.UNDERLINE
      foreground: colors[8]
      text_color: colors[8]
      line_width: 2

    cursor:
      type: flair.RECTANGLE
      background: colors[7]
      width: 1
      height: 'text'

    block_cursor:
      type: flair.ROUNDED_RECTANGLE,
      background: colors[7]
      text_color: colors[1]
      height: 'text',
      min_width: 'letter'

    selection:
      type: highlight.ROUNDED_RECTANGLE
      background: colors[4] -- CHECK!
      background_alpha: 0.6
      min_width: 'letter'

  styles:
    default:
      color: colors[5]

    red: color: colors[12]
    green: color: colors[15]
    yellow: color: colors[14]
    blue: color: colors[10]
    magenta: color: colors[15]
    cyan: color: colors[8]

    popup: -- ?
      background: colors[5]
      color: colors[16]

    comment:
      font: italic: true
      color: colors[4]

    variable:
      color: colors[5]

    label:
      color: colors[9]
      font: italic: true

    key:
      color: colors[10]
      font: bold: false

    fdecl:
      color: colors[8]
      font: bold: false

    keyword:
      color: colors[10]
      font: bold: true

    class:
      color: colors[8]
      font: bold: true

    type_def:
      color: colors[8]
      font: bold: true

    definition:
      color: colors[8]

    function:
      color: colors[9]
      font: italic: true

    type:
      color: colors[8]
      font: italic: false

    char: color: colors[15]
    number: color: colors[16]
    operator: color: colors[10]
    preproc: color: colors[11]
    special: color: colors[13]
    tag: color: colors[10]
    member: color: colors[8]
    info: color: colors[8]

    constant:
      color: colors[5]

    string:
      color: colors[15]

    regex:
      color: colors[14]
      background: colors[1]

    embedded:
      color: colors[5]
      background: colors[3]

    -- Markup and visual styles

    error:
      font: italic: true
      color: colors[12]
      background: colors[1]

    warning:
      font: italic: true
      color: colors[14]

    h1:
      font: bold: true
      color: colors[9]

    h2:
      font: bold: true
      color: colors[9]

    h3:
      font: italic: true
      color: colors[9]

    emphasis:
      font:
        bold: true
        italic: true

    strong: font: italic: true
    link_label: color: colors[9] -- ?
    link_url: color: colors[9]

    table:
      color: colors[16]
      background: colors[1]
      underline: true

    addition: color: colors[15]
    deletion: color: colors[12]
    change: color: colors[14]
  }
