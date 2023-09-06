---
title: Data Engineering Overview
date: 2023-02-04 18:22:22 +1200
mermaid: true
published: true
---

# Extract 

Tools to extract data from a source to a landing zone / data warehouse

## Open source 
- Airbyte 
- Meltano
- Singer 

## Closed source 
- Fivetran 
- Stitch 
- Azure Data Factory
- AWS Glue

## Streaming
- Apache Kafka
- beam
- AWS Kinesis 

# Warehousing

## Open source 
- Apache Spark
- druid

## Closed source 
- Google Big Query
- Snowflake
- Amazon Redshift

# Orchestration
- Apache Airflow
- Dagster
- Prefect

# Transform 
- dbt
- coalesce

# Governance 

## Open source 
- Open Metadata

## Closed source
- DataHub
- great_excpectations
- Amundsen
- castor
- atlan

# Analysis

## Open source
- Metabase
- Looker
- Tableau

```mermaid
 gantt
  title  Adding GANTT diagram functionality to mermaid
  apple :a, 2017-07-20, 1w
  banana :crit, b, 2017-07-23, 1d
  cherry :active, c, after b a, 1d
```

