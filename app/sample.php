<?php
$dsn = 'mysql:host=pg-skill_db_1;dbname=pg-skill_db;';
$db_user = 'root';
$db_pass = 'pw';

$pdo = new PDO($dsn, $db_user, $db_pass);

$sql = 'select * from users;';
$rows = $pdo->query($sql);

foreach ($rows as $row) {
  echo '<pre>';
  var_dump($row);
  echo '</pre>';
}
