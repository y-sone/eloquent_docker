# 作成手順
## Docker環境の設定
```shell
% mkdir eloquent_docker
% cd eloquent_docker
% touch docker-compose.yml
% touch Dockerfile
% touch .gitignore
```

## git設定
```shell
% git init
% git branch -M main
% git remote add origin git@github.com:y-sone/eloquent_docker.git
```

## Eloquentのインストール
```shell
% docker-compose up -d
% docker-compose exec web composer require illuminate/database
```

## mysqlへログイン
```shell
% docker-compose exec db bash
# コンテナ内部へ
% mysql -uroot -p
Enter password:
````

# お役立ちコマンド
```shell
# コンテナの削除
% docker-compose down

# 再ビルド・docker-compose.yml編集後に実行
% docker-compose up -d --build

# 起動中のコンテナを確認
% docker-compose ps

# PHP実行環境の動作確認
% docker-compose exec web composer --version
% docker-compose exec web bash

# DB実行環境の動作確認
% docker-compose exec db mysql --version
% docker-compose exec db bash
```

# git clone後の反映手順
```shell
% docker-compose up -d
% docker-compose exec web php app/main.php
```
