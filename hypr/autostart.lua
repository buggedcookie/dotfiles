-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart programs
local programs = {
    authAgent = "hyprpolkitagent",
    wallpaper = "wpaperd",
    toolbar = "waybar"
}

local function autostart()
hl.exec_cmd(programs.authAgent)
hl.exec_cmd(programs.wallpaper)
hl.exec_cmd(programs.toolbar)
end

hl.on("hyprland.start", autostart)
