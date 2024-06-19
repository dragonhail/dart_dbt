with stg_maj_shr as (
    select 
    cast(rcept_no as integer) rcept_no,
    corp_code,
    corp_name,
    nm,
    relate,
    stock_knd,
    CASE 
    WHEN SAFE_CAST(bsis_posesn_stock_co AS INTEGER) IS NOT NULL THEN SAFE_CAST(bsis_posesn_stock_co AS INTEGER)
    ELSE SAFE_CAST(REPLACE(bsis_posesn_stock_co, ',', '') AS INT64)
    END AS bsis_posesn_stock_co,
    bsis_posesn_stock_qota_rt,
    trmend_posesn_stock_co,
    cast(trmend_posesn_stock_qota_rt as decimal) trmend_posesn_stock_qota_rt
    from {{ source('bq', 'major_shareholder') }}
)
select * from stg_maj_shr