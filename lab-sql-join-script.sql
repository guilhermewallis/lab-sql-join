	-- 1.
select c.name category, count(fc.film_id) 'number of films' from category c
join film_category fc using(category_id)
group by c.category_id;

	-- 2.
select s.first_name, s.last_name, a.address, a.address2, a.district, a.city_id, a.postal_code from staff s
join address a using (address_id);

	-- 3.
select s.first_name, s.last_name, sum(p.amount) 'total amount' from payment p
join staff s using(staff_id)
where left(p.payment_date,7) = '2005-08'
group by staff_id;

	-- 4.
select f.title, count(fa.actor_id) 'number of actors' from film f
join film_actor fa using(film_id)
group by f.film_id;

	-- 5.
select c.last_name, c.first_name, sum(p.amount) 'total amount' from payment p
join customer c using(customer_id)
group by customer_id
order by c.last_name;