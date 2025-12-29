# Stock Analytics dbt Project

## Overview
This project demonstrates an end-to-end analytics workflow using:
- Python + yfinance for ingestion
- DuckDB as a local warehouse
- dbt for transformations, testing, and modeling

## Data Flow
raw.big_3 → staging → fact tables → enriched fact with company dimension

## Models
- stg_big_3
- fct_stock_daily
- dim_company
- fct_stock_daily_enriched

## Tools
- DuckDB
- dbt
- Python (pandas, yfinance)

## Notes
This project is designed as a local demo to explore the functionalities of DuckDB and DBT.