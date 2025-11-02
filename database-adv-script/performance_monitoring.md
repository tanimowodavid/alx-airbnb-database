# Task 6

## Objective

Continuously monitor and refine database performance by analyzing query execution plans and making schema adjustments.

## Report

To evaluate query performance, I monitored several frequently used queries with tools like `EXPLAIN ANALYZE` and `SHOW PROFILE`. These reports helped reveal where time was being spent during execution. The results showed full table scans happening on the `Booking` and `Property` tables when filtering on foreign keys and date ranges. This indicated insufficient indexing and inefficient data lookup patterns. Another bottleneck appeared in join operations between the `User`, `Booking`, and `Property` tables, where lack of support indexes caused slower hash joins instead of indexed lookups.

Based on these findings, I added indexes to key columns such as `Booking.user_id`, `Booking.property_id`, and `Property.host_id`, ensuring faster access paths. In addition, partitioning the `Booking` table by `start_date` helped reduce search scope for date-based queries. After these changes, query execution time improved significantly; operations that initially required full scans shifted to efficient index scans. Overall, the combination of indexing and partitioning resulted in faster response times, reduced CPU usage, and smoother database performance under load.
