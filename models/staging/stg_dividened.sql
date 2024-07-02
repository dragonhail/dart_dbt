-- 배당금
with source as (
    select *
    from
    {{ source('bq', 'dividened_info') }}
)
with renamed as (
    select
    rcept_no 날짜, corp_name 회사이름, se 주식종류, thstrm 당기, frmtrm 전기, lwfr 전전기
    from
    source
)
select * from renamed