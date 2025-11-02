--Initial query
--Retrieve all bookings with related user, property, and payment details:

SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status,
    
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    
    p.property_id,
    p.name AS property_name,
    p.location,
    p.pricepernight,
    
    pay.payment_id,
    pay.amount,
    pay.payment_method,
    pay.payment_date

FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id;

--===================================================
--Performance Optimization Steps
--Use explain plan to analyze query performance
--===================================================
EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status,
    
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    
    p.property_id,
    p.name AS property_name,
    p.location,
    p.pricepernight,
    
    pay.payment_id,
    pay.amount,
    pay.payment_method,
    pay.payment_date

FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id;

--Based on the explain plan, we identify that adding indexes on foreign key columns can improve performance.
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status,

    u.user_id,
    u.first_name,
    u.last_name,
    u.email,

    p.property_id,
    p.name AS property_name,
    p.location,
    p.pricepernight,

    pay.payment_id,
    pay.amount,
    pay.payment_method,
    pay.payment_date

FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON pay.booking_id = b.booking_id

-- Only get completed or confirmed bookings (optional optimization)
WHERE b.status IN ('confirmed', 'pending')
AND b.start_date >= '2025-01-01';

--Add Indexes to Improve performance
CREATE INDEX idx_booking_user ON Booking(user_id);
CREATE INDEX idx_booking_property ON Booking(property_id);
CREATE INDEX idx_payment_booking ON Payment(booking_id);
