view: fraud_scoring {
  sql_table_name: public.fraud_scoring ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: app_log_id {
    type: string
    sql: ${TABLE}.app_log_id ;;
  }

  dimension: app_name {
    type: string
    sql: ${TABLE}.app_name ;;
  }

  dimension: attribute_name {
    type: string
    sql: ${TABLE}.attribute_name ;;
  }

  dimension: attribute_value {
    type: string
    sql: ${TABLE}.attribute_value ;;
  }

  dimension: caller_id_score {
    type: number
    value_format_name: id
    sql: ${TABLE}.caller_id_score ;;
  }

  dimension: caller_id_score_max_value {
    type: number
    value_format_name: id
    sql: ${TABLE}.caller_id_score_max_value ;;
  }

  dimension: combined_score {
    type: number
    sql: ${TABLE}.combined_score ;;
  }

  dimension_group: create_tstamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.create_tstamp ;;
  }

  dimension: create_user {
    type: string
    sql: ${TABLE}.create_user ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension_group: event_tstamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.event_tstamp ;;
  }

  dimension: invalid_score {
    type: number
    sql: ${TABLE}.invalid_score ;;
  }

  dimension: invalid_score_max_value {
    type: number
    sql: ${TABLE}.invalid_score_max_value ;;
  }

  dimension_group: modified_tstamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.modified_tstamp ;;
  }

  dimension: raw_combined_score {
    type: number
    sql: ${TABLE}.raw_combined_score ;;
  }

  dimension: raw_risk_score {
    type: number
    sql: ${TABLE}.raw_risk_score ;;
  }

  dimension: report_data {
    type: string
    sql: ${TABLE}.report_data ;;
  }

  dimension: risk_score {
    type: number
    sql: ${TABLE}.risk_score ;;
  }

  dimension: scoring_interval {
    type: string
    sql: ${TABLE}.scoring_interval ;;
  }

  dimension: threat_level {
    type: string
    sql: ${TABLE}.threat_level ;;
  }

  dimension: total_behavior_score {
    type: number
    sql: ${TABLE}.total_behavior_score ;;
  }

  dimension: total_behavior_score_max_value {
    type: number
    sql: ${TABLE}.total_behavior_score_max_value ;;
  }

  dimension: total_reputation_score {
    type: number
    sql: ${TABLE}.total_reputation_score ;;
  }

  dimension: total_reputation_score_max_value {
    type: number
    sql: ${TABLE}.total_reputation_score_max_value ;;
  }

  measure: behavior_score_total {
    type: sum
    sql: ${TABLE}.total_behavior_score ;;
    drill_fields: [score_details.item,score_details.value,score_details.category,score_details.score]
    link: { label: "Show All {{score_details.behavior_score_total_drill._value}} Behavior Components" url: "{{score_details.behavior_score_total_drill._link}}" }
  }

  measure: count {
    type: count
    drill_fields: [id, app_name, attribute_name]
  }
}
