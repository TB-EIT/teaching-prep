# Learning Plan

| Topics              | Supplemental Materials                                                                                  | Assignments                                           |
| ------------------- | ------------------------------------------------------------------------------------------------------- | ----------------------------------------------------- |
| General Data Topics | [Supplemental Materials](#general-data-engineering-supplements)                                         | -                                                     |
| Azure Databases     | [YouTube Video](https://www.youtube.com/watch?v=kmmuCapzX8I)                                            | -                                                     |
| Azure Data Lake     | [YouTube Video](https://youtu.be/NHn5GAkvlwg?si=Yte4c2ydnzQNlC6m)                                       | -                                                     |
| Data Factory        | [Supplemental Materials](#data-factory-supplements)                                                     | [Assignment](#1-azure-data-factory)                   |
| Synapse Analytica   | [Supplemental Materials](#synapse-analytics-supplements)                                                | [Assignment](#2-azure-synapse-analytics)              |
| Databricks          | [Supplemental Materials](#databricks-supplements)                                                       | [Assignment](#3-azure-databricks)                     |
| Microsoft Fabric    | TODO                                                                                                    | -                                                     |
| Service Bus         | [YouTube Playlist](https://www.youtube.com/watch?v=QaRzwiBaeGw&list=PLEfjf-ulZPNnfhvAocaHz1DksywZqrr-D) | [Assignment](#4-azure-service-bus)                    |
| Kafka               | [Supplemental Materials](#kafka-supplements)                                                            | -                                                     |
| Event Hub           | [YouTube Video](https://www.youtube.com/watch?v=Dc3P27BsK3E)                                            | -                                                     |
| Stream Analytics    | [YouTube Video](https://youtu.be/1_1zTPuC6CU?si=mJ_JjsEG9XT7UgkJ)                                                                                                    | [Assignment](#5-azure-event-hub-and-stream-analytics) |

## Supplemental Materials

### General Data Engineering Supplements
1. [SQL Tutorial](https://www.w3schools.com/sql/default.asp)
2. [Databases Vs Data Warehouses Vs Data Lakes](https://www.youtube.com/watch?v=FxpRL0m9BcA)
3. [OLAP vs OLTP](https://www.youtube.com/watch?v=iw-5kFzIdgY)
4. [What is a database schema?](https://www.youtube.com/watch?v=3BZz8R7mqu0)
5. [Schemaless Databases](https://redis.io/blog/schemaless-databases/)
6. [Basic Concepts of Entity-Relationship Model](https://www.youtube.com/watch?v=wOD02sezmX8)
7. [Star vs Snowflake Schema](https://www.youtube.com/watch?v=hQvCOBv_-LE)
8. [ETL vs ELT](https://www.youtube.com/watch?v=bv7tlrh32U4)
9. [CSV vs JSON vs Parquet vs Avro vs ORC](https://www.youtube.com/watch?v=rXHFd96Z5Z8)
10. [Delta Lake](https://www.youtube.com/watch?v=3ef985a0Veg)
11. [Data Lakehouse](https://www.youtube.com/watch?v=Ug9xhEq0DEM)
12. [MapReduce](https://www.youtube.com/watch?v=cvhKoniK5Uo)
13. [Apache Spark](https://www.youtube.com/watch?v=tDVPcqGpEnM)
14. [PySpark](https://www.youtube.com/watch?v=cZS5xYYIPzk)
15. [Azure Data Factory vs Synapse vs Databricks](https://www.youtube.com/watch?v=gpz6YTnSSGY)
16. [MLOps](https://www.youtube.com/watch?v=ZVWg18AXXuE)
17. [Medallion Architecture](https://www.youtube.com/watch?v=sigLQluRuzw)
18. [Real-Time Analytics](https://www.youtube.com/watch?v=1pZmafdvsmk)

### Data Factory Supplements
1. [Getting Started](https://youtu.be/sge9qTf8GdY?si=JyCf9RFZZ_dK4NCr)
2. [In-depth Tutorial](https://www.youtube.com/watch?v=cvhKoniK5Uo)

### Synapse Analytics Supplements
1. [Getting Started](https://www.youtube.com/watch?v=vDVcXXfc9e8)
2. [In-depth Tutorial](https://www.youtube.com/watch?v=lLrjaVdBuM0)

### Databricks Supplements
1. [Getting Started](https://www.youtube.com/watch?v=RDuKKT3DGSo)
2. [In-depth Tutorial](https://www.youtube.com/watch?v=XOSuR8g2SfQ&list=PL2IsFZBGM_IGiAvVZWAEKX8gg1ItnxEEb&index=1)

### Kafka Supplements
1. [Quick Conceptual Overview](https://youtu.be/QkdkLdMBuL0?si=Z8a4dNHky8AH0OiA)
2. [Apache Kafka Crash Course With Spring Boot 3.0.x](https://www.youtube.com/watch?v=c7LPlWvxZcQ)

## Assignment

### 1. Azure Data Factory
0. Take screenshots as you proceed. Submit an archive with them after you're done.
1. Provision a sample Azure SQL Database.
   * Under "Compute + storage" setting select Basic Service tier.
   * Under "Additional Settings" select for Data source.
2. Use Azure Portal query editor to examine data in your database.
3. Provision an Azure Data Lake (select a Hierarchical namespace) when creating a storage account.
4. Provision an Azure Data Factory. Launch the Studio.
5. Create an ETL Pipeline to transfer data from your Azure SQL Database to the Data Lake.
   * Create a pipeline.
   * Add a Copy Activity to it.
   * Add an SQL Table (I recommend SalesLT.SalesOrderDetail) as a Source Dataset (from a new Linked Azure SQL service)
   * Add a CSV file as a Sink Dataset (from a new Linked Data Lake service)
   * Configure data mapping to transfer all the data.
   * Validate your new pipline. Run it in a Debug mode.
   * Attach a scheduled trigger to run the pipeline every midnight.
6. (Bonus) Add a Data Flow activity to your pipeline.
   * Join a SalesLT.SalesOrderDetail.csv Dataset file you created earlier...
   * ... with SalesLT.SalesOrderHeader SQL Table.
   * Sink the joined data into Cosmos DB NoSQL database.
7. Clean up your resources (consider keeping your Data Lake for the Synapse and Databricks assignment).

### 2. Azure Synapse Analytics
0. Take screenshots as you proceed. Submit an archive with them after you're done.
1. Provision a Synapse Analytics Workspace
2. From Synapse Analytics connect to the data stored in your Data Lake (DL) Storage.
   * Create an External File Format (for your CSV file)
   * Create an External Data Source pointing to your CSV file in your DL
   * Create an External SQL Table using the above File Format and Data Source
3. Run some analytical SQL queries against your data (below are some examples)
   * Calculate total number of orders placed for each day (you probably only have one day worth of data)
   * Calculate total number of unique products sold for each day
   * Calculate the total revenue per each order for each day
   * Calculate the total revenue per each product for each day
4. Clean up your resources (consider keeping your DL for the Databricks assignment).

### 3. Azure Databricks
TODO

### 4. Azure Service Bus
TODO

### 5. Azure Event Hub and Stream Analytics
TODO
