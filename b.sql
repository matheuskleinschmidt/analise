SELECT
    e.Nome AS Aluno,
    i.Curso AS Curso,
    i.InstrutorID,
    AVG(aa.Notas) AS Media_Pontuacao
FROM
    Aulas_assistidas aa
JOIN
    Estudante e ON aa.EstudanteID = e.EstudanteID
JOIN
    Instrutor i ON aa.InstrutorID = i.InstrutorID
JOIN
    Aula a ON aa.AulaID = a.AulaID
WHERE
    a.Cidade = 'Joinville'
GROUP BY
    e.Nome, i.Curso, i.InstrutorID;
