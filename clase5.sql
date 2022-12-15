USE COMERCIO;

SELECT 
	COUNT(*) AS CANTIDAD,
    MAX(PRECIO) AS PRECIO_MAXIMO,
    MIN(PRECIO) AS PRECIO_MINIMO,
    AVG(PRECIO) AS PRECIO_PROMEDIO
FROM PRODUCTOS;

SELECT
	LETRA,
    COUNT(*) AS CANT_FACTURAS,
    SUM(CANTIDAD) AS CANT_PRODUCTOS,
    MAX(FECHA) AS FECHA_MAX
FROM FACTURAS
WHERE FECHA BETWEEN '2017-01-01' AND '27-01-05'
group by LETRA
HAVING SUM(CANTIDAD) > 10;

SELECT 
	MARCA, TALLE,
    COUNT(*)
FROM PRODUCTOS
GROUP BY MARCA, TALLE
HAVING COUNT(*) > 1;


--------------------------------------------------------
select 
	marca,
    color,
	count(*) as cantidad,
	avg(precio) as precio_promedio
from productos
group by marca, color;


------------------------

/* 

	sub consulta en el where
    sub consulta en el select --- SC CORRELACIONADAS
    sub consulta en el from ---- 
    
*/

-- mostrar los productos que tengan el precio mayor que el promedio

select avg(precio) from productos;

select *
from productos
where precio > (select avg(precio) from productos);

--------------------------------
-- mostrar los productos que tengan el precio minimo

select min(precio) from productos;

select *
from productos
where precio = (select min(precio) from productos)


-- mostrar las facturas de productos color azul

Select *
FROM facturas
WHERE id_producto in
	(select id_producto
    from productos
    where color = 'azul');