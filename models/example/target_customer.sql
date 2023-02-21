{{
    config(
        materialized='incremental'
    )
}}

SELECT
*

{{ ref('st_customer') }}

{% if is_incremental() %}


{% endif %}