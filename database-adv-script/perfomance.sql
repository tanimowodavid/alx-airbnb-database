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

--Add Indexes to Improve performance
CREATE INDEX idx_booking_user ON Booking(user_id);
CREATE INDEX idx_booking_property ON Booking(property_id);
CREATE INDEX idx_payment_booking ON Payment(booking_id);
