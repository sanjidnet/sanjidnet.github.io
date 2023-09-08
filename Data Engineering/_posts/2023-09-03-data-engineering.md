--- 
title: Data Engineering Techstack
date: 2023-09-04 18:22:22 +1200
mermaid: true
published: true
---

## Overview

Data engineering is the field of designing and managing the architecture, infrastructure, and processes for 
collecting, storing, and processing data in a way that is reliable, scalable, and efficient. 
It focuses on ensuring that data is available, accessible, and ready for analysis by 
data scientists, analysts, and other stakeholders within an organization.

Below is modern architecture for data engineering. 
This article provides a brief description of each component of this architecture and 
provides the tools that can be used to achieve this architecture.

```mermaid
flowchart LR

  subgraph Governance
    subgraph Orchestrate
      subgraph Warehouse

        Load
        Mart
      end
      Stream --> Warehouse
      Extract --> Warehouse
    end
  Mart --> Analyse
  Load --Transform--> Mart
  end
```

---

## Extract

Data extract typically refers to a subset or snapshot of data extracted from a source system, 
such as a database or application, for the purpose of further processing, analysis, or storage

```mermaid
 flowchart LR

  extract[(Extract)] 
  opensource[/Open source/] 
  extract --> opensource
  opensource --> Airbyte 
  opensource --> Meltano
  opensource --> Singer 

  closedsource[/Closed source/] 
  adf[Azure Data Factory]
  aws_glue[AWS Glue]
  extract --> closedsource
  closedsource --> Fivetran 
  closedsource --> Stitch 
  closedsource --> adf
  closedsource --> aws_glue 
```

---

## Streaming

Data streaming is the real-time or near-real-time continuous flow of data from various sources to a destination, 
such as a data processing system or storage, without the need for storing the entire dataset at once.

```mermaid
 flowchart LR

  streaming[(Streaming)] 
  opensource[/Open source/] 
  streaming --> opensource
  kafka[Apache Kafka]
  opensource --> kafka

  closedsource[/Closed source/] 
  streaming --> closedsource
  kinesis[AWS Kinesis]
  closedsource --> beam
  closedsource --> kinesis

```

---

## Warehousing

A data warehouse is a specialized, centralized repository that stores large volumes of data 
collected from the extract and streaming.
It is designed to support complex querying and reporting, providing a historical and 
integrated view of data that enables efficient data analysis and informed decision-making.

```mermaid
 flowchart LR

  warehouse[(Warehousing)] 

  opensource[/Open source/] 
  warehouse --> opensource

  spark[Apache Spark]
  opensource --> spark
  opensource --> druid

  closedsource[/Closed source/] 
  warehouse --> closedsource
  bq[Google Big Query]
  redshift[Amazon Redshift]

  closedsource --> bq
  closedsource --> redshift
  closedsource --> Snowflake
```

---

## Orchestration

Orchestration refers to the coordination and management of data processing tasks and 
workflows in a systematic and automated manner. 
It involves designing, scheduling and monitoring the execution of data pipelines 
and processes to ensure data is collected, transformed, and 
loaded efficiently and reliably across various systems and stages of the data lifecycle

```mermaid
 flowchart LR

  orchestration[(Orchestration)] 

  airflow[Apache Airflow] 
  orchestration --> airflow
  orchestration --> Dagster
  orchestration --> Prefect
```

---

## Transform

Transformation refers to the process of converting and altering data from its original format 
into a desired structure or schema. This can involve various operations like 
filtering, aggregating, cleaning, and enriching the data to make it suitable for 
analysis, reporting, or storage in a data warehouse or other systems.

```mermaid
 flowchart LR

  transform[(Transform)] 

  opensource[/Open source/] 
  transform --> opensource

  opensource --> dbt

  closedsource[/Closed source/] 
  transform --> closedsource
  closedsource --> coalesce
```

---

## Governance

Governance refers to the set of policies, processes, and controls put in place to ensure 
the quality, security, and compliance of data throughout its lifecycle. 
It involves establishing guidelines for data collection, storage, access, and usage, as well as 
implementing mechanisms for data auditing, monitoring, and enforcement to 
maintain data integrity and align with regulatory requirements.

```mermaid
 flowchart LR

  governance[(Governance)] 

  opensource[/Open source/] 
  governance --> opensource

  open_metadata[Open Metadata]
  opensource --> open_metadata

  closedsource[/Closed source/] 
  governance --> closedsource
  closedsource --> DataHub
  closedsource --> great_excpectations
  closedsource --> Amundsen
  closedsource --> castor
  closedsource --> atlan
```

---

## Analysis

Analysis refers to the process of examining and interpreting data to derive meaningful 
insights, trends, and patterns that can inform decision-making and provide valuable information to an organization. 
It typically involves the use of various tools, techniques, and algorithms to explore and 
extract valuable information from large datasets.

```mermaid
 flowchart LR

  analysis[(Analysis)] 

  opensource[/Open source/] 
  analysis --> opensource

  opensource --> Metabase

  closedsource[/Closed source/] 
  analysis --> closedsource
  closedsource --> Looker
  closedsource --> Tableau
```

