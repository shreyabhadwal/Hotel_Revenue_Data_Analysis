with hotel_all_years as(
select * from dbo.['2018$']
union
select * from dbo.['2019$']
union
select * from dbo.['2020$'])

select 
arrival_date_year,
hotel,
sum((stays_in_week_nights + stays_in_weekend_nights)*adr) as revenue 
from hotel_all_years 
group by arrival_date_year, hotel

/* 
Hotel revenue breakdown hotelwise and yearwise
ADR = Average Daily Rate as defined by dividing the sum of all lodging transactions by the total number of staying nights.
Year Revenue = Sum of (ADR * Stay in Days) for a particular year. 

2018 City Hotel made the maximum revenue.Hotel Revenue increases yearly for city hotels but not for resort hotels 
*/
