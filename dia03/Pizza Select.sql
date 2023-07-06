-- Databricks notebook source


-- COMMAND ----------



-- COMMAND ----------

 


-- COMMAND ----------

 
  (SELECT descItem,
        count(*) AS qtdePedido

  FROM silver.pizza_query.item_pedido 

  WHERE descTipoItem = 'bebida'

    GROUP BY descItem
  ORDER BY qtdePedido DESC

  LIMIT 1)

  UNION ALL 

    -- Rank da top 1 de item de pedido que mais saiu de BORDA 
  
 ( SELECT descItem,
        count(*) AS qtdePedido

  FROM silver.pizza_query.item_pedido 

  WHERE descTipoItem = 'borda'

  GROUP BY descItem
  ORDER BY qtdePedido DESC

  LIMIT 1)

  UNION ALL 

   
(  SELECT descItem,
        count(*) AS qtdePedido

  FROM silver.pizza_query.item_pedido 

  WHERE descTipoItem = 'massa'

    GROUP BY descItem
  ORDER BY qtdePedido DESC

  LIMIT 1)

UNION ALL 

 
(  SELECT descItem,
        count(*) AS qtdePedido

  FROM silver.pizza_query.item_pedido 

  WHERE descTipoItem LIKE '%queijo%'

    GROUP BY descItem
  ORDER BY qtdePedido DESC

  LIMIT 1)

UNION ALL

(  SELECT descItem,
        count(*) AS qtdePedido

  FROM silver.pizza_query.item_pedido 

  WHERE descTipoItem LIKE '%ingrediente%'

    GROUP BY descItem
  ORDER BY qtdePedido DESC

  LIMIT 5)




