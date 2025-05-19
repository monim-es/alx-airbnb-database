# Booking System Database Schema

This project contains the database schema for a booking system with entities such as User, Property, Booking, Payment, Review, and Message.

---

## Entities and Attributes

- **User**
  - `user_id` (UUID, Primary Key)
  - `first_name` (VARCHAR, NOT NULL)
  - `last_name` (VARCHAR, NOT NULL)
  - `email` (VARCHAR, UNIQUE, NOT NULL)
  - `password_hash` (VARCHAR, NOT NULL)
  - `phone_number` (VARCHAR, NULL)
  - `role` (ENUM: guest, host, admin, NOT NULL)
  - `created_at` (TIMESTAMP, default current time)

- **Property**
  - `property_id` (UUID, Primary Key)
  - `host_id` (UUID, Foreign Key references User)
  - `name` (VARCHAR, NOT NULL)
  - `description` (TEXT, NOT NULL)
  - `location` (VARCHAR, NOT NULL)
  - `pricepernight` (DECIMAL, NOT NULL)
  - `created_at` (TIMESTAMP, default current time)
  - `updated_at` (TIMESTAMP, auto update on modification)

- **Booking**
  - `booking_id` (UUID, Primary Key)
  - `property_id` (UUID, Foreign Key references Property)
  - `user_id` (UUID, Foreign Key references User)
  - `start_date` (DATE, NOT NULL)
  - `end_date` (DATE, NOT NULL)
  - `total_price` (DECIMAL, NOT NULL)
  - `status` (ENUM: pending, confirmed, canceled, NOT NULL)
  - `created_at` (TIMESTAMP, default current time)

- **Payment**
  - `payment_id` (UUID, Primary Key)
  - `booking_id` (UUID, Foreign Key references Booking)
  - `amount` (DECIMAL, NOT NULL)
  - `payment_date` (TIMESTAMP, default current time)
  - `payment_method` (ENUM: credit_card, paypal, stripe, NOT NULL)

- **Review**
  - `review_id` (UUID, Primary Key)
  - `property_id` (UUID, Foreign Key references Property)
  - `user_id` (UUID, Foreign Key references User)
  - `rating` (INTEGER, 1 to 5, NOT NULL)
  - `comment` (TEXT, NOT NULL)
  - `created_at` (TIMESTAMP, default current time)

- **Message**
  - `message_id` (UUID, Primary Key)
  - `sender_id` (UUID, Foreign Key references User)
  - `recipient_id` (UUID, Foreign Key references User)
  - `message_body` (TEXT, NOT NULL)
  - `sent_at` (TIMESTAMP, default current time)

---

## Relationships

- A **User** can host many **Properties**.
- A **User** can make many **Bookings**.
- A **Property** can have many **Bookings**.
- Each **Booking** has one **Payment**.
- Users can write **Reviews** for Properties.
- Users can send **Messages** to other Users.

---

## Indexes and Constraints

- Primary keys are indexed by default.
- Unique constraint on `email` in **User**.
- Foreign key constraints maintain referential integrity.
- Enum fields ensure valid role, status, and payment method values.
- Check constraint on `rating` to be between 1 and 5.

---

This schema is designed to be in Third Normal Form (3NF) to avoid redundancy and ensure data integrity.
