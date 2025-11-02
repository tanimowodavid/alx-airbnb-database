# Task3

## Objective

Identify and create indexes to improve query performance.

| Table    | Column              | Reason for Index                 |
| -------- | ------------------- | -------------------------------- |
| User     | user_id             | Primary key, joins               |
|          | email               | Unique lookup (login / queries)  |
|          |                     |                                  |
| Property | property_id         | Primary key, joins               |
|          | host_id             | Foreign key (queries per host)   |
|          | location (optional) | Filtering/search by location     |
|          |                     |                                  |
| Booking  | booking_id          | Primary key                      |
|          | user_id             | Join/filter bookings by user     |
|          | property_id         | Join/filter bookings by property |
|          |                     |                                  |
| Review   | property_id         | Query reviews per property       |
