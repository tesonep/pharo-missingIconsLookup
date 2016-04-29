# pharo-missingIconsLookup

Small tool to look for all the icons used in a Pharo Image and generate a list of the missing ones.

It looks for all the senders of #iconNamed: and if the parameter is a Symbol it get it. 
After having all, it process all the symbols and inform the missing ones. 

Usage:

IconLookup missingIcons.

