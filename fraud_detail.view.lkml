view: fraud_detail {
  sql_table_name: public.fraud_detail ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: accounts {
    type: string
    sql: ${TABLE}.accounts ;;
  }

  dimension: action_taken {
    type: string
    sql: ${TABLE}.action_taken ;;
  }

  dimension: ani_ii {
    type: string
    sql: ${TABLE}.ani_ii ;;
  }

  dimension: app_log_id {
    type: string
    sql: ${TABLE}.app_log_id ;;
  }

  dimension: app_name {
    type: string
    sql: ${TABLE}.app_name ;;
  }

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: attribute_display {
    type: string
    sql: ${TABLE}.attribute_display ;;
  }

  dimension: attribute_name {
    type: string
    sql: ${TABLE}.attribute_name ;;
  }

  dimension: attribute_value {
    type: string
    sql: ${TABLE}.attribute_value ;;
  }

  dimension: call_comp_code {
    type: string
    sql: ${TABLE}.call_comp_code ;;
  }

  dimension: call_duration {
    type: number
    sql: ${TABLE}.call_duration ;;
  }

  dimension_group: call_start {
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
    sql: ${TABLE}.call_start ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: channel_addr {
    type: string
    sql: ${TABLE}.channel_addr ;;
  }

  dimension: context_data {
    type: string
    sql: ${TABLE}.context_data ;;
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

  dimension: division {
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: dnis {
    type: string
    sql: ${TABLE}.dnis ;;
  }

  dimension: exit_point {
    type: string
    sql: ${TABLE}.exit_point ;;
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
  }

  dimension: organization {
    type: string
    sql: ${TABLE}.organization ;;
  }

  measure: count {
    type: count
    drill_fields: [id, app_name, attribute_name]
  }
}
