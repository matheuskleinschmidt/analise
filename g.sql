SELECT
    a.Estado AS Estado,
    a.Cidade AS Cidade,
    a.Instituicao AS Instituicao,
    AVG(aa.Notas) AS Media_Pontuacao
FROM
    Aulas_assistidas aa
JOIN
    Aula a ON aa.AulaID = a.AulaID
GROUP BY
    CUBE(a.Estado, a.Cidade, a.Instituicao);