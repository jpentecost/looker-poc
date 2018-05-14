view: dimcallcharacteristics {
  sql_table_name: poc_dw.dimcallcharacteristics ;;

  dimension: advancedfeaturesflag {
    type: string
    sql: ${TABLE}.advancedfeaturesflag ;;
  }

  dimension: callcharkey {
    type: number
    sql: ${TABLE}.callcharkey ;;
  }

  dimension: callcompletioncode {
    type: string
    sql: ${TABLE}.callcompletioncode ;;
  }

  dimension: callcompletionname {
    type: string
    sql: ${TABLE}.callcompletionname ;;
  }

  dimension: calldispositioncode {
    type: string
    sql: ${TABLE}.calldispositioncode ;;
  }

  dimension: calldispositionname {
    type: string
    sql: ${TABLE}.calldispositionname ;;
  }

  dimension: cdrinsertmethodcode {
    type: string
    sql: ${TABLE}.cdrinsertmethodcode ;;
  }

  dimension: cdrinsertmethodname {
    type: string
    sql: ${TABLE}.cdrinsertmethodname ;;
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

  dimension: ctistatuscode {
    type: string
    sql: ${TABLE}.ctistatuscode ;;
  }

  dimension: ctistatusname {
    type: string
    sql: ${TABLE}.ctistatusname ;;
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
    drill_fields: [ctistatusname, cdrinsertmethodname, calldispositionname, callcompletionname]
  }
}
