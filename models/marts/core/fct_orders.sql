with payment as (

    select * from {{ ref('stg_payment')}}

),
customer as (

    select * from {{ ref('dim_customer') }}

)

orders as ( payment.id,
           customer.customer_id,
           sum(payment.amount) as Amount
    from payment 
    left join customer on payment.id = customer.customer_id
)

select * from orders
    

)