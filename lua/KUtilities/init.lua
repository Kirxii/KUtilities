local M = {}

---@param highlights string|string[]
---@param attributes string|string[]
M.get_color = function(highlights, attributes)
	assert(type(highlights) == "string" or type(highlights) == "table")
	assert(type(attributes) == "string" or type(attributes) == "table")

	-- Converting into a table if hightlights is a singular string
	local hls = type(highlights) == "string" and { highlights } or highlights --[[@as table]]

	for i, hl in pairs(hls) do
		local result = vim.api.nvim_get_hl(0, { name = hl, link = false })
		if type(result) == "table" and type(result[attributes]) == "number" then
			return string.format("#%06x", result[attributes])
		end
	end
end

return M
