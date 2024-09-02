SELECT
    e.Curso AS Curso_Estudante,
    i.Curso AS Curso_Instrutor,
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
    e.Curso, i.Curso;
