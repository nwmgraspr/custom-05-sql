-- sql/sqlite/case_restaurant_query_order_by_category.sql
-- ============================================================
-- PURPOSE
-- ============================================================
-- Break overall orders performance down by product category.
--
-- This query answers:
-- "How many orders and how much revenue do we have by category?"
--
-- WHY:
-- - Overall totals hide important differences.
-- - Grouping lets us compare parts of the system.
-- - This often reveals where action is needed:
--   * Which categories drive revenue?
--   * Which categories underperform?
--
-- IMPORTANT:
-- This query uses GROUP BY but does NOT join tables yet.
-- We are still working only with the dependent/child table (sale).

SELECT
  product_category,
  COUNT(*) AS order_count,
  ROUND(SUM(amount), 2) AS total_revenue,
  ROUND(AVG(amount), 2) AS avg_order_amount
FROM order
GROUP BY product_category
ORDER BY total_revenue DESC;
