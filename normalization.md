# Database Normalization to 3NF

This document explains how the database design for the booking system adheres to the Third Normal Form (3NF).

## First Normal Form (1NF)

**Requirement**: Eliminate repeating groups; ensure each field contains only atomic values.

- All tables contain atomic attributes.
- No multivalued fields exist (e.g., emails, phone numbers are stored individually).
- Each row is uniquely identifiable using a primary key (e.g., `user_id`, `property_id`).

✅ **Schema is in 1NF**

---

## Second Normal Form (2NF)

**Requirement**: Must be in 1NF and all non-key attributes must be fully functionally dependent on the entire primary key.

- Each table uses a single-column primary key (`UUID`), so no composite keys exist.
- All non-key attributes are fully dependent on their table's primary key.

✅ **Schema is in 2NF**

---

## Third Normal Form (3NF)

**Requirement**: Must be in 2NF and have no transitive dependencies (non-key attributes must not depend on other non-key attributes).

### Checks:

#### User Table:
- All attributes (first_name, last_name, email, etc.) depend directly on `user_id`.
- No transitive dependencies.

#### Property Table:
- `host_id` is a foreign key referring to `User`, not a derived value.
- All other attributes depend on `property_id`.

#### Booking Table:
- Fully normalized. `status` is atomic and meaningful.
- `total_price` is derived from business logic but stored for performance, which is acceptable under denormalization with justification.

#### Payment Table:
- All attributes directly related to `booking_id`.

#### Review Table:
- `rating`, `comment` relate directly to the review, not user or property.

#### Message Table:
- `sender_id` and `recipient_id` are properly referenced, and no derived fields exist.

✅ **Schema is in 3NF**

---

## Conclusion

The final design avoids redundancy, ensures referential integrity, and meets the standards of 3NF. No further decomposition is required at this point. If performance issues arise in real-world use, we can consider controlled denormalization where justified.
