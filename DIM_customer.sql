/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
		c.[CustomerKey]
      --,g.[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,[FirstName] AS 'First Name'
      --,[MiddleName]
      ,[LastName] AS 'Last Name'
	  ,[FirstName] + ' ' + [LastName] AS 'Full Name'
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      --,[Gender]
	  ,CASE WHEN Gender = 'M' THEN 'Male' ELSE 'Female' END AS Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.[DateFirstPurchase] AS DateFirstPurchase
      --,[CommuteDistance]
	  ,g.city AS 'Customer City'
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] c
  LEFT JOIN AdventureWorksDW2019..DimGeography g
	ON g.GeographyKey = c.GeographyKey
ORDER BY CustomerKey ASC