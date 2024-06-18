with stg_tot as (
    select 
    cast(rcept_no as integer) year, cast(corp_code as integer) code, corp_name name, remndr_exprtn1,	remndr_exprtn2
     from
    {{ source('bq', 'short_bond_bal') }}
)
select * from stg_tot