#! /bin/sh

# assumes
#	you have invoked adoc2xml.sh (or generated a viable XML/dockbook output)
#	is being invoked from where the image files are located

cat $1 | pandoc --from docbook --to docx --output test.docx
