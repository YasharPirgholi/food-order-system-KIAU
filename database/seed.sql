-- داده‌های کاملاً آزمایشی برای ارائه کلاسی
-- Apply once, after schema.sql, to a new database.
PRAGMA foreign_keys = ON;
BEGIN TRANSACTION;

INSERT INTO users (id, full_name, phone, password_hash, role, is_active) VALUES
    (1, 'مدیر نمونه', '09120000001', 'pbkdf2_sha256$600000$faa173c298548fa2cb29478a$R/CG95uVW7Z1O/7j4CDeJQ8fGO0czpk6aqq7udeisZk=', 'admin', 1),
    (2, 'مسئول رستوران بهار', '09120000002', 'pbkdf2_sha256$600000$98b81f4fe47f16605b69462c$SPhI9UrXLgcr7bivZO8hKiJj8YVHbpP+x2XR1HWMvHQ=', 'restaurant_manager', 1),
    (3, 'مسئول آشپزخانه خانه', '09120000003', 'pbkdf2_sha256$600000$f2eefe1a1e08a1dd5fd441b3$1+Diw7MUF33pbIr1luZBUktAl08K5/H6WOXJnZFj+Wc=', 'restaurant_manager', 1),
    (4, 'علی نمونه', '09120000004', 'pbkdf2_sha256$600000$e461b0c5c15ae410d0ee24f4$ciFSvvvT6w474cbeoYZg/RT4mb3TaFVs6S1B9+UZkOs=', 'customer', 1),
    (5, 'سارا نمونه', '09120000005', 'pbkdf2_sha256$600000$ad0f0210e47d8caf4a42d4c9$9a7QgVENLgGPP6YYLUjVbZlyMkosFZKIk62KZ33Mk2g=', 'customer', 1);

INSERT INTO restaurants (id, manager_id, name, delivery_fee, is_active) VALUES
    (1, 2, 'رستوران بهار', 30000, 1),
    (2, 3, 'آشپزخانه خانه', 20000, 1);

INSERT INTO foods (id, restaurant_id, name, description, price, is_available) VALUES
    (1, 1, 'چلوکباب', 'یک پرس چلوکباب', 280000, 1),
    (2, 1, 'جوجه‌کباب', 'جوجه‌کباب همراه برنج', 240000, 1),
    (3, 1, 'سالاد', 'سالاد فصل', 60000, 1),
    (4, 1, 'نوشابه', 'نوشابه یک‌نفره', 30000, 1),
    (5, 2, 'پیتزا', 'پیتزای یک‌نفره', 220000, 1),
    (6, 2, 'برگر', 'برگر معمولی', 180000, 1),
    (7, 2, 'سیب‌زمینی', 'سیب‌زمینی سرخ‌کرده', 70000, 1),
    (8, 2, 'دوغ', 'دوغ یک‌نفره', 25000, 0);

INSERT INTO orders (id, customer_id, restaurant_id, status, delivery_address, receiver_phone, delivery_fee, total_amount, created_at) VALUES
    (1, 4, 1, 'pending_payment', 'نشانی آزمایشی شماره یک', '09120000004', 30000, 650000, '2026-11-11 08:00:00'),
    (2, 4, 1, 'registered', 'نشانی آزمایشی شماره یک', '09120000004', 30000, 300000, '2026-11-11 08:10:00'),
    (3, 5, 2, 'preparing', 'نشانی آزمایشی شماره دو', '09120000005', 20000, 450000, '2026-11-11 08:20:00'),
    (4, 5, 2, 'delivered', 'نشانی آزمایشی شماره دو', '09120000005', 20000, 265000, '2026-11-11 07:00:00'),
    (5, 4, 1, 'cancelled', 'نشانی آزمایشی شماره یک', '09120000004', 30000, 310000, '2026-11-11 08:30:00'),
    (6, 5, 2, 'delivering', 'نشانی آزمایشی شماره دو', '09120000005', 20000, 270000, '2026-11-11 07:40:00');

INSERT INTO order_items (id, order_id, food_id, food_name, quantity, unit_price) VALUES
    (1, 1, 1, 'چلوکباب', 2, 280000),
    (2, 1, 3, 'سالاد', 1, 60000),
    (3, 2, 2, 'جوجه‌کباب', 1, 240000),
    (4, 2, 4, 'نوشابه', 1, 30000),
    (5, 3, 6, 'برگر', 2, 180000),
    (6, 3, 7, 'سیب‌زمینی', 1, 70000),
    (7, 4, 5, 'پیتزا', 1, 220000),
    (8, 4, 8, 'دوغ', 1, 25000),
    (9, 5, 1, 'چلوکباب', 1, 280000),
    (10, 6, 6, 'برگر', 1, 180000),
    (11, 6, 7, 'سیب‌زمینی', 1, 70000);

INSERT INTO payments (id, order_id, amount, status, created_at) VALUES
    (1, 1, 650000, 'failed', '2026-11-11 08:01:00'),
    (2, 2, 300000, 'failed', '2026-11-11 08:11:00'),
    (3, 2, 300000, 'success', '2026-11-11 08:12:00'),
    (4, 3, 450000, 'success', '2026-11-11 08:21:00'),
    (5, 4, 265000, 'success', '2026-11-11 07:01:00'),
    (6, 5, 310000, 'failed', '2026-11-11 08:31:00'),
    (7, 6, 270000, 'success', '2026-11-11 07:41:00');

COMMIT;
