view: tbl_clstd_jams {
  sql_table_name: `waze_dataset.tbl_clstd_jams` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
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
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension: delay {
    type: number
    sql: ${TABLE}.delay ;;
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
  dimension: length {
    type: number
    sql: ${TABLE}.length ;;
  }
  dimension: level {
    type: number
    sql: ${TABLE}.level ;;
  }
  dimension: speed {
    type: number
    sql: ${TABLE}.speed ;;
  }
  dimension: speed_kmh {
    type: number
    sql: ${TABLE}.speedKMH ;;
  }
  dimension: start_node {
    type: string
    sql: ${TABLE}.startNode ;;
  }
  dimension: street {
    type: string
    sql: ${TABLE}.street ;;
  }
  dimension_group: ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ts ;;
  }
  dimension: turntype {
    type: string
    sql: ${TABLE}.turntype ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
