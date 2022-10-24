# CREATE DATABASE mydb3;
USE mydb3;
-- 네이버 영화 상영작 페이지 관련 테이블

CREATE TABLE Movie (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  time VARCHAR(255) DEFAULT 0, -- NULL은 관리하기 힘드니까 default 값을 주자
  releaseDate DATE DEFAULT '1900-01-01'
);

CREATE TABLE Director (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE DirectorDetails (
  movieID INT NOT NULL,
  directorID INT NOT NULL,
  FOREIGN KEY (movieID) REFERENCES Movie (ID),
  FOREIGN KEY (directorID) REFERENCES Director(ID),
  PRIMARY KEY (movieID, directorID)
);

CREATE TABLE Genre(
  ID INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE GenreDetails(
  movieID INT NOT NULL,
  generID INT NOT NULL ,
  FOREIGN KEY (movieID) REFERENCES Movie (ID),
  FOREIGN KEY (generID) REFERENCES Genre (ID),
  PRIMARY KEY (movieID, generID)
);

CREATE TABLE Actor (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE ActorDetails(
  movieID INT NOT NULL,
  actorID INT NOT NULL,
  FOREIGN KEY (movieID) REFERENCES Movie(ID),
  FOREIGN KEY (actorID) REFERENCES Actor(ID),
  PRIMARY KEY (movieID, actorID)
);