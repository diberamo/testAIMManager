# The name of this view in Looker is "Fitbit Metrics"
view: fitbit_metrics {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `testconnectfitbit.fitbitDS.fitbit_metrics`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number

    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Activity" in Explore.

  dimension: activity {
    type: string
    sql: ${TABLE}.activity ;;
  }

  dimension: activity_calories_ds2 {
    type: number
    sql: ${TABLE}.Activity_CaloriesDS2 ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: calories {
    type: number
    sql: ${TABLE}.calories ;;
  }

  dimension: calories_burned_ds2 {
    type: number
    sql: ${TABLE}.Calories_BurnedDS2 ;;
  }

  dimension: corr_heart_steps {
    type: number
    sql: ${TABLE}.corr_heart_steps ;;
  }

  dimension: date_exer {
    type: string
    sql: ${TABLE}.date_exer ;;
  }


  dimension: anio_calculado {
    type: number
    sql:split(fitbit_metrics.date_exer,"/")[offset(2)]   ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: prueba_camila {
    type: string
    sql:  concat(${device},${age},${calories});;
  }

  dimension: distance {
    type: number
    sql: ${TABLE}.distance ;;
  }

  dimension: distance_ds2 {
    type: number
    sql: ${TABLE}.DistanceDS2 ;;
  }

  dimension: entropy_heart {
    type: number
    sql: ${TABLE}.entropy_heart ;;
  }

  dimension: entropy_setps {
    type: number
    sql: ${TABLE}.entropy_setps ;;
  }

  dimension: gender {
    type: number
    sql: ${TABLE}.gender ;;
  }

  dimension: hear_rate {
    type: number
    sql: ${TABLE}.hear_rate ;;
  }

  dimension: height {
    type: number
    sql: ${TABLE}.height ;;
  }

  dimension: id_number_persona {
    type: number
    sql: ${TABLE}.id_number_persona ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_id_number_persona {
    type: sum
    sql: ${id_number_persona} ;;
  }

  measure: average_id_number_persona {
    type: average
    sql: ${id_number_persona} ;;
  }

  dimension: id_persona {
    type: number
    sql: ${TABLE}.id_persona ;;
  }

  dimension: intensity_karvonen {
    type: number
    sql: ${TABLE}.intensity_karvonen ;;
  }

  dimension: minutes_asleep_ds2 {
    type: number
    sql: ${TABLE}.Minutes_AsleepDS2 ;;
  }

  dimension: minutes_awake_ds2 {
    type: number
    sql: ${TABLE}.Minutes_AwakeDS2 ;;
  }

  dimension: minutes_deep_sleep_ds2 {
    type: number
    sql: ${TABLE}.Minutes_Deep_SleepDS2 ;;
  }

  dimension: minutes_fairly_active_ds2 {
    type: number
    sql: ${TABLE}.Minutes_Fairly_ActiveDS2 ;;
  }

  dimension: minutes_light_sleep_ds2 {
    type: number
    sql: ${TABLE}.Minutes_Light_SleepDS2 ;;
  }

  dimension: minutes_lightly_active_ds2 {
    type: number
    sql: ${TABLE}.Minutes_Lightly_ActiveDS2 ;;
  }

  dimension: minutes_rem_sleep_ds2 {
    type: number
    sql: ${TABLE}.Minutes_REM_SleepDS2 ;;
  }

  dimension: minutes_sedentary_ds2 {
    type: number
    sql: ${TABLE}.Minutes_SedentaryDS2 ;;
  }

  dimension: minutes_very_active_ds2 {
    type: number
    sql: ${TABLE}.Minutes_Very_ActiveDS2 ;;
  }

  dimension: month_exer {
    type: number
    sql: ${TABLE}.month_exer ;;
  }

  dimension: norm_heart {
    type: number
    sql: ${TABLE}.norm_heart ;;
  }

  dimension: number_of_awakenings_ds2 {
    type: number
    sql: ${TABLE}.Number_of_AwakeningsDS2 ;;
  }

  dimension: resting_heart {
    type: number
    sql: ${TABLE}.resting_heart ;;
  }

  dimension: sd_norm_heart {
    type: number
    sql: ${TABLE}.sd_norm_heart ;;
  }

  dimension: steps {
    type: number
    sql: ${TABLE}.steps ;;
  }

  dimension: steps_ds2 {
    type: number
    sql: ${TABLE}.StepsDS2 ;;
  }

  dimension: steps_times_distance {
    type: number
    sql: ${TABLE}.steps_times_distance ;;
  }

  dimension: time_in_bed_ds2 {
    type: number
    sql: ${TABLE}.Time_in_BedDS2 ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.weight ;;
  }

  dimension: x1 {
    type: number
    sql: ${TABLE}.X1 ;;
  }

  dimension: year_exer {
    type: number
    sql: ${TABLE}.year_exer ;;
  }

  dimension: height_div {
    type: number
    sql:  (${fitbit_metrics.height}/100);;
  }

  dimension: imc_num {
    type: number
    sql:  ${fitbit_metrics.weight}/(${height_div}*${height_div});;
  }

  dimension: cdc_imc_num {
    type: string
    sql:  if(${imc_num}>18.5 and ${imc_num}<24.9,"Peso Saludable", if(${imc_num}<18.5,"Bajo Peso",if(${imc_num}>25.0 AND ${imc_num}<29.9,"Sobrepeso","Obesidad")));;
  }

  dimension: gender_string {
    type: string
    sql:  if(${gender}=1,"Mujer","Hombre") ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
