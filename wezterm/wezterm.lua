local wezterm = require("wezterm")

Config = wezterm.config_builder()

Config = {
    default_prog = { "/opt/homebrew/bin/fish", "-l" },
    automatically_reload_config = true,
    enable_tab_bar = false,
    window_close_confirmation = "NeverPrompt",
    window_decorations = "RESIZE",
    default_cursor_style = "SteadyBar",
    color_scheme = "tokyonight",
    font = wezterm.font("JetBrains Mono", { weight = "Bold" }),
    font_size = 13.5,

    background = {
        {
            source = {
                File = "/Users/henrikbjorkedal/.config/wezterm/backgrounds/3.jpg",
            },
            hsb = {
                hue = 1.0,
                saturation = 1.02,
                brightness = 0.15,
            },
            width = "100%",
            height = "100%",
        },

        {
            source = {
                Color = "282c35",
            },
            width = "100%",
            height = "100%",
            opacity = 0.55,
        },
    },
    window_padding = {
        left = 3,
        right = 3,
        top = 1,
        bottom = 1,
    },
}

return Config
