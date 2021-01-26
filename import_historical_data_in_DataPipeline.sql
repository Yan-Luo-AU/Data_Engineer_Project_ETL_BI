-- import sellers data
select * from ecomm_db.sellers;

-- import product_category_name_translation
select * from ecomm_db.product_category_name_translation;

-- import order_payments
select * from ecomm_db.order_payments;

-- import orders data
select 
	a.order_id,
	a.order_status,
	a.customer_id,
	a.order_approved_at,
	a.order_delivered_carrier_date,
	a.order_delivered_customer_date,
	a.order_estimated_delivery_date,
	a.order_purchase_timestamp,
	b.customer_city,
	b.customer_state,
	b.customer_zip_code_prefix
from 
	ecomm_db.orders a 
join 
	ecomm_db.customers b
on 
	a.customer_id = b.customer_id;
    
-- import order_review data
select 
review_id,
order_id,
review_score,
review_comment_title,
review_comment_message,
case when review_creation_date like '%0000%' then NULL else review_creation_date end review_creation_date,
case when review_answer_timestamp like '%0000%' then NULL else review_answer_timestamp end review_answer_timestamp
from ecomm_db.order_reviews;

-- import order_items data
select 
	a.* ,
	b.product_category_name
from 
	ecomm_db.order_items a 
join 
	ecomm_db.products b 
on 
	a.product_id = b.product_id;

-- import geolocation data
select *
from ecomm_db.geolocation;