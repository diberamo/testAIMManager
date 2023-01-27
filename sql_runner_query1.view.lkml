view: sql_runner_query1 {
  derived_table: {
    sql: select fitbit_metrics_date_exer, fitbit_metrics_anio_calculado, fitbit_metrics_dia_calculado,
      fitbit_metrics_mes_calculado,
       fitbit_metrics_activity,
         fitbit_metrics_calories,
          fitbit_metrics_distance,
           fitbit_metrics_gender,
          fitbit_metrics_id,
          fitbit_metrics_id_persona

      from (
      SELECT
      fitbit_metrics.date_exer  AS fitbit_metrics_date_exer,
      split(fitbit_metrics.date_exer,"/")[offset(2)]    AS fitbit_metrics_anio_calculado,
      split(fitbit_metrics.date_exer,"/")[offset(0)]    AS fitbit_metrics_dia_calculado,
      split(fitbit_metrics.date_exer,"/")[offset(1)]    AS fitbit_metrics_mes_calculado,
      fitbit_metrics.activity  AS fitbit_metrics_activity,
      fitbit_metrics.calories  AS fitbit_metrics_calories,
      fitbit_metrics.distance  AS fitbit_metrics_distance,
      fitbit_metrics.gender  AS fitbit_metrics_gender,
      fitbit_metrics.id  AS fitbit_metrics_id,
      fitbit_metrics.id_persona  AS fitbit_metrics_id_persona
      FROM `testconnectfitbit.fitbitDS.fitbit_metrics`
      AS fitbit_metrics

      ) as t

      limit 500
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: fitbit_metrics_date_exer {
    type: string
    sql: ${TABLE}.fitbit_metrics_date_exer ;;
  }

  dimension: fitbit_metrics_anio_calculado {
    type: string
    sql: ${TABLE}.fitbit_metrics_anio_calculado ;;
  }

  dimension: fitbit_metrics_dia_calculado {
    type: string
    sql: ${TABLE}.fitbit_metrics_dia_calculado ;;
  }

  dimension: fitbit_metrics_mes_calculado {
    type: string
    sql: ${TABLE}.fitbit_metrics_mes_calculado ;;
  }

  dimension: fitbit_metrics_activity {
    type: string
    sql: ${TABLE}.fitbit_metrics_activity ;;
  }

  dimension: fitbit_metrics_calories {
    type: number
    sql: ${TABLE}.fitbit_metrics_calories ;;
  }

  dimension: fitbit_metrics_distance {
    type: number
    sql: ${TABLE}.fitbit_metrics_distance ;;
  }

  dimension: fitbit_metrics_gender {
    type: number
    sql: ${TABLE}.fitbit_metrics_gender ;;
  }

  dimension: fitbit_metrics_id {
    type: number
    sql: ${TABLE}.fitbit_metrics_id ;;
  }

  dimension: fitbit_metrics_id_persona {
    type: number
    sql: ${TABLE}.fitbit_metrics_id_persona ;;
  }

  set: detail {
    fields: [
      fitbit_metrics_date_exer,
      fitbit_metrics_anio_calculado,
      fitbit_metrics_dia_calculado,
      fitbit_metrics_mes_calculado,
      fitbit_metrics_activity,
      fitbit_metrics_calories,
      fitbit_metrics_distance,
      fitbit_metrics_gender,
      fitbit_metrics_id,
      fitbit_metrics_id_persona
    ]
  }
}
