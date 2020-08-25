# ISUCON10 予選コード

大きなかべさんチームのアプリコードです。

## アプリコードの追加

```sh
git clone git@github.com:furusax0621/isucon10-qualify.git
cd isucon10-qualify
mkdir -p webapp
rsync -a --exclude "go.*" --exclude "Makefile" /path/to/go/codes/ ./webapp/
git add webapp/
git commit -m 'add application code'
git push -u origin master
```

## アプリのデプロイ

各サーバーで次のコマンドを実行

```sh
cd ~/isucon10-qualify
git pull
git checkout <branch>
make deploy
```
