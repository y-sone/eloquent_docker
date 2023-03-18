# 作成手順
## Docker環境の設定
```bash
% mkdir eloquent_docker
% cd eloquent_docker
% touch docker-compose.yml
% touch Dockerfile
% touch .gitignore
```

## git設定
```bash
% git init
% git branch -M main
% git remote add origin git@github.com:y-sone/eloquent_docker.git
```

## Eloquentのインストール
```bash
% docker-compose up -d
% docker-compose exec my-php-app composer require illuminate/database
```

# git clone後の反映手順
