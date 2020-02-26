view: dm_txn_fact {
  sql_table_name: EDW.DM_TXN_FACT ;;

  measure: amt {
    type: number
    sql: ${TABLE}.AMT ;;
  }

  dimension: calndr_dim_id {
    type: number
    hidden: yes
    sql: ${TABLE}.CALNDR_DIM_ID ;;
  }

  dimension: chk_or_doc_num {
    type: string
    sql: ${TABLE}.CHK_OR_DOC_NUM ;;
  }

  dimension: class_dim_id {
    type: number
    hidden: yes
    sql: ${TABLE}.CLASS_DIM_ID ;;
  }

  dimension_group: clrd {
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
    sql: ${TABLE}.CLRD_DATE ;;
  }

  dimension_group: clsd {
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
    sql: ${TABLE}.CLSD_DATE ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.CREATED_DATE ;;
  }

  dimension: curncy_dim_id {
    type: number
    hidden: yes
    sql: ${TABLE}.CURNCY_DIM_ID ;;
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

  dimension_group: due {
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
    sql: ${TABLE}.DUE_DATE ;;
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

  dimension_group: expctd_recpt {
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
    sql: ${TABLE}.EXPCTD_RECPT_DATE ;;
  }

  measure: forgn_amt {
    type: number
    sql: ${TABLE}.FORGN_AMT ;;
  }

  dimension: gl_acct_dim_id {
    type: number
    hidden: yes
    sql: ${TABLE}.GL_ACCT_DIM_ID ;;
  }

  dimension: gl_acct_typ_dim_id {
    type: number
    hidden: yes
    sql: ${TABLE}.GL_ACCT_TYP_DIM_ID ;;
  }

  dimension: gl_amt_typ_dim_id {
    type: number
    hidden: yes
    sql: ${TABLE}.GL_AMT_TYP_DIM_ID ;;
  }

  measure: gross_amt {
    type: number
    sql: ${TABLE}.GROSS_AMT ;;
  }

  dimension: item_dim_id {
    type: number
    hidden: yes
    sql: ${TABLE}.ITEM_DIM_ID ;;
  }

  dimension_group: last_mod_gmt {
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
    sql: ${TABLE}.LAST_MOD_GMT_DATE ;;
  }

  dimension: loc_dim_id {
    type: number
    hidden: yes
    sql: ${TABLE}.LOC_DIM_ID ;;
  }

  dimension: memo {
    type: string
    sql: ${TABLE}.MEMO ;;
  }

  measure: net_amt {
    type: number
    sql: ${TABLE}.NET_AMT ;;
  }

  measure: net_forgn_amt {
    type: number
    sql: ${TABLE}.NET_FORGN_AMT ;;
  }

  dimension: non_postng_line_flg {
    type: string
    sql: ${TABLE}.NON_POSTNG_LINE_FLG ;;
  }

  dimension: qty_allocd {
    type: number
    sql: ${TABLE}.QTY_ALLOCD ;;
  }

  dimension: qty_billd {
    type: number
    sql: ${TABLE}.QTY_BILLD ;;
  }

  dimension: qty_cmitd {
    type: number
    sql: ${TABLE}.QTY_CMITD ;;
  }

  dimension: qty_packd {
    type: number
    sql: ${TABLE}.QTY_PACKD ;;
  }

  dimension: qty_pickd {
    type: number
    sql: ${TABLE}.QTY_PICKD ;;
  }

  dimension: qty_shipped {
    type: number
    sql: ${TABLE}.QTY_SHIPPED ;;
  }

  dimension_group: recv_by {
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
    sql: ${TABLE}.RECV_BY_DATE ;;
  }

  dimension_group: rev_cmitd {
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
    sql: ${TABLE}.REV_CMITD_DATE ;;
  }

  dimension: rev_cmitmnt_stat {
    type: string
    sql: ${TABLE}.REV_CMITMNT_STAT ;;
  }

  dimension: sbsdry_dim_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SBSDRY_DIM_ID ;;
  }

  dimension_group: shpmnt_rcvd {
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
    sql: ${TABLE}.SHPMNT_RCVD_DATE ;;
  }

  dimension_group: tax_pnt {
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
    sql: ${TABLE}.TAX_PNT_DATE ;;
  }

  dimension_group: txn {
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
    sql: ${TABLE}.TXN_DATE ;;
  }

  dimension: txn_fact_id {
    type: number
    sql: ${TABLE}.TXN_FACT_ID ;;
  }

  dimension: txn_line_ns_id {
    type: number
    sql: ${TABLE}.TXN_LINE_NS_ID ;;
  }

  dimension: txn_line_num {
    type: number
    sql: ${TABLE}.TXN_LINE_NUM ;;
  }

  dimension: txn_ns_id {
    type: number
    sql: ${TABLE}.TXN_NS_ID ;;
  }

  dimension: txn_num {
    type: string
    sql: ${TABLE}.TXN_NUM ;;
  }

  dimension: txn_src {
    type: string
    sql: ${TABLE}.TXN_SRC ;;
  }

  dimension: txn_stat {
    type: string
    sql: ${TABLE}.TXN_STAT ;;
  }

  dimension: txn_typ_dim_id {
    type: number
    sql: ${TABLE}.TXN_TYP_DIM_ID ;;
  }

  dimension: vendr_dim_id {
    type: number
    hidden: yes
    sql: ${TABLE}.VENDR_DIM_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
