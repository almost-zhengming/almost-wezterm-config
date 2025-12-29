local wezterm = require("wezterm")
local M = {}

M.setup = function()
  wezterm.on("gui-startup", function(cmd)
    local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
    local gui_window = window:gui_window()

    -- 最大化窗口（占满屏幕但不进入全屏模式）
    gui_window:maximize()
  end)
end

return M
