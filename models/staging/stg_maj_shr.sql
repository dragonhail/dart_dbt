with stg_maj_shr as (
    select 
    cast(rcept_no as integer)rcept_no,
    corp_code,
    corp_name,
    nm,
    relate,
    stock_knd,
    cast(bsis_posesn_stock_co as integer) bsis_posesn_stock_co,
    cast(bsis_posesn_stock_qota_rt as integer) bsis_posesn_stock_qota_rt,
    cast(trmend_posesn_stock_co as integer) trmend_posesn_stock_co,
    cast(trmend_posesn_stock_qota_rt as integer) trmend_posesn_stock_qota_rt
    from {{ source('bq', 'major_shareholder') }}
)
select * from stg_maj_shr