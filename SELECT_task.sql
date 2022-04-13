название и год выхода альбомов, вышедших в 2018 году;
SELECT name, release_date
FROM album
WHERE release_date = 2018


название и продолжительность самого длительного трека;
SELECT name, duration
FROM tracks
where duration = (select MAX(duration) from tracks);


название треков, продолжительность которых не менее 3,5 минуты;
SELECT name, duration
FROM tracks
WHERE duration > 3.5 * 60;


названия сборников, вышедших в период с 2018 по 2020 год включительно;
SELECT name
FROM collection
WHERE release_date BETWEEN 2018 AND 2020;


исполнители, чье имя состоит из 1 слова;
SELECT name
FROM singers
WHERE name NOT LIKE '% %';


название треков, которые содержат слово "мой"/"my".
SELECT name
FROM tracks
WHERE name LIKE '%мой%' OR name LIKE '%my%';