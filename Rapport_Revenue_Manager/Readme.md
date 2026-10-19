
# 🏨 Hotel Revenue Management Dashboard



## 📖 Project Overview

This project analyzes the performance of a portfolio of three hotels through a Revenue Management dashboard built in Power BI.

The dashboard provides a comprehensive view of:

- Revenue Performance
- Occupancy Rate
- Pricing Strategy
- Market Positioning
- Distribution Channels
- Profitability Metrics

The goal is to support strategic decision-making by identifying opportunities to improve revenue, occupancy and overall profitability.

---

## 🎯 Business Objectives

- Monitor hotel revenue performance.
- Analyze occupancy and room usage.
- Compare pricing against market competitors.
- Evaluate direct vs OTA booking channels.
- Measure profitability and operational efficiency.
- Support Revenue Management decisions.

---

## 📊 Key KPIs

| KPI | Value |
|-------|-------|
| Revenue | 15.82 M€ |
| Revenue Growth | +8.86% |
| Occupancy Rate | 61.45% |
| ADR | 215.69 € |
| RevPAR | 132.55 € |
| ADR Index | 104.67% |
| Gross Profit | 9.67 M€ |
| Margin | 61% |
| GOPPAR | 81.02 € |
| KPI Score | 64% |

---

## 🏗️ Data Model

### Star Schema

```text
                 Date
                   │
                   │
                   ▼

          hotel_rev_mngmnt
                   │
                   │
                   ▼

               Measures
```

### Fact Table

**hotel_rev_mngmnt**

Main columns:

- Date
- Hotel
- Room_Type
- Revenue
- ADR
- Capacity_Allocated
- Rooms_Sold
- Direct_Booking
- OTA_Booking
- Comp_Set_Avg_ADR

---

## 📄 Report Pages

### 1️⃣ Revenue & Occupancy

Main KPIs:

- Revenue
- Revenue Growth
- Occupancy Rate
- ADR
- RevPAR

Key insight:

✅ Strong revenue growth despite remaining occupancy potential.

---

### 2️⃣ Commercial Performance

Focus:

- Revenue by Room Type
- Booking Channels
- Direct vs OTA Analysis

Key insight:

✅ Suites generate more than 50% of total revenue.

---

### 3️⃣ Market Positioning & Performance

Focus:

- ADR Index
- Market Premium
- Revenue Efficiency

Key insight:

✅ Hotels outperform competitors in average pricing.

---

### 4️⃣ Profitability Analysis

Focus:

- Gross Profit
- Margin %
- GOPPAR
- Profit per Room

Key insight:

✅ High profitability with a 61% gross margin.

---

## 🔍 Key Findings

### Strengths

✅ Revenue Growth: +8.86%

✅ ADR above market average

✅ Strong profitability

✅ Premium room categories drive revenue

✅ Efficient pricing strategy

### Challenges

⚠️ Occupancy Rate below optimal level

⚠️ High dependency on OTA channels

⚠️ Significant available room capacity

---

## 💡 Strategic Recommendations

### Short-Term

- Improve occupancy during low-demand periods.
- Increase direct bookings.
- Optimize promotional pricing.

### Medium-Term

- Implement loyalty programs.
- Develop upselling strategies.
- Improve customer segmentation.

### Long-Term

- Reduce OTA dependency.
- Maximize GOPPAR.
- Strengthen Revenue Management capabilities.

---

## 🛠️ Technical Stack

| Category | Tools |
|-----------|--------|
| Visualization | Power BI |
| Data Preparation | Power Query |
| Analytics | DAX |
| Modeling | Star Schema |
| Reporting | Power BI Service |
| Documentation | Markdown |

---

## 📈 Skills Demonstrated

### Business Intelligence

- Dashboard Design
- KPI Framework Development
- Executive Reporting
- Data Storytelling

### Data Modeling

- Star Schema
- Calendar Table
- Measure Table
- Semantic Modeling

### DAX

- Time Intelligence
- Revenue Analysis
- Occupancy Metrics
- Profitability KPIs

### Business Analysis

- Revenue Management
- Pricing Strategy
- Market Benchmarking
- Profitability Analysis

---

## 📸 Dashboard Preview

<img width="674" height="127" alt="Capture d&#39;écran 2026-10-19 170503" src="https://github.com/user-attachments/assets/bbb0c9ef-906d-4370-a27d-20d5a714def6" />


### Revenue & Occupancy

> <img width="458" height="258" alt="Capture d&#39;écran 2026-10-19 112636" src="https://github.com/user-attachments/assets/2e26333e-bf85-4783-91bc-6d44b83bfd42" />

### Commercial Performance

<img width="625" height="269" alt="Capture d&#39;écran 2026-10-19 115045" src="https://github.com/user-attachments/assets/83d7b46f-2195-493d-8fc6-3c197fb10034" />

### Market Positioning

<img width="493" height="282" alt="Capture d&#39;écran 2026-10-19 121640" src="https://github.com/user-attachments/assets/fc954280-30a2-44e7-a421-17c6953361ce" />


### Profitability

<img width="466" height="278" alt="Capture d&#39;écran 2026-10-19 122629" src="https://github.com/user-attachments/assets/be03005d-77b3-4ebe-84e9-57ff73438b7d" />


---

## 🏆 Business Impact

The dashboard enables hotel managers and Revenue Management teams to:

- Monitor revenue performance in real time.
- Improve pricing decisions.
- Optimize room occupancy.
- Increase profitability.
- Reduce dependency on OTA channels.

---

## 👨‍💻 Author

**Farid Sefasfa**

Data Analyst Revenue Manager | Power BI | SQL | Python | Business Intelligence

📍 Île-de-France, France

# • #

---

⭐ If you found this project interesting, feel free to star the repository.

