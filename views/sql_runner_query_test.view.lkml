view: sql_runner_query_test {
  derived_table: {
    sql: SELECT

          COALESCE(SUM(CAST( fitbit_metrics.Calories_BurnedDS2  AS NUMERIC)), 0) AS calorias
      FROM `testconnectfitbit.fitbitDS.fitbit_metrics`
           AS fitbit_metrics
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: calorias {
    type: number
    sql: ${TABLE}.calorias ;;
  }

  set: detail {
    fields: [calorias]
  }
}
