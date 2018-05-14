view: dimdate {
  sql_table_name: poc_dw.dimdate ;;

  dimension: businessdaynumberinmonth {
    type: number
    sql: ${TABLE}.businessdaynumberinmonth ;;
  }

  dimension: calendarday {
    type: string
    sql: ${TABLE}.calendarday ;;
  }

  dimension: calendarhalfyear {
    type: string
    sql: ${TABLE}.calendarhalfyear ;;
  }

  dimension: calendarmonth {
    type: string
    sql: ${TABLE}.calendarmonth ;;
  }

  dimension: calendarquarter {
    type: string
    sql: ${TABLE}.calendarquarter ;;
  }

  dimension: calendaryear {
    type: string
    sql: ${TABLE}.calendaryear ;;
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

  dimension: datekey {
    type: number
    sql: ${TABLE}.datekey ;;
  }

  dimension: datelabel {
    type: string
    sql: ${TABLE}.datelabel ;;
  }

  dimension: day {
    type: number
    sql: ${TABLE}.day ;;
  }

  dimension: dayabbreviationofweek {
    type: string
    sql: ${TABLE}.dayabbreviationofweek ;;
  }

  dimension: daynameofweek {
    type: string
    sql: ${TABLE}.daynameofweek ;;
  }

  dimension: daynumberofweek {
    type: number
    sql: ${TABLE}.daynumberofweek ;;
  }

  dimension: daynumberofyear {
    type: number
    sql: ${TABLE}.daynumberofyear ;;
  }

  dimension: fiscalhalfyear {
    type: string
    sql: ${TABLE}.fiscalhalfyear ;;
  }

  dimension: fiscalquarter {
    type: string
    sql: ${TABLE}.fiscalquarter ;;
  }

  dimension: fiscalyear {
    type: string
    sql: ${TABLE}.fiscalyear ;;
  }

  dimension_group: fulldate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fulldate ;;
  }

  dimension: halfyear {
    type: number
    sql: ${TABLE}.halfyear ;;
  }

  dimension: isfirstbusinessdayofmonth {
    type: string
    sql: ${TABLE}.isfirstbusinessdayofmonth ;;
  }

  dimension: isfirstmondayofmonth {
    type: string
    sql: ${TABLE}.isfirstmondayofmonth ;;
  }

  dimension: islastdayofhalfyear {
    type: string
    sql: ${TABLE}.islastdayofhalfyear ;;
  }

  dimension: islastdayofmonth {
    type: string
    sql: ${TABLE}.islastdayofmonth ;;
  }

  dimension: islastdayofquarter {
    type: string
    sql: ${TABLE}.islastdayofquarter ;;
  }

  dimension: islastdayofweek {
    type: string
    sql: ${TABLE}.islastdayofweek ;;
  }

  dimension: islastdayofyear {
    type: string
    sql: ${TABLE}.islastdayofyear ;;
  }

  dimension: isweekday {
    type: string
    sql: ${TABLE}.isweekday ;;
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

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: monthabbreviation {
    type: string
    sql: ${TABLE}.monthabbreviation ;;
  }

  dimension: monthname {
    type: string
    sql: ${TABLE}.monthname ;;
  }

  dimension: quarter {
    type: number
    sql: ${TABLE}.quarter ;;
  }

  dimension: weeknumberofyear {
    type: number
    sql: ${TABLE}.weeknumberofyear ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [monthname]
  }
}
