-- Databricks notebook source
SELECT * 

FROM silver.pizza_query.pedido

WHERE descUF = 'Rio de Janeiro'
AND flKetchup = TRUE 
