select
  f.trading_date,
  f.ticker,
  d.company_name,
  d.ceo,
  f.close,
  f.volume,
  f.daily_change,
  f.daily_return
from {{ ref('fct_stock_daily') }} as f
left join {{ ref('dim_company') }} as d
  on f.ticker = d.ticker

