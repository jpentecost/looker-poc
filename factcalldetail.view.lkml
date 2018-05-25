# view: factcalldetail_sf {
#   extends: [factcalldetail]
#   sql_table_name: PUBLIC.factcalldetail ;;
# }

view: factcalldetail {
  sql_table_name: PUBLIC.factcalldetail ;;

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
    label: "Duration of Bridge Call (Sec)"
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
    hidden: yes
  }

#   dimension: call_count_tier {
#     type: tier
#     sql: ${callcount} ;;
#     tiers: [100000,500000,1000000]
#     style: integer
#   }

  dimension_group: callstarttime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      day_of_week,
      hour_of_day,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.callstarttime ;;
  }
#
  dimension: months_since_startup {
    type: number
    sql: DATEDIFF(days,${dimcustomer.turnupdate_raw}, ${callstarttime_raw}) ;;
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
    group_label: "Custom Columns"
    label: "{{_user_attributes['customcolumn1']}}"
  }

  dimension: customcolumn10 {
    type: string
#     sql: ${TABLE}.customcolumn10 ;;

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
    group_label: "Custom Columns"
  }

  dimension: customcolumn20 {
    type: string
    sql: ${TABLE}.customcolumn20 ;;
  }

  dimension: customcolumn3 {
    type: string
    sql: ${TABLE}.customcolumn3 ;;
    group_label: "Custom Columns"
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
    view_label: "Dim - Call Characteristics"
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

  dimension: total_call_duration_bill_tier {
    type: tier
    sql: ${totalcalldurationbillsec} ;;
    tiers: [0,30,60,90,120]
    style: integer
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

  measure: AutomationRate {
    type: number
    value_format: "#.00\%"
    sql: 100.00 * (${CallCount} - ${TransferCount}) / ${CallCount} ;;
    drill_fields: []
  }

  measure: CallCount {
    type: sum
    sql: ${callcount} ;;
    drill_fields: [call_overview*]
  }

  measure: completed_call_count {
    type: count
    filters: {
      field: dimcallcharacteristics.call_completed
      value: "Yes"
    }
    drill_fields: [call_overview*]
  }

  measure: call_completion_pct {
    type: number
    sql: 1.0 * ${completed_call_count}/NULLIF(${CallCount},0) ;;
    value_format_name: percent_2
    description: "The Percentage of Calls that have been completed"
  }

#   measure: call_count_variant {
#     type: count
#   }

  measure: avg_call_count {
    type: average
    sql: ${callcount} ;;
    value_format_name: decimal_2
  }

  measure: FirstLegCallDurationBillMin {
    type: sum
    sql: ${TABLE}.firstlegcalldurationbillsec/60 ;;
    drill_fields: []
  }

  measure: FirstLegCallDurationRawMin {
    type: sum
    sql: ${TABLE}.firstlegcalldurationrawsec/60 ;;
    drill_fields: []
  }

  measure: TotalCallDurationBillMin {
    type: sum
    sql: ${TABLE}.totalcalldurationbillsec/60 ;;
    drill_fields: []
  }

  measure: TotalCallDurationRawMin {
    type: sum
    sql: ${TABLE}.totalcalldurationrawsec/60 ;;
    drill_fields: []
  }

  measure: TransferCount {
    type: sum
    sql: ${TABLE}.transfercount ;;
    drill_fields: []
  }

  measure: customer_count {
    type: count_distinct
    description: "Can Drill Down"
    sql: ${customerkey} ;;
    drill_fields: [customerkey,CallCount]
  }

  set: call_overview {
    fields: [customerkey,languagekey,TotalCallDurationBillMin,completed_call_count]
  }

}
