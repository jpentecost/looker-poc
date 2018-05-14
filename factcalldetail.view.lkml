view: factcalldetail {
  sql_table_name: poc_dw.factcalldetail ;;

  dimension: ani {
    type: string
    sql: ${TABLE}.ani ;;
  }

  dimension: applogidaltkey {
    type: string
    sql: ${TABLE}.applogidaltkey ;;
  }

  dimension: bridgecallcount {
    type: number
    sql: ${TABLE}.bridgecallcount ;;
  }

  dimension: bridgecalldurationbillsec {
    type: number
    sql: ${TABLE}.bridgecalldurationbillsec ;;
  }

  dimension: bridgecalldurationrawsec {
    type: number
    sql: ${TABLE}.bridgecalldurationrawsec ;;
  }

  dimension: callcharkey {
    type: number
    sql: ${TABLE}.callcharkey ;;
  }

  dimension: callcount {
    type: number
    sql: ${TABLE}.callcount ;;
  }

  dimension_group: callstarttime {
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
    sql: ${TABLE}.callstarttime ;;
  }

  dimension_group: cdrcreatetimestamp {
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
    sql: ${TABLE}.cdrcreatetimestamp ;;
  }

  dimension: comchannelkey {
    type: number
    sql: ${TABLE}.comchannelkey ;;
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

  dimension: customcolumn1 {
    type: string
    sql: ${TABLE}.customcolumn1 ;;
  }

  dimension: customcolumn10 {
    type: string
    sql: ${TABLE}.customcolumn10 ;;
  }

  dimension: customcolumn11 {
    type: string
    sql: ${TABLE}.customcolumn11 ;;
  }

  dimension: customcolumn12 {
    type: string
    sql: ${TABLE}.customcolumn12 ;;
  }

  dimension: customcolumn13 {
    type: string
    sql: ${TABLE}.customcolumn13 ;;
  }

  dimension: customcolumn14 {
    type: string
    sql: ${TABLE}.customcolumn14 ;;
  }

  dimension: customcolumn15 {
    type: string
    sql: ${TABLE}.customcolumn15 ;;
  }

  dimension: customcolumn16 {
    type: string
    sql: ${TABLE}.customcolumn16 ;;
  }

  dimension: customcolumn17 {
    type: string
    sql: ${TABLE}.customcolumn17 ;;
  }

  dimension: customcolumn18 {
    type: string
    sql: ${TABLE}.customcolumn18 ;;
  }

  dimension: customcolumn19 {
    type: string
    sql: ${TABLE}.customcolumn19 ;;
  }

  dimension: customcolumn2 {
    type: string
    sql: ${TABLE}.customcolumn2 ;;
  }

  dimension: customcolumn20 {
    type: string
    sql: ${TABLE}.customcolumn20 ;;
  }

  dimension: customcolumn3 {
    type: string
    sql: ${TABLE}.customcolumn3 ;;
  }

  dimension: customcolumn4 {
    type: string
    sql: ${TABLE}.customcolumn4 ;;
  }

  dimension: customcolumn5 {
    type: string
    sql: ${TABLE}.customcolumn5 ;;
  }

  dimension: customcolumn6 {
    type: string
    sql: ${TABLE}.customcolumn6 ;;
  }

  dimension: customcolumn7 {
    type: string
    sql: ${TABLE}.customcolumn7 ;;
  }

  dimension: customcolumn8 {
    type: string
    sql: ${TABLE}.customcolumn8 ;;
  }

  dimension: customcolumn9 {
    type: string
    sql: ${TABLE}.customcolumn9 ;;
  }

  dimension: customerkey {
    type: number
    sql: ${TABLE}.customerkey ;;
  }

  dimension: datekey {
    type: number
    sql: ${TABLE}.datekey ;;
  }

  dimension: dnis {
    type: string
    sql: ${TABLE}.dnis ;;
  }

  dimension: dniskey {
    type: number
    sql: ${TABLE}.dniskey ;;
  }

  dimension: exitpointkey {
    type: number
    sql: ${TABLE}.exitpointkey ;;
  }

  dimension: firstlegcalldurationbillsec {
    type: number
    sql: ${TABLE}.firstlegcalldurationbillsec ;;
  }

  dimension: firstlegcalldurationrawsec {
    type: number
    sql: ${TABLE}.firstlegcalldurationrawsec ;;
  }

  dimension: geospatialkey {
    type: number
    sql: ${TABLE}.geospatialkey ;;
  }

  dimension: ivradvfeatureskey {
    type: number
    sql: ${TABLE}.ivradvfeatureskey ;;
  }

  dimension: languagekey {
    type: number
    sql: ${TABLE}.languagekey ;;
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

  dimension: psadurationrawsec {
    type: number
    sql: ${TABLE}.psadurationrawsec ;;
  }

  dimension: sitekey {
    type: number
    sql: ${TABLE}.sitekey ;;
  }

  dimension: timekey {
    type: number
    sql: ${TABLE}.timekey ;;
  }

  dimension: timezonekey {
    type: number
    sql: ${TABLE}.timezonekey ;;
  }

  dimension: totalcalldurationbillsec {
    type: number
    sql: ${TABLE}.totalcalldurationbillsec ;;
  }

  dimension: totalcalldurationrawsec {
    type: number
    sql: ${TABLE}.totalcalldurationrawsec ;;
  }

  dimension: transfercount {
    type: number
    sql: ${TABLE}.transfercount ;;
  }

  dimension: transfernumber {
    type: string
    sql: ${TABLE}.transfernumber ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
