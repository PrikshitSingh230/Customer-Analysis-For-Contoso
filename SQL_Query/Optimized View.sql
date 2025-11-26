-- public.cohort_analysis source

CREATE OR REPLACE VIEW public.cohort_analysis
AS WITH customer_revenue AS (
         SELECT s.customerkey,
            s.orderdate,
            sum(s.quantity::double precision * s.netprice / s.exchangerate) AS total_revenue,
            count(s.orderdate) AS num_orders,
            max(c.countryfull::text) AS countryfull,
            max(c.age) AS age,
            max(c.givenname::text) AS givenname,
            max(c.surname::text) AS surname
           FROM sales s
             JOIN customer c ON s.customerkey = c.customerkey
          GROUP BY c.customerkey, s.customerkey, s.orderdate
        )
 SELECT customerkey,
    orderdate,
    total_revenue,
    num_orders,
    countryfull,
    age,
    concat(TRIM(BOTH FROM givenname), ' ', TRIM(BOTH FROM surname)) AS cleaned_name,
    min(orderdate) OVER (PARTITION BY customerkey) AS cohort_date,
    EXTRACT(year FROM min(orderdate) OVER (PARTITION BY customerkey)) AS cohort_year
   FROM customer_revenue cr;
