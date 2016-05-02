-- Listar el top 5 de las canciones más vendidas por genero
create view vista_canciones_mas_vendidas as 
select numerador as posicion, genero, pista, count as cant_ventas from (
select *, row_number() over (partition by genero ) as numerador
from (select count(t.trackid),t.name as pista, g.name as genero 
from invoiceline il
join track t on t.trackid=il.trackid 
join invoice i on i.invoiceid=il.invoiceid 
join genre g on g.genreid=t.genreid 
group by t.name, g.name
order by genero, count desc
) as ct) aux where numerador<6 

-- Listar los 3 clientes que han comprado más canciones
create view vista_canciones_mas_compradas as
select c.firstname, c.lastname,c.phone, c.email, count(c.customerid) as compras
from invoice i
join invoiceline il on il.invoiceid=i.invoiceid
join customer c on c.customerid=i.customerid
group by c.firstname,c.lastname,c.phone, c.email
order by compras desc
limit 3

-- Listar las 20 canciones que tienen mayor duración agrupados por tipo de medio
create view vista_cancion_mayor_duracion as
select posicion, media, track, milliseconds from (
select *, row_number() over (partition by media ) as posicion from (
select m.name as media, t.name as track, t.milliseconds from track t 
join mediatype m on m.mediatypeid=t.mediatypeid 
order by m.name, milliseconds desc) as aux) as aux2
where posicion<21

-- Listar total ventas por mes agrupadas por el vendedor
create view vista_total_ventas_mes_vendedor as
select anio,mes, lastname, firstname, sum(total) as total from (
select extract(year from invoicedate) as anio,extract(month from invoicedate) as mes, total, e.lastname, e.firstname from invoice i 
join customer c on c.customerid=i.customerid
join employee e on e.employeeid=c.supportrepid
order by anio, mes, e.lastname, e.firstname
) as aux
group by anio,mes, lastname, firstname
