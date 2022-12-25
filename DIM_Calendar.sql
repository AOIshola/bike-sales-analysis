/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
	[DateKey]
      ,[FullDateAlternateKey] AS Date
      --,[DayNumberOfWeek] 
      ,[EnglishDayNameOfWeek] AS Day
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth] 
      --,[DayNumberOfYear]
      ,[WeekNumberOfYear] AS WeekNo
      ,[EnglishMonthName] AS Month
	  ,LEFT([EnglishMonthName], 3) AS ShortMonth
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      ,[MonthNumberOfYear] AS Month
      ,[CalendarQuarter] AS Quarter
      ,[CalendarYear] AS Year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
WHERE CalendarYear >= YEAR(GETDATE()) -2