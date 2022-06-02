with hotel_all_years as(
select * from dbo.['2018$']
union
select * from dbo.['2019$']
union
select * from dbo.['2020$'])

select * from hotel_all_years

left join market_segment$
on hotel_all_years.market_segment = market_segment$.market_segment

left join meal_cost$
on hotel_all_years.meal = meal_cost$.meal