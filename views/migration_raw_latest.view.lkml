view: migration_raw_latest {
  sql_table_name: `waze_dataset.migration_raw_latest` ;;

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }
  dimension: document_id {
    type: string
    sql: ${TABLE}.document_id ;;
  }
  dimension: document_name {
    type: string
    sql: ${TABLE}.document_name ;;
  }
  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
  }
  dimension: old_data {
    type: string
    sql: ${TABLE}.old_data ;;
  }
  dimension: operation {
    type: string
    sql: ${TABLE}.operation ;;
  }
  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp ;;
  }
  measure: count {
    type: count
    drill_fields: [document_name]
  }
}
