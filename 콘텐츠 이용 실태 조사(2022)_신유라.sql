WITH "quarter_data" AS (
    SELECT
        QUARTER("e_media"."datestamp[active]") AS "quarter", 
        "e_study"."userid", 
        "e_study"."mcode", 
        "e_study"."system_learning_time",  
        "e_media"."datestamp[active]",      
        "e_member"."grade",                 
        "e_test"."item_count",        
        "e_test"."correct_count",  
        "e_test"."score",                  
        "e_content_meta"."u_title"
    FROM 
        "text_biz_dw"."e_study" AS "e_study"
        INNER JOIN "text_biz_dw"."e_member" ON "e_study"."userid" = "e_member"."userid"  
        INNER JOIN "text_biz_dw"."e_media" ON "e_study"."userid" = "e_media"."userid" AND "e_study"."mcode" = "e_media"."mcode"
        INNER JOIN "text_biz_dw"."e_test" ON "e_study"."userid" = "e_test"."userid" AND "e_study"."mcode" = "e_test"."mcode"
        INNER JOIN "text_biz_dw"."e_content_meta" ON "e_study"."mcode" = "e_content_meta"."mcode"
    WHERE 1=1
        AND ("e_content_meta"."u_title" LIKE '%퀴즈%' OR "e_content_meta"."u_title" LIKE '%문제%')
        AND "e_member"."grade" IN (3, 4, 5, 6)
        AND YEAR("e_media"."datestamp[active]") = 2022
        AND QUARTER("e_media"."datestamp[active]") = ? 
)

SELECT
    DENSE_RANK() OVER (ORDER BY COUNT(DISTINCT "userid") DESC) AS "순위",
    "mcode" AS "콘텐츠",
    COUNT(DISTINCT "userid") AS "학생 수",
    ROUND(AVG("grade"), 2) AS "학년 평균",
    SUM(COALESCE("system_learning_time", 0)) AS "총 학습 시간",
    ROUND(AVG("item_count"), 2) AS "평균 평가 문항 수",
    ROUND(AVG("correct_count"), 2) AS "평균 정답 문항 수",
    ROUND(AVG("score"), 2) AS "평가 점수 평균"
FROM "quarter_data"
GROUP BY "mcode"
ORDER BY "순위" ASC
;