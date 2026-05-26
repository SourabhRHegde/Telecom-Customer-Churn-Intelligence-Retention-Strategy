# SQL Analyst Notes

---

# Concept 1 — COUNT(*)

## What It Does
Counts the total number of rows in a table.

## Example

SELECT COUNT(*)
FROM telco_customer_churn_cleaned;

## Why Analysts Use It
Used to:
- calculate total customers,
- count transactions,
- measure records,
- validate dataset size.

## Business Usage
Helps analysts understand:
- customer base size,
- transaction volume,
- operational scale.

---

# Concept 2 — CASE WHEN

## What It Does
Applies conditional logic inside SQL queries.

Similar to:
- IF statements in Excel,
- conditional formulas in programming.

## Example

CASE 
    WHEN Churn = 'Yes' THEN 1
    ELSE 0
END

## Why Analysts Use It
Used to:
- create conditional calculations,
- segment data,
- calculate KPIs,
- categorize customers.

## Business Usage
Helps analysts:
- count churned customers,
- identify risky customers,
- create customer segments,
- calculate business metrics.

---

# Concept 3 — SUM()

## What It Does
Adds numeric values together.

## Example

SUM(MonthlyCharges)

## Why Analysts Use It
Used to:
- calculate revenue,
- total sales,
- operational costs,
- KPI totals.

## Business Usage
Helps analysts measure:
- financial performance,
- revenue contribution,
- churn revenue loss.

---

# Concept 4 — ROUND()

## What It Does
Rounds decimal values to specific decimal places.

## Example

ROUND(26.5369, 2)

Output:
26.54

## Why Analysts Use It
Used to:
- improve report readability,
- standardize KPI presentation,
- create executive-friendly reports.

## Business Usage
Executives prefer:
26.54%
instead of:
26.53698708%

---

# Concept 5 — GROUP BY

## What It Does
Groups similar rows together for analysis.

## Example

SELECT Contract, COUNT(*)
FROM telco_customer_churn_cleaned
GROUP BY Contract;

## Why Analysts Use It
Used to:
- segment customers,
- calculate KPIs by category,
- compare business groups,
- generate reports.

## Business Usage
Helps analysts answer:
- churn by contract type,
- revenue by customer segment,
- sales by region,
- profit by product category.

## Important Understanding

Without GROUP BY:
SQL gives overall results.

With GROUP BY:
SQL gives segmented business analysis.

## Pivot Table Equivalent

GROUP BY in SQL is similar to:
- Rows section in Pivot Tables.

---

# Concept 6 — WHERE Clause

## What It Does
Filters rows based on conditions.

## Example

SELECT *
FROM telco_customer_churn_cleaned
WHERE Churn = 'Yes';

## Why Analysts Use It
Used to:
- analyze specific customer groups,
- filter business conditions,
- investigate targeted segments,
- create focused reports.

## Business Usage
Helps analysts answer:
- revenue lost from churned customers,
- high-value customer analysis,
- premium customer behavior,
- senior citizen churn analysis.

## Important Understanding

Without WHERE:
SQL analyzes all rows.

With WHERE:
SQL analyzes only filtered rows.

## Pivot Table Equivalent

WHERE in SQL is similar to:
- Filters section in Pivot Tables.

---

# Concept 7 — ORDER BY

## What It Does
Sorts query results.

## Example

SELECT *
FROM telco_customer_churn_cleaned
ORDER BY MonthlyCharges DESC;

## Why Analysts Use It
Used to:
- rank business metrics,
- identify top risks,
- prioritize segments,
- sort reports.

## Business Usage
Helps analysts identify:
- highest churn segments,
- top revenue customers,
- worst-performing categories,
- highest-risk business areas.

## Important Understanding

ASC:
Low → High

DESC:
High → Low

## Pivot Table Equivalent

Similar to:
- sorting Pivot Table values.

---

# Concept 8 — CASE for Dynamic Segmentation

## What It Does
Creates business categories dynamically during query execution.

## Example

CASE
    WHEN MonthlyCharges < 35 THEN 'Low'
    WHEN MonthlyCharges BETWEEN 35 AND 70 THEN 'Medium'
    ELSE 'High'
END

## Why Analysts Use It
Used to:
- create customer segments,
- define pricing tiers,
- build risk categories,
- generate business classifications.

## Business Usage
Helps analysts create:
- low/medium/high customer groups,
- loyalty tiers,
- pricing buckets,
- revenue segments,
- churn-risk categories.

## Important Understanding

CASE can:
- create categories,
- apply conditional logic,
- dynamically transform raw data into business-friendly segments.

## Industry Importance

This is one of the MOST commonly used analyst SQL techniques.

---

# Concept 9 — AND / OR Conditions

## What They Do

AND:
All conditions must be true.

OR:
Any condition can be true.

---

## Example Using AND

SELECT *
FROM telco_customer_churn_cleaned
WHERE Churn = 'Yes'
AND InternetService = 'Fiber optic';

Meaning:
Only churned fiber customers.

---

## Example Using OR

SELECT *
FROM telco_customer_churn_cleaned
WHERE Contract = 'Month-to-month'
OR Contract = 'One year';

Meaning:
Either month-to-month OR one-year customers.

---

## Why Analysts Use Them

Used to:
- filter targeted customer groups,
- investigate business risks,
- identify premium segments,
- analyze specific behaviors.

---

## Business Usage

Helps analysts identify:
- high-risk premium customers,
- churned senior citizens,
- loyal high-value users,
- risky customer combinations.

---

## Important Understanding

AND:
Narrows results.

OR:
Broadens results.

---

# Concept 10 — LIMIT

## What It Does
Restricts the number of rows returned.

## Example

SELECT *
FROM telco_customer_churn_cleaned
LIMIT 10;

## Why Analysts Use It
Used to:
- preview datasets,
- inspect top records,
- investigate highest-risk customers,
- improve query readability.

## Business Usage
Helps analysts identify:
- top churn-risk customers,
- highest revenue customers,
- top-performing segments,
- priority business records.

## Important Understanding

LIMIT is often combined with:
- ORDER BY
to create ranking analysis.

## Query Execution Flow

WHERE → ORDER BY → LIMIT

---

# Concept 11 — HAVING

## What It Does
Filters grouped/aggregated results.

## Example

SELECT Contract, COUNT(*)
FROM telco_customer_churn_cleaned
GROUP BY Contract
HAVING COUNT(*) > 100;

## Why Analysts Use It
Used to:
- filter business segments,
- identify high-risk groups,
- analyze large categories,
- focus on important aggregates.

## Business Usage
Helps analysts identify:
- high churn segments,
- high revenue groups,
- low-performing categories,
- risky business areas.

## Important Understanding

WHERE:
Filters rows before grouping.

HAVING:
Filters groups after aggregation.

## SQL Processing Logic

WHERE → GROUP BY → HAVING → ORDER BY

---

# Concept 12 — AVG()

## What It Does
Calculates average values.

## Example

SELECT AVG(MonthlyCharges)
FROM telco_customer_churn_cleaned;

## Why Analysts Use It
Used to:
- measure customer averages,
- calculate business benchmarks,
- understand typical behavior,
- compare performance.

## Business Usage
Helps analysts measure:
- average revenue,
- average customer tenure,
- average order value,
- average spending behavior.

## Important Understanding

AVG helps businesses understand:
“Typical customer behavior.”

---

# Concept 13 — Subqueries

## What They Do
A query inside another query.

## Example

SELECT *
FROM telco_customer_churn_cleaned
WHERE MonthlyCharges >
(
    SELECT AVG(MonthlyCharges)
    FROM telco_customer_churn_cleaned
);

## Why Analysts Use Them
Used to:
- compare against benchmarks,
- create dynamic filters,
- perform advanced analysis,
- build nested business logic.

## Business Usage
Helps analysts identify:
- above-average customers,
- below-average performers,
- high-value segments,
- unusual business patterns.

## Important Understanding

Subqueries execute first.

Outer query uses subquery result.

## Business Importance

Subqueries help analysts create:
dynamic business comparisons.

---

# Concept 14 — Benchmarking Segments Using Subqueries

## What It Does
Compares segment performance against overall business benchmark.

## Example

HAVING churn_rate >
(
    SELECT overall_company_churn_rate
)

## Why Analysts Use It
Used to:
- identify underperforming segments,
- compare categories against company averages,
- prioritize business risks,
- benchmark performance.

## Business Usage
Helps analysts identify:
- risky customer segments,
- low-performing regions,
- below-average products,
- high-risk business categories.

## Important Understanding

Subqueries can create:
- dynamic business benchmarks
used for:
- advanced comparisons,
- performance evaluation,
- strategic prioritization.

## Industry Importance

Benchmark-based segment analysis is extremely common in:
- KPI reporting,
- executive dashboards,
- business reviews,
- performance analytics.

---

# Concept 15 — Common Table Expressions (CTEs)

## What They Do
Create temporary named query results for easier analysis.

## Example

WITH customer_segments AS
(
    SELECT ...
)

SELECT *
FROM customer_segments;

## Why Analysts Use Them
Used to:
- simplify large queries,
- improve readability,
- reuse business logic,
- organize analysis.

## Business Usage
Helps analysts:
- build modular reports,
- create reusable segments,
- simplify dashboard queries,
- structure advanced analytics.

## Important Understanding

CTEs act like:
temporary logical tables.

## Industry Importance

CTEs are extremely common in:
- modern SQL analytics,
- BI reporting,
- dashboard pipelines,
- data engineering workflows.

---

# Concept 16 — Modular SQL Thinking

## What It Means
Breaking complex analysis into smaller logical steps.

## Why Analysts Use It
Used to:
- simplify large queries,
- improve readability,
- reduce repeated logic,
- improve debugging.

## Business Usage
Helps analysts:
- manage large dashboard queries,
- organize KPI calculations,
- simplify segmentation logic,
- collaborate with teams.

## Important Understanding

CTEs help create:
step-by-step business analysis.

Instead of:
one giant complicated query.

## Industry Importance

Readable SQL is highly valued in:
- analytics teams,
- BI reporting,
- dashboard engineering,
- enterprise data workflows.