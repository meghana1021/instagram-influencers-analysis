# Top Instagram Influencers Analysis Project

## Overview
This project analyzes data on the top 200 global Instagram influencers, exploring follower counts, engagement rates, influence scores, posting activity, and country-wise distribution.

## Dataset
- **File:** `top_instagram_influencers_data.csv`
- **Records:** 200 rows
- **Key Columns:** rank, channel_info, influence_score, posts, followers, avg_likes, 60_day_eng_rate, new_post_avg_like, total_likes, country, followers_numeric, avg_likes_numeric, new_post_avg_like_numeric, total_likes_numeric

## Objectives
- Clean and explore influencer data (convert k/m/b suffixed values to numeric)
- Identify top influencers by followers, likes, and influence score
- Analyze engagement rate vs follower count relationships
- Explore country-wise influencer distribution and reach

## Tools & Technologies
- Python (Pandas, Matplotlib, Seaborn)
- Jupyter Notebook
- SQL (MySQL)

## Project Structure
```
├── instagram_influencer_analysis.ipynb       # EDA & visualizations
├── top_instagram_influencers_data.csv        # Raw dataset
├── instagram_influencers_sql_queries.sql     # 10 analytical SQL queries
└── README.md
```

## SQL Queries Included
1. Top 10 influencers by follower count
2. Top 10 influencers by influence score
3. Number of influencers per country
4. Average followers and influence score by country
5. Top 10 influencers by average likes
6. Top 10 influencers by total likes
7. Engagement rate vs follower count (top 10)
8. Average likes per post ratio (top 10)
9. Influencers with highest post counts
10. Country-wise total influence (followers) ranking

## How to Run
1. Open `instagram_influencer_analysis.ipynb` in Jupyter Notebook
2. Run all cells to reproduce the EDA and charts
3. Import `top_instagram_influencers_data.csv` into MySQL as table `instagram_influencers`
4. Run queries from `instagram_influencers_sql_queries.sql`

## Author
Meghana Cheedella
