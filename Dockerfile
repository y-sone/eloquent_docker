FROM php:8.2-cli
# パッケージリスト更新後にDockerイメージの構築に必要なパッケージをインストール
RUN apt-get update && apt-get install -y git zip unzip
# PDOを使用するための拡張モジュールをインストール
RUN docker-php-ext-install pdo_mysql
# composerのインストール
COPY --from=composer /usr/bin/composer /usr/bin/composer
COPY . /usr/src/web
WORKDIR /usr/src/web
