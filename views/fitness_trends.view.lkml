view: fitness_trends {
  derived_table: {
    sql: SELECT
          if(fitbit_metrics.gender=1,"Mujer","Hombre")  AS fitbit_metrics_gender_string,
          fitbit_metrics.activity  AS fitbit_metrics_activity,
         -- fitbit_metrics.calories  AS fitbit_metrics_activity_calories_ds2,
          count(1) as entrenamientos,
          (avg(fitbit_metrics.calories) * 1000) as calorias,
          avg(fitbit_metrics.distance) as distancia

      FROM `testconnectfitbit.fitbitDS.fitbit_metrics`
      AS fitbit_metrics
      GROUP BY
      1,
      2
      ORDER BY
      1
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: fitbit_metrics_gender_string {
    type: string
    sql: ${TABLE}.fitbit_metrics_gender_string ;;
  }

  dimension: fitbit_metrics_activity {
    type: string
    sql: ${TABLE}.fitbit_metrics_activity ;;
  }

  dimension: entrenamientos {
    type: number
    sql: ${TABLE}.entrenamientos ;;
  }

  dimension: calorias {
    type: number
    sql: ${TABLE}.calorias ;;
  }

  dimension: distancia {
    type: number
    sql: ${TABLE}.distancia ;;
  }

  set: detail {
    fields: [fitbit_metrics_gender_string, fitbit_metrics_activity, entrenamientos, calorias, distancia]
  }
}
