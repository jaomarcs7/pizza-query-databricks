-- Databricks notebook source
-- QUANTIDADE DE PEDIDOS REALIZADOS SOMENTE NA CIDADE DE SAO PAULO 

SELECT descUF, 
       count (*)
FROM silver.pizza_query.pedido
WHERE 1=1 
AND descUF = 'São Paulo'

GROUP BY descUF

-- COMMAND ----------

-- QUANTIDADE DE PEDIDOS REALIZADOS POR CADA CIDADE

SELECT descUF, 
       count (*) AS qtdPedidos
FROM silver.pizza_query.pedido
WHERE descUF != 'São Paulo'

GROUP BY descUF
HAVING qtdPedidos >= 75 

ORDER BY qtdPedidos DESC 

-- COMMAND ----------

-- QUANTIDADE DE PEDIDOS e KETCHUPS Por CIDADE 

SELECT descUF, 
       flKetchup,
       count (*) AS qtdPedidos
FROM silver.pizza_query.pedido
WHERE 1=1

GROUP BY descUF, flKetchup
ORDER BY descUF, flKetchup 
