connection: "dw_poc-redshift"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: looker_poc_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_poc_project_default_datagroup

explore: dimcallcharacteristics {}

explore: dimcustomer {}

explore: dimdate {}

explore: dimexitpoint {}

explore: dimtime {}

explore: factcalldetail {}
