
select p.name as product, c.name  as category
from products as p
inner join categories as c
on p.categoryID = c.CategoryID
where c.name = "computers";

select p.name, p.price, r.rating
from products as p
inner join reviews as r
on p.productID = r.productID
where rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
select concat(e.firstname, " ", e.lastname) as employee, sum(s.quantity) as total
from employees as e
inner join sales as s
on e.employeeID = s.employeeID
group by e.employeeID
order by total desc
limit 599;


/* joins: find the name of the department, and the name of the category for Appliances and Games */
select d.name as department, c.name as category from categories as c
inner join departments as d
on d.DepartmentID = c.departmentID
where c.name = "Appliances" or c.name = "Games";


select 
p.name as product,
count(s.quantity) as totalQuantity,
sum(s.priceperunit * s.quantity) as totalValue
from products as p
inner join sales as s on p.productID = s.productID
group by s.productID
having p.name = "Eagles: Hotel California";


/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
select * from reviews as r
inner join products as p
where p.name = "Visio TV" and r.Rating = 1
order by rating;

-- ------------------------------------------ Extra - May be difficult

/* Your goal is to write a query that serves as an employee sales report.

This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */
select employeeID, FirstName, Lastname from employees

