# Task 5

## objective

Implement table partitioning to optimize queries on large datasets.

### Report

After partitioning the Booking table by start_date, query performance improved noticeably. Queries that filtered by date now scan only the relevant partition instead of the entire table, which reduced execution time and lowered I/O cost. Index usage became more efficient because each partition maintains a smaller data set, so lookups on user or property fields executed faster.

#### Partitioning the Booking table:

- Improves query performance for date-filtered queries

- Reduces full-table scans

- Speeds up maintenance on older data

- Helps scalability as bookings grow over time
