# The name of this view in Looker is "Fitbit Metrics2"
view: fitbit_metrics2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `testconnectfitbit.fitbitDS.fitbit_metrics2`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
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
    type: string
    sql: ${TABLE}.Activity_CaloriesDS2 ;;
  }

  dimension: age {
    type: string
    sql: ${TABLE}.age ;;
  }

  dimension: calories {
    type: string
    sql: ${TABLE}.calories ;;
  }

  dimension: calories_burned_ds2 {
    type: string
    sql: ${TABLE}.calories_burned_ds2 ;;
  }

  dimension: corr_heart_steps {
    type: string
    sql: ${TABLE}.corr_heart_steps ;;
  }

  dimension: date_exer {
    type: string
    sql: ${TABLE}.date_exer ;;
  }

  dimension: day_exer {
    type: string
    sql: ${TABLE}.day_exer ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: distance {
    type: string
    sql: ${TABLE}.distance ;;
  }

  dimension: distance_ds2 {
    type: string
    sql: ${TABLE}.DistanceDS2 ;;
  }

  dimension: entropy_heart {
    type: string
    sql: ${TABLE}.entropy_heart ;;
  }

  dimension: entropy_setps {
    type: string
    sql: ${TABLE}.entropy_setps ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: hear_rate {
    type: string
    sql: ${TABLE}.hear_rate ;;
  }

  dimension: height {
    type: string
    sql: ${TABLE}.height ;;
  }

  dimension: id_number_persona {
    type: string
    sql: ${TABLE}.id_number_persona ;;
  }

  dimension: id_persona {
    type: string
    sql: ${TABLE}.id_persona ;;
  }

  dimension: intensity_karvonen {
    type: string
    sql: ${TABLE}.intensity_karvonen ;;
  }

  dimension: minutes_asleep_ds2 {
    type: string
    sql: ${TABLE}.Minutes_AsleepDS2 ;;
  }

  dimension: minutes_awake_ds2 {
    type: string
    sql: ${TABLE}.Minutes_AwakeDS2 ;;
  }

  dimension: minutes_deep_sleep_ds2 {
    type: string
    sql: ${TABLE}.Minutes_Deep_SleepDS2 ;;
  }

  dimension: minutes_fairly_active_ds2 {
    type: string
    sql: ${TABLE}.Minutes_Fairly_ActiveDS2 ;;
  }

  dimension: minutes_light_sleep_ds2 {
    type: string
    sql: ${TABLE}.Minutes_Light_SleepDS2 ;;
  }

  dimension: minutes_lightly_active_ds2 {
    type: string
    sql: ${TABLE}.Minutes_Lightly_ActiveDS2 ;;
  }

  dimension: minutes_rem_sleep_ds2 {
    type: string
    sql: ${TABLE}.Minutes_REM_SleepDS2 ;;
  }

  dimension: minutes_sedentary_ds2 {
    type: string
    sql: ${TABLE}.Minutes_SedentaryDS2 ;;
  }

  dimension: minutes_very_active_ds2 {
    type: string
    sql: ${TABLE}.Minutes_Very_ActiveDS2 ;;
  }

  dimension: month_exer {
    type: string
    sql: ${TABLE}.month_exer ;;
  }

  dimension: norm_heart {
    type: string
    sql: ${TABLE}.norm_heart ;;
  }

  dimension: number_of_awakenings_ds2 {
    type: string
    sql: ${TABLE}.Number_of_AwakeningsDS2 ;;
  }

  dimension: resting_heart {
    type: string
    sql: ${TABLE}.resting_heart ;;
  }

  dimension: sd_norm_heart {
    type: string
    sql: ${TABLE}.sd_norm_heart ;;
  }

  dimension: steps {
    type: string
    sql: ${TABLE}.steps ;;
  }

  dimension: steps_ds2 {
    type: string
    sql: ${TABLE}.StepsDS2 ;;
  }

  dimension: steps_times_distance {
    type: string
    sql: ${TABLE}.steps_times_distance ;;
  }

  dimension: time_in_bed_ds2 {
    type: string
    sql: ${TABLE}.Time_in_BedDS2 ;;
  }

  dimension: weight {
    type: string
    sql: ${TABLE}.weight ;;
  }

  dimension: x1 {
    type: string
    sql: ${TABLE}.X1 ;;
  }

  dimension: year_exer {
    type: string
    sql: ${TABLE}.year_exer ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
