view: dm_cust_dim {
  sql_table_name: EDW.DM_CUST_DIM ;;

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

  dimension: cust_acct_num {
    type: string
    sql: ${TABLE}.CUST_ACCT_NUM ;;
  }

  dimension: cust_cmnts {
    type: string
    sql: ${TABLE}.CUST_CMNTS ;;
  }

  dimension: cust_dim_id {
    type: number
    sql: ${TABLE}.CUST_DIM_ID ;;
  }

  dimension: cust_is_inact_flg {
    type: string
    sql: ${TABLE}.CUST_IS_INACT_FLG ;;
  }

  dimension: cust_is_persn_flg {
    type: string
    sql: ${TABLE}.CUST_IS_PERSN_FLG ;;
  }

  dimension: cust_name {
    type: string
    sql: ${TABLE}.CUST_NAME ;;
  }

  dimension: cust_ns_id {
    type: number
    sql: ${TABLE}.CUST_NS_ID ;;
  }

  dimension: cust_parnt_dim_id {
    type: number
    sql: ${TABLE}.CUST_PARNT_DIM_ID ;;
  }

  dimension: cust_parnt_name {
    type: string
    sql: ${TABLE}.CUST_PARNT_NAME ;;
  }

  dimension: cust_parnt_ns_id {
    type: number
    sql: ${TABLE}.CUST_PARNT_NS_ID ;;
  }

  dimension: cust_stat {
    type: string
    sql: ${TABLE}.CUST_STAT ;;
  }

  dimension: cust_stg {
    type: string
    sql: ${TABLE}.CUST_STG ;;
  }

  dimension: cust_typ_name {
    type: string
    sql: ${TABLE}.CUST_TYP_NAME ;;
  }

  dimension: cust_url {
    type: string
    sql: ${TABLE}.CUST_URL ;;
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

  dimension: first_name {
    type: string
    sql: ${TABLE}.FIRST_NAME ;;
  }

  dimension: home_ph_num {
    type: string
    sql: ${TABLE}.HOME_PH_NUM ;;
  }

  dimension: is_taxbl_flg {
    type: string
    sql: ${TABLE}.IS_TAXBL_FLG ;;
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

  dimension: last_name {
    type: string
    sql: ${TABLE}.LAST_NAME ;;
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

  dimension: middle_name {
    type: string
    sql: ${TABLE}.MIDDLE_NAME ;;
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

  dimension: refrer {
    type: string
    sql: ${TABLE}.REFRER ;;
  }

  dimension: salutn {
    type: string
    sql: ${TABLE}.SALUTN ;;
  }

  dimension: st {
    type: string
    sql: ${TABLE}.ST ;;
  }

  dimension: unblld_ordrs_amt {
    type: number
    sql: ${TABLE}.UNBLLD_ORDRS_AMT ;;
  }

  dimension: unblld_ordrs_forgn_amt {
    type: number
    sql: ${TABLE}.UNBLLD_ORDRS_FORGN_AMT ;;
  }

  dimension: vat_reg_num {
    type: string
    sql: ${TABLE}.VAT_REG_NUM ;;
  }

  dimension: web_lead_flg {
    type: string
    sql: ${TABLE}.WEB_LEAD_FLG ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      middle_name,
      cust_parnt_name,
      cust_typ_name,
      co_name,
      last_name,
      cust_name,
      first_name
    ]
  }
}
