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

### サーバへアクセス
下記URLで試験用のサーバにアクセスできます。
sample.phpには、データベースサーバに接続するサンプルコードが書かれています。

[http://localhost:8080/sample.php](http://localhost:8080/sample.php)

## DB(MySQL)について
### テーブル構造 
下記ファイルには、テーブル作成や初期データ投入のためのSQLが記載されていてます。

```
/your/env/path/to/pg-skill/db/initdb.d/pg-skill.sql
```

### DBのユーザ情報

| ユーザー名 | パスワード |
| ---- | ---- |
| root | pw |

### MySQLログイン

DBコンテナ内でmysqlコマンドを実行してください。
```
$ docker exec -it pg-skill_db_1 sh
# mysql -u root -p
mysql>
```

## フレームワークを利用する場合  

フレームワークは何を利用しても良いです。
例えば、CakePHPの場合は以下の方法でインストールできます。

```
$ docker exec -it pg-skill_php_1 sh
$ composer self-update && composer create-project --prefer-dist cakephp/app:"4.*" my_app_name 
```

### コンテナ停止  

```
$ docker-compose stop
```