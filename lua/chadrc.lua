---@class ChadrcConfig
---@field ui table Configuration for the UI.

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "mito-laser",
  transparency = true,
  statusline = {
    theme = "vscode_colored",
  },
}

M.nvdash = {
  load_on_startup = true,
  header = {
    "██╗░░██╗██████╗░██╗░░░██╗████████╗░██████╗██╗░░██╗██╗░░░██╗",
    "██║░██╔╝██╔══██╗██║░░░██║╚══██╔══╝██╔════╝██║░██╔╝╚██╗░██╔╝",
    "█████═╝░██████╔╝██║░░░██║░░░██║░░░╚█████╗░█████═╝░░╚████╔╝░",
    "██╔═██╗░██╔══██╗██║░░░██║░░░██║░░░░╚═══██╗██╔═██╗░░░╚██╔╝░░",
    "██║░╚██╗██║░░██║╚██████╔╝░░░██║░░░██████╔╝██║░╚██╗░░░██║░░░",
    "╚═╝░░╚═╝╚═╝░░╚═╝░╚═════╝░░░░╚═╝░░░╚═════╝░╚═╝░░╚═╝░░░╚═╝░░░",
  },
  buttons = {
    { txt = "  Find File", keys = "ff", cmd = "Telescope find_files" },
    { txt = "  Recent Files", keys = "fo", cmd = "Telescope oldfiles" },
    { txt = "󰈭  Find Word", keys = "fw", cmd = "Telescope live_grep" },
    { txt = "󱥚  Themes", keys = "th", cmd = ":lua require('nvchad.themes').open()" },
    { txt = "  Mappings", keys = "ch", cmd = "NvCheatsheet" },
    { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
    {
      txt = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime) .. " ms"
        return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
      end,
      hl = "NvDashFooter",
      no_gap = true,
    },
    { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
  },
}

M.hl_override = {
  Comment = { italic = true },
  ["@comment"] = { italic = true },
  DiffChange = {
    bg = "#464414",
    fg = "none",
  },
  DiffAdd = {
    bg = "#103507",
    fg = "none",
  },
  DiffRemoved = {
    bg = "#461414",
    fg = "none",
  },
}

return M
