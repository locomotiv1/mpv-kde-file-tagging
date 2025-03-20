# mpv-kde-file-tagging
Automatically assign a tag after you watched an episode (once you reach 80%)
## Installation
Download the `filetagging.lua` file and place it in your mpv scripts folder **(./config/mpv/scripts/)**
## Usage
Navigate to your file and set the directory path to the one when you keep the files that you watch. 
``` lua
-- change the name of the tag here
local tag = "watched"

-- change the name of the directory here
-- you can use a single directory or as many as you want
local directory = {
	"/path/to/first/directory",
	"/path/to/second/directory",
}
```
By default it has the `watched` tag, but you can change it as well.
