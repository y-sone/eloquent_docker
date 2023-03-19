-- データベース作成
CREATE DATABASE eloquent_test;
-- 使用するデータベースを設定
USE eloquent_test;
-- テーブル作成
CREATE TABLE users
(
    id INT(10) AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    email VARCHAR(50)
);
-- テストデータ投入
INSERT INTO users (name, email)
VALUES('Taro', 'taro@example.com'), ('Jiro', 'jiro@example.com'), ('Hanako', 'hanako@example.com');
