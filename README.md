# mpv-kde-file-tagging
Automatically assign a tag after you watched an episode (when you reach 80%)
## Installation
Download the `filetagging.lua` file and place it in your mpv scripts folder **(./config/mpv/scripts/)**
## Usage
Navigate to your file and set the directory path to the one when you keep the files that you watch. 
``` lua
-- change the name of the tag here
local tag = "watched"
-- change the name of the directory here
local directory = ""
```
By default it has the `watched` tag, but you can change it as well.

-----
> [!IMPORTANT]
> Note that for now this script doesnt support multiple locations. So you could either shove them into one directory or set something like /home/username/ (it will start to mark every single video on your computer that you watched)
