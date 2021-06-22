with source as (

    select * from {{ ref('event_types') }}

),

final as (

    select
        lower(code) as event_code, 
        lower(label) as event_type      

    from source

)

select * from final