local wezterm = require 'wezterm';

return {
  -- font
  font = wezterm.font_with_fallback({
    {
      family="Moralerspace Krypton NF",
      weight="Regular",
      harfbuzz_features={ "calt=0", "liga=0", "dlig=0" },
    },
  }),
  font_size = 12.0,
  color_scheme = "iceberg-dark",

  -- initial window size
  initial_cols = 100,
  initial_rows = 30,

  -- padding
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },

  -- tab bar
  use_fancy_tab_bar = false,
  colors = {
    cursor_bg= "#c6c8d1",
    tab_bar = {
      background = "#1b1f2f",

      active_tab = {
        bg_color = "#444b71",
        fg_color = "#c6c8d1",
        intensity = "Normal",
        underline = "None",
        italic = false,
        strikethrough = false,
      },

      inactive_tab = {
        bg_color = "#282d3e",
        fg_color = "#c6c8d1",
        intensity = "Normal",
        underline = "None",
        italic = false,
        strikethrough = false,
      },

      inactive_tab_hover = {
        bg_color = "#1b1f2f",
        fg_color = "#c6c8d1",
        intensity = "Normal",
        underline = "None",
        italic = true,
        strikethrough = false,
      },

      new_tab = {
        bg_color = "#1b1f2f",
        fg_color = "#c6c8d1",
        italic = false
      },

      new_tab_hover = {
        bg_color = "#444b71",
        fg_color = "#c6c8d1",
        italic = false
      },
    }
  },

  -- background
  window_background_opacity = 0.85,

  -- key
  keys = {
    {key = "{", mods = "CTRL", action=wezterm.action{ActivateTabRelative=-1}},
    {key = "}", mods = "CTRL", action=wezterm.action{ActivateTabRelative=1}},
    {key = "p", mods = "CTRL|SHIFT", action=wezterm.action{ScrollByLine=-1}},
    {key = "n", mods = "CTRL|SHIFT", action=wezterm.action{ScrollByLine=1}},
    {key = "b", mods = "CTRL|SHIFT", action=wezterm.action{ScrollByPage=-1}},
    {key = "f", mods = "CTRL|SHIFT", action=wezterm.action{ScrollByPage=1}},
  },

  --title
  wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
    return {
      {Text=" " .. tab.active_pane.title .. " "},
    }
  end),
}
