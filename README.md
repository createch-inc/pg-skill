# PGスキル試験

## 環境構築手順  

### 試験用リポジトリをクローン
```
$ https://github.com/createch-inc/pg-skill.git
```

### Dockerイメージのビルドと起動  

```
$ docker-compose build
$ docker-compose up -d
```

## MySQL登録ユーザー

| ユーザー名 | パスワード |
| ---- | ---- |
| root | pw |

### PHPライブラリのインストール  

```
$ docker-compose exec php composer install
```

### コンテナ停止  

```
$ docker-compose stop
```

[toc]

## 開発用リンク  

- [vBiz](http://localhost:7080/ "vBiz")
- [phpmyadmin](http://localhost:7081 "phpmyadmin")
- [mailhog](http://localhost:7025 "mailhog")
