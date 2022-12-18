vim.o.termguicolors = true
local colorscheme = "catppuccin-macchiato"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
