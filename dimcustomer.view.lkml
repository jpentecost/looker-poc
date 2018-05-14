view: dimcustomer {
  sql_table_name: poc_dw.dimcustomer ;;

  dimension: appgroup {
    type: string
    sql: ${TABLE}.appgroup ;;
  }

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: applicationdescription {
    type: string
    sql: ${TABLE}.applicationdescription ;;
  }

  dimension: applicationprogramtype {
    type: string
    sql: ${TABLE}.applicationprogramtype ;;
  }

  dimension: applicationtitle {
    type: string
    sql: ${TABLE}.applicationtitle ;;
  }

  dimension: applicationtype {
    type: string
    sql: ${TABLE}.applicationtype ;;
  }

  dimension: billingrule {
    type: string
    sql: ${TABLE}.billingrule ;;
  }

  dimension: calltype {
    type: string
    sql: ${TABLE}.calltype ;;
  }

  dimension: carrier {
    type: string
    sql: ${TABLE}.carrier ;;
  }

  dimension: client {
    type: string
    sql: ${TABLE}.client ;;
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

  dimension: customerkey {
    type: number
    sql: ${TABLE}.customerkey ;;
  }

  dimension: customertype {
    type: string
    sql: ${TABLE}.customertype ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: isactive {
    type: string
    sql: ${TABLE}.isactive ;;
  }

  dimension: isclientofrecord {
    type: string
    sql: ${TABLE}.isclientofrecord ;;
  }

  dimension: iscurrentrecord {
    type: string
    sql: ${TABLE}.iscurrentrecord ;;
  }

  dimension: isgovernment {
    type: string
    sql: ${TABLE}.isgovernment ;;
  }

  dimension_group: launchdate {
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
    sql: ${TABLE}.launchdate ;;
  }

  dimension: marketingverticalclient {
    type: string
    sql: ${TABLE}.marketingverticalclient ;;
  }

  dimension: marketingverticalsolution {
    type: string
    sql: ${TABLE}.marketingverticalsolution ;;
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

  dimension: netsuiteinvoicetitle {
    type: string
    sql: ${TABLE}.netsuiteinvoicetitle ;;
  }

  dimension: partner {
    type: string
    sql: ${TABLE}.partner ;;
  }

  dimension: partnerlineofbusiness {
    type: string
    sql: ${TABLE}.partnerlineofbusiness ;;
  }

  dimension: program {
    type: string
    sql: ${TABLE}.program ;;
  }

  dimension: programstate {
    type: string
    sql: ${TABLE}.programstate ;;
  }

  dimension_group: recordenddate {
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
    sql: ${TABLE}.recordenddate ;;
  }

  dimension_group: recordstartdate {
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
    sql: ${TABLE}.recordstartdate ;;
  }

  dimension_group: turndowndate {
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
    sql: ${TABLE}.turndowndate ;;
  }

  dimension_group: turnupdate {
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
    sql: ${TABLE}.turnupdate ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
