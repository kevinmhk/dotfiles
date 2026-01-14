-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "onedark",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }
  local sep_style = "default"
  local utils = require "nvchad.stl.utils"
  local sep_icons = utils.separators
  local seps = (type(sep_style) == "table" and sep_style) or sep_icons[sep_style]
  local sep_l = seps["left"]
  M.ui = {
    statusline = {
      theme = "default",
      separator_style="default",
      order={"mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "encoding","cwd", "cursor"},
      modules={
      cursor = table.concat({
        "%#St_pos_sep#",  sep_l,
        "%#St_pos_icon#", "  ",
        "%#St_pos_text#", " %l:%c  %p%% ",
      }),
      encoding = table.concat({
        "%#St_pos_sep#",  sep_l,
        "%#St_pos_icon#", "  ",
        "%#St_pos_text#",
        " %{&fileencoding != '' ? &fileencoding : &encoding} ",
      })
    }
  }
}

return M
