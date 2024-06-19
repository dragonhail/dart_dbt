with stg_min_shr as (
    select 
    cast(rcept_no as integer) rcept_no, 
    cast(corp_code as integer) corp_code, 
    corp_name, 
    se,	
    cast(shrholdr_co as integer) shrholdr_co,
    cast(shrholdr_tot_co as integer) shrholdr_tot_co,
    cast(shrholdr_rate as integer) shrholdr_rate,
    cast(stock_tot_co as integer) stock_tot_co,
    cast(replace(hold_stock_rate, '%', '')  as decimal) hold_stock_rate
    from
    {{ source('bq', 'minority_share') }}
)
select * from stg_min_shr