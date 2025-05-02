view: tbl_clstd_irregularities {
  sql_table_name: `waze_dataset.tbl_clstd_irregularities` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
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
  dimension: cause_alert_uuid {
    type: string
    sql: ${TABLE}.causeAlertUUID ;;
  }
  dimension: cause_type {
    type: string
    sql: ${TABLE}.causeType ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension: delay_seconds {
    type: number
    sql: ${TABLE}.delaySeconds ;;
  }
  dimension_group: detection_date_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.detectionDateTS ;;
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
  dimension: geo_wkt {
    type: string
    sql: ${TABLE}.geoWKT ;;
  }
  dimension: highway {
    type: yesno
    sql: ${TABLE}.highway ;;
  }
  dimension: jam_level {
    type: number
    sql: ${TABLE}.jamLevel ;;
  }
  dimension: length {
    type: number
    sql: ${TABLE}.length ;;
  }
  dimension: n_comments {
    type: number
    sql: ${TABLE}.nComments ;;
  }
  dimension: n_images {
    type: number
    sql: ${TABLE}.nImages ;;
  }
  dimension: n_thumbs_up {
    type: number
    sql: ${TABLE}.nThumbsUp ;;
  }
  dimension: regular_speed {
    type: number
    sql: ${TABLE}.regularSpeed ;;
  }
  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
  dimension: severity {
    type: number
    sql: ${TABLE}.severity ;;
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
  dimension: trend {
    type: number
    sql: ${TABLE}.trend ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  dimension_group: update_date_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updateDateTS ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
