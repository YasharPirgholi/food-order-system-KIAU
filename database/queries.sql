-- پرس‌وجوهای ساده برای ارائه کلاسی؛ همه مثال‌ها فقط اطلاعات را می‌خوانند
PRAGMA foreign_keys = ON;

-- Q01: رستوران‌های فعال
SELECT id, name, delivery_fee
FROM restaurants
WHERE is_active = 1;

-- Q02: غذاهای قابل سفارش رستوران شماره 1
SELECT id, name, price
FROM foods
WHERE restaurant_id = 1 AND is_available = 1;

-- Q03: سفارش‌های مشتری شماره 4، همراه نام رستوران
SELECT o.id, r.name AS restaurant_name, o.status, o.total_amount, o.created_at
FROM orders AS o
JOIN restaurants AS r ON r.id = o.restaurant_id
WHERE o.customer_id = 4
ORDER BY o.id DESC;

-- Q04: اقلام سفارش شماره 1
SELECT food_name, quantity, unit_price, quantity * unit_price AS line_total
FROM order_items
WHERE order_id = 1;

-- Q05: محاسبه دوباره مبلغ سفارش شماره 1
-- Expected: items_total=620000, delivery_fee=30000, calculated_total=650000.
SELECT o.id,
       SUM(i.quantity * i.unit_price) AS items_total,
       o.delivery_fee,
       SUM(i.quantity * i.unit_price) + o.delivery_fee AS calculated_total,
       o.total_amount AS stored_total
FROM orders AS o
JOIN order_items AS i ON i.order_id = o.id
WHERE o.id = 1
GROUP BY o.id, o.delivery_fee, o.total_amount;

-- Q06: تلاش ناموفق و سپس موفق برای سفارش شماره 2
SELECT id, amount, status, created_at
FROM payments
WHERE order_id = 2
ORDER BY id;

-- Q07: تعداد سفارش‌های هر رستوران؛ حتی رستوران بدون سفارش
SELECT r.id, r.name, COUNT(o.id) AS order_count
FROM restaurants AS r
LEFT JOIN orders AS o ON o.restaurant_id = r.id
GROUP BY r.id, r.name
ORDER BY r.id;

-- Q08: مجموع پرداخت‌های موفق آزمایشی
-- Expected: 1285000 Tomans.
SELECT COALESCE(SUM(amount), 0) AS successful_payments_total
FROM payments
WHERE status = 'success';

-- Q09: سفارش‌های در انتظار پرداخت
SELECT id, customer_id, total_amount, created_at
FROM orders
WHERE status = 'pending_payment';

-- Q10: سفارش‌های پرداخت‌شده رستوران شماره 2
SELECT o.id, o.status, o.total_amount
FROM orders AS o
JOIN payments AS p ON p.order_id = o.id
WHERE o.restaurant_id = 2 AND p.status = 'success'
ORDER BY o.id;
