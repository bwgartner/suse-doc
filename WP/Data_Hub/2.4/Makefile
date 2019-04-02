#
# Makefile - Brian's tool to run things faster.
# NOTE:  The project rules have hard-coded paths and need updating for you env.
# 
DOC=data_hub.adoc
XML=xml/MAIN-data_hub.xml
TGZ=/tmp/suse-doc.tgz
HTMLTGZ=/tmp/html.tgz
PDF=build/data_hub/data_hub_color_en.pdf
HTMLDIR=build/data_hub/single-html/data_hub
BUILD=build
## Attributes
AUTHOR="Author=Brian Fromme"
EMAIL="AuthorEMail=brian.fromme@suse.com"
## Hard-coded paths -- change these for your env
DL=carmel://home/fromme/Downloads
GITPRJ=~/projects/SUSE/suse-doc

all: hpe pdf html

hpe:
	     adoc2xml.sh $(DOC)

pdf:
	     xml2daps-pdf.sh

html:
	     xml2daps-single-html.sh

remote: tarball
		 #scp $(PDF) $(DL)
		 tar czvf $(HTMLTGZ) $(HTMLDIR)
		 scp $(HTMLTGZ) $(DL)

tarball:
		 tar czvf $(TGZ) $(GITPRJ)
		 scp $(TGZ) $(DL)

clean:
	     rm -rf $(XML) $(BUILD)

