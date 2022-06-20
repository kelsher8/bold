DROP DATABASE IF EXISTS blog;
CREATE DATABASE blog CHARACTER SET utf8 COLLATE utf8_general_ci;
USE blog;
CREATE TABLE articles (
  id int(11) NOT NULL AUTO_INCREMENT,
  title varchar(100),
  summary varchar(200),
  content text,
  category varchar(11),
  PRIMARY KEY (id)
);
INSERT INTO articles(
  id, 
  title, 
  summary, 
  content, 
  category
) VALUES (
  '1',
  '競合PLC',
  '結構人気、色々な人が借りる',
  '',
  'PLC'
);
INSERT INTO articles(
  id, 
  title, 
  summary, 
  content, 
  category
) VALUES (
  '2',
  'DM8700',
  '手軽に誰でも使えるバーコードリーダー',
  '',
  'ハンスキャ'
);
INSERT INTO articles(
  id, 
  title, 
  summary, 
  content, 
  category
) VALUES (
  '3',
  'A700',
  'こいつはすごい、遠くまで読める',
  '',
  'HT'
);
INSERT INTO articles(
  id, 
  title, 
  summary, 
  content, 
  category
) VALUES (
  '4',
  'BT1500',
  '小さくて便利やね',
  '',
  'HT'
);

CREATE TABLE users (
  id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(20) DEFAULT NULL,
  email varchar(100) DEFAULT NULL,
  password varchar(60) DEFAULT NULL,
  PRIMARY KEY (id)
);
INSERT INTO users (username, email, password) VALUES ('田中','221111','ninja');
INSERT INTO users (username, email, password) VALUES ('鈴木','221222','sennin');
INSERT INTO users (username, email, password) VALUES ('佐藤','221333','baby');
INSERT INTO users (username, email, password) VALUES ('中島','221555','tori');

CREATE TABLE items (
  id int(11) NOT NULL AUTO_INCREMENT,
  itemname varchar(20) DEFAULT NULL,
  itemsummary varchar(100) DEFAULT NULL,
  itemcontent text DEFAULT NULL,
  category varchar(60) DEFAULT NULL,
  itemstate boolean not null DEFAULT 1,
  PRIMARY KEY (id)
);
INSERT INTO items (itemname, itemsummary, category) VALUES ('SONY カメラ','モバイル重視','カメラ');
INSERT INTO items (itemname, itemsummary, category) VALUES ('OLYMPUS カメラ','画質重視','カメラ');
INSERT INTO items (itemname, itemsummary, category) VALUES ('Lets note','Windows10','ノートPC固定資産');
INSERT INTO items (itemname, itemsummary, category) VALUES ('dynabook','Windows7','ノートPC固定資産');