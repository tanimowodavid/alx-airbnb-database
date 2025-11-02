# Task 4

## Objective

Refactor complex queries to improve performance.

## Report

The initial query worked correctly but had performance drawbacks. It joined multiple large tables without ensuring indexes were in place, which could lead to full table scans, slower execution, and higher resource usage. It also joined all records regardless of booking status, increasing the workload unnecessarily.

The improved version addressed these issues by adding indexes on common join columns, allowing the database engine to locate matching records faster. It also optimized the join logic by keeping only the required LEFT JOIN and applying filters to reduce the result set early. Overall, the refactored query reduces execution time, improves efficiency, and scales better with increasing data volume.

### Improvements achieved:

- Joins now use indexed columns

- WHERE clause filters rows early

- Keeps LEFT JOIN only where necessary
