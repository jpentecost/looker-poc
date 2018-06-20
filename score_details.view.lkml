view: score_details {
  derived_table: {
    sql: select fraud_scoring.id, parsed.* from fraud_scoring, lateral
                jsonb_to_recordset(fraud_scoring.report_data) as parsed(
                    "category" text,
                    "item" text,
                    "metric" text,
                    "displayOrder" integer,
                    "value" text,
                    "score" integer) ;;

#   persist_for: "24 hours"
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: item {
    type: string
    sql: ${TABLE}.item ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }

  measure: count {
    label: "Component Count"
    type: count
  }

  measure: behavior_score_total_drill {
    hidden: yes
    type: count
#     sql: 1 ;;
    filters: { field: category value: "Behavior"}
    drill_fields: [item,value,category,score]
  }

  measure: reputation_score_total_drill {
    hidden: yes
    type: count
#     sql: 1 ;;
    filters: { field: category value: "Reputation"}
    drill_fields: [item,value,category,score]
  }

  measure: caller_id_score_total_drill {
    hidden: yes
    type: count
#     sql: 1 ;;
    filters: { field: category value: "Caller ID"}
    drill_fields: [item,value,category,score]
  }

  measure: channel_score_total_drill {
    hidden: yes
    type: count
#     sql: 1 ;;
    filters: { field: category value: "Channel"}
    drill_fields: [item,value,category,score]
  }






}
