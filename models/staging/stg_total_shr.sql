with stg_tot_shr as (
    select 
    cast(rcept_no as integer) rcept_no, 
    cast(corp_code as integer) corp_code, 
    corp_name, 
    remndr_exprtn1,	
    remndr_exprtn2
    from
    {{ source('bq', 'short_bond_bal') }}
)
select * from stg_tot_shr