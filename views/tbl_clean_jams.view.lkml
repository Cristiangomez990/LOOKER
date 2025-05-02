view: tbl_clean_jams {
  sql_table_name: `waze_dataset.tbl_clean_jams` ;;

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
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: delay {
    type: number
    sql: ${TABLE}.delay ;;
  }
  dimension: direct {
    type: number
    sql: ${TABLE}.direct ;;
  }
  dimension: endnode {
    type: string
    sql: ${TABLE}.endnode ;;
  }
  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }
  dimension: jams_id {
    type: number
    sql: ${TABLE}.jams_id ;;
  }
  dimension: level {
    type: number
    sql: ${TABLE}.level ;;
  }
  dimension: project_id {
    type: string
    sql: ${TABLE}.project_id ;;
  }
  dimension: speed {
    type: number
    sql: ${TABLE}.speed ;;
  }
  dimension: speedkmh {
    type: number
    sql: ${TABLE}.speedkmh ;;
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
  dimension_group: ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ts ;;
  }
  dimension: turn_type {
    type: string
    sql: ${TABLE}.turnType ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  measure: count {
    type: count
  }
}
