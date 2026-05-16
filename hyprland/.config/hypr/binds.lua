---------------------
---- KEYBINDINGS ----
---------------------

local main_mod     = "SUPER"
local file_manager = "uwsm app -- thunar"
local menu         = "uwsm app -- rofi -show drun"
local browser      = "uwsm app -- google-chrome-stable"
local terminal     = "uwsm app -- foot"

hl.bind(main_mod .. " + SPACE", hl.dsp.exec_cmd(file_manager))
hl.bind(main_mod .. " + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(main_mod .. " + C", hl.dsp.window.close())
hl.bind(main_mod .. " + Q", hl.dsp.exec_cmd("qalculate-gtk"))
hl.bind(main_mod .. " + R", hl.dsp.exec_cmd(menu))
hl.bind(main_mod .. " + W", hl.dsp.exec_cmd(browser))
hl.bind(main_mod .. " + F", hl.dsp.window.float({ action = "toggle"}))
hl.bind(main_mod .. " + P", hl.dsp.window.pseudo())
hl.bind(main_mod .. " + DOWN", hl.dsp.focus({ direction  = "down" }))
hl.bind(main_mod .. " + UP", hl.dsp.focus({ direction    = "up" }))
hl.bind(main_mod .. " + LEFT", hl.dsp.focus({ direction  = "left" }))
hl.bind(main_mod .. " + RIGHT", hl.dsp.focus({ direction = "right" }))
hl.bind(main_mod .. " + F5", hl.dsp.exec_cmd("grim -g \"$(slurp)\""))
hl.bind(main_mod .. " + F5", hl.dsp.exec_cmd("grim -g \"$(slurp)\""))

hl.bind(main_mod .. " + E", hl.dsp.exec_cmd(
            "emacs",
            { floating = true, workspace = "2" } ))

-- switch workspaces with main_mod + [0-9]
for i = 1, 10 do
    local key = i % 10          -- 10 maps to key 0
    hl.bind(main_mod .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(main_mod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(main_mod .. " + S",         hl.dsp.workspace.toggle_special( "scratchpad" ))
hl.bind(main_mod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:scratchpad" }))

-- Scroll through existing workspaces with main_mod + scroll
hl.bind(main_mod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(main_mod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with main_mod + LMB/RMB and dragging
hl.bind(main_mod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(main_mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
