view: dimtime {
  sql_table_name: poc_dw.dimtime ;;

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

  dimension: fifteenminutegroup {
    type: string
    sql: ${TABLE}.fifteenminutegroup ;;
  }

  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
  }

  dimension: hourlabel {
    type: string
    sql: ${TABLE}.hourlabel ;;
  }

  dimension: militarytime {
    type: string
    sql: ${TABLE}.militarytime ;;
  }

  dimension: minute {
    type: number
    sql: ${TABLE}.minute ;;
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

  dimension: thirtyminutegroup {
    type: string
    sql: ${TABLE}.thirtyminutegroup ;;
  }

  dimension: timekey {
    type: number
    sql: ${TABLE}.timekey ;;
  }

  dimension: timelabel {
    type: string
    sql: ${TABLE}.timelabel ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
