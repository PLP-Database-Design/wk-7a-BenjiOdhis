-- 🔧 Question 1: Achieving 1NF (First Normal Form)
-- Transform multi-valued Products column into single product rows

SELECT 101 AS OrderID, 'John Doe' AS CustomerName, 'Laptop' AS Product
UNION ALL
SELECT 101, 'John Doe', 'Mouse'
UNION ALL
SELECT 102, 'Jane Smith', 'Tablet'
UNION ALL
SELECT 102, 'Jane Smith', 'Keyboard'
UNION ALL
SELECT 102, 'Jane Smith', 'Mouse'
UNION ALL
SELECT 103, 'Emily Clark', 'Phone';


-- 🔧 Question 2: Achieving 2NF (Second Normal Form)
-- Step 1: Extract unique OrderID–CustomerName into a new Orders table

SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;

-- Step 2: Create OrderLineItems table that depends fully on (OrderID, Product)

SELECT OrderID, Product, Quantity
FROM OrderDetails;
