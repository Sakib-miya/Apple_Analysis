# 🍏 Apple Sales Analytics

![Apple Banner](https://upload.wikimedia.org/wikipedia/commons/f/fa/Apple_logo_black.svg)

## 📊 Project Overview

This project analyzes half a million rows of Apple product sales data across global regions. It uses **advanced SQL queries** to extract deep business insights related to:

- Sales performance by product, country, and region
- Revenue trends over time
- Product line comparisons (iPhone, iPad, MacBook, etc.)
- Customer behavior and high-value segmentation

The goal is to showcase **real-world analytical thinking** using structured data — ideal for portfolios targeting data analyst or business intelligence roles.

---

## 🧠 Why This Project?

Apple Inc. is a global tech leader. Understanding how to analyze its sales data gives you:
- Realistic business use cases
- Hands-on experience with SQL aggregation, window functions, date/time operations, and KPIs
- Portfolio material that impresses recruiters

---

## 📁 Dataset

- **Name:** `apple_sales_analytics.csv`  
- **Rows:** 500,000+  
- **Fields include:**
  - `Product`, `Product_Line`, `Sales_Units`, `Price`, `Revenue`
  - `Country`, `Region`, `Release_Year`
  - `Customer_ID`

> 📥 You can download the dataset [here](./apple_sales_analytics.csv) or generate it using Faker and Pandas (as done in this repo).

---

## ✅ Key Questions Solved (Highlights)

| # | Question | SQL Skill |
|---|----------|-----------|
| 1 | Which products generate the most revenue? | GROUP BY + SUM |
| 2 | What’s the sales trend year-over-year? | Time-series |
| 3 | Who are our top customers? | Aggregation + LIMIT |
| 4 | How do prices vary by product line? | AVG + ROUND |
| 5 | What’s the most popular product in each region? | Window Function (RANK) |

> Full list of 15 queries available in [`Apple Sales Queries`](./Apple%20Sales%20Queries.sql)

---

## 💻 How to Use

1. Import the CSV into **MySQL**, **PostgreSQL**, or any SQL tool.
2. Run the queries in `Apple Sales Queries.sql`.
3. Explore insights or build dashboards using the results.

---

## 📸 Sample Visualization Ideas

- Bar chart of revenue by product
- Line graph of yearly sales trend
- Map of country-wise revenue
- Pie chart of revenue share by product line

> *(Not included in this repo — but perfect for Tableau or Power BI)*

---

## 🧠 Skills Demonstrated

- SQL Aggregations (SUM, COUNT, AVG)
- Window Functions (RANK, OVER)
- Time-based Analysis (Release_Year)
- Data Cleaning and Generation
- Storytelling with Data

---

## 📌 About the Author

I'm a data enthusiast building a strong portfolio for data roles.  
This project was built to simulate **real-world analytics at Apple scale.**

---

## 📎 License

This project is open for learning and portfolio use. You’re free to reuse the code or dataset with credit.

