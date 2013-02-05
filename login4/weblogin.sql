CREATE DATABASE WebLogin
GO

USE WebLogin
GO

CREATE TABLE Users
(
  UserName    varchar(32)    NOT NULL, 
  Password    varchar(32)    NOT NULL,
  Role        varchar(32)
)
GO

INSERT INTO users (UserName, Password, Role) VALUES ('Jeff', 'imbatman', 'Developer')
INSERT INTO users (UserName, Password, Role) VALUES ('John', 'redrover', 'Manager')
INSERT INTO users (UserName, Password, Role) VALUES ('Bob', 'mxyzptlk', 'Developer')
INSERT INTO users (UserName, Password, Role) VALUES ('Alice', 'nomalice', 'Manager')
INSERT INTO users (UserName, Password, Role) VALUES ('Mary', 'contrary', 'Developer')
GO

