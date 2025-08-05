# Kickstarter Projects Analysis

A comprehensive exploration of Kickstarter Projects dataset, featuring data cleaning, SQL-driven analytics, and interactive Power BI visualizations.

![All Report Pages](images\report_pages.png)

## Problem Statement

Many creators struggle to understand which project categories, regions, and timing strategies lead to successful crowdfunding projects. Without clear, data-driven insights, project planning relies on guesswork rather than proven performance metrics.


## Project Overview

This project uncovers actionable patterns in over 370,000 Kickstarter listings by:
- Cleaning, standardizing, and enriching raw project records, including multi‐currency normalization and missing‐value handling
- Engineering key features such as project duration, funding ratio, backer acceleration curves, and categorical flags
- Computing overall and segment‐level success rates, goal completion percentages, and median backer counts
- Visualizing time‐based trends in project launches, success rates, and funding volumes across years and months
- Mapping geographic backer engagement to pinpoint high‐performance regions and under-leveraged markets
- Ranking and profiling top projects by goal completion to highlight viral success stories and funding anomalies
- Dissecting category and subcategory dynamics to surface high-impact niches and resource allocation insights
- Analyzing project duration, update cadence, and early momentum as predictors of funding outcomes
- Building an interactive Power BI dashboard with drill-down filters for year, month, category, and country
- Recommending strategic guidance for creators—optimal launch windows, target geographies, and goal‐setting thresholds 


## Data Source

Publicly available Kickstarter Projects dataset (2009–2017)
<br>
https://mavenanalytics.io/data-playground?order=date_added%2Cdesc&page=11&pageSize=5


## Data Cleaning

- Corrected an incorrect documentary title: Replaced “11-04-2008” with the accurate title “11/4/08”.
- Handled literal placeholder entry: Removed the erroneous “#NAME?” value.
- Removed cancellation tags: Stripped “(Canceled)” from project names where it was appended.

    ![Issues Log](images\issues_log\issues_log.png)


## Analysis & Visualizations

### **PostgreSQL Queries**:-

  - Success rates by category  
  - Top 50 projects by pledge-to-goal ratio  
  - Average pledge ratios and monthly success trends  
  - Geographic breakdown of total pledges and average backers  
  - Category-level backer rankings  


### **Power BI Report**:-

  - ### Page 1: Executive Summary
    - This page surfaces the big picture: the platform hosts hundreds of thousands of projects, yet fewer than one in three succeed. 
    - Tech-heavy categories drive the bulk of funding, while creative niches still struggle to meet goals.
    - The mid-decade boom in project volume corresponded with a dip in overall success, hinting at market saturation and backer fatigue.

    ![Page 1: Executive Summary](images\report\executive_summary.png)

  - ### Page 2: Category Trend Explorer
    - Film & Video, Music, and Publishing lead in sheer number of projects, but Art’s meteoric rise reshapes category share post-2013.
    - Steady performers (Publishing, Music) point to enduring niches with loyal communities.
    - “Other” categories fill in minor yearly volumes, showing platform diversification

    ![Page 2: Category Trend Explorer](images\report\category_trend_explorer.png)
  
  - ### Page 3: Table & Matrix
    - A handful of viral games and design gadgets achieve astronomical goal completion, proving that novelty plus community hype can outstrip even ambitious targets.
    - Projects with modest goals (e.g., Exploding Kittens, Fidget Cube) often unlock the biggest multiples, highlighting the power of viral word‐of‐mouth and collectability.
    - Performance-based categories (Dance, Theater, Comics) lead success rates above 50%, suggesting that backers gravitate toward shareable experiences and narrative‐driven projects.
    - The overall Design success rate masks wide variation across its subdomains—critical insight for creators choosing where to focus their efforts.
    
    ![Page 3: Table & Matrix](images\report\table_and_matrix.png)  

  - ### Page 4: Geographical Performance & Backer Engagement
    - Markets with smaller project volumes (e.g., Hong Kong, Singapore) can deliver outsized engagement.
    - Established hubs (France, United States, Austria) still secure well over 100 backers per campaign.
    - Regions like Mexico and Norway show room for growth—targeted marketing and localized incentives could boost backer counts.
    - Overlaying temporal filters (year, month) enables drill-downs into seasonal performance and campaign timing.

    ![Page 4: Map](images\report\map.png)


## File Structure

```
├── data/
│   ├── cleaned_kickstarter_projects.csv
│   ├── cleaned_kickstarter_projects.xlsx
│   └── kickstarter_projects.csv
│   └── kickstarter_projects_data_dictionary.csv
├── images/
│   ├── issues_log/
│   │   └── issues_log.png
│   ├── report/
│   │   ├── executive_summary.png
│   │   ├── category_trend_explorer.png
│   │   ├── table_and_matrix.png
│   │   └── map.png
│   └── report_pages.png
├── report/
│   └── report_kickstarter_projects.pbix
├── sql/
│   └── kickstarter_projects_analysis.sql
│   └── table.sql
└── README.md
```


## Getting Started

1. Clone or download this repository.
2. Open global_superstore_report.pbix in Power BI Desktop (v2.78+).
3. In Power BI Desktop, go to Transform data → Data source settings, and point the Excel data source to data/`cleaned_kickstarter_projects.xlsx` or `cleaned_kickstarter_projects.csv`
4. In the Navigator window, select the `cleaned_kickstarter_projects` (for .xlsx file), then click load.
5. Click refresh to load and apply all preconfigured Power Query transforms.
6. Explore the report:
    - Navigate dashboard pages
    - Use slicers to filter by region, category, time period, etc.
    - Drill through on any chart to see transaction-level details.