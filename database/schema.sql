-- سامانه سفارش غذا — ساختار ساده دانشجویی
-- SQLite 3.37 or newer. All money values are whole Tomans.
-- Run this file once on a new, empty database.
PRAGMA foreign_keys = ON;

BEGIN TRANSACTION;

-- 1. کاربران: مشتری، مسئول رستوران و مدیر سیستم
CREATE TABLE users (
    id            INTEGER PRIMARY KEY,
    full_name     TEXT NOT NULL CHECK (length(trim(full_name)) > 0),
    phone         TEXT NOT NULL UNIQUE CHECK (length(trim(phone)) > 0),
    password_hash TEXT NOT NULL,
    role          TEXT NOT NULL CHECK (role IN ('customer', 'restaurant_manager', 'admin')),
    is_active     INTEGER NOT NULL DEFAULT 1 CHECK (is_active IN (0, 1))
) STRICT;

-- 2. رستوران‌ها: هر رستوران یک مسئول دارد
CREATE TABLE restaurants (
    id           INTEGER PRIMARY KEY,
    manager_id   INTEGER NOT NULL UNIQUE REFERENCES users(id) ON DELETE RESTRICT,
    name         TEXT NOT NULL CHECK (length(trim(name)) > 0),
    delivery_fee INTEGER NOT NULL DEFAULT 0 CHECK (delivery_fee >= 0),
    is_active    INTEGER NOT NULL DEFAULT 1 CHECK (is_active IN (0, 1))
) STRICT;

-- 3. غذاهای منو
CREATE TABLE foods (
    id           INTEGER PRIMARY KEY,
    restaurant_id INTEGER NOT NULL REFERENCES restaurants(id) ON DELETE RESTRICT,
    name         TEXT NOT NULL CHECK (length(trim(name)) > 0),
    description  TEXT NOT NULL DEFAULT '',
    price        INTEGER NOT NULL CHECK (price >= 0),
    is_available INTEGER NOT NULL DEFAULT 1 CHECK (is_available IN (0, 1))
) STRICT;

-- 4. اطلاعات کلی هر سفارش
CREATE TABLE orders (
    id               INTEGER PRIMARY KEY,
    customer_id      INTEGER NOT NULL REFERENCES users(id) ON DELETE RESTRICT,
    restaurant_id    INTEGER NOT NULL REFERENCES restaurants(id) ON DELETE RESTRICT,
    status           TEXT NOT NULL DEFAULT 'pending_payment'
                     CHECK (status IN ('pending_payment', 'registered', 'preparing',
                                       'delivering', 'delivered', 'cancelled')),
    delivery_address TEXT NOT NULL CHECK (length(trim(delivery_address)) > 0),
    receiver_phone   TEXT NOT NULL CHECK (length(trim(receiver_phone)) > 0),
    delivery_fee     INTEGER NOT NULL CHECK (delivery_fee >= 0),
    total_amount     INTEGER NOT NULL CHECK (total_amount > 0),
    created_at       TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
) STRICT;

-- 5. غذاها و تعداد آن‌ها در هر سفارش
-- Keep the name and price at the time the order was created.
CREATE TABLE order_items (
    id         INTEGER PRIMARY KEY,
    order_id   INTEGER NOT NULL REFERENCES orders(id) ON DELETE RESTRICT,
    food_id    INTEGER NOT NULL REFERENCES foods(id) ON DELETE RESTRICT,
    food_name  TEXT NOT NULL CHECK (length(trim(food_name)) > 0),
    quantity   INTEGER NOT NULL CHECK (quantity > 0),
    unit_price INTEGER NOT NULL CHECK (unit_price >= 0),
    UNIQUE (order_id, food_id)
) STRICT;

-- 6. هر سطر، یک تلاش پرداخت آزمایشی است
CREATE TABLE payments (
    id         INTEGER PRIMARY KEY,
    order_id   INTEGER NOT NULL REFERENCES orders(id) ON DELETE RESTRICT,
    amount     INTEGER NOT NULL CHECK (amount > 0),
    status     TEXT NOT NULL CHECK (status IN ('pending', 'success', 'failed')),
    created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
) STRICT;

-- هر سفارش حداکثر یک پرداخت موفق دارد؛ تلاش ناموفق می‌تواند تکرار شود
CREATE UNIQUE INDEX one_success_payment_per_order
    ON payments(order_id)
    WHERE status = 'success';

COMMIT;
