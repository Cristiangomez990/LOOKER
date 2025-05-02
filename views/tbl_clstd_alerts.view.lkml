view: tbl_clstd_alerts {
  sql_table_name: `waze_dataset.tbl_clstd_alerts` ;;

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
  dimension: confidence {
    type: number
    sql: ${TABLE}.confidence ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }

  dimension: position {
    type: location
    sql_latitude: st_y( ${TABLE}.geo) ;;
    sql_longitude: st_x( ${TABLE}.geo) ;;
  }


  dimension: geo_wkt {
    type: string
    sql: ${TABLE}.geoWKT ;;
  }
  dimension: magvar {
    type: number
    sql: ${TABLE}.magvar ;;
  }
  dimension: n_thumbs_up {
    type: number
    sql: ${TABLE}.nThumbsUp ;;
  }
  dimension: reliability {
    type: number
    sql: ${TABLE}.reliability ;;
  }
  dimension: report_rating {
    type: number
    sql: ${TABLE}.reportRating ;;
  }
  dimension: road_type {
    type: number
    sql: ${TABLE}.roadType ;;
  }
  dimension: street {
    type: string
    sql: ${TABLE}.street ;;
  }
  dimension: subtype {
    type: string
    sql: ${TABLE}.subtype ;;
  }
  dimension_group: ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ts ;;
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
  }
  measure: jam_count {
    type: count
    filters: [type: "JAM"]
  }

  measure: accident_count {
    type: count
    filters: [type: "ACCIDENT"]
  }


  measure: road_closed_count {
    type: count
    filters: [type: "ROAD_CLOSED"]
  }

  measure: hazard_count {
    type: count
    filters: [type: "HAZARD"]
  }


}
