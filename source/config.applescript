on run argv
	
	--set cloud_ to argv as text
	set cloud_ to "dropbox"
	
	set settings_path to (path to "cusr" as text) & "Library:Application Support:Alfred 2:Workflow Data:com.hackademic.send:settings.json" as text
	
	--prepare ui helper
	set {tid, AppleScript's text item delimiters} to {AppleScript's text item delimiters, "/"}
	set base_path to (text items 1 thru -2 of (POSIX path of (path to me)) as string) & "/"
	set AppleScript's text item delimiters to tid
	set ui to load script POSIX file (base_path & "as_helpers.scpt")
	set _icon to base_path & "icon.png"
	
	--user choose path, depending on cloud service
	if cloud_ = "icloud" then
		set service_ to "iCloud"
		set path_ to my config(_icon, "Library:Mobile Documents", service_, ui)
		
	else if cloud_ = "dropbox" then
		set service_ to "Dropbox"
		set path_ to my config(_icon, "Dropbox", service_, ui)
		
	else if cloud_ = "other" then
		set service_ to ui's display_dialog({z_text:"What is the name of this Cloud Service?", z_title:"Send Configurator", z_answer:"", z_icon:_icon, z_wait:5})
		set service_ to text returned of service_
		
		set path_ to my config(_icon, cloud_, cloud_, ui)
	end if
	
	set json to "{" & return & tab & "\"service\": \"" & service_ & "\"," & return & tab & "\"path\": \"" & path_ & "\"" & return & "}"
	
	try
		---Write the data to the settings file
		set the file_ to open for access file settings_path with write permission
		set eof of file_ to 0
		write json to file_
		close access the file_
		return "Configuration Success!"
	on error
		return "Configuration Failed..."
	end try
end run


on config(_icon, def_path, service, ui)
	try
		set default_ to POSIX path of (((path to home folder) as text) & def_path)
	on error
		set default_ to POSIX path of (path to home folder)
	end try
	ui's display_dialog({z_text:"Choose the " & service & " folder/app for Send", z_title:"Send Configurator", z_icon:_icon, z_wait:5})
	
	set choice_ to ui's choose_folder({z_prompt:"Select " & service & " app", z_def:default_})
	set path_ to (choice_) as string
	return path_
end config