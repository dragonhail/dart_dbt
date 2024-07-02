-- Dimension 테이블 생성: 회사 정보
-- 회사 이름, 연도, 직원수, 임원 수, 
with dim_company as (
    SELECT
    company_id SERIAL PRIMARY KEY,
    corp_code VARCHAR(20) UNIQUE,
    corp_name VARCHAR(100),
    year,

    FROM
);
