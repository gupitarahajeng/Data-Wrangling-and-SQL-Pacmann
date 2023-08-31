-- objective_1

select 
	id.order_id,
	id.order_item_id,
	id.product_id,
	pd.product_category_name,
	pc.product_category_name_english
		
FROM
	olist_order_items_dataset id
	left join olist_products_dataset pd on id.product_id = pd.product_id
	left join product_category_name_translation pc on pd.product_category_name = pc.product_category_name;

-- Objective_2

select 
	id.order_id,
	od.order_status,
	od.order_delivered_customer_date,
	id.order_item_id,
	id.product_id,
	pd.product_category_name,
	pc.product_category_name_english
		
FROM
	olist_order_items_dataset id
	left join olist_order_dataset od on id.order_id = od.order_id
	left join olist_products_dataset pd on id.product_id = pd.product_id
	left join product_category_name_translation pc on pd.product_category_name = pc.product_category_name;

-- objective_3

select
	id.order_id,
	od.customer_id,
	od.order_status,
	id.price,
	cd.customer_city,
	cd.customer_state
FROM
	olist_order_items_dataset id
	left join olist_order_dataset od on id.order_id = od.order_id
	left join olist_order_customer_dataset cd on od.customer_id = cd.customer_id;

-- objective_4

select 
	id.order_id,
	op.payment_type
FROM
	olist_order_items_dataset id
	left join olist_order_payments_dataset op on id.order_id = op.order_id;
