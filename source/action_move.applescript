on run argv
	set inp to argv as text
	--set inp to ""
	
	(* STEP 1: GET PATH TO CHOSEN DOCUMENT *)
	try
		if inp = "" then
			-- If Hotkey
			try
				tell application (path to frontmost application as text)
					set pdf_path to path of front document
				end tell
			on error msg
				return msg
			end try
		else
			-- if File Action, 
			set pdf_path to inp
		end if
	on error msg
		return msg
	end try
	
	(* STEP 2: GET PATH TO CLOUD SERVICE *)
	try
		set settings_path to (path to "cusr" as text) & "Library:Application Support:Alfred 2:Workflow Data:com.hackademic.send:settings.json" as text
		
		set the setting_file_ to open for access file settings_path
		set json_ to (read setting_file_)
		close access setting_file_
		
		-- simplify JSON
		set {astid, AppleScript's text item delimiters} to {AppleScript's text item delimiters, {return & linefeed, return, linefeed, tab, character id 8233, character id 8232, "\"", ",", "{", "}"}}
		set json_l to text items of json_
		set AppleScript's text item delimiters to astid
		
		-- remove empty items
		set itemsToDelete to {"", " ", ": "}
		set cleanList to {}
		repeat with i from 1 to count json_l
			if {json_l's item i} is not in itemsToDelete then set cleanList's end to json_l's item i
		end repeat
		
		-- JSON keys to AS vars
		repeat with i from 1 to count cleanList
			if cleanList's item i = "service" then
				set service_ to item (i + 1) of cleanList
			else if cleanList's item i = "path" then
				set path_ to item (i + 1) of cleanList
			end if
		end repeat
		set cloud_folder to POSIX file path_ as alias
	on error msg
		return msg
	end try
	
	(* STEP 3: MOVE DOC TO CLOUD FOLDER *)
	
	try
		tell application "Finder"
			set f to POSIX file pdf_path as alias
			move file f to cloud_folder
			return "Moved File to " & service_ & "!"
		end tell
	on error msg
		return msg
	end try
end run