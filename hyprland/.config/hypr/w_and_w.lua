-- Windows and workspaces

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})

-- suppressMaximizeRule:set_enabled(false)


hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

hl.window_rule({
    match = { class = "gnucash" },
    float = true,
})

hl.window_rule({
    name = "emacs-on-ws2",
    match = { class = "Emacs" },
    workspace = "2",
    float = true,
    size = { 780, 980 },
})

hl.window_rule({
    match = { class = "thunar" },
    float = true,
})


hl.window_rule({
    match = { class = "qalculate-gtk" },
    float = true,
    size = { 830, 560 },
})

--[[
hl.workspace_rule({
    workspace = "special:scratch:scratchpad",
    on_created_empty = "foot",
})

-- testing this
hl.workspace_rule({
    workspace = "3",
    monitor = "HDMI-A-2",
    on_created_empty = "blender",
})

hl.workspace_rule({
    workspace="1",
    monitor="HDMI-A-1",
    layout="master"
})

hl.workspace_rule({
    workspace="2",
    monitor="HDMI-A-2",
    layout="master",
})
]]--
