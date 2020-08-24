deploy: build
	rsync -a ./dist/myapp /home/isucon/path/to/myapp

build: dist/myapp

dist/myapp: webapp/*.go
	mkdir -p dist/
	go build -o "$@" github.com/furusax0621/isucon10-qualify/webapp

clean:
	rm -rf dist/
