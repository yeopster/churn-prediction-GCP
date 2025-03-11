# End-to-End Machine Learning Pipeline on Google Cloud Platform

## Project Overview
This project demonstrates a complete ML pipeline on Google Cloud Platform (GCP) using various services including Vertex AI, BigQuery, Apache Beam, and Looker Studio. The pipeline consists of:

1. Data Ingestion: Pulling data from Kaggle to Google Cloud Storage (GCS) using Vertex AI Colab Enterprise.
2. Data Processing: Using Dataflow Workbench and Apache Beam to transform and load data into BigQuery.
3. SQL Analysis: Running queries in BigQuery for exploratory data analysis.
4. Model Training: Training an ML model in Vertex AI using Jupyter Notebook in Colab Enterprise.
5. Model Deployment: Uploading the trained model to Cloud Storage and deploying it on Vertex AI.
6. Endpoint Creation: Deploying the model as an endpoint for predictions.
7. Visualization: Creating interactive dashboards in Looker Studio.

## Tech Stack

1. Google Cloud Platform (GCP) (Vertex AI, BigQuery, Cloud Storage, Dataflow)
2. Apache Beam for ETL processing
3. Python for scripting and ML model training
4. SQL for data analysis in BigQuery
5. Looker Studio for visualization
6. Jupyter Notebooks (Colab Enterprise) for model training

## Project Structure
```
project-repo/
│── data/
│   ├── kaggle_dataset_download.ipynb   
│── dataflow/
│   ├── apache_beam_pipeline.py         
│   ├── dataflow_runner.py             
│── bigquery/
│   ├── sql_analysis.sql               
│── model_training/
│   ├── model_training.ipynb          
│   ├── model_deployment.py            
│── visualization/
│   ├── looker_studio_dashboard.md     
│── config/
│   ├── gcp_config.yaml                
│── README.md                            
│── requirements.txt                  
│── .gitignore                           
```

## Visualization
Visualization of the project can be view:
https://lookerstudio.google.com/reporting/9ee5bac5-55a7-4ff0-bff3-df71be09580c/page/KI47E
