view: test_dt {
 derived_table: {
   sql: SELECT COUNT(*) as total FROM PUBLIC.USER ;;
  persist_for: "24 hours"
 }

 dimension: total {
   sql: ${TABLE}.total ;;
  type: number
 }
}
