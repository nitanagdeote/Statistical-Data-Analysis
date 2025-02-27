# 📊 Box Plot Guide

## 📌 Key Uses of a Box Plot

### 🔹 Summarizes Distribution
- Shows the **median**, **quartiles (Q1 & Q3)**, and **whiskers**.
- Helps identify **skewness** and **spread** at a glance.

### 🔹 Detects Outliers
- Any data points outside whiskers (beyond **1.5× IQR**) are **outliers**.

### 🔹 Compares Multiple Distributions
- Useful for comparing **multiple categories** side by side.

### 🔹 Identifies Skewness & Symmetry
- **Skewed data**: Median closer to Q1 or Q3.
- **Normal distribution**: Symmetric box.

### 🔹 Efficient for Large Datasets
- Unlike histograms, box plots **don’t require binning**.

## 📊 Example Box Plot
Here’s a sample **box plot** illustrating distribution across categories.

![Box Plot Example](box_plot.png)

## 📈 Mean vs. Median

| Feature | **Mean** | **Median** |
|---------|---------|-----------|
| **Definition** | Average of all values | Middle value of sorted data |
| **Formula** | \( \text{Mean} = \frac{\sum X_i}{N} \) | If \(N\) is odd: middle value; If \(N\) is even: average of two middle values |
| **Effect of Outliers** | **Sensitive** (can be skewed) | **Resistant** (not affected) |
| **Best For** | Normally distributed data | Skewed data or presence of outliers |

## 🚀 When to Use?
✅ Quick summary of data  
✅ Detecting **outliers**  
✅ Comparing **multiple datasets**  
✅ Analyzing **skewness**  

❌ **Avoid** if precise individual data points are needed → Use **histograms or scatter plots** instead.
