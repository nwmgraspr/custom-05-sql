-- sql/sqlite/case_restaurant_query_orders_count.sql
-- ============================================================
-- PURPOSE
-- ============================================================
-- Answer a basic activity question:
-- "How many orders events have occurred?"
--
-- This query operates on the dependent/child table.
--
-- WHY:
-- - Volume and revenue are different signals
-- - A store may have many small orders or few large ones
-- - Analysts often start by understanding event counts
--   before analyzing monetary impact

SELECT
  COUNT(*) AS order_count
FROM order;
