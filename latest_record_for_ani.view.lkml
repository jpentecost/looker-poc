view: latest_record_for_ani {
    derived_table: {
      sql: SELECT attribute_value,DATE(event_tstamp) as event_date,max(id) AS last_record
        FROM public.fraud_scoring
        WHERE attribute_name = 'ANI'
        GROUP BY 1,2  ;;
    }

    dimension: attribute_value {
      type: string
      sql: ${TABLE}.attribute_value ;;
      hidden: yes
    }

    dimension: event_date {
      type: date
      sql: ${TABLE}.event_date  ;;
      hidden: yes
    }

    dimension: last_record {
      type: number
      sql: ${TABLE}.last_record ;;
      hidden: yes
    }
}
