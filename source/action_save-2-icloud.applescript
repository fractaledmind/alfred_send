on run argv
	set q to argv as text
	
	if not q = "both" then
		if q = "pdfpen" then
			set path_ to my get_path("smileonmymac") as list
			set app_ to "PDF Pen"
		else if q = "pdfexpert" then
			set path_ to my get_path("readdle") as list
			set app_ to "PDF Expert"
		end if
	else
		set path_ to {my get_path("smileonmymac"), my get_path("readdle")}
		set app_ to "PDF Pen and PDF Expert"
	end if
	try
		tell application "Skim"
			repeat with i from 1 to count of path_
				set icloud to item i of path_
				set namePDF to name of document 1
				set last4char to characters -1 thru -4 of namePDF as string
				if last4char is ".pdf" then set namePDF to characters 1 thru -5 of namePDF as string
				save document 1 as "PDF With Embedded Notes" in (icloud & namePDF)
			end repeat
		end tell
		return "Exported to " & app_ & "!"
	on error msg
		return msg
	end try
end run

on get_path(query)
	set path_ to (path to "cusr" as text) & "Library:Mobile Documents:" as text
	tell application "Finder"
		set folders_ to folders of (path_ as alias)
		repeat with i from 1 to (count of folders_)
			if name of item i of folders_ contains query and name of item i of folders_ does not contain "OCR" then
				set name_ to name of item i of folders_
				set iCloud_path to path_ & name_ & ":Documents:"
			end if
		end repeat
	end tell
	return iCloud_path
end get_path