```sql
-- =========================
-- USER SAMPLE DATA
-- =========================
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('uuid-usr-001', 'David', 'Tanimowo', 'david@example.com', 'hashed_pw_1', '+2348012345678', 'host'),
('uuid-usr-002', 'Jane', 'Smith', 'jane@example.com', 'hashed_pw_2', '+12025551234', 'guest'),
('uuid-usr-003', 'Michael', 'Brown', 'michael@example.com', 'hashed_pw_3', '+447700900123', 'admin');

-- =========================
-- PROPERTY SAMPLE DATA
-- =========================
INSERT INTO property (property_id, host_id, name, description, location, pricepernight)
VALUES
('uuid-prop-001', 'uuid-usr-001', 'Cozy Apartment', '2-bedroom apartment in downtown Lagos.', 'Lagos, Nigeria', 75.00),
('uuid-prop-002', 'uuid-usr-001', 'Beachfront Villa', 'Luxury villa with ocean view.', 'Lekki, Lagos', 250.00);

-- =========================
-- BOOKING SAMPLE DATA
-- =========================
INSERT INTO booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('uuid-book-001', 'uuid-prop-001', 'uuid-usr-002', '2025-11-01', '2025-11-05', 300.00, 'confirmed'),
('uuid-book-002', 'uuid-prop-002', 'uuid-usr-002', '2025-12-15', '2025-12-18', 750.00, 'pending');

-- =========================
-- PAYMENT SAMPLE DATA
-- =========================
INSERT INTO payment (payment_id, booking_id, amount, payment_method)
VALUES
('uuid-pay-001', 'uuid-book-001', 300.00, 'paypal'),
('uuid-pay-002', 'uuid-book-002', 750.00, 'credit_card');

-- =========================
-- REVIEW SAMPLE DATA
-- =========================
INSERT INTO review (review_id, property_id, user_id, rating, comment)
VALUES
('uuid-rev-001', 'uuid-prop-001', 'uuid-usr-002', 5, 'Fantastic stay! Clean and comfortable.'),
('uuid-rev-002', 'uuid-prop-002', 'uuid-usr-002', 4, 'Great location but a bit pricey.');

-- =========================
-- MESSAGE SAMPLE DATA
-- =========================
INSERT INTO message (message_id, sender_id, recipient_id, message_body)
VALUES
('uuid-msg-001', 'uuid-usr-002', 'uuid-usr-001', 'Hi David, is your apartment available next week?'),
('uuid-msg-002', 'uuid-usr-001', 'uuid-usr-002', 'Hi Jane, yes it is available. You can book it now!');

```
