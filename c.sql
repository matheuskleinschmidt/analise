SELECT
    i.InstrutorID,
    i.Curso,
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
    ROLLUP(i.InstrutorID, i.Curso);
