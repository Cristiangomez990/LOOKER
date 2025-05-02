view: projects_raw_changelog {
  sql_table_name: `waze_dataset.projects_raw_changelog` ;;

  dimension: data {
    type: string
    description: "The full JSON representation of the document state after the indicated operation is applied. This field will be null for DELETE operations."
    sql: ${TABLE}.data ;;
  }
  dimension: document_id {
    type: string
    description: "The document id as defined in the firestore database."
    sql: ${TABLE}.document_id ;;
  }
  dimension: document_name {
    type: string
    description: "The full name of the changed document, for example, projects/collection/databases/(default)/documents/users/me)."
    sql: ${TABLE}.document_name ;;
  }
  dimension: event_id {
    type: string
    description: "The ID of the document change event that triggered the Cloud Function created by the extension. Empty for imports."
    sql: ${TABLE}.event_id ;;
  }
  dimension: old_data {
    type: string
    description: "The full JSON representation of the document state before the indicated operation is applied. This field will be null for CREATE operations."
    sql: ${TABLE}.old_data ;;
  }
  dimension: operation {
    type: string
    description: "One of CREATE, UPDATE, IMPORT, or DELETE."
    sql: ${TABLE}.operation ;;
  }
  dimension: path_params {
    type: string
    description: "JSON string representing wildcard params with Firestore Document ids"
    sql: ${TABLE}.path_params ;;
  }
  dimension_group: timestamp {
    type: time
    description: "The commit timestamp of this change in Cloud Firestore. If the operation is IMPORT, this timestamp is epoch to ensure that any operation on an imported document supersedes the IMPORT."
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp ;;
  }
  measure: count {
    type: count
    drill_fields: [document_name]
  }
}
