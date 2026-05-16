hl.monitor({
    output = "HDMI-A-1",
    mode = "1920x1080@60",
    position = "0x0",
    scale = 1,
})
hl.monitor({
    output = "HDMI-A-2",
    mode = "1920x1080@60",
    position = "1920x0",
    scale = 1,
})

-- require("env")
require("permissions")
require("lookandfeel")
require("binds")
require("w_and_w")
require("input")

hl.on("hyprland.start", function ()
    hl.exec_cmd("hyprctl setcursor Bibata-Original-Classic 24")
end)

hl.config({
    dwindle = {
        preserve_split = true,
    },
})

hl.config({
    master = {
        new_status = "master",
        orientation = "right",
    },
})

hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})

hl.config({
    gestures = {
        workspace_swipe = off,
    },
})

hl.config({
    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo = true,
    },
})
