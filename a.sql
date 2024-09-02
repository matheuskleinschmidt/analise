-- Active: 1724594752482@@127.0.0.1@5432@postgres@public
SELECT
    e.Nome AS Aluno,
    a.Instituicao AS Universidade,
    aa.Notas AS Pontuacao
FROM
    Aulas_assistidas aa
JOIN
    Estudante e ON aa.EstudanteID = e.EstudanteID
JOIN
    Instrutor i ON aa.InstrutorID = i.InstrutorID
JOIN
    Aula a ON aa.AulaID = a.AulaID
WHERE
    a.Estado = 'SC'
    AND i.Curso != e.Curso
    AND aa.Notas > 70;
