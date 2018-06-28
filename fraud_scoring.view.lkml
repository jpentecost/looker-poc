view: fraud_scoring {
  sql_table_name: public.fraud_scoring ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    hidden: yes
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
    group_label: "Attribute"
  }

  dimension: attribute_value {
    type: string
    sql: ${TABLE}.attribute_value ;;
    group_label: "Attribute"
  }

  dimension: caller_id_score {
    type: number
    value_format_name: id
    sql: ${TABLE}.caller_id_score ;;
    group_label: "Scores"
  }

  dimension: caller_id_score_max_value {
    type: number
    value_format_name: id
    sql: ${TABLE}.caller_id_score_max_value ;;
    group_label: "Scores"
  }

  dimension: combined_score {
    type: number
    sql: ${TABLE}.combined_score ;;
    group_label: "Scores"
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
    label: "Create Timestamp"
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
      day_of_week,
      day_of_month,
      hour_of_day,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.event_tstamp ;;
    label: "Event Timestamp"
  }

  dimension: hour_of_day_tier {
    group_label: "Event Time Tiers"
    type: tier
    sql: ${event_tstamp_hour_of_day} ;;
    tiers: [0,6,12,18]
    style: interval
  }

  dimension: day_of_month_tier {
    group_label: "Event Time Tiers"
    type: tier
    sql: ${event_tstamp_day_of_month} ;;
    tiers: [5,10,15,20,25]
    style: interval
  }

  dimension: invalid_score {
    type: number
    sql: ${TABLE}.invalid_score ;;
    group_label: "Scores"
  }

  dimension: invalid_score_max_value {
    type: number
    sql: ${TABLE}.invalid_score_max_value ;;
    group_label: "Scores"
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
    label: "Modified Timestamp"
  }

  dimension: raw_combined_score {
    type: number
    sql: ${TABLE}.raw_combined_score ;;
    group_label: "Scores"
  }

  dimension: raw_risk_score {
    type: number
    sql: ${TABLE}.raw_risk_score ;;
    group_label: "Scores"
  }

  dimension: report_data {
    type: string
    sql: ${TABLE}.report_data ;;
    hidden: yes
  }

  dimension: risk_score {
    type: number
    sql: ${TABLE}.risk_score ;;
    group_label: "Scores"
  }

  dimension: scoring_interval {
    type: string
    sql: ${TABLE}.scoring_interval ;;
  }

  dimension: threat_level {
    type: string
    sql: ${TABLE}.threat_level ;;
    group_label: "Threat Classification"
  }

  dimension: total_behavior_score {
    type: number
    sql: ${TABLE}.total_behavior_score ;;
    group_label: "Scores"
  }

  dimension: total_behavior_score_max_value {
    type: number
    sql: ${TABLE}.total_behavior_score_max_value ;;
    group_label: "Scores"
  }

  dimension: total_reputation_score {
    type: number
    sql: ${TABLE}.total_reputation_score ;;
    group_label: "Scores"
  }

  dimension: total_reputation_score_max_value {
    type: number
    sql: ${TABLE}.total_reputation_score_max_value ;;
    group_label: "Scores"
  }

  dimension: medium_threshold {
#     hidden: yes
    type: number
    sql: {% parameter medium_risk_threshold %} ;;
    hidden: yes
  }

  dimension: high_threshold {
#     hidden: yes
    type: number
    sql: {% parameter high_risk_threshold %} ;;
    hidden: yes
  }
  measure: behavior_score_total {
    type: sum
    sql: ${total_behavior_score} ;;
    drill_fields: [score_details.item,score_details.value,score_details.category,score_details.score]
    link: { label: "Show All {{score_details.behavior_score_total_drill._value}} Behavior Components" url: "{{score_details.behavior_score_total_drill._link}}" }
#     html:  <a href="{{score_details.behavior_score_total_drill._link}}" target="_self">
#     {% if value < fraud_scoring.medium_threshold._value %}
#     <p style="color:white; background-color: lightgreen; font-size: 100%; text-align:center">{{ linked_value }}</p>
#     {% elsif value >= fraud_scoring.medium_threshold._value and value < fraud_scoring.high_threshold._value  %}
#     <p style="color: black; background-color: goldenrod; font-size: 100%; text-align:center">{{ linked_value }}</p>
#     {% else %}
#     <p style="color:white; background-color: tomato; font-size: 100%; text-align:center">{{ linked_value }}</p>
#     {% endif %}
#     </a>;;
    required_fields: [high_threshold]
    group_label: "Scores"
  }

  measure: reputation_score_total {
    type: sum
    sql: ${total_reputation_score} ;;
    link: { label: "Show All {{score_details.reputation_score_total_drill._value}} Reputation Components" url: "{{score_details.reputation_score_total_drill._link}}" }
#     html: {% if value < fraud_scoring.medium_threshold._value %}
#     <div style="color:white; background-color: lightgreen; font-size: 100%; text-align:center">{{ rendered_value }}</p>
#     {% elsif value >= fraud_scoring.medium_threshold._value and value < fraud_scoring.high_threshold._value  %}
#     <div style="color: black; background-color: goldenrod; font-size: 100%; text-align:center">{{ rendered_value }}</p>
#     {% else %}
#     <div style="color:white; background-color: tomato; font-size: 100%; text-align:center">{{ rendered_value }}</p>
#     {% endif %};;
    required_fields: [high_threshold]
    group_label: "Scores"
  }

  measure: caller_id_score_total {
    type: sum
    sql: ${caller_id_score} ;;
    link: { label: "Show All {{score_details.caller_id_score_total_drill._value}} Caller Components" url: "{{score_details.caller_id_score_total_drill._link}}" }
#     html: <a href="{{score_details.reputation_score_total_drill._link}}" target="_self">
#     {% if value < fraud_scoring.medium_threshold._value %}
#     <p style="color:white; background-color: lightgreen; font-size: 100%; text-align:center">{{ linked_value }}</p>
#     {% elsif value >= fraud_scoring.medium_threshold._value and value < fraud_scoring.high_threshold._value  %}
#     <p style="color: black; background-color: goldenrod; font-size: 100%; text-align:center">{{ linked_value }}</p>
#     {% else %}
#     <p style="color:white; background-color: tomato; font-size: 100%; text-align:center">{{ linked_value }}</p>
#     {% endif %}
#     </a>;;
    required_fields: [high_threshold]
    group_label: "Scores"
  }

  measure: risk_score_total {
    type: sum
    sql: ${risk_score} ;;
    drill_fields: [attribute_value, event_tstamp_time, behavior_score_total, reputation_score_total, caller_id_score_total]
    link: { label: "Show All {{score_details.caller_id_score_total_drill._value}} Caller Components" url: "{{score_details.caller_id_score_total_drill._link}}" }
    html: {% if value < medium_threshold._value %}
          <div style="color: white; background-color: darkgreen; font-size: 100%; text-align:center">{{ rendered_value }}</div>
          {% elsif value >= medium_threshold._value and value < high_threshold._value  %}
          <div style="color: black; background-color: goldenrod; font-size: 100%; text-align:center">{{ rendered_value }}</div>
          {% else %}
          <div style="color: white; background-color: darkred; font-size: 100%; text-align:center">{{ rendered_value }}</div>
          {% endif %}
          ;;
    required_fields: [high_threshold]
    group_label: "Scores"
  }

  measure: combined_score_total {
    type: sum
    sql: ${combined_score} ;;
#     link: { label: "Show All {{score_details.caller_id_score_total_drill._value}} Caller Components" url: "{{score_details.caller_id_score_total_drill._link}}" }
    html: {% if value < medium_threshold._value %}
          <div style="color: white; background-color: darkgreen; font-size: 100%; text-align:center">{{ rendered_value }}</div>
          {% elsif value >= medium_threshold._value and value < high_threshold._value  %}
          <div style="color: black; background-color: goldenrod; font-size: 100%; text-align:center">{{ rendered_value }}</div>
          {% else %}
          <div style="color: white; background-color: darkred; font-size: 100%; text-align:center">{{ rendered_value }}</div>
          {% endif %}
          ;;
    required_fields: [high_threshold]
    group_label: "Scores"
  }


## _________________________________________________________________________________________

  parameter: medium_risk_threshold {
    label: "Enter your medium risk threshold (on 0-100 scale)"
    type: number
  }

  parameter: high_risk_threshold {
    type: number
    label: "Enter your high risk threshold (on 1-100 scale)"
  }

  dimension: threat_status_user_inputted {
    label: "Threat Status (Parameterized)"
    sql: CASE WHEN ${risk_score} < {% parameter medium_risk_threshold %} THEN '1 - Low'
    WHEN ${risk_score} >= {% parameter medium_risk_threshold %} AND ${risk_score} < {% parameter high_risk_threshold %} THEN '2 - Medium'
    WHEN ${risk_score} >= {% parameter high_risk_threshold %} THEN '3 - High'
    ELSE NULL END;;
    group_label: "Threat Classification"
  }
  measure: count {
    type: count
    label: "Record Count"
    drill_fields: [attribute_value,event_tstamp_time,raw_risk_score,risk_score_total]
    group_label: "Counts"
  }

  measure: low_risk_count {
    type: count
    filters: {
      field: threat_status_user_inputted
      value: "1 - Low"
    }
    group_label: "Counts"
  }

  measure: medium_risk_count {
    type: count
    filters: {
      field: threat_status_user_inputted
      value: "2 - Medium"
    }
    group_label: "Counts"
  }

  measure: high_risk_count {
    type: count
    filters: {
      field: threat_status_user_inputted
      value: "3 - High"
    }
    group_label: "Counts"
  }

  measure: low_risk_pct {
    type: number
    sql: 1.0 * ${low_risk_count}/NULLIF(${count},0) ;;
    value_format_name: percent_2
    group_label: "Percentages"
  }

  measure: medium_risk_pct {
    type: number
    sql: 1.0 * ${medium_risk_count}/NULLIF(${count},0) ;;
    value_format_name: percent_2
    group_label: "Percentages"
  }

  measure: high_risk_pct {
    type: number
    sql: 1.0 * ${high_risk_count}/NULLIF(${count},0) ;;
    value_format_name: percent_2
    group_label: "Percentages"
  }

  measure: distinct_ANI_count {
    type: count_distinct
    sql: ${attribute_value} ;;
    group_label: "Counts"
  }

  measure: avg_fraud_risk_score {
    type: average
    sql: ${risk_score} ;;
    value_format_name: decimal_2
    group_label: "Scores"
  }



}
