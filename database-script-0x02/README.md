# Booking System Database

## Overview

This database schema models a booking platform with Users, Properties, Bookings, Payments, Reviews, and Messages.

## Tables

- **User**: Stores user information including roles (guest, host, admin).
- **Property**: Listings hosted by users.
- **Booking**: Reservation details linking users and properties.
- **Payment**: Payment information for bookings.
- **Review**: User ratings and comments on properties.
- **Message**: Communication between users.

## Sample Data

The database is populated with sample data representing:

- Multiple users with different roles.
- Properties hosted by users.
- Bookings made by guests.
- Payments associated with bookings.
- Reviews for properties.
- Messages exchanged between users.

## Usage

- Run the provided SQL scripts to create tables and insert sample data.
- Use this schema for development, testing, or learning purposes.

## Notes

- UUIDs are used as primary keys.
- Proper constraints and indexes ensure data integrity and performance.

---

Feel free to customize and extend the schema as needed.
