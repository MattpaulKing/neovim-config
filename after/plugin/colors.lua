--[
require('tokyonight').setup({
transparent = true,
style = "night",
on_highlights = function(hl, c)
local prompt = "#2d3149"
hl.TelescopeNormal = {
bg = c.bg_dark,
fg = c.fg_dark,
}
hl.TelescopeBorder = {
bg = c.bg_dark,
fg = c.bg_dark,
}
hl.TelescopePromptNormal = {
bg = prompt,
}
hl.TelescopePromptBorder = {
bg = prompt,
fg = prompt,
}
hl.TelescopePromptTitle = {
bg = prompt,
fg = prompt,
}
hl.TelescopePreviewTitle = {
bg = c.bg_dark,
fg = c.bg_dark,
}
hl.TelescopeResultsTitle = {
bg = c.bg_dark,
fg = c.bg_dark,
}

end,
})
--]

-- require("kanagawa").setup({
--   transparent = true,
-- })

function ColorMyPencils(color)
	color = color or "tokyonight"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" } );
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" });
  vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" });
  vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" });
  vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" });

end

ColorMyPencils("tokyonight")
