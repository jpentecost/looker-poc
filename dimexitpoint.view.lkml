view: dimexitpoint {
  sql_table_name: poc_dw.dimexitpoint ;;

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension_group: createtimestamp {
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
    sql: ${TABLE}.createtimestamp ;;
  }

  dimension: exitpointkey {
    type: number
    sql: ${TABLE}.exitpointkey ;;
  }

  dimension: exitpointname {
    type: string
    sql: ${TABLE}.exitpointname ;;
  }

  dimension_group: modifiedtimestamp {
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
    sql: ${TABLE}.modifiedtimestamp ;;
  }

  measure: count {
    type: count
    drill_fields: [exitpointname]
  }
}
