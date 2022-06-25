/*querying the relationship between tables*/
SELECT * FROM videos_canais JOIN videos;


/*performing the query between the tables through their relationship between foreign keys*/
/*ON is used to compare the fields of tables*/
SELECT * FROM videos_canais JOIN videos ON videos_canais.fk_video = videos.id_video;

/*abbreviating table names when performing queries*/
SELECT * FROM videos_canais AS vc JOIN videos as v ON vc.fk_video = v.id_video;


/*doing a join in a query where fk_video equals id_video and fk_canal = id_canal*/
FROM videos_canais AS vc JOIN videos as v ON vc.fk_video = v.id_video
JOIN canais AS c ON vc.fk_canal = c.id_canal;


/*selecting only the relevant columns that need to be displayed*/
SELECT v.nome_video, v.autor_video, c.nome_canal
FROM videos_canais AS vc JOIN videos as v ON vc.fk_video = v.id_video
JOIN canais AS c ON vc.fk_canal = c.id_canal;

/*the JOIN clause will not return any field that has no relationship between tables - no value returning null*/


/* OUTER JOIN will perform the query bringing the result even from fields that do not have a relationship*
/*will return an error if the SIDE of it is not specified in which table the null field needs to be displayed*/
/*withe the command LEFT JOIN or RIGHT JOIN*/
SELECT *
FROM videos_canais AS vc RIGHT OUTER JOIN videos as v ON vc.fk_video = v.id_video;


/*we can only use UNION when we have the same number of columns*/
/*returns the UNION between the two queries*/
SELECT v.id_video, v.nome_video 
FROM videos AS v LEFT OUTER JOIN videos_canais as vc ON v.id_video = vc.fk_video 
UNION 
SELECT c.id_canal, c.nome_canal 
FROM videos_canais AS vc RIGHT OUTER JOIN canais AS c ON vc.fk_canal = c.id_canal;


/*creating a relationship between tables through the insertion of data in the primary key and foreign key*/
INSERT INTO `videos_canais` (`id_canais_video`, `fk_canal`, `fk_video`) VALUES ('6', '4', '6');

/*displaying the new relationship created*/
SELECT * FROM videos_canais JOIN videos ON videos_canais.fk_video = videos.id_video
JOIN canais ON videos_canais.fk_canal = canais.id_canal;

INSERT INTO `videos_canais` (`id_canais_video`, `fk_canal`, `fk_video`) VALUES ('6', '4', '6');


/*using WHERE to filter the query only by the requirement informed through the primary key value of a table*/
SELECT * FROM videos_canais 
JOIN videos ON videos_canais.fk_video = videos.id_video 
JOIN canais ON videos_canais.fk_canal = canais.id_canal 
WHERE canais.id_canal = 2;