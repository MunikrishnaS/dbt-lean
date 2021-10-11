with payment as (
    
    select
        id as orderid,
        amount,
        status
    

    from raw.stripe.payment
    where status <> 'fail'
)

select * from payment 