view: ivan {
  derived_table: {
    sql: SELECT
          if((fitbit_metrics.weight/((fitbit_metrics.height/100)*(fitbit_metrics.height/100)))>18.5 and (fitbit_metrics.weight/((fitbit_metrics.height/100)*(fitbit_metrics.height/100)))<24.9,"Peso Saludable", if((fitbit_metrics.weight/((fitbit_metrics.height/100)*(fitbit_metrics.height/100)))<18.5,"Bajo Peso",if((fitbit_metrics.weight/((fitbit_metrics.height/100)*(fitbit_metrics.height/100)))>25.0 AND (fitbit_metrics.weight/((fitbit_metrics.height/100)*(fitbit_metrics.height/100)))<29.9,"Sobrepeso","Obesidad"))) AS fitbit_metrics_cdc_imc_num, count(*) as t
      FROM `testconnectfitbit.fitbitDS.fitbit_metrics`
           AS fitbit_metrics
      group by 1
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: fitbit_metrics_cdc_imc_num {
    type: string
    sql: ${TABLE}.fitbit_metrics_cdc_imc_num ;;
  }

  dimension: t {
    type: number
    sql: ${TABLE}.t ;;
  }

  set: detail {
    fields: [fitbit_metrics_cdc_imc_num, t]
  }
}
