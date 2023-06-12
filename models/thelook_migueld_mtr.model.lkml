connection: "salesgcpea"

# include all the views
include: "/views/**/*.view"

datagroup: thelook_migueld_mtr_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: thelook_migueld_mtr_default_datagroup

explore: customers {}

explore: date {}

explore: markets {}

explore: products {}

explore: transactions {}
