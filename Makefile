deploy: build dist/env.sh
	rsync -a ./dist/isuumo /home/isucon/isuumo/go/isuumo
	rsync -a ./dist/env.sh /home/isucon/env.sh

build: dist/isuumo

dist/isuumo: webapp/*.go
	mkdir -p dist/
	go build -o "$@" github.com/furusax0621/isucon10-qualify/webapp

dist/env.sh: env.sh
	mkdir -p dist/
	cp $< $@

clean:
	rm -rf dist/
