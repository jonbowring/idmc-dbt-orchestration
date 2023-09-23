SELECT
  "booking_date",
  "hotel",
  "cost",
  AVG("cost") OVER (
    ORDER BY "booking_date" ROWS BETWEEN 29 PRECEDING AND CURRENT ROW
  ) as "30_day_avg_cost",
  "cost" -   AVG("cost") OVER (
    ORDER BY "booking_date" ROWS BETWEEN 29 PRECEDING AND CURRENT ROW
  ) as "diff_btw_actual_avg"
FROM {{ ref('prepped_data') }}