select
  upper(company_id) as ticker, -- aliasing to match fact table for join
  company_name,
  ceo
from {{ source('raw', 'company_dim') }}