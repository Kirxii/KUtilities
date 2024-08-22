local M = {}

---@param highlights string|string[]
---@param attributes string|string[]
M.get_color = function(highlights, attributes)
	assert(type(highlights) == "string" or type(highlights) == "table")
	assert(type(attributes) == "string" or type(attributes) == "table")

	-- Converting into a table if hightlights is a singular string
	local hls = type(highlights) == "string" and { highlights } or highlights

	return hls
end

return M
