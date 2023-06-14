view: date {
  sql_table_name: sales.date ;;

  dimension_group: cy {
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
    sql: ${TABLE}.cy_date ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: date_yy_mmm {
    type: string
    sql: ${TABLE}.date_yy_mmm ;;
  }

  dimension: month_name {
    type: string
    sql: ${TABLE}.month_name ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [month_name]
  }

  measure: test {
    type: number
    description: "test"
    sql: ((${TABLE}.year))/86.0 ;;
    value_format: "[h] \h m\m s\s"
    # html:{{ rendered_value | date: "%X" }};;
  }

  dimension: test_workaround {
    #type: number
    description: "test"
    sql: ((${TABLE}.year))/86.0 ;;
    #value_format: "[h] \h m\m s\s"
    html:{{ rendered_value | date: "%X" }};;}
}
