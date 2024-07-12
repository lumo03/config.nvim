-- setup lazy.nvim

vim.g.mapleader = ","

-- set tab to 4 spaces
vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting

--[[
-- setup format on save
vim.api.nvim_create_augroup("AutoFormat", {})

vim.api.nvim_create_autocmd(
    "BufWritePost",
    {
        pattern = "*.*", -- "*.py"
        group = "AutoFormat",
        callback = functi:on()
            vim.cmd("silent !black --quiet %")            
            vim.cmd("edit")
        end,
    }
)
]]
--

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ import = "custom/plugins" }, {
	change_detection = {
		notify = false,
	},
})
