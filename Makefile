.PHONY: serve
serve:
	cd src && jekyll serve -w -l -D -t

.PHONY: preview
preview:
	ruby -rwebrick -e'WEBrick::HTTPServer.new(Port: 4000, DocumentRoot: Dir.pwd).start'

.PHONY: clean
clean:
	rm -rf src/_site/ assets/ 202?/ *.html *.xml

.PHONY: build
build: clean
	cd src && jekyll build && cp -f -R _site/* ../
