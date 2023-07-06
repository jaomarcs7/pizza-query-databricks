-- Databricks notebook source
--Entendo conceitos do LEFT e RIGHT JOIN atraves de uma panilha do excel, o que muda é a tabela que vai ficar de referência.

SELECT t1.*, 
       t2.vlPreco
FROM silver.pizza_query.item_pedido AS t1

LEFT JOIN silver.pizza_query.produto AS t2 
ON t1.descItem = t2.descItem


-- COMMAND ----------

--Descobrindo quanto custa realmente cada pizza

SELECT t1.idPedido, 
       SUM(t2.vlPreco) AS vlPedido
FROM silver.pizza_query.item_pedido AS t1

LEFT JOIN silver.pizza_query.produto AS t2 
ON t1.descItem = t2.descItem

WHERE t1.descTipoItem <> 'bebida'
GROUP BY t1.idPedido

