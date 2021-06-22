with source as (

    select * from {{ ref('fips_country') }}

),

final as (

    select
        lower(code) as country_code, 
        lower(label) as country_name      

    from source

)

select * from final