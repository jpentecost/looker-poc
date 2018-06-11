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

#explore: dimcallcharacteristics {}

#explore: dimcustomer {}

#explore: dimdate {}

#explore: dimexitpoint {}

#explore: dimtime {}

#explore: factcalldetail {}

explore: factcalldetail {
  label: "Call Detail Record Data (Redshift)"
  view_label: "Fact - Call Detail"
  group_label: "Contact Solutions Data"

  access_filter: {
    user_attribute: division
    field: dimcustomer.division
  }

  join: dimcallcharacteristics {
    view_label: "Dim - Call Characteristics"
    type: inner
    relationship: many_to_one
    sql_on: ${factcalldetail.callcharkey} = ${dimcallcharacteristics.callcharkey} ;;
  }

  join: dimcustomer {
    view_label: "Dim - Customer"
    type: inner
    relationship: many_to_one
    sql_on: ${factcalldetail.customerkey} = ${dimcustomer.customerkey} ;;
  }

  join: dimdate {
    view_label: "Dim - Date"
    type: inner
    relationship: many_to_one
    sql_on: ${factcalldetail.datekey} = ${dimdate.datekey} ;;
  }

  join: dimexitpoint {
    view_label: "Dim - Exit Point"
    type: inner
    relationship: many_to_one
    sql_on: ${factcalldetail.exitpointkey} = ${dimexitpoint.exitpointkey} ;;
  }

  join: dimtime {
    view_label: "Dim - Date"
    type: inner
    relationship: many_to_one
    sql_on: ${factcalldetail.timekey} = ${dimtime.timekey} ;;
    }
}
