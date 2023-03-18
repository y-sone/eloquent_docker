FROM php:8.2-cli
# パッケージリスト更新後にパッケージをインストール
RUN apt-get update && apt-get install -y git zip unzip
# PHP拡張モジュールのインストール
RUN docker-php-ext-install pdo_mysql
# composerのインストール
COPY --from=composer /usr/bin/composer /usr/bin/composer
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
