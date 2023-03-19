<?php

use App\Models\User;

require_once 'app/connection.php';

/**
 * 準備
 * dbコンテナで下記を実行
 * - create database eloquent_test;
 * - create table eloquent_test.users (id int, email varchar(50));
 * - insert into eloquent_test.users values(1, 'test@example.com');
 */
$users = $users = User::all();

foreach ($users as $user) {
    echo "id: {$user->id} name: {$user->name} email: {$user->email}\n";
}
