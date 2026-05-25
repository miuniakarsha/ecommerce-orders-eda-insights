\# E-Commerce Orders Exploratory Data Analysis  

\## Sales, Product, Channel, Risk \& Outlier Insights



\## Project Overview



This project is part of DecodeLabs Data Analytics Project 2.



The main goal of this project is to perform Exploratory Data Analysis (EDA) on an e-commerce retail orders dataset and discover meaningful business insights.



The dataset was already cleaned and verified before this project. Therefore, this project focuses on answering the main EDA question:



> What patterns, trends, outliers, relationships, and business insights can be discovered from the data?



\---



\## Business Problem



An e-commerce business wants to understand how its orders, products, payment methods, coupon usage, referral sources, and order statuses behave.



This project analyzes the dataset to identify:



\- Sales trends over time

\- Product performance

\- Customer payment behavior

\- Coupon usage impact

\- Referral source performance

\- Cancelled and returned order risk

\- High-value outlier orders

\- Relationships between numerical variables



\---



\## Dataset Description



The dataset contains retail order records with information about customers, products, orders, payment methods, coupons, referral sources, and order statuses.



\### Main Columns



| Column | Description |

|---|---|

| OrderID | Unique order identifier |

| Date | Order date |

| CustomerID | Unique customer identifier |

| Product | Product purchased |

| Quantity | Number of units purchased |

| UnitPrice | Price per unit |

| ShippingAddress | Customer shipping address |

| PaymentMethod | Customer payment method |

| OrderStatus | Current order status |

| TrackingNumber | Tracking number of the order |

| ItemsInCart | Number of items in customer cart |

| CouponCode | Coupon code used |

| ReferralSource | Source that referred the customer |

| TotalPrice | Total order value |



\---



\## Tools Used



\- Python

\- Pandas

\- NumPy

\- Matplotlib

\- SQLite

\- SQL

\- Power BI

\- Jupyter Notebook

\- GitHub



\---



\## Project Workflow



1\. Project setup

2\. Data understanding and verification

3\. Descriptive statistics

4\. Distribution analysis

5\. Outlier detection using IQR and Z-score

6\. Trend analysis

7\. Correlation analysis

8\. Product analysis

9\. Payment method analysis

10\. Coupon usage analysis

11\. Referral source analysis

12\. Order status and risk analysis

13\. SQL business analysis

14\. Power BI EDA dashboard

15\. Business insights and recommendations



\---



\## Repository Structure



```text

ecommerce-orders-eda-insights/

│

├── data/

│   ├── raw/

│   ├── processed/

│   └── database/

│

├── notebooks/

│   ├── 01\_project2\_data\_verification.ipynb

│   ├── 02\_descriptive\_statistics.ipynb

│   ├── 03\_distribution\_and\_outlier\_analysis.ipynb

│   ├── 04\_trend\_and\_correlation\_analysis.ipynb

│   ├── 05\_business\_insights\_summary.ipynb

│   └── 06\_sql\_analysis.ipynb

│

├── sql/

│   ├── 02\_eda\_business\_queries.sql

│   └── 03\_sql\_insights\_summary.md

│

├── powerbi/

│   └── ecommerce\_orders\_eda\_dashboard.pbix

│

├── reports/

│   ├── figures/

│   └── summary CSV files

│

├── assets/

│   └── dashboard screenshots

│

├── README.md

├── requirements.txt

├── .gitignore

└── LICENSE

```



\---



\## Key Business KPIs



| Metric | Value |

|---|---:|

| Total Orders | 1,200 |

| Total Customers | 1,189 |

| Total Revenue | 1,264,761.96 |

| Average Order Value | 1,053.97 |

| Risk Orders | 497 |

| Normal Orders | 703 |

| High-Value Outlier Orders | 8 |



\---



\## Descriptive Statistics



Descriptive statistics were calculated for the main numerical columns:



\- Quantity

\- UnitPrice

\- ItemsInCart

\- TotalPrice



The analysis included:



\- Count

\- Mean

\- Median

\- Minimum

\- Maximum

\- Standard deviation

\- Q1

\- Q3

\- IQR



This helped understand the normal behavior of order quantities, product prices, cart sizes, and order values before deeper EDA.



\---



\## Distribution and Outlier Analysis



Distribution analysis was completed using histograms and boxplots.



Outlier detection was performed using:



\- IQR method

\- Z-score method



\### Key Finding



The IQR method detected \*\*8 high-value TotalPrice outliers\*\*.



These outliers were not removed because they were likely valid high-value orders.



They were treated as business signals instead of data errors.



\---



\## Trend Analysis



Monthly revenue, monthly order volume, and monthly average order value were analyzed.



\### Key Findings



| Finding | Value |

|---|---:|

| Highest Revenue Month | 2024-06 |

| Highest Monthly Revenue | 68,068.54 |

| Orders in Highest Revenue Month | 53 |

| AOV in Highest Revenue Month | 1,284.31 |

| Lowest Revenue Month | 2023-04 |

| Lowest Monthly Revenue | 27,751.71 |

| Orders in Lowest Revenue Month | 31 |

| AOV in Lowest Revenue Month | 895.22 |



\### Business Meaning



Revenue changes were influenced by both order volume and average order value.



This means revenue growth is not only about increasing the number of orders. It is also about increasing how much customers spend per order.



\---



\## Correlation Analysis



Correlation analysis was used to understand relationships between numerical variables.



\### Key Correlations



| Variables | Correlation |

|---|---:|

| UnitPrice vs TotalPrice | 0.72 |

| Quantity vs ItemsInCart | 0.65 |

| Quantity vs TotalPrice | 0.62 |

| ItemsInCart vs TotalPrice | 0.39 |

| Quantity vs UnitPrice | 0.01 |

| UnitPrice vs ItemsInCart | 0.00 |



\### Business Meaning



UnitPrice had the strongest relationship with TotalPrice.



This suggests that higher-priced products are strongly connected with higher order values.



Quantity also had a strong relationship with TotalPrice, meaning customers who buy more units usually generate higher-value orders.



\---



\## Product Analysis



Product performance was analyzed based on revenue, order count, quantity sold, and average order value.



\### Key Finding



The top product by revenue was:



> Chair — 195,620.11



Chair, Printer, and Laptop were among the strongest revenue-generating products.



\---



\## Payment Method Analysis



Payment methods were analyzed based on total revenue, total orders, and average order value.



\### Key Finding



The top payment method by revenue was:



> Credit Card — 263,847.63



This indicates that credit card payments generated the highest total revenue in the dataset.



\---



\## Coupon Usage Analysis



Coupon users and non-coupon users were compared using total orders, total revenue, and average order value.



\### Key Findings



| Group | Average Order Value |

|---|---:|

| Coupon Used | 1,057.64 |

| No Coupon | 1,043.37 |



\### Business Meaning



Coupon users had a slightly higher average order value than non-coupon users.



However, the difference was small, so coupon strategy should be reviewed carefully before assuming that coupons strongly increase spending.



\---



\## Referral Source Analysis



Referral sources were analyzed to understand which channels bring the most revenue and orders.



\### Key Finding



The top referral source by revenue was:



> Instagram — 275,285.45



This suggests that Instagram was the strongest revenue-generating referral source in the dataset.



\---



\## Order Status and Risk Analysis



Cancelled and returned orders were grouped as \*\*Risk Orders\*\*.



Delivered, shipped, and pending orders were grouped as \*\*Normal Orders\*\*.



\### Key Findings



| Metric | Value |

|---|---:|

| Risk Orders | 497 |

| Normal Orders | 703 |

| Highest Risk Product | Monitor |

| Monitor Risk Rate | 43.56% |

| Highest Risk Payment Method | Gift Card |

| Gift Card Risk Rate | 44.35% |



\### Business Meaning



Cancelled and returned orders represent a business risk because they may reduce actual revenue and customer satisfaction.



Monitor had the highest product risk rate, and Gift Card had the highest payment method risk rate.



These areas may need deeper investigation.



\---



\## SQL Analysis



SQLite was used to answer business-focused EDA questions.



SQL queries were created for:



\- Total business overview

\- Revenue by product

\- Monthly revenue trend

\- Payment method analysis

\- Coupon vs no coupon analysis

\- Referral source performance

\- Order status analysis

\- Risk orders by product

\- Risk orders by payment method

\- High-value outlier orders



SQL confirmed and supported the findings from Python EDA.



\---



\## Power BI Dashboard



A Power BI dashboard was created to communicate the EDA findings visually.



\### Dashboard Pages



1\. Executive Overview

2\. Product \& Sales Analysis

3\. Coupon, Referral \& Payment Insights

4\. Risk, Outliers \& EDA Findings



\### Dashboard Preview



\#### Executive Overview



!\[Executive Overview](assets/dashboard\_executive\_overview.png)



\#### Product \& Sales Analysis



!\[Product and Sales Analysis](assets/dashboard\_product\_sales.png)



\#### Coupon, Referral \& Payment Insights



!\[Coupon Referral Payment Insights](assets/dashboard\_coupon\_referral\_payment.png)



\#### Risk, Outliers \& EDA Findings



!\[Risk Outliers EDA Findings](assets/dashboard\_risk\_outliers.png)



\---



\## Business Recommendations



Based on the EDA findings:



1\. Focus more on high-revenue products such as Chair, Printer, and Laptop.

2\. Investigate Monitor orders because Monitor had the highest risk order rate.

3\. Review Gift Card payment orders because they had the highest payment risk rate.

4\. Continue analyzing Instagram campaigns because Instagram generated the highest referral revenue.

5\. Review coupon strategy because coupon users only showed a small increase in average order value.

6\. Treat high-value outlier orders as important business opportunities instead of removing them as errors.

7\. Monitor cancelled and returned orders because they represent a large portion of total orders.



\---



\## Final Conclusion



This project shows how Exploratory Data Analysis can turn a retail orders dataset into meaningful business insights.



The final output includes Python analysis, SQL queries, a Power BI dashboard, and business recommendations.



This project is suitable for GitHub, LinkedIn, recruiter review, and portfolio presentation.

