CREATE DATABASE `pg-skill_db`;

USE `pg-skill_db`;

create table users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(255) NOT NULL
) CHARSET=utf8mb4;

CREATE TABLE issues (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    subject VARCHAR(255) NOT NULL,
    description TEXT,
    FOREIGN KEY user_key (user_id) REFERENCES users(id)
) CHARSET=utf8mb4;

CREATE TABLE tags (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(191),
    UNIQUE KEY (title)
) CHARSET=utf8mb4;

CREATE TABLE issues_tags (
    issue_id INT NOT NULL,
    tag_id INT NOT NULL,
    PRIMARY KEY (issue_id, tag_id),
    FOREIGN KEY tag_key(tag_id) REFERENCES tags(id),
    FOREIGN KEY issue_key(issue_id) REFERENCES issues(id)
) CHARSET=utf8mb4;

INSERT INTO users VALUES
  (null, 'john@test.vanfu.co.jp'),
  (null, 'david@test.vanfu.co.jp'),
  (null, 'michael@test.vanfu.co.jp');
