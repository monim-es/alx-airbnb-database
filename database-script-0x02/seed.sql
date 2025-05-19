-- Insert sample Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('11111111-1111-1111-1111-111111111111', 'Alice', 'Johnson', 'alice@example.com', 'hashedpassword1', '123-456-7890', 'guest', NOW()),
('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashedpassword2', '234-567-8901', 'host', NOW()),
('33333333-3333-3333-3333-333333333333', 'Carol', 'Williams', 'carol@example.com', 'hashedpassword3', NULL, 'admin', NOW());

-- Insert sample Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Cozy Cottage', 'A small, cozy cottage in the countryside.', 'Countryside, TX', 85.00, NOW(), NOW()),
('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', 'Modern Apartment', 'A stylish apartment in the city center.', 'New York, NY', 150.00, NOW(), NOW());

-- Insert sample Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('dddddddd-dddd-dddd-dddd-dddddddddddd', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-06-01', '2025-06-05', 340.00, 'confirmed', NOW()),
('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '11111111-1111-1111-1111-111111111111', '2025-07-10', '2025-07-12', 300.00, 'pending', NOW());

-- Insert sample Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('ffffffffff-ffff-ffff-ffff-ffffffffffff', 'dddddddd-dddd-dddd-dddd-dddddddddddd', 340.00, NOW(), 'credit_card'),
('gggggggggg-gggg-gggg-gggg-gggggggggggg', 'eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', 300.00, NOW(), 'paypal');

-- Insert sample Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at) VALUES
('hhhhhhhh-hhhh-hhhh-hhhh-hhhhhhhhhhhh', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 5, 'Amazing stay! Very cozy and peaceful.', NOW()),
('iiiiiiii-iiii-iiii-iiii-iiiiiiiiiiii', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '11111111-1111-1111-1111-111111111111', 4, 'Great location, but a bit noisy at night.', NOW());

-- Insert sample Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
('jjjjjjjj-jjjj-jjjj-jjjj-jjjjjjjjjjjj', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi Bob, is the cottage available in June?', NOW()),
('kkkkkkkk-kkkk-kkkk-kkkk-kkkkkkkkkkkk', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Yes Alice, it is available for those dates.', NOW());
