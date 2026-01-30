---
title: Data Science Use Cases
date: 2021-01-18 06:54:44 +1200
tags: [datascience, knowledge]
---

For each type of analysis think about:

* What problem does it solve, and for whom?
* How is it being solved today?
* How can it beneficially affect business?
* What are the data inputs and where do they come from?
* What are the outputs and how are they consumed (online algorithm, a static report, etc)?
* Is this a revenue leakage ("saves us money") or a revenue growth ("makes us money") problem?

---

## Agriculture

* **Yield management** - Taking sensor data on soil quality (common in newer John Deere et al truck models) and determining what seed varieties, seed spacing to use, etc.

---

## Construction

* **Contractor performance** - Identifying contractors who are regularly involved in poor performing products
* **Design issue prediction** - Predicting that a construction project is likely to have issues as early as possible

---

## Consumer Financial

* **Credit card fraud** - Banks need to prevent, and vendors need to prevent

---

## Customer Support

* **Call routing** - Determining wait times based on caller ID history, time of day, call volumes, products owned, churn risk, LTV, etc.
* **Call center message optimization** - Putting the right data on the operator's screen
* **Call center volume forecasting** - Predicting call volume for the purposes of staff rostering

---

## Education

* **Automated essay scoring**

---

## Electrical Grid Distribution

* **AC frequency stability** - Keep AC frequency as constant as possible (very "online" algorithm)

---

## Healthcare

* **Claims review prioritization** - Payers picking which claims should be reviewed by manual auditors
* **Medicare/Medicaid fraud** - Tackled at the claims processors (EDS is the biggest & uses proprietary tech)
* **Medical resources allocation** - Hospital operations management; optimize/predict operating theatre & bed occupancy based on initial patient visits
* **Alerting and diagnostics from real-time patient data** - Embedded devices (productized algos); exogenous data from devices to create diagnostic reports for doctors
* **Prescription compliance** - Predicting who won't comply with their prescriptions
* **Physician attrition** - Hospitals want to retain doctors who have admitting privileges in multiple hospitals
* **Survival analysis** - Analyse survival statistics for different patient attributes (age, blood type, gender, etc.) and treatments
* **Medication (dosage) effectiveness** - Analyse effects of admitting different types and dosage of medication for a disease
* **Readmission risk** - Predict risk of re-admittance based on patient attributes, medical history, diagnosis & treatment
* **CRM & utilization optimization**
* **Claims coding**
* **Formulary determination and pricing**
* **Finance** - Risk analysis; automating Excel stuff/summary reports

---

## Hospitality Service

* **Inventory management/dynamic pricing**
* **Promos/upgrades/offers**
* **Table management & reservations**
* **Workforce management** (also applies to many verticals)

---

## Human Resources

* **Resume screening** - Scores resumes based on the outcomes of past job interviews and hires
* **Employee churn** - Predicts which employees are most likely to leave
* **Training recommendation** - Recommends specific training based on performance review data
* **Talent management** - Looking at objective measures of employee success

---

## Insurance

* **Claims prediction** - May have telemetry data
* **Claims handling** - Accept/deny/audit; managing repairer network (auto body, doctors)
* **Price sensitivity**
* **Investments**
* **Agent & branch performance**
* **DM, product mix**

---

## Life Sciences

* **Biomarker identification** - Identifying biomarkers for boxed warnings on marketed products
* **Drug/chemical discovery & analysis**
* **Clinical study results analysis**
* **Negative response identification** - Monitor social networks for early problems with drugs
* **Diagnostic test development** - Hardware devices and software
* **Diagnostic targeting (CRM)**
* **Drug demand prediction** - Predicting drug demand in different geographies for different products
* **Prescription adherence prediction** - Predicting prescription adherence with different approaches to reminding patients
* **Putative safety signals**
* **Social media marketing** - Competitors, patient perceptions, KOL feedback
* **Image analysis or GCMS analysis** - High throughput manner
* **Clinical trial design** - Analysis of clinical outcomes to adapt clinical trial design
* **COGS optimization**
* **Molecule database analysis** - Leveraging metabolic stability data to elucidate new stable structures

---

## Logistics

* **Demand forecasting** - How many of what thing do you need and where will we need them? Enables lean inventory and prevents out of stock situations
    * Revenue impact: supports growth and militates against revenue leakage
    * Usage: online algorithm and static report

---

## Mall Operators

* **Tenant payment capacity prediction** - Predicting tenants capacity to pay based on their sales figures, their industry
* **Optimal tenant selection** - Predicting the best tenant for an open vacancy to maximize overall sales at a mall

---

## Manufacturing

* **Predictive maintenance** - Sensor data to look at failures
* **Quality management** - Identifying out-of-bounds manufacturing (visual inspection/computer vision); optimal run speeds
* **Demand forecasting/inventory management**
* **Warranty/pricing**

---

## Marketing

### Customer Analytics
* **Predicting Lifetime Value (LTV)** - If you can predict the characteristics of high LTV customers, this supports customer segmentation, identifies upsell opportunities and supports other marketing initiatives
    * Usage: can be both an online algorithm and a static report showing the characteristics of high LTV customers
* **Wallet share estimation** - Working out the proportion of a customer's spend in a category accrues to a company allows that company to identify upsell and cross-sell opportunities
    * Usage: can be both an online algorithm and a static report showing the characteristics of low wallet share customers
* **Churn prediction** - Working out the characteristics of churners allows a company to make product adjustments and an online algorithm allows them to reach out to churners
    * Usage: can be both an online algorithm and a static report showing the characteristics of likely churners
* **Customer segmentation** - If you can understand qualitatively different customer groups, then we can give them different treatments (perhaps even by different groups in the company). Answers questions like: what makes people buy, stop buying, etc.
    * Usage: static report

### Product & Offers
* **Product mix** - What mix of products offers the lowest churn? (e.g., giving a combined policy discount for home + auto = low churn)
    * Usage: online algorithm and static report
* **Cross selling/Recommendation algorithms** - Given a customer's past browsing history, purchase history and other characteristics, what are they likely to want to purchase in the future?
    * Usage: online algorithm
* **Up selling** - Given a customer's characteristics, what is the likelihood that they'll upgrade in the future?
    * Usage: online algorithm and static report

### Channel & Targeting
* **Channel optimization** - What is the optimal way to reach a customer with certain characteristics?
    * Usage: online algorithm and static report
* **Discount targeting** - What is the probability of inducing the desired behavior with a discount?
    * Usage: online algorithm and static report
* **Reactivation likelihood** - What is the reactivation likelihood for a given customer?
    * Usage: online algorithm and static report
* **Adwords optimization and ad buying** - Calculating the right price for different keywords/ad slots

### Direct Marketing
* **Response rates**
* **Segmentations for mailings**
* **RFM analysis**
* **Phone marketing** - Generally as a follow-up to a DM or a churn predictor
* **Email marketing**

### Offline Marketing
* **Call to action with unique promotion**
* **Attribution analysis** - Why are people responding? How do I adjust my buy (where, when, how)?
* **Media mix optimization** - Kantar Group and Nielsen are dominant. Hard part is getting to the data (good samples & response vars)

---

## Procurement

* **Negotiation & vendor selection** - Are we buying from the best producer?

---

## Retail (FMCG - Fast-moving Consumer Goods)

* **Pricing** - Optimize per time period, per item, per store. Was dominated by Retek (purchased by Oracle in 2005, now Oracle Retail). Blue Yonder (formerly JDA) is also a player (supply chain software)
* **Location of new stores** - Pioneered by Tesco; dominated by Buxton. Site selection in the restaurant industry is widely performed via Pitney Bowes AnySite
* **Merchandising** - When to start stocking & discontinuing product lines
* **Inventory management** - How many units (particularly perishable goods)
* **Shrinkage analytics** - Theft analytics/prevention
* **Warranty analytics** - Rates of failure for different components; what types of customers buying what types of products are likely to actually redeem a warranty?
* **Cannibalization analysis** - Market cannibalization is a loss in sales caused by a company's introduction of a new product that displaces one of its own older products
* **Market basket analysis**
* **Product layout in stores** - Called "plan-o-gramming"
* **Next best offer analysis** - A highly customized offer that guides the customer to the right merchandise, services, or information, at the right moment in time, at the most agreeable and attractive price, via the most convenient channel
* **In-store traffic patterns** (fairly virgin territory)

---

## Risk

* **Credit risk**
* **Treasury or currency risk** - How much capital do we need on hand to meet these requirements?
* **Fraud detection** - Predicting whether or not a transaction should be blocked because it involves some kind of fraud (e.g., credit card fraud)
* **Accounts payable recovery** - Predicting the probability a liability can be recovered given the characteristics of the borrower and the loan
* **Anti-money laundering** - Using machine learning and fuzzy matching to detect transactions that contradict AML legislation (such as the OFAC list)

---

## Sales

* **Lead prioritization** - What is a given lead's likelihood of closing?
    * Revenue impact: supports growth
    * Usage: online algorithm and static report
* **Demand forecasting**

---

## Travel

* **Aircraft scheduling**
* **Seat management, gate management**
* **Air crew scheduling**
* **Dynamic pricing**
* **Customer complaint resolution** - Give points in exchange
* **Call center operations**
* **Maintenance optimization**
* **Tourism forecasting**

---

## Utilities

* **Distribution network optimization** - Optimize distribution network cost effectiveness (balance capital & operating expenditure)
* **Commodity requirements prediction**

---

## Other / Cross-Industry

* **Sentiment analysis**
* **Loyalty programs**
* **Sensor data analytics** - Alerting; predictive failure analysis
* **De-duplication**
