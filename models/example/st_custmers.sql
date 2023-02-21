{{ config(materialized="view") }}

select * from  customer2 CHANGES(INFORMATION => DEFAULT) AT(offset  => -60*5);