local M = {}

---@param highlights string|string[]
---@param attributes string|string[]
M.get_color = function(highlights, attributes)
	assert(type(highlights) == "string" or type(highlights) == "table")
	assert(type(attributes) == "string" or type(attributes) == "table")
	print("Working Fine")
end

return M
