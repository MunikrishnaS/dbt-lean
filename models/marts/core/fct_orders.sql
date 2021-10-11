with payment as (

    select * from {{ ref('stg_payment')}}

),
customers as (

    select * from {{ ref('dim_customers') }}

),

orders as ( payment.id,
           customer.customer_id,
           sum(payment.amount) as Amount
    from payment 
    left join customers on payment.id = customer.customer_id
)

select * from orders