SELECT
    e.Curso AS Curso_Estudante,
    AVG(aa.Notas) AS Media_Pontuacao
FROM
    Aulas_assistidas aa
JOIN
    Estudante e ON aa.EstudanteID = e.EstudanteID
GROUP BY
    e.Curso;
