with base as (
  select *
  from {{ ref('stg_big_3') }}
),
calc as (
  select
    trading_date,
    ticker,
    close,
    volume,
    close - lag(close) over (partition by ticker order by trading_date) as daily_change,
    (close / lag(close) over (partition by ticker order by trading_date) - 1) as daily_return
  from base
)
select *
from calc