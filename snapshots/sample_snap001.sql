{% snapshot sample_snap_001 %}

{{
   config(
    target_database='TEST_DB1_01',
    target_schema='public',
    unique_key="SHINBAN || '-' || DLRCD || '-' || iff(YUSOKBN is null, ' ', 'YUSOKBN') || '-' || ORDENO ",
    strategy='timestamp',
    updated_at='LDTS',
    invalidate_hard_deletes=True,
    )
}}
    
select * from TEST_DB1_01.public.SCD_SYUKKA_IPPAN_test0001
    
{% endsnapshot %}