## Index
```
order_product | index_order_roduct | CREATE INDEX index_order_roduct ON public.order_product USING btree (order_id, product_id)

orders        | index_orders       | CREATE INDEX index_orders ON public.orders USING btree (id)

product       | index_id           | CREATE INDEX index_id ON public.product USING btree (id)
```
