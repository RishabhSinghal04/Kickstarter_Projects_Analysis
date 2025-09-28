# Kickstarter Projects Analysis

## Table of Contents
- [Introduction](#Introduction)
- [Problem Statement](#Problem-Statement)
- [Project Overview](#Project-Overview)
- [Dataset](#Dataset)
- [Data Cleaning and Preparation](#Data-Cleaning-and-Preparation)
- [Data Model](#Data-Model)
- [Analysis and Visualizations](#Analysis-and-Visualizations)
- [Performance Insights](#Performance-Insights)
- [Tools and Technologies](#Tools-and-Technologies)
- [File Structure](#File-Structure)
- [Getting Started](#Getting-Started)

## Introduction

A comprehensive exploration of Kickstarter Projects dataset, featuring data cleaning, SQL-driven analytics, and interactive Power BI visualizations.

![All Report Pages](images/report_pages.png)


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


## Dataset

Publicly available Kickstarter Projects dataset (2009–2017)
<br>
https://mavenanalytics.io/data-playground?order=date_added%2Cdesc&page=11&pageSize=5


## Data Cleaning and Preparation

- Corrected an incorrect documentary title: Replaced “11-04-2008” with the accurate title “11/4/08”.
- Handled literal placeholder entry: Removed the erroneous “#NAME?” value.
- Removed cancellation tags: Stripped “(Canceled)” from project names where it was appended.
&nbsp;
  ![Issues Log](images/issues_log/issues_log.png)


## Data Model

- Star schema: cleaned_kickstarter_projects fact table joined to a Date dimension table and Time dimension table.
- Marked Dim_Date and Dim_Time for time intelligence.


## Analysis and Visualizations

### **PostgreSQL Queries**:-

  - Success rates by category  
  - Top 50 projects by pledge-to-goal ratio  
  - Average pledge ratios and monthly success trends  
  - Geographic breakdown of total pledges and average backers  
  - Category-level backer rankings  


### **Power BI Report**:-

  - ### Page 1 – Executive Summary  
   
    ![Page 1 – Executive Summary](images/report/executive_summary.png)

    - The top section displays key metrics, including Total Projects, Success Rate, Goal Completion, Median Duration, Average Pledged, Median Backers, and Median Goal.  
    - The left section contains filters for Year and Month.  
    - The middle section includes two charts: a column and line chart for Average Pledged and Success Rate by Category, and a bar chart for Average Goal by Category.  
    - The bottom section features two line charts for Total Projects by Year (2009–2017) and Success Rate by Year (2009–2017), with forecasting for 2018 and 2019.    


  - ### Page 2 – Category Trend Explorer

    ![Page 2 – Category Trend Explorer](images/report/category_trend_explorer.png)

    - Category selection and time filters for Year and Month.  
    - Bar chart showing project counts across categories, and scatter plot with `play button` comparing total funding goals and pledged amounts across categories.  
    - The bottom section features a waterfall chart illustrating annual project counts with color coding for increases, decreases, totals, and “other” variations by category.
  
  - ### Page 3 – Top Performers
    
    ![Page 3 – Top Performers](images/report/top_performers.png)  
    
    - A handful of viral games and design gadgets achieve astronomical goal completion, proving that novelty plus community hype can outstrip even ambitious targets.
    - Projects with modest goals (e.g., Exploding Kittens, Fidget Cube) often unlock the biggest multiples, highlighting the power of viral word‐of‐mouth and collectability.
    - Performance-based categories (Dance, Theater, Comics) lead success rates above 50%, suggesting that backers gravitate toward shareable experiences and narrative‐driven projects.
    - The overall Design success rate masks wide variation across its subdomains—critical insight for creators choosing where to focus their efforts.

  - ### Page 4 – Global Insights

    ![Page 4 – Global Insights](images/report/global_insights.png)

    - Success Rate by Country: Visualized on a world map with green circles indicating various countries. Circle size represents the project success rate.  
    - Average Backers by Country: Displayed as a tree map, with each rectangle representing a country. The size of each rectangle corresponds to the average number of backers.  
    - The left section contains filters for Year and Month.  


## Performance Insights

### Funding Leaders
The **Design category** achieved the highest average pledge at **$24,420.64**, reflecting strong backer confidence in innovative product ideas.  
In contrast, **Crafts projects averaged just $1,632.91**, highlighting the challenge of monetizing smaller-scale creative work.

### Success Rates by Category
**Dance projects recorded the highest success rate at 62.07%**, closely followed by **Theater at 59.88%**.  
By comparison, **Technology projects had the lowest success rate at 19.76%**, underscoring the risks associated with high-cost, complex development.

### Project Goals
**Technology projects set the highest average funding goals ($102,202.38)**, while **Dance projects had the lowest ($9,580.25)**.  
This gap illustrates the ambitious nature of technology ventures versus the leaner requirements of performance-based projects.

### Yearly Trends
In **2015, Kickstarter saw its largest project volume (74,919)**, but this coincided with the **lowest success rate of 27.99%**.  
Conversely, **2011 recorded the highest success rate at 46.39%**, with a more modest **26,236 projects launched**.

### Volume by Category
**Film & Video dominated in project count (62,693 projects)**, while **Dance remained the smallest category (3,767 projects)**.  
This contrast highlights the competitive intensity in Film & Video compared to the niche opportunities in Dance.

### Category Growth & Decline
- From **2013 to 2014**, **Technology grew by 6,455 projects (+253.5%)**, followed by **Food with +4,203 projects (+186.06%)**.  
- From **2015 to 2016**, **Film & Video declined by 2,864 projects (-29.54%)**, with **Technology close behind (-2,676, -27.58%)**.

### Geographic Performance
The **United States achieved the highest success rate (37.35%)**, while **Italy recorded the lowest (15.25%)**.  
This demonstrates significant geographic variation in crowdfunding effectiveness.
  
### Business Value

- **Design and performance-based categories** (Dance, Theater) show the strongest backer engagement, making them reliable for creators.  
- **Technology projects must balance ambition with realistic funding goals** to improve success rates.  
- **Market saturation reduces success rates**: creators should time launches strategically to avoid crowded periods.  
- **Film & Video faces high competition**, requiring standout campaigns, while **niche categories like Dance** offer higher relative success potential.  
- **Rapid growth in Technology and Food** signals opportunity but also backer fatigue; credibility and innovation are key to sustaining momentum.  
- **Geographic disparities** highlight the need for localized strategies—U.S. campaigns thrive, while European markets may require tailored approaches.  


## Tools and Technologies

- Power BI Desktop
- Microsoft Excel 2021
- PostgreSQL


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
2. Open report_kickstarter_projects.pbix in Power BI Desktop (v2.78+).
3. In Power BI Desktop, go to Transform data → Data source settings, and point the Excel data source to data/`cleaned_kickstarter_projects.xlsx` or `cleaned_kickstarter_projects.csv`
4. In the Navigator window, select the `cleaned_kickstarter_projects` (for .xlsx file), then click load.
5. Click refresh to load and apply all preconfigured Power Query transforms.
6. Explore the report.