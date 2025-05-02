view: tbl_clean_irregularities {
  sql_table_name: `waze_dataset.tbl_clean_irregularities` ;;

  dimension_group: _partitiondate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }
  dimension_group: _partitiontime {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }
  dimension: alerts_count {
    type: number
    sql: ${TABLE}.alertsCount ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: delay {
    type: number
    sql: ${TABLE}.delay ;;
  }
  dimension_group: detection_date_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.detectionDateTS ;;
  }
  dimension: direct {
    type: number
    sql: ${TABLE}.direct ;;
  }
  dimension: drivers_count {
    type: number
    sql: ${TABLE}.driversCount ;;
  }
  dimension: end_node {
    type: string
    sql: ${TABLE}.endNode ;;
  }
  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }
  dimension: irregularities_id {
    type: string
    sql: ${TABLE}.irregularities_id ;;
  }
  dimension: project_id {
    type: string
    sql: ${TABLE}.project_id ;;
  }
  dimension: regular_speed {
    type: number
    sql: ${TABLE}.regularSpeed ;;
  }
  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
  dimension: speed {
    type: number
    sql: ${TABLE}.speed ;;
  }
  dimension: start_node {
    type: string
    sql: ${TABLE}.startNode ;;
  }
  dimension: street {
    type: string
    sql: ${TABLE}.street ;;
  }
  dimension: tlength {
    type: number
    sql: ${TABLE}.tlength ;;
  }
  dimension_group: update_date_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updateDateTS ;;
  }
  measure: count {
    type: count
  }
}
