view: dm_gl_acct_fact {
  sql_table_name: EDW.DM_GL_ACCT_FACT ;;

  dimension_group: actvty {
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
    sql: ${TABLE}.ACTVTY_DATE ;;
  }

  dimension: calndr_dim_id {
    type: number
    hidden: yes
    sql: ${TABLE}.CALNDR_DIM_ID ;;
  }

  dimension: class_dim_id {
    type: number
    hidden: yes
    sql: ${TABLE}.CLASS_DIM_ID ;;
  }

  dimension: cust_dim_id {
    type: number
    hidden: yes
    sql: ${TABLE}.CUST_DIM_ID ;;
  }

  dimension: dept_dim_id {
    type: number
    hidden: yes
    sql: ${TABLE}.DEPT_DIM_ID ;;
  }

  dimension: etl_dm_tag {
    type: string
    sql: ${TABLE}.ETL_DM_TAG ;;
  }

  dimension_group: etl_eff_from_dts {
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
    sql: ${TABLE}.ETL_EFF_FROM_DTS ;;
  }

  dimension: etl_err_row_id {
    type: number
    sql: ${TABLE}.ETL_ERR_ROW_ID ;;
  }

  dimension: etl_esa_tag {
    type: string
    sql: ${TABLE}.ETL_ESA_TAG ;;
  }

  dimension_group: etl_load {
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
    sql: ${TABLE}.ETL_LOAD_DATE ;;
  }

  dimension: etl_src_sys {
    type: string
    sql: ${TABLE}.ETL_SRC_SYS ;;
  }

  dimension_group: etl_update {
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
    sql: ${TABLE}.ETL_UPDATE_DATE ;;
  }

  dimension: gl_acct_dim_id {
    hidden: yes
    type: number
    sql: ${TABLE}.GL_ACCT_DIM_ID ;;
  }

  dimension: gl_acct_fact_id {
    type: number
    sql: ${TABLE}.GL_ACCT_FACT_ID ;;
  }

  dimension: gl_acct_typ_dim_id {
    type: number
    sql: ${TABLE}.GL_ACCT_TYP_DIM_ID ;;
  }

  dimension: gl_amt_typ_dim_id {
    hidden: yes
    type: number
    sql: ${TABLE}.GL_AMT_TYP_DIM_ID ;;
  }

  dimension: item_dim_id {
    hidden: yes
    type: number
    sql: ${TABLE}.ITEM_DIM_ID ;;
  }

  dimension: loc_dim_id {
    hidden: yes
    type: number
    sql: ${TABLE}.LOC_DIM_ID ;;
  }

  dimension: sbsdry_dim_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SBSDRY_DIM_ID ;;
  }

  measure: txn_amt {
    type: sum
    sql: ${TABLE}.TXN_AMT ;;
  }

  measure: credit_amt {
    type: number
    sql: CASE WHEN ${txn_amt} > 0  THEN ${txn_amt} ELSE 0 END ;;

  }

  measure: debit_amt {
    type: number
    sql: CASE WHEN ${txn_amt} < 0  THEN ${txn_amt} * -1 ELSE 0 END ;;
  }

  measure: txn_forgn_amt {
    type: number
    sql: ${TABLE}.TXN_FORGN_AMT ;;
  }

  measure: txn_qty {
    type: number
    sql: ${TABLE}.TXN_QTY ;;
  }

  dimension: vendr_dim_id {
    hidden: yes
    type: number
    sql: ${TABLE}.VENDR_DIM_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
