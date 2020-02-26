view: dm_vendr_dim {
  sql_table_name: EDW.DM_VENDR_DIM ;;

  dimension: addr_1 {
    type: string
    sql: ${TABLE}.ADDR_1 ;;
  }

  dimension: addr_2 {
    type: string
    sql: ${TABLE}.ADDR_2 ;;
  }

  dimension: addr_3 {
    type: string
    sql: ${TABLE}.ADDR_3 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: cntry {
    type: string
    sql: ${TABLE}.CNTRY ;;
  }

  dimension: co_name {
    type: string
    sql: ${TABLE}.CO_NAME ;;
  }

  dimension: cr_limit {
    type: number
    sql: ${TABLE}.CR_LIMIT ;;
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

  dimension: email_addr {
    type: string
    sql: ${TABLE}.EMAIL_ADDR ;;
  }

  dimension: etl_curr_flg {
    type: string
    sql: ${TABLE}.ETL_CURR_FLG ;;
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

  dimension: fax_num {
    type: string
    sql: ${TABLE}.FAX_NUM ;;
  }

  dimension: home_ph_num {
    type: string
    sql: ${TABLE}.HOME_PH_NUM ;;
  }

  dimension: inco_term {
    type: string
    sql: ${TABLE}.INCO_TERM ;;
  }

  dimension_group: last_mod {
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
    sql: ${TABLE}.LAST_MOD_DATE ;;
  }

  dimension_group: last_sls_actvty {
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
    sql: ${TABLE}.LAST_SLS_ACTVTY_DATE ;;
  }

  dimension: login_accss_flg {
    type: string
    sql: ${TABLE}.LOGIN_ACCSS_FLG ;;
  }

  dimension: main_ph_num {
    type: string
    sql: ${TABLE}.MAIN_PH_NUM ;;
  }

  dimension: mobile_ph_num {
    type: string
    sql: ${TABLE}.MOBILE_PH_NUM ;;
  }

  dimension: open_bal_amt {
    type: number
    sql: ${TABLE}.OPEN_BAL_AMT ;;
  }

  dimension: open_bal_forgn_amt {
    type: number
    sql: ${TABLE}.OPEN_BAL_FORGN_AMT ;;
  }

  dimension: postl_code {
    type: string
    sql: ${TABLE}.POSTL_CODE ;;
  }

  dimension: purch_ordr_amt {
    type: number
    sql: ${TABLE}.PURCH_ORDR_AMT ;;
  }

  dimension: purch_ordr_qty {
    type: number
    sql: ${TABLE}.PURCH_ORDR_QTY ;;
  }

  dimension: recpt_amt {
    type: number
    sql: ${TABLE}.RECPT_AMT ;;
  }

  dimension: recpt_qty {
    type: number
    sql: ${TABLE}.RECPT_QTY ;;
  }

  dimension: st {
    type: string
    sql: ${TABLE}.ST ;;
  }

  dimension: tax_id_num {
    type: string
    sql: ${TABLE}.TAX_ID_NUM ;;
  }

  dimension: unblld_ordrs_amt {
    type: number
    sql: ${TABLE}.UNBLLD_ORDRS_AMT ;;
  }

  dimension: unblld_ordrs_forgn_amt {
    type: number
    sql: ${TABLE}.UNBLLD_ORDRS_FORGN_AMT ;;
  }

  dimension: vendr_acct_num {
    type: string
    sql: ${TABLE}.VENDR_ACCT_NUM ;;
  }

  dimension: vendr_cmnts {
    type: string
    sql: ${TABLE}.VENDR_CMNTS ;;
  }

  dimension: vendr_dim_id {
    type: number
    hidden: yes
    sql: ${TABLE}.VENDR_DIM_ID ;;
  }

  dimension: vendr_full_name {
    type: string
    sql: ${TABLE}.VENDR_FULL_NAME ;;
  }

  dimension: vendr_is_1099_elgbl_flg {
    type: string
    sql: ${TABLE}.VENDR_IS_1099_ELGBL_FLG ;;
  }

  dimension: vendr_is_inact_flg {
    type: string
    sql: ${TABLE}.VENDR_IS_INACT_FLG ;;
  }

  dimension: vendr_is_persn_flg {
    type: string
    sql: ${TABLE}.VENDR_IS_PERSN_FLG ;;
  }

  dimension: vendr_name {
    type: string
    sql: ${TABLE}.VENDR_NAME ;;
  }

  dimension: vendr_ns_id {
    type: number
    sql: ${TABLE}.VENDR_NS_ID ;;
  }

  dimension: vendr_typ_name {
    type: string
    sql: ${TABLE}.VENDR_TYP_NAME ;;
  }

  dimension: vendr_url {
    type: string
    sql: ${TABLE}.VENDR_URL ;;
  }

  measure: count {
    type: count
    drill_fields: [co_name, vendr_typ_name, vendr_name, vendr_full_name]
  }
}
