--1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes;

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano FROM Filmes ORDER BY Ano;

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'de volta para o futuro';

--4 - Buscar os filmes lançados em 1997
SELECT * FROM Filmes WHERE Ano = '1997';

--5- Buscar os filmes lançados APÓS o ano 2000
SELECT * FROM Filmes WHERE Ano > '2000';

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao;

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M';

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

--10 - Buscar o nome do filme e o gênero
SELECT 
	F.Nome, 
	G.Genero  
FROM FilmesGenero Fg
INNER JOIN Generos G ON Fg.IdGenero  = G.Id
INNER JOIN Filmes F ON Fg.IdFilme = F.Id;

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT 
	F.Nome, 
	G.Genero  
FROM FilmesGenero Fg
INNER JOIN Generos G ON Fg.IdGenero  = G.Id
INNER JOIN Filmes F ON Fg.IdFilme = F.Id
WHERE G.Genero = 'mistério';

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT
	F.Nome, 
	A.PrimeiroNome,
	A.UltimoNome, 
	Ef.Papel
FROM ElencoFilme Ef
INNER JOIN Atores A ON A.Id = Ef.IdAtor
INNER JOIN Filmes F ON F.Id = Ef.IdFilme;


