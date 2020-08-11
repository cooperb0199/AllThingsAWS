CREATE TABLE public.plant_inventory 
(
	common_name varchar(50) not null,
  	plant_id integer not null,
  	water_frequency_in_days integer not null
)

COPY public.plant_inventory
FROM 's3://name-of-your-bucket/path-to-your-file'
iam_role 'arn:aws:iam::123456789123:role/MyRedshiftRole'
csv;

select * from plant_inventory

select * from stl_load_errors
where query = '1111'
