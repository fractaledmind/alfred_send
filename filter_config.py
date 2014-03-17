#!/usr/bin/python
# encoding: utf-8
import sys
from workflow import Workflow

def main(wf):
	wf.add_item(**{'title': 'iCloud', 'subtitle': "Send documents to iCloud?", 'valid': True, 'arg': 'icloud', 'icon': 'icloud.png'})
	wf.add_item(**{'title': 'Dropbox', 'subtitle': "Send documents to Dropbox?", 'valid': True, 'arg': 'dropbox', 'icon': 'dropbox.png'})
	wf.add_item(**{'title': 'Other', 'subtitle': "Send documents to another cloud service?", 'valid': True, 'arg': 'other', 'icon': 'icon.png'})

	wf.send_feedback()

if __name__ == '__main__':
	wf = Workflow()
	sys.exit(wf.run(main))