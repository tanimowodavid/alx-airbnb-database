-- User table indexes
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_user_role ON User(role);

-- Property table indexes
CREATE INDEX idx_property_host ON Property(host_id);
CREATE INDEX idx_property_location ON Property(location);

-- Booking table indexes
CREATE INDEX idx_booking_user ON Booking(user_id);
CREATE INDEX idx_booking_property ON Booking(property_id);
CREATE INDEX idx_booking_status ON Booking(status);

-- Review table indexes
CREATE INDEX idx_review_property ON Review(property_id);

--Using explain 
EXPLAIN ANALYZE
SELECT u.first_name, u.last_name, COUNT(b.booking_id)
FROM User u
JOIN Booking b ON u.user_id = b.user_id
GROUP BY u.user_id;