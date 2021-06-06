do $$
begin
   for counter in 1..5 loop
	raise notice 'counter: %', counter;
   end loop;
end; $$;


do $$
begin
   for counter in reverse 5..1 loop
      raise notice 'counter: %', counter;
   end loop;
end; $$;


do
$$
declare
    f record;
begin
    for f in select make, model 
	       from car 
	       order by make desc, model
	       limit 10 
    loop 
	raise notice 'make: % (model: %)', f.make, f.model;
    end loop;
end;
$$;