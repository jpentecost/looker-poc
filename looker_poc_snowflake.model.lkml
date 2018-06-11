connection: "dw_poc-snowflake"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: looker_poc_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_poc_project_default_datagroup

#explore: dimcallcharacteristics {}

#explore: dimcustomer {}

#explore: dimdate {}

#explore: dimexitpoint {}

#explore: dimtime {}

#explore: factcalldetail {}

explore: factcalldetail_sf {
  label: "Call Detail Record Data (Snowflake)"
  view_label: "Fact - Call Detail"
  group_label: "Contact Solutions Data"

  join: dimcallcharacteristics_sf {
    view_label: "Dim - Call Characteristics"
    type: inner
    relationship: many_to_one
    sql_on: ${factcalldetail_sf.callcharkey} = ${dimcallcharacteristics_sf.callcharkey} ;;
  }

  join: dimcustomer_sf {
    view_label: "Dim - Customer"
    type: inner
    relationship: many_to_one
    sql_on: ${factcalldetail_sf.customerkey} = ${dimcustomer_sf.customerkey} ;;
  }

  join: dimdate_sf {
    view_label: "Dim - Date"
    type: inner
    relationship: many_to_one
    sql_on: ${factcalldetail_sf.datekey} = ${dimdate_sf.datekey} ;;
  }

  join: dimexitpoint_sf {
    view_label: "Dim - Exit Point"
    type: inner
    relationship: many_to_one
    sql_on: ${factcalldetail_sf.exitpointkey} = ${dimexitpoint_sf.exitpointkey} ;;
  }

  join: dimtime_sf {
    view_label: "Dim - Time"
    type: inner
    relationship: many_to_one
    sql_on: ${factcalldetail_sf.timekey} = ${dimtime_sf.timekey} ;;
  }
}
