# 🛍️ Mall Customers Spending Behavior Analysis

This project explores how **age** and **gender** influence the spending behavior of mall customers. Through data visualization and statistical analysis (including two-way ANOVA and Tukey’s post hoc test), we identify the primary demographic factors that drive customer spending—ultimately providing strategic recommendations for targeted marketing.

---

## 📌 Objective

- Analyze mall customer demographics to understand spending behavior.
- Determine whether **age** or **gender** significantly affects **spending scores**.
- Support mall management in improving **targeted marketing strategies**.

---

## 🧾 Dataset Overview

- 📄 Source: [Kaggle – Mall Customers Dataset](https://www.kaggle.com/datasets/shwetabh123/mall-customers/data)
- 🔢 Rows: 200  
- 📊 Features:
  - CustomerID
  - Genre (Male/Female)
  - Age
  - Annual Income (in $)
  - Spending Score (1–100)

---

## 📈 Exploratory Insights

- **Age Distribution**: Right-skewed, skewing younger.
- **Annual Income**: Normally distributed, centered around \$50k–\$75k.
- **Spending Score**: Bimodal, peaking at 50 and 75—majority are moderate to high spenders.
- **Gender Comparison**: Spending scores are **not significantly different** between males and females.
- **Age Group Insight**: 
  - Young (≤ 30) customers spend the most.
  - Middle-aged (31–50) and Older (> 50) spend significantly less.

---

## 🧪 Statistical Analysis

### 🔹 Two-Way ANOVA

| Factor | F-statistic | p-value | Conclusion |
|--------|-------------|---------|------------|
| Gender | 0.671       | 0.414   | Not significant |
| Age    | 11.64       | < 0.001 | Significant impact on spending |

### 🔸 Tukey’s HSD Post-Hoc Test (Age)

| Comparison            | Mean Difference | p-value   | Conclusion               |
|-----------------------|-----------------|-----------|--------------------------|
| Young vs Middle-aged  | -12.49          | 0.006     | Significant              |
| Young vs Older        | -23.56          | < 0.001   | Highly significant       |
| Middle-aged vs Older  | -11.07          | 0.045     | Marginally significant   |

---

## 🎯 Conclusion

- ✅ **Age is the key driver** of spending behavior. Young customers are the most lucrative segment.
- 🚫 **Gender has no significant impact**—marketing strategies should be gender-neutral.
- 🛒 **Recommendation**:
  - Focus on **age-based segmentation**.
  - Target young consumers through tailored promotions and services.

---

## 👩‍💻 Author

**Bhavyani Dodda**  
MS Data Science – Rutgers University  
📧 bhavyani.dodda123@gmail.com  
🔗 [LinkedIn](https://linkedin.com/in/bhavyani-dodda-414ab6195)
