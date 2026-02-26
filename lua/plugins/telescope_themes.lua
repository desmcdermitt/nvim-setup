return {
	"andrew-george/telescope-themes",
	config = function()
		require("telescope").load_extension("themes")
		vim.api.nvim_create_autocmd("ColorScheme", {
			callback = function(params)
				local theme_cache = vim.fn.stdpath("config") .. "/lua/colorscheme.lua"
				local file = io.open(theme_cache, "w")
				if file then
					file:write('vim.cmd("colorscheme ' .. params.match .. '")')
					file:close()
				end
			end,
		})
	end,
}
