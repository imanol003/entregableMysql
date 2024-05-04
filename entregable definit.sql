SELECT cursos.titulo, COUNT(unidades.id) AS num_unidades
FROM cursos
INNER JOIN unidades ON cursos.id = unidades.cursos_id
GROUP BY cursos.titulo
ORDER BY num_unidades DESC
LIMIT 5;

SELECT cursos.titulo, AVG(unidades.id) AS media_unidades
FROM cursos
INNER JOIN unidades ON cursos.id = unidades.cursos_id
GROUP BY cursos.titulo;

SELECT usuarios.nombre
FROM usuarios
JOIN usuarios_has_cursos ON usuarios.id = usuarios_has_cursos.usuarios_id
GROUP BY usuarios.nombre
HAVING COUNT(usuarios_has_cursos.cursos_id) > 3
ORDER BY usuarios.nombre ASC;

SELECT *
FROM clases
WHERE fecha_inicio < '2024-06-01'
ORDER BY fecha_inicio ASC
LIMIT 10;

SELECT tipo, COUNT(*) AS cantidad
FROM bloques
WHERE titulo = 'Introducción a la Programación en Python'
GROUP BY tipo;

SELECT COALESCE(nombre, '') AS nombre, COALESCE(apellido, '') AS apellido
FROM usuarios;

SELECT cursos.titulo, COUNT(usuarios_has_cursos.usuarios_id) AS total_usuarios 
FROM cursos 
JOIN usuarios_has_cursos ON cursos.id = usuarios_has_cursos.cursos_id 
GROUP BY cursos.titulo 
ORDER BY total_usuarios DESC 
LIMIT 3;

SELECT usuarios.nombre
FROM usuarios
JOIN usuarios_has_cursos ON usuarios.id = usuarios_has_cursos.usuarios_id
GROUP BY usuarios.nombre
HAVING COUNT(usuarios_has_cursos.cursos_id) > 3
ORDER BY usuarios.nombre ASC;




