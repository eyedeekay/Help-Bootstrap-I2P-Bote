
index:
	pandoc --highlight-style=tango -f gfm BOTE.md -o - | tee index.html
	pandoc --highlight-style=tango -f gfm NAME.md -o - | tee -a index.html
	pandoc --highlight-style=tango -f gfm CONTACT.md -o - | tee -a index.html
	cat BOTE.md NAME.md CONTACT.md > README.md
	pandoc --highlight-style=tango -f gfm README.md -t html5 -o README.pdf

rst:
	sed 's|{% trans -%}||g' BOTE.rst | sed 's|{%- endtrans %}||g' | pandoc -o BOTE_TEST.md
	#pandoc --highlight-style=tango -f gfm BOTE.md -o BOTE.rst
	#pandoc --highlight-style=tango -f gfm NAME.md -o NAME.rst
	#pandoc --highlight-style=tango -f gfm CONTACT.md -o CONTACT.rst
	cat BOTE.rst NAME.rst CONTACT.rst > help-bootstrap-bote.rst

blog: rst
	cp help-bootstrap-bote.rst $(HOME)/Workspace/desktop-Workspace/mtn/i2p.www/i2p2www/blog/2019/05/20

byob:
