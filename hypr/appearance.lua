
local theme = require("current-theme")

hl.config({
    general = {
        gaps_in = 6,
        gaps_out = 12,

        border_size = 2,

        col = {
            active_border   = theme.accent,
          inactive_border = theme.surface_mid,
        },

        resize_on_border = false,
        allow_tearing = false,
        layout = "dwindle",
    },

    decoration = {
        rounding = 8,
        rounding_power = 2,

        active_opacity = 1.0,
        inactive_opacity = 0.96,

        shadow = {
            enabled = true,
          range = 24,
          render_power = 4,
          color = theme.shadow,
        },

        blur = {
            enabled = true,
          size = 10,
          passes = 3,
          vibrancy = 0.25,
        },
    },

    animations = {
        enabled = true,
    },
})
hl.curve("easeOutQuint", {
    type = "bezier",
    points = {
        {0.23, 1},
        {0.32, 1}
    }
})

hl.curve("easeInOutCubic", {
    type = "bezier",
    points = {
        {0.65, 0.05},
        {0.36, 1}
    }
})

hl.curve("linear", {
    type = "bezier",
    points = {
        {0, 0},
        {1, 1}
    }
})

hl.curve("almostLinear", {
    type = "bezier",
    points = {
        {0.5, 0.5},
        {0.75, 1}
    }
})

hl.curve("bounce", {
    type = "bezier",
    points = {
        {0.60, 0.3},
        {0.50, 1.3}
    }
})


hl.curve("quick", {
    type = "bezier",
    points = {
        {0.15, 0},
        {0.1, 1}
    }
})

hl.curve("easy", {
    type = "spring",
    mass = 1,
    stiffness = 75,
    dampening = 16
})

hl.animation({ leaf = "global",        enabled = true,  speed = 10,   bezier = "default" })
hl.animation({ leaf = "border",        enabled = true,  speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows",       enabled = true,  speed = 4.79, spring = "easy" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 1,  spring = "easy",         style = "popin 87%" })
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 1.49, spring = "easy",       style = "popin 87%" })
hl.animation({ leaf = "fadeIn",        enabled = true,  speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",       enabled = true,  speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers",        enabled = true,  speed = 3.81, bezier = "easeOutQuint" }

)
hl.animation({ leaf = "layersIn",      enabled = true,  speed = 4,    bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut",     enabled = true,  speed = 1.5,  bezier = "linear",       style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true,  speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 1.39, bezier = "almostLinear" })

hl.animation({ leaf = "workspaces",    enabled = true,  speed = 2, bezier = "bounce" })
hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 2, bezier = "bounce" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 2, bezier = "bounce" })
hl.animation({ leaf = "zoomFactor",    enabled = true,  speed = 7,    bezier = "quick" })

-- Ref https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- "Smart gaps" / "No gaps when only"
-- uncomment all if you wish to use that.
-- hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
-- hl.workspace_rule({ workspace = "f[1]",   gaps_out = 0, gaps_in = 0 })
-- hl.window_rule({
--     name  = "no-gaps-wtv1",
--     match = { float = false, workspace = "w[tv1]" },
--     border_size = 0,
--     rounding    = 0,
-- })
-- hl.window_rule({
--     name  = "no-gaps-f1",
--     match = { float = false, workspace = "f[1]" },
--     border_size = 0,
--     rounding    = 0,
-- })

-- hl.window_rule({
--     name  = "no-gaps-wtv1",
--     match = { float = false, workspace = "w[tv1]" },
--     border_size = 0,
--     rounding    = 0,
-- })

hl.window_rule({
    name = "dolphin-glass",
    match = {
        class = "org.kde.dolphin"
    },
    opacity = 0.85,
})

-- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
hl.config({
    dwindle = {
        preserve_split = true, -- You probably want this
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
hl.config({
    master = {
        new_status = "master",
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ for more
hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})
