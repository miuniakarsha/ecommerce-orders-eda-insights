-- DecodeLabs Data Analytics Project 2
-- E-Commerce Orders EDA SQL Business Queries

-- 1. Total business overview
SELECT 
    COUNT(DISTINCT OrderID) AS TotalOrders,
    COUNT(DISTINCT CustomerID) AS TotalCustomers,
    ROUND(SUM(TotalPrice), 2) AS TotalRevenue,
    ROUND(AVG(TotalPrice), 2) AS AverageOrderValue
FROM orders;

-- 2. Revenue by product
SELECT 
    Product,
    COUNT(DISTINCT OrderID) AS TotalOrders,
    SUM(Quantity) AS TotalQuantitySold,
    ROUND(SUM(TotalPrice), 2) AS TotalRevenue,
    ROUND(AVG(TotalPrice), 2) AS AverageOrderValue
FROM orders
GROUP BY Product
ORDER BY TotalRevenue DESC;

-- 3. Monthly revenue trend
SELECT 
    YearMonth,
    COUNT(DISTINCT OrderID) AS MonthlyOrders,
    ROUND(SUM(TotalPrice), 2) AS MonthlyRevenue,
    ROUND(AVG(TotalPrice), 2) AS AverageOrderValue
FROM orders
GROUP BY YearMonth
ORDER BY YearMonth;

-- 4. Payment method analysis
SELECT 
    PaymentMethod,
    COUNT(DISTINCT OrderID) AS TotalOrders,
    ROUND(SUM(TotalPrice), 2) AS TotalRevenue,
    ROUND(AVG(TotalPrice), 2) AS AverageOrderValue
FROM orders
GROUP BY PaymentMethod
ORDER BY TotalRevenue DESC;

-- 5. Coupon vs no coupon analysis
SELECT 
    HasCoupon,
    COUNT(DISTINCT OrderID) AS TotalOrders,
    ROUND(SUM(TotalPrice), 2) AS TotalRevenue,
    ROUND(AVG(TotalPrice), 2) AS AverageOrderValue
FROM orders
GROUP BY HasCoupon
ORDER BY AverageOrderValue DESC;

-- 6. Referral source performance
SELECT 
    ReferralSource,
    COUNT(DISTINCT OrderID) AS TotalOrders,
    ROUND(SUM(TotalPrice), 2) AS TotalRevenue,
    ROUND(AVG(TotalPrice), 2) AS AverageOrderValue
FROM orders
GROUP BY ReferralSource
ORDER BY TotalRevenue DESC;

-- 7. Order status analysis
SELECT 
    OrderStatus,
    COUNT(DISTINCT OrderID) AS TotalOrders,
    ROUND(SUM(TotalPrice), 2) AS TotalRevenue,
    ROUND(AVG(TotalPrice), 2) AS AverageOrderValue
FROM orders
GROUP BY OrderStatus
ORDER BY TotalOrders DESC;

-- 8. Risk orders by product
SELECT 
    Product,
    COUNT(DISTINCT OrderID) AS TotalOrders,
    SUM(CASE WHEN RiskStatus = 'Risk Order' THEN 1 ELSE 0 END) AS RiskOrders,
    ROUND(
        SUM(CASE WHEN RiskStatus = 'Risk Order' THEN 1 ELSE 0 END) * 100.0 
        / COUNT(DISTINCT OrderID), 
        2
    ) AS RiskOrderRate
FROM orders
GROUP BY Product
ORDER BY RiskOrderRate DESC;

-- 9. Risk orders by payment method
SELECT 
    PaymentMethod,
    COUNT(DISTINCT OrderID) AS TotalOrders,
    SUM(CASE WHEN RiskStatus = 'Risk Order' THEN 1 ELSE 0 END) AS RiskOrders,
    ROUND(
        SUM(CASE WHEN RiskStatus = 'Risk Order' THEN 1 ELSE 0 END) * 100.0 
        / COUNT(DISTINCT OrderID), 
        2
    ) AS RiskOrderRate
FROM orders
GROUP BY PaymentMethod
ORDER BY RiskOrderRate DESC;

-- 10. High-value outlier orders
SELECT 
    OrderID,
    Date,
    CustomerID,
    Product,
    Quantity,
    UnitPrice,
    TotalPrice,
    PaymentMethod,
    OrderStatus,
    ReferralSource,
    HasCoupon
FROM orders
WHERE TotalPrice_Outlier_IQR = 'Outlier'
ORDER BY TotalPrice DESC;