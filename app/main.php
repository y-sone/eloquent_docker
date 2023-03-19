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
$users = $users = User::find(1);
var_dump('id: ' . $users->id);
var_dump('email: ' . $users->email);
