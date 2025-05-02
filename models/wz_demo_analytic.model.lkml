connection: "waze-analitica"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: wz_demo_analytic_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: wz_demo_analytic_default_datagroup



explore: tbl_clstd_alerts {}

explore: tbl_clstd_jams {}


explore: tbl_clstd_irregularities {}
