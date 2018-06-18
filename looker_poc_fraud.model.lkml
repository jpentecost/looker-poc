connection: "fraud_reporting-dev"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

explore: fraud_detail {
  sql_always_where: ${fraud_scoring.attribute_name} = 'ANI' ;;
  join: fraud_scoring {
    sql_on: ${fraud_detail.app_log_id} = ${fraud_scoring.app_log_id};;
    relationship: many_to_one
  }
}


explore: latest_record_for_ani {
  label: "Explore for Fraud Scoring"

  join: fraud_scoring{
    sql_on: ${latest_record_for_ani.last_record} = ${fraud_scoring.id} ;;
    relationship: one_to_one
    type: inner
  }
  join: score_details {
    sql_on: ${fraud_scoring.id} = ${score_details.id} ;;
    relationship: one_to_many
  }
}
