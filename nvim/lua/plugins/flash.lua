return {
	'folke/flash.nvim',
	event = 'VeryLazy',
	---@type Flash.Config
	opts = {},
	keys = {
		{
			's',
			mode = { 'n', 'x', 'o' },
			function()
				-- default options: exact mode, multi window, all directions, with a backdrop
				require('flash').jump()
			end,
			desc = 'Flash',
		},
	},
}
