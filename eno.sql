create or replace function no_emp() returns int as $$
declare
total_count int;
begin
select count(*) into total_count from employee where joining_date < '01-01-2007';
return total_count;
end;
$$ language plpgsql;
