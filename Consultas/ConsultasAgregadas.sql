-- 1
SELECT Nome, Ano
FROM Filmes;

-- 2
SELECT Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano;

-- 3
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

-- 4
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997;

-- 5
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000;

-- 6
SELECT Nome, Ano, Duracao 
FROM Filmes 
WHERE Duracao BETWEEN 101 AND 150
ORDER BY Duracao;

-- 7
SELECT Ano , COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8
SELECT *
FROM Atores;

-- 9
SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- 10
-- Creating a view
-- CREATE VIEW v_FilmesComGeneros AS
-- SELECT f.Nome, g.Genero
-- FROM Filmes AS f
-- INNER JOIN FilmesGenero AS fg ON f.Id = fg.IdFilme
-- INNER JOIN Generos AS g ON fg.IdGenero = g.Id;

-- Querying the view
SELECT * FROM .v_FilmesComGeneros;

-- 11
SELECT Nome, Genero
FROM v_FilmesComGeneros
WHERE Genero = 'Mistério';

-- 12
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes AS f
INNER JOIN ElencoFilme AS ef ON f.Id = ef.IdFilme
INNER JOIN Atores AS a ON ef.IdAtor = a.Id;
