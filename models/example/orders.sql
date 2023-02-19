{{ config(materialized="table") }}

select
    o_orderkey as order_id,
    o_custkey as customer_id,
    o_orderdate as order_date,
    o_orderstatus as status
from sample_data.tpch_sf1.orders