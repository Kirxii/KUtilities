local M = {}

M.read_file = function(directory)
	local content = ""
	local lines = io.lines(directory)

	for line in lines do
		content = content .. line .. "\n"
	end
	string.gsub(content, "\n+$", "")

	return content
end

return M
