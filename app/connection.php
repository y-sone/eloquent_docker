<?php

use Illuminate\Database\Capsule\Manager as Capsule;

require_once 'vendor/autoload.php';

$capsule = new Capsule;

$capsule->addConnection([
    'driver' => 'mysql',              // mysqlを指定
    'host' => 'db',                   // コンテナ名
    'database' => 'eloquent_test',    // データベース名
    'username' => 'root',             // ユーザー名
    'password' => 'password',         // パスワード
    'charset' => 'utf8',
    'collation' => 'utf8_unicode_ci',
    'prefix' => '',
]);

// Capsuleインスタンスをグローバル化
$capsule->setAsGlobal();

// Eloquent起動
$capsule->bootEloquent();
