# Model Car Database (MySQL Sample Project)

## 📋 Overview
This project provides a sample MySQL database designed for analyzing a car dealership's inventory and sales data using MySQL Workbench.

## 🗃 Schema
- **makes**: Car brands (Toyota, Ford, etc.)
- **cars**: Model info, price, year
- **inventory**: Cars in stock or sold
- **customers**: Buyers
- **sales**: Sales records

## 💡 Use Cases
- Total cars per brand
- Monthly sales trends
- Most popular colors
- Revenue per brand
- Inventory status (available vs sold)

## ▶️ How to Use
1. Open MySQL Workbench
2. Run the provided `model_car_database.sql` script
3. Start querying and analyzing

## ✅ Sample Analysis Query
```sql
SELECT m.make_name, COUNT(*) AS total_models
FROM cars c
JOIN makes m ON c.make_id = m.make_id
GROUP BY m.make_name;
```

## 📊 Ideal For
- SQL learning and practice
- BI dashboard integration
- Data Analyst/Data Engineer portfolios
