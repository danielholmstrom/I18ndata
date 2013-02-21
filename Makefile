# Makefile for getting updated data from wikipedia in tmp/
#

help: FORCE
	@echo "Run \`make fetch\` to get new versions from wikipedia in tmp/."

fetch: tmpdir iso-3166-1 iso-639-1 iso-639-2 iso-4217
	
tmpdir: FORCE
	mkdir -p tmp; rm -f tmp/*

iso-3166-1: FORCE
	xsltproc tools/iso-3166-1.xsl http://en.wikipedia.org/wiki/ISO_3166-1 > tmp/iso-3166-1.xml

iso-639-1: FORCE
	xsltproc tools/iso-639-1.xsl http://en.wikipedia.org/wiki/List_of_ISO_639-1_codes > tmp/iso-639-1.xml

iso-639-2: FORCE
	xsltproc tools/iso-639-2.xsl http://en.wikipedia.org/wiki/List_of_ISO_639-2_codes > tmp/iso-639-2.xml

iso-4217: FORCE
	xsltproc tools/iso-4217.xsl http://en.wikipedia.org/wiki/ISO_4217 > tmp/iso-4217.xml

FORCE:
	
