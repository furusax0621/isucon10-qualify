deploy: build dist/env.sh db/* json/*
	rsync -a ./dist/isuumo /home/isucon/isuumo/webapp/go/isuumo
	rsync -a ./dist/env.sh /home/isucon/env.sh
	rsync -a ./db/ /home/isucon/isuumo/webapp/mysql/db/
	rsync -a ./json/ /home/isucon/isuumo/webapp/fixture/
	sudo systemctl restart isuumo.go.service

build: dist/isuumo

dist/isuumo: webapp/*.go
	mkdir -p dist/
	go build -o "$@" github.com/furusax0621/isucon10-qualify/webapp

dist/env.sh: env.sh
	mkdir -p dist/
	cp $< $@

clean:
	rm -rf dist/
