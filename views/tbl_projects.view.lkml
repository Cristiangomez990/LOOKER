view: tbl_projects {
  sql_table_name: `waze_dataset.tbl_projects` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    description: "id del proyecto"
    sql: ${TABLE}.id ;;
  }
  dimension: direct {
    type: string
    description: "Anillo de influencia directa"
    sql: ${TABLE}.direct ;;
  }
  dimension: geo {
    type: string
    description: "Punto central del proyecto"
    sql: ${TABLE}.geo ;;
  }
  dimension: indications {
    type: string
    description: "Calles sobre las cuales se realizara las obras, estas estaran separadas por coma (,)"
    sql: ${TABLE}.indications ;;
  }
  dimension: indirect {
    type: string
    description: "Anillo de influencia indirecta"
    sql: ${TABLE}.indirect ;;
  }
  dimension: name {
    type: string
    description: "Nombre del proyecto"
    sql: ${TABLE}.name ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
