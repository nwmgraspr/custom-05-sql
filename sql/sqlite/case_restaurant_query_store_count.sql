-- sql/sqlite/case_restaurant_query_store_count.sql
-- ============================================================
-- PURPOSE
-- ============================================================
-- Answer a simple structural question:
-- "How many stores do we have in our retail system?"
--
-- This query does NOT involve the order table.
-- It operates only on the independent/parent table.
--
-- WHY:
-- - Establishes the size of the system
-- - Provides context for other KPIs
-- - Helps answer questions like:
--   "Are we growing by adding locations, or just increasing orders?"

SELECT
  COUNT(*) AS store_count
FROM store;
