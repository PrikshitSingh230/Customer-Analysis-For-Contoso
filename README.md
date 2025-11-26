# Customer-Analysis-For-Contoso

# Intermediate SQL – Sales Analysis

## Overview  
This report looks at customer spending, retention, and lifetime value. The aim is to understand how customers behave over time and find simple ways to improve revenue and keep them active.

## Clean Up Data ✨

**SQL Code:**[View.sql](Optimized_View.sql)

- Combined sales and customer details  
- Calculated first purchase dates for cohort analysis  
- Built a clean view for easier reporting  

---

## Analysis

### 1. Customer Segmentation 🔍

**SQL File:** `1_customer_segmentation.sql`

- Grouped customers into High, Mid, and Low value  
- Calculated lifetime value (LTV)  
- Summarized revenue contribution  

**Visualization:**  
<img src="../Resources/images/6.3_customer_segementation.png" width="50%">

#### Key Findings  
- High-value customers (25%) make 66% of total revenue.  
- Mid-value customers (50%) make 32%.  
- Low-value customers (25%) make only 2%.  

#### Insights 💡  
- Give high-value customers early access, faster support, or special perks.  
- Offer mid-value customers bundle deals or targeted discounts.  
- Encourage low-value customers with simple promo codes or loyalty points.  
- **New:** Track month-to-month activity for each segment to catch early drop-off.

---

### 2. Customer Revenue by Cohort 📅

**SQL File:** `2_cohort_analysis.sql`

- Grouped customers by first purchase year  
- Measured revenue and customer counts per cohort  
- Compared long-term trends  

**Visualizations:**  
<img src="../Resources/images/5.2_customer_revenue_normalized.png" width="50%">  
<img src="../Resources/images/5.2_monthly_revenue_customers_3mo.png" width="50%">

#### Key Findings  
- Older cohorts (2016–2018) spent around $2,800+, while the 2024 cohort spent ~$1,970.  
- Revenue and customers peaked in 2022–2023.  
- 2024 shows a clear downward trend in both spending and customers.  

#### Insights 📎  
- Re-engage newer cohorts (2022–2024) before they churn.  
- Use loyalty or subscription programs to reduce revenue swings.  
- Apply winning strategies from older high-spending cohorts to new ones.  
- **New:** Watch monthly dips closely to plan marketing around slow periods.

---

### 3. Customer Retention 🔁

**SQL File:** `3_retention_analysis.sql`

- Identified inactive and at-risk customers  
- Analyzed last purchase dates  
- Measured retention across cohorts  

**Visualization:**  
<img src="../Resources/images/7.3_customer_churn_cohort_year.png" width="50%">

#### Key Findings  
- After 2–3 years, cohorts settle at ~90% churn.  
- Only 8–10% of customers stay active long-term.  
- Newer cohorts follow the same pattern.  

#### Insights 🧭  
- Improve early customer experience to keep them engaged in year 1.  
- Focus win-back campaigns on high-value churned customers.  
- Use early signals (no purchases in 60–90 days) to alert the team.  
- **New:** Send small rewards after the first order to push customers toward their second purchase quickly.

---

## Strategic Recommendations 🚀

### 1. Customer Value Optimization
- Build a simple VIP program for top customers.  
- Give mid-value customers personalized upgrade deals.  
- Use price-friendly offers for low-value customers.  
- Add automated reminders based on past buying patterns.  

### 2. Cohort Performance Strategy
- Re-engage 2022–2024 cohorts with targeted offers.  
- Use loyalty/subscription options to reduce revenue drops.  
- Copy best tactics from older strong cohorts.  
- Track seasonal changes and time campaigns better.  

### 3. Retention & Churn Prevention
- Strengthen engagement in the first 1–2 years.  
- Run win-back campaigns for valuable inactive users.  
- Set up alerts for at-risk customers.  
- Give small early rewards to build repeat habits.  

---

## Technical Details 🛠️
- **Database:** PostgreSQL  
- **Tools Used:** PostgreSQL, DBeaver  
