CREATE VIEW v_FilmesComGeneros AS
SELECT f.Nome, g.Genero
FROM Filmes AS f
INNER JOIN FilmesGenero AS fg ON f.Id = fg.IdFilme
INNER JOIN Generos AS g ON fg.IdGenero = g.Id;
