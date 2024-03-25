local ID --> buffer number bufnr()
local OPEN --> window number bufwinnr() (nr < 0 = close) or (nr > 0 = open)
local WINPOSITION --> :botright or :topleft
local WINSIZE --> number of lines or columns
local WINSPLIT --> :split or :vsplit
local CMD --> command to open tt

--[[
The terminal created is unlisted by default, meaning it does not show up
with :ls or :bnext. To disable this, comment out the following line
in the code below:
	vim.api.nvim_buf_set_option(ID, 'buflisted', false)
--]]

-- DEFAULT
WINPOSITION = 'botright'
WINSIZE = 10
WINSPLIT = 'split'
-- vim.cmd('botright 10split +buffer40')

local tt = function()

	if ID then
		if vim.fn.bufexists(ID) == 0 then
			ID = nil
		end
	end

	if not ID then
		CMD = WINPOSITION .. WINSIZE .. WINSPLIT .. '+terminal'
		vim.cmd(CMD)
		ID = vim.fn.bufnr()
		vim.api.nvim_buf_set_option(ID, 'buflisted', false)
	else
		OPEN = vim.fn.bufwinnr(ID)
		if OPEN > 0 then
			vim.cmd.close{count = OPEN}
		else
			CMD = WINPOSITION .. WINSIZE .. WINSPLIT .. '+buffer' .. ID
			vim.cmd(CMD)
		end
	end
end

vim.keymap.set('i', '<A-;>', tt)
vim.keymap.set('n', '<A-;>', tt)
vim.keymap.set('t', '<A-;>', tt)
