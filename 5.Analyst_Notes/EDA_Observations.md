# Exploratory Data Analysis Observations

---

# KPI 1 — Overall Customer Churn Rate

## Business Question
What is the overall customer churn rate?

---

## Observation

| Metric | Value |
|---|---|
| Total Customers | 7043 |
| Churned Customers | 1869 |
| Churn Rate | 26.54% |

---

## Business Interpretation

The telecom company is experiencing a churn rate of 26.54%, meaning that more than one out of every four customers has discontinued services.

This indicates a significant customer retention problem and suggests that a large portion of customers may be dissatisfied with pricing, services, support experience, or contract flexibility.

The churn rate is high enough to require detailed investigation into customer segments, service types, contract structures, and billing behavior.

---

## Possible Business Impact

A high churn rate can negatively impact the business in several ways:

- Reduction in recurring monthly revenue
- Increased customer acquisition costs
- Lower customer lifetime value
- Reduced profitability
- Higher pressure on marketing and sales teams to acquire replacement customers

If churn continues at this level, the company may struggle to maintain stable revenue growth and long-term customer loyalty.

---

## Initial Analyst Hypotheses

Possible reasons contributing to churn may include:

- Month-to-month contract customers leaving frequently
- High monthly charges causing dissatisfaction
- Lack of customer support services
- Poor retention strategies for new customers
- Competitive telecom pricing in the market

Further analysis is required to validate these hypotheses.

---

# KPI 2 — Churn by Contract Type

## Business Question
Which contract type has the highest churn rate?

---

## Observation

| Contract Type | Total Customers | Churned Customers | Churn Rate |
|---|---|---|---|
| Month-to-month | 3875 | 1655 | 42.71% |
| One year | 1473 | 166 | 11.27% |
| Two year | 1695 | 48 | 2.83% |

---

## Business Interpretation

Customers with month-to-month contracts show an extremely high churn rate of 42.71%, significantly higher than customers with one-year or two-year contracts.

This indicates that customers without long-term contractual commitment are far more likely to discontinue telecom services.

In contrast, customers with long-term contracts demonstrate significantly stronger retention behavior, especially two-year contract customers whose churn rate is only 2.83%.

The analysis strongly suggests that contract duration plays a major role in customer loyalty and retention stability.

---

## Possible Business Impact

A high churn rate among month-to-month customers can create major business challenges:

- Unstable recurring revenue
- Higher customer acquisition costs
- Increased pressure on sales and marketing teams
- Difficulty forecasting long-term revenue
- Reduced customer lifetime value

Long-term contracts appear to improve revenue predictability and customer retention significantly.

---

## Initial Analyst Hypotheses

Possible reasons for high churn among month-to-month customers may include:

- Lower customer commitment
- Easier cancellation process
- Price sensitivity
- Better competitor offers
- Lack of retention incentives for short-term subscribers

Further analysis is required to identify the exact drivers contributing to churn.

---

# KPI 3 — Churn by Monthly Charge Segment

## Business Question
Does higher monthly charge increase churn?

---

## Observation

| Charge Bucket | Total Customers | Churned Customers | Churn Rate |
|---|---|---|---|
| High | 3583 | 1267 | 35.36% |
| Medium | 1725 | 413 | 23.94% |
| Low | 1735 | 189 | 10.89% |

---

## Business Interpretation

Customers in the high monthly charge segment show the highest churn rate at 35.36%, while customers in the low charge segment show the lowest churn rate at 10.89%.

This suggests a strong relationship between higher monthly pricing and increased customer churn.

The analysis indicates that customers paying higher monthly charges may have higher service expectations, increased price sensitivity, or may perceive lower value compared to the cost of services received.

The consistent increase in churn across pricing segments suggests that pricing strategy may play a significant role in customer retention behavior.

---

## Possible Business Impact

High churn among high-paying customers can create serious business challenges because these customers contribute significantly to recurring revenue.

Potential impacts include:

- Loss of high-value customers
- Reduction in recurring monthly revenue
- Lower customer lifetime value
- Increased acquisition costs to replace premium customers
- Reduced profitability from premium services

If premium customers continue to churn at higher rates, long-term revenue growth and service profitability may be negatively affected.

---

## Initial Analyst Hypotheses

Possible reasons contributing to higher churn among high-paying customers may include:

- Customers perceiving services as overpriced
- Premium customers expecting better support quality
- Competitor telecom providers offering better pricing
- Dissatisfaction with premium internet services
- Lack of bundled loyalty or retention offers

Further analysis is required to determine whether pricing alone is causing churn or whether service-related factors are also contributing.

---

# KPI 4 — Churn by Internet Service Type

## Business Question
Which internet service type has the highest churn rate?

---

## Observation

| Internet Service | Total Customers | Churned Customers | Churn Rate |
|---|---|---|---|
| DSL | 2421 | 459 | 18.96% |
| Fiber optic | 3096 | 1297 | 41.89% |
| No Internet Service | 1526 | 113 | 7.40% |

---

## Business Interpretation

Fiber optic customers show an extremely high churn rate of 41.89%, significantly higher than DSL customers and customers without internet service.

This indicates that premium internet customers are much more likely to discontinue telecom services.

Since fiber optic services are generally associated with higher pricing and higher customer expectations, the analysis suggests that pricing, service quality, customer experience, or competitive market pressure may be contributing to customer dissatisfaction.

The low churn rate among customers without internet service suggests that internet-related services are a major driver of churn behavior within the telecom business.

---

## Possible Business Impact

High churn among fiber optic customers can create major business risks because these customers are typically high-value revenue contributors.

Potential impacts include:

- Significant recurring revenue loss
- Reduced profitability from premium internet services
- Increased pressure on customer acquisition efforts
- Loss of competitive advantage in broadband services
- Reduced customer lifetime value

If premium internet customers continue to churn at this rate, the company may struggle to maintain long-term growth in its high-value service segments.

---

## Initial Analyst Hypotheses

Possible reasons contributing to high fiber optic churn may include:

- Premium customers expecting better service quality
- Higher pricing dissatisfaction
- Network reliability or performance issues
- Strong competition from other internet providers
- Inadequate customer support for premium customers
- Better bundled offers from competitors

Further investigation is required to determine whether pricing, service quality, or customer support issues are the primary drivers of churn among fiber optic customers.

---

# KPI 5 — Churn by Tech Support Service

## Business Question
Does tech support reduce churn?

---

## Observation

| Tech Support Status | Total Customers | Churned Customers | Churn Rate |
|---|---|---|---|
| No | 3473 | 1446 | 41.64% |
| Yes | 2044 | 310 | 15.17% |
| No Internet Service | 1526 | 113 | 7.40% |

---

## Business Interpretation

Customers without tech support services show a significantly high churn rate of 41.64%, while customers with tech support show a much lower churn rate of 15.17%.

This suggests that technical support services may play an important role in improving customer satisfaction and retention.

The analysis indicates that customers receiving technical assistance are more likely to remain with the telecom company, potentially because technical issues are resolved more effectively and customer experience improves.

Customers without internet service show the lowest churn rate, further suggesting that internet-related service experience may strongly influence churn behavior.

---

## Possible Business Impact

High churn among customers without technical support may negatively affect the business through:

- Increased customer dissatisfaction
- Higher customer attrition
- Revenue loss from internet-service users
- Increased pressure on customer acquisition teams
- Lower customer lifetime value

Improving customer support accessibility and service quality may help reduce churn and improve long-term customer loyalty.

---

## Initial Analyst Hypotheses

Possible reasons contributing to higher churn among customers without tech support may include:

- Unresolved technical issues
- Poor service experience
- Lack of customer assistance
- Premium customers expecting faster support
- Customers not subscribing to support plans
- Dissatisfaction with internet-related services

Further investigation is required to determine whether technical support directly improves customer retention or whether additional factors also influence churn behavior.

---

# KPI 6 — Churn by Payment Method

## Business Question
Which payment method has the highest churn rate?

---

## Observation

| Payment Method | Total Customers | Churned Customers | Churn Rate |
|---|---|---|---|
| Electronic check | 2365 | 1071 | 45.29% |
| Mailed check | 1612 | 308 | 19.11% |
| Bank transfer (automatic) | 1544 | 258 | 16.71% |
| Credit card (automatic) | 1522 | 232 | 15.24% |

---

## Business Interpretation

Customers using electronic check payment methods show an extremely high churn rate of 45.29%, significantly higher than customers using automatic payment methods.

In contrast, customers using automatic payment methods such as credit card and bank transfer demonstrate much lower churn behavior.

This suggests that payment convenience, billing automation, and customer commitment may strongly influence customer retention.

The analysis indicates that customers enrolled in automatic payment systems may have stronger long-term engagement with telecom services, while customers using manual payment methods may demonstrate lower commitment and higher switching behavior.

---

## Possible Business Impact

High churn among electronic check users may negatively affect the business through:

- Increased recurring revenue instability
- Higher customer acquisition costs
- Increased billing management complexity
- Lower customer lifetime value
- Reduced retention efficiency

Encouraging automatic payment adoption may improve customer retention and create more stable recurring revenue streams.

---

## Initial Analyst Hypotheses

Possible reasons contributing to higher churn among electronic check users may include:

- Lower customer commitment
- Manual billing inconvenience
- Price-sensitive customer behavior
- Month-to-month subscription patterns
- Less engagement with automated services
- Higher likelihood of switching providers

Further analysis is required to determine whether payment behavior directly influences churn or whether it reflects broader customer retention patterns.

---

# KPI 7 — Churn by Senior Citizen Status

## Business Question
Are senior citizens more likely to churn?

---

## Observation

| Customer Group | Total Customers | Churned Customers | Churn Rate |
|---|---|---|---|
| Non-Senior Customers | 5901 | 1393 | 23.61% |
| Senior Citizens | 1142 | 476 | 41.68% |

---

## Business Interpretation

Senior citizens show a significantly higher churn rate of 41.68% compared to non-senior customers at 23.61%.

This suggests that senior customers may face greater dissatisfaction, affordability concerns, service complexity challenges, or support accessibility issues within telecom services.

The analysis indicates that demographic characteristics may strongly influence customer retention behavior and that senior citizens may require more targeted customer engagement and support strategies.

---

## Possible Business Impact

High churn among senior citizens may negatively affect the business through:

- Reduced long-term customer retention
- Lower customer satisfaction among older demographics
- Increased customer acquisition costs
- Reduced customer lifetime value
- Negative customer experience perception in vulnerable customer groups

Failure to address the needs of senior customers may weaken customer loyalty and reduce market competitiveness among older demographic segments.

---

## Initial Analyst Hypotheses

Possible reasons contributing to higher churn among senior citizens may include:

- Pricing sensitivity
- Difficulty understanding telecom plans
- Service complexity challenges
- Higher dependence on customer support
- Digital payment discomfort
- Dissatisfaction with service usability
- Better competitor offers targeting senior customers

Further investigation is required to identify which factors most strongly contribute to churn among senior citizens.

---

# KPI 8 — Churn by Customer Tenure Group

## Business Question
Which tenure group has the highest churn rate?

---

## Observation

| Tenure Group | Total Customers | Churned Customers | Churn Rate |
|---|---|---|---|
| New Customers | 2186 | 1037 | 47.44% |
| Short-Term Customers | 1024 | 294 | 28.71% |
| Mid-Term Customers | 1594 | 325 | 20.39% |
| Loyal Customers | 2239 | 213 | 9.51% |

---

## Business Interpretation

New customers show an extremely high churn rate of 47.44%, while loyal customers demonstrate a significantly lower churn rate of 9.51%.

This indicates that customer churn is heavily concentrated during the early stages of the customer lifecycle.

The analysis suggests that onboarding experience, early customer engagement, pricing expectations, or initial service satisfaction may strongly influence whether customers remain with the telecom company long term.

Customers who remain with the company for longer durations appear significantly more loyal and less likely to discontinue services.

---

## Possible Business Impact

High churn among new customers may negatively affect the business through:

- Increased customer acquisition costs
- Reduced customer lifetime value
- Lower long-term revenue stability
- Reduced profitability from marketing efforts
- Difficulty building long-term customer loyalty

Failure to retain new customers may significantly weaken long-term business growth and increase pressure on customer acquisition teams.

---

## Initial Analyst Hypotheses

Possible reasons contributing to higher churn among new customers may include:

- Poor onboarding experience
- Unmet customer expectations
- Pricing dissatisfaction
- Service quality concerns
- Insufficient early customer engagement
- Competitor switching behavior
- Lack of loyalty incentives during early subscription periods

Further analysis is required to determine which factors most strongly influence early-stage customer churn.