-- 직원 현황
with source as (
    select * from {{ source('bq', 'dividened_info') }}
)
with renamed as (
    select
    rcept_no 날짜,
    corp_name 회사이름,
    rgllbr_co 정규직,
    rgllbr_abacpt_labrr_co 정규직단시간,
    cnttk_co 계약직,
    cnttk_abacpt_labrr_co 계약직단시간,
    sm 합계,
    avrg_cnwk_sdytrn 평근근속연수
    from source
)