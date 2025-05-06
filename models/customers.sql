{{ config(materialized='view') }}

with dbt_files_infinity_stone as (
    select
        id as customer_id,
        first_name,
        last_name
    from "jaffle-db".dbt_files_infinity_stone  -- Quoted database name
),

final as (
    select
        customer_id,
        first_name,
        last_name
    from dbt_files_infinity_stone
)

select * from final