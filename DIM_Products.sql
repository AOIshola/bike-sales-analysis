/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
		[ProductKey]
      ,[ProductAlternateKey] AS ProductItemCode
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,[EnglishProductName]
	  ,pc.EnglishProductCategoryName AS [Product Category]
	  ,ps.EnglishProductSubcategoryName AS 'Sub Category'
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
		,[Color] AS 'Product Color'
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,[Size] AS [Product Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine] AS [Product Line]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,[ModelName] AS 'Project Model Name'
      --,[LargePhoto]
      ,[EnglishDescription] AS [Product Description]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,ISNULL([Status], 'Outdated') AS [Product Status]
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] p
LEFT JOIN dbo.DimProductSubcategory ps
	ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
LEFT JOIN dbo.DimProductCategory pc
	ON ps.ProductCategoryKey = pc.ProductCategoryKey
ORDER BY ProductKey