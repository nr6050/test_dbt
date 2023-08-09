select
  *
from {{ source('dbt', 'scdtype2_soruce') }}