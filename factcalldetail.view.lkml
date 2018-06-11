view: factcalldetail_sf {
  extends: [factcalldetail]
  sql_table_name: PUBLIC.factcalldetail ;;
}

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
    hidden: yes
  }

  dimension: bridgecalldurationbillsec {
    type: number
    sql: ${TABLE}.bridgecalldurationbillsec ;;
    hidden: yes
  }

  dimension: bridgecalldurationrawsec {
    type: number
    sql: ${TABLE}.bridgecalldurationrawsec ;;
    hidden: yes
  }

  dimension: callcharkey {
    type: number
    sql: ${TABLE}.callcharkey ;;
    hidden: yes
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
#  dimension: months_since_startup {
#    type: number
#    sql: DATEDIFF(days,${dimcustomer.turnupdate_raw}, ${callstarttime_raw}) ;;
#  }

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
    hidden: yes
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

  dimension: customcolumn2 {
    type: string
    sql: ${TABLE}.customcolumn2 ;;
    group_label: "Custom Columns"
  }

  dimension: customcolumn3 {
    type: string
    sql: ${TABLE}.customcolumn3 ;;
    group_label: "Custom Columns"
  }

  dimension: customcolumn4 {
    type: string
    sql: ${TABLE}.customcolumn4 ;;
    group_label: "Custom Columns"
  }

  dimension: customcolumn5 {
    type: string
    sql: ${TABLE}.customcolumn5 ;;
    group_label: "Custom Columns"
  }

  dimension: customcolumn6 {
    type: string
    sql: ${TABLE}.customcolumn6 ;;
    group_label: "Custom Columns"
  }

  dimension: customcolumn7 {
    type: string
    sql: ${TABLE}.customcolumn7 ;;
    group_label: "Custom Columns"
  }

  dimension: customcolumn8 {
    type: string
    sql: ${TABLE}.customcolumn8 ;;
    group_label: "Custom Columns"
  }

  dimension: customcolumn9 {
    type: string
    sql: ${TABLE}.customcolumn9 ;;
    group_label: "Custom Columns"
  }

  dimension: customcolumn10 {
    type: string
    sql: ${TABLE}.customcolumn10 ;;
    group_label: "Custom Columns"
  }

  dimension: customcolumn11 {
    type: string
    sql: ${TABLE}.customcolumn11 ;;
    group_label: "Custom Columns"
  }

  dimension: customcolumn12 {
    type: string
    sql: ${TABLE}.customcolumn12 ;;
    group_label: "Custom Columns"
  }

  dimension: customcolumn13 {
    type: string
    sql: ${TABLE}.customcolumn13 ;;
    group_label: "Custom Columns"
  }

  dimension: customcolumn14 {
    type: string
    sql: ${TABLE}.customcolumn14 ;;
    group_label: "Custom Columns"
  }

  dimension: customcolumn15 {
    type: string
    sql: ${TABLE}.customcolumn15 ;;
    group_label: "Custom Columns"
  }

  dimension: customcolumn16 {
    type: string
    sql: ${TABLE}.customcolumn16 ;;
    group_label: "Custom Columns"
  }

  dimension: customcolumn17 {
    type: string
    sql: ${TABLE}.customcolumn17 ;;
    group_label: "Custom Columns"
  }

  dimension: customcolumn18 {
    type: string
    sql: ${TABLE}.customcolumn18 ;;
    group_label: "Custom Columns"
  }

  dimension: customcolumn19 {
    type: string
    sql: ${TABLE}.customcolumn19 ;;
    group_label: "Custom Columns"
  }

  dimension: customcolumn20 {
    type: string
    sql: ${TABLE}.customcolumn20 ;;
    group_label: "Custom Columns"
  }

  dimension: customerkey {
    type: number
    sql: ${TABLE}.customerkey ;;
    hidden: yes
  }

  dimension: datekey {
    type: number
    sql: ${TABLE}.datekey ;;
    hidden: yes
  }

  dimension: dnis {
    type: string
    sql: ${TABLE}.dnis ;;
  }

  dimension: dniskey {
    type: number
    sql: ${TABLE}.dniskey ;;
    hidden: yes
  }

  dimension: exitpointkey {
    type: number
    sql: ${TABLE}.exitpointkey ;;
    hidden: yes
  }

  dimension: firstlegcalldurationbillsec {
    type: number
    sql: ${TABLE}.firstlegcalldurationbillsec ;;
    hidden: yes
  }

  dimension: firstlegcalldurationrawsec {
    type: number
    sql: ${TABLE}.firstlegcalldurationrawsec ;;
    hidden: yes
  }

  dimension: geospatialkey {
    type: number
    sql: ${TABLE}.geospatialkey ;;
    hidden: yes
  }

  dimension: ivradvfeatureskey {
    type: number
    sql: ${TABLE}.ivradvfeatureskey ;;
    hidden: yes
  }

  dimension: languagekey {
    type: number
    sql: ${TABLE}.languagekey ;;
    hidden: yes
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
    hidden: yes
  }

  dimension: sitekey {
    type: number
    sql: ${TABLE}.sitekey ;;
    hidden:  yes
  }

  dimension: timekey {
    type: number
    sql: ${TABLE}.timekey ;;
    hidden:  yes
  }

  dimension: timezonekey {
    type: number
    sql: ${TABLE}.timezonekey ;;
    hidden:  yes
  }

  dimension: totalcalldurationbillsec {
    type: number
    sql: ${TABLE}.totalcalldurationbillsec ;;
    hidden:  yes
  }

#  dimension: total_call_duration_bill_tier {
#    type: tier
#    sql: ${totalcalldurationbillsec} ;;
#    tiers: [0,30,60,90,120]
#    style: integer
#  }

  dimension: totalcalldurationrawsec {
    type: number
    sql: ${TABLE}.totalcalldurationrawsec ;;
    hidden: yes
  }

  dimension: transfercount {
    type: number
    sql: ${TABLE}.transfercount ;;
    hidden:  yes
  }

  dimension: transfernumber {
    type: string
    sql: ${TABLE}.transfernumber ;;
    hidden:  yes
  }

  measure: AutomationRate {
    type: number
    value_format: "#.00\%"
    sql: 100.00 * (${CallCount} - ${TransferCount}) / ${CallCount} ;;
    view_label: "Automation Rate"
    drill_fields: []
  }

  measure: CallCount {
    type: sum
    sql: ${callcount} ;;
    view_label: "Call Count"
  #  drill_fields: [call_overview*]
  }

#  measure: completed_call_count {
#    type: count
#    filters: {
#      field: dimcallcharacteristics.call_completed
#      value: "Yes"
#    }
#    drill_fields: [call_overview*]
#  }

#  measure: call_completion_pct {
#    type: number
#    sql: 1.0 * ${completed_call_count}/NULLIF(${CallCount},0) ;;
#    value_format_name: percent_2
#    description: "The Percentage of Calls that have been completed"
#  }

#   measure: call_count_variant {
#     type: count
#   }

  measure: FirstLegCallDurationBillMin {
    type: sum
    sql: ${TABLE}.firstlegcalldurationbillsec/60 ;;
    view_label: "First Leg Call Duration - Bill Mins"
    drill_fields: []
  }

  measure: FirstLegCallDurationRawMin {
    type: sum
    sql: ${TABLE}.firstlegcalldurationrawsec/60 ;;
    view_label: "First Leg Call Duration - Raw Mins"
    drill_fields: []
  }

  measure: TotalCallDurationBillMin {
    type: sum
    sql: ${TABLE}.totalcalldurationbillsec/60 ;;
    view_label: "Total Call Duration - Bill Mins"
    drill_fields: []
  }

  measure: TotalCallDurationRawMin {
    type: sum
    sql: ${TABLE}.totalcalldurationrawsec/60 ;;
    view_label: "Total Call Duration - Raw Mins"
    drill_fields: []
  }

  measure: TransferCount {
    type: sum
    sql: ${TABLE}.transfercount ;;
    view_label: "Transfer Count"
    drill_fields: []
  }

#  measure: customer_count {
#    type: count_distinct
#    #description: "Can Drill Down"
#    sql: ${customerkey} ;;
#    drill_fields: [customerkey,CallCount]
#  }

#  set: call_overview {
#    fields: [customerkey,languagekey,TotalCallDurationBillMin,completed_call_count]
#  }

}
