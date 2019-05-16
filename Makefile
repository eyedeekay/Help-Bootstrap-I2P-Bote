
index:
	pandoc --highlight-style=tango -f gfm BOTE.md -o - | tee index.html
	pandoc --highlight-style=tango -f gfm NAME.md -o - | tee -a index.html
	pandoc --highlight-style=tango -f gfm CONTACT.md -o - | tee -a index.html
	cat BOTE.md NAME.md CONTACT.md > README.md
	pandoc --highlight-style=tango -f gfm README.md -t html5 -o README.pdf

byob:
