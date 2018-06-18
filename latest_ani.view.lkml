view: latest_ani {
 derived_table: {
   sql: SELECT attribute_value,DATE(event_tstamp) as event_date,max(id) AS last_record
        FROM public.fraud_scoring
        WHERE attribute_name = 'ANI'
        GROUP BY 1,2  ;;
  }

 dimension: attribute_value {
   type: string
   sql: ${TABLE}.attribute_value ;;
 }

 dimension: event_date {
   type: date
   sql: ${TABLE}.event_date  ;;
 }

 dimension: last_record {
  type: number
  sql: ${TABLE}.last_record ;;
 }
}
