local utils = require("mp.utils")

-- change the name of the tag here
local tag = "watched"
-- change the name of the directory here
-- you can use a single directory or as many as you want
local directory = {
	"/path/to/first/directory",
	"/path/to/second/directory",
}

local Path_match = false

mp.register_event("file-loaded", function()
	local current_path = mp.get_property("path")
	local working_directory = mp.get_property("working-directory")
	local full_path = utils.join_path(working_directory, current_path)
	Current_directory, _ = utils.split_path(full_path)
	check_path()
end)

function check_path()
	for _, dir in ipairs(directory) do
		if string.find(Current_directory, dir, 1, true) then
			Path_match = true
		end
	end
end

function tag_file()
	local path = mp.get_property("path")
	if not path then
		mp.osd_message("Error: No file loaded")
		return
	end

	local command = "xattr -w user.xdg.tags " .. tag .. " '" .. path .. "'"

	local percent_pos = mp.get_property_number("percent-pos")
	if percent_pos and percent_pos >= 80 and (Path_match == true) then
		os.execute(command)
		mp.osd_message("Tag has been assigned")
		mp.unobserve_property(tag_file)
	end
end

mp.observe_property("percent-pos", "number", tag_file)
