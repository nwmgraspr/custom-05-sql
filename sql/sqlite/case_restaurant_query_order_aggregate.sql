-- sql/sqlite/case_restaurant_query_orders_aggregate.sql
-- ============================================================
-- PURPOSE
-- ============================================================
-- Summarize overall orders activity across ALL stores.
--
-- This query answers:
-- - "What is our total revenue?"
-- - "What is the average sale amount?"
--
-- WHY:
-- - Establishes system-wide performance
-- - Provides a baseline before breaking results down by store
-- - Helps answer:
--   "Is overall performance up or down?"

SELECT
  COUNT(*) AS order_count,
  ROUND(SUM(amount), 2) AS total_revenue,
  ROUND(AVG(amount), 2) AS avg_order_amount
FROM sale;
