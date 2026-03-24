📊 SaaS Product Analytics: Subscription, Churn & Revenue Insights
________________________________________
🧾 Project Overview
This project presents an end-to-end SaaS analytics solution designed to analyze subscription performance, customer churn, product usage, and customer experience.
The solution integrates:
-	SQL (MySQL) → Data cleaning, transformation, and staging 
-	Power BI → Data modeling, DAX, and interactive dashboards 
The goal is to transform raw data into actionable business insights through a structured analytics pipeline.
________________________________________
🧠 Business Problem
SaaS businesses often struggle with:
-	📉 High customer churn without clear root causes 
-	💰 Limited visibility into revenue performance (MRR/ARR) 
-	📊 Lack of insight into product usage and feature adoption 
-	🎧 Inefficient tracking of customer support and satisfaction 
________________________________________
🎯 Project Objectives
-	Analyze revenue trends and subscription performance 
-	Identify churn drivers and high-risk segments 
-	Evaluate feature usage and engagement patterns 
-	Measure customer satisfaction and support efficiency 
-	Build a scalable and optimized data model 
________________________________________
🏗️ Data Architecture
Kaggle Raw Data
        ↓
MySQL (SQL Views & Transformations)
        ↓
Power Query (Data Cleaning & Shaping)
        ↓
Star Schema Data Model
        ↓
DAX Measures
        ↓
Power BI Dashboards
________________________________________
🗂️ Dataset Description
The dataset includes the following tables:
-	accounts → Customer details 
-	subscriptions → Subscription lifecycle and revenue 
-	feature_usage → Product usage metrics 
-	churn_events → Churn-related information 
-	support_tickets → Customer support interactions 
________________________________________
🧮 SQL Layer (Data Transformation & Staging)
SQL was used extensively to create a structured staging layer before loading data into Power BI.
________________________________________
🔹 Key SQL Work
-	Data cleaning using COALESCE, TRIM 
-	Handling missing values 
-	Creating reusable SQL views 
-	Performing joins across multiple tables 
-	Aggregating support metrics 
________________________________________
📸 SQL Queries & Views
 
 
 


________________________________________
🧠 Data Modeling (Star Schema)
A star schema model was implemented to ensure performance and scalability.
________________________________________
🟥 Fact Tables
-	fact_subscriptions → Revenue, churn, support metrics 
-	fact_usage → Feature usage and errors 
________________________________________
🟦 Dimension Tables
-	dim_account 
-	dim_plan 
-	dim_feature 
-	dim_date (custom date table created for time intelligence) 
________________________________________
📅 Date Table (Important Design)
A dedicated Date Dimension (dim_date) was created to:
-	Enable time-based analysis (monthly trends, yearly comparisons) 
-	Support multiple date relationships (e.g., subscription date, churn date) 
-	Improve DAX calculations using time intelligence 
👉 An inactive relationship was used for churn_date and activated via DAX when needed.
________________________________________
📸 Data Model (Power BI Model View)
 

________________________________________
🔄 Power Query (Data Transformation)
Power Query was used for:
-	Cleaning and renaming columns 
-	Handling NULL values 
-	Creating derived columns (e.g., Active Subscription) 
-	Formatting data types 
________________________________________
📸 Power Query Steps
 
 


________________________________________
📊 DAX Measures (Business Logic)
Key metrics were created using DAX:
________________________________________
💰 Revenue Metrics
-	MRR (Monthly Recurring Revenue) 
-	Active MRR 
________________________________________
📉 Churn Metrics
-	Churn Count 
-	Churn Rate (%) 
________________________________________
📈 Product Usage Metrics
-	Total Usage 
-	Error Rate 
________________________________________
😊 Customer Experience Metrics
-	Average Satisfaction Score 
-	Escalation Rate 
________________________________________
📸 DAX Measures Panel
 
________________________________________
📊 Dashboards & Insights
________________________________________
🟥 Dashboard 1: Revenue & Growth
Purpose:
Analyze revenue performance and customer growth
Key Insights:
-	MRR trends over time 
-	Revenue distribution by plan 
 
________________________________________
🟨 Dashboard 2: Churn Analysis
Purpose:
Understand why customers churn
Key Insights:
-	Churn trends 
-	Churn by industry and plan 
-	Top churn reasons 
 
________________________________________
🟦 Dashboard 3: Product Usage
Purpose:
Analyze feature usage and engagement
Key Insights:
-	Most-used features 
-	Feature-level error rates 
-	Usage trends over time 
 ________________________________________
🟪 Dashboard 4: Support & Customer Experience
Purpose:
Evaluate customer satisfaction and support performance
Key Insights:
-	Satisfaction distribution 
-	Resolution time trends 
-	Escalation impact on satisfaction 
 ________________________________________
👥 Stakeholders & Usage

| Stakeholder        | Use Case                                  |
|------------------|--------------------------------------------|
| Product Managers | Feature performance & usage insights       |
| Finance Teams    | Revenue tracking (MRR/ARR)                 |
| Customer Success | Churn analysis & retention                |
| Support Teams    | Ticket performance & satisfaction          |
| Leadership       | Overall business health                   |

🧠 Key Learnings
-	Built an end-to-end analytics pipeline 
-	Applied SQL for real-world data transformation 
-	Designed an efficient star schema model 
-	Developed business-driven KPIs using DAX 
-	Created interactive dashboards for decision-making 
________________________________________
🚀 Tools & Technologies
-	MySQL → Data transformation 
-	Power BI → Data modeling & visualization 
-	DAX → Business calculations 
-	Kaggle → Data source 
________________________________________
📌 Future Enhancements
-	Predictive churn modeling 
-	Cohort analysis 
-	Customer Lifetime Value (CLV) 
-	Real-time data integration 
________________________________________
🏁 Conclusion
This project demonstrates the ability to:
-	Work with raw data and transform it into insights 
-	Combine SQL and Power BI effectively 
-	Build scalable and business-focused analytics solutions

