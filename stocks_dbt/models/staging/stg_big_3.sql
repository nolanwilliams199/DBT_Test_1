select
  trading_date,
  upper(ticker) as ticker,
  cast(open as double) as open,
  cast(high as double) as high,
  cast(low as double) as low,
  cast(close as double) as close,
  cast(adj_close as double) as adj_close,
  cast(volume as bigint) as volume
from {{ source('raw', 'big_3') }}
where trading_date is not null