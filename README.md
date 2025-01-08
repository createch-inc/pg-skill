# PGスキル試験

## 環境構築手順  

### 試験用リポジトリをクローン
```
$ git clone https://github.com/createch-inc/pg-skill.git
```

### Dockerイメージのビルドと起動  

```
$ cd pg-skill
$ docker-compose build
$ docker-compose up -d
```

## DB(MySQL)について
### テーブル構造 
下記ファイルには、テーブル作成や初期データ投入のためのSQLが記載されている

```
/your/env/path/to/pg-skill/db/initdb.d/pg-skill.sql
```

### DBのユーザ情報

| ユーザー名 | パスワード |
| ---- | ---- |
| root | pw |

### DBコンテナ内でコマンドを実行したい場合

```
$ docker exec -it pg-skill_db_1 sh
# mysql -u root -p
mysql>
```

## フレームワークを利用する場合  

フレームワークは何を利用しても良い。CakePHPの場合は、以下の方法でインストールできる。

```
$ docker exec -it pg-skill_php_1 sh
$ composer self-update && composer create-project --prefer-dist cakephp/a
pp:"4.*" my_app_name 
```

### コンテナ停止  

```
$ docker-compose stop
```
