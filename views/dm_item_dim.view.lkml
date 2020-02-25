view: dm_item_dim {
  sql_table_name: EDW.DM_ITEM_DIM ;;

  dimension: allow_drop_ship_flg {
    type: string
    sql: ${TABLE}.ALLOW_DROP_SHIP_FLG ;;
  }

  dimension: avail_to_prtrs_flg {
    type: string
    sql: ${TABLE}.AVAIL_TO_PRTRS_FLG ;;
  }

  dimension: cntry_of_mnfctr {
    type: string
    sql: ${TABLE}.CNTRY_OF_MNFCTR ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.COST ;;
  }

  dimension: cost_catgry {
    type: string
    sql: ${TABLE}.COST_CATGRY ;;
  }

  dimension: cost_estimate_typ {
    type: string
    sql: ${TABLE}.COST_ESTIMATE_TYP ;;
  }

  dimension: costing_meth {
    type: string
    sql: ${TABLE}.COSTING_METH ;;
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

  dimension: curr_on_ordr_cnt {
    type: number
    sql: ${TABLE}.CURR_ON_ORDR_CNT ;;
  }

  dimension: demnd_src {
    type: string
    sql: ${TABLE}.DEMND_SRC ;;
  }

  dimension: dep_flg {
    type: string
    sql: ${TABLE}.DEP_FLG ;;
  }

  dimension: disp_name {
    type: string
    sql: ${TABLE}.DISP_NAME ;;
  }

  dimension: dist_ntwk_name {
    type: string
    sql: ${TABLE}.DIST_NTWK_NAME ;;
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

  dimension: featrd_desc {
    type: string
    sql: ${TABLE}.FEATRD_DESC ;;
  }

  dimension: featrd_item_flg {
    type: string
    sql: ${TABLE}.FEATRD_ITEM_FLG ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.FULL_NAME ;;
  }

  dimension: hndlng_cost {
    type: number
    sql: ${TABLE}.HNDLNG_COST ;;
  }

  dimension: item_defined_cost {
    type: number
    sql: ${TABLE}.ITEM_DEFINED_COST ;;
  }

  dimension: item_dim_id {
    type: number
    sql: ${TABLE}.ITEM_DIM_ID ;;
  }

  dimension: item_is_inact_flg {
    type: string
    sql: ${TABLE}.ITEM_IS_INACT_FLG ;;
  }

  dimension: item_is_online_flg {
    type: string
    sql: ${TABLE}.ITEM_IS_ONLINE_FLG ;;
  }

  dimension: item_is_taxbl_flg {
    type: string
    sql: ${TABLE}.ITEM_IS_TAXBL_FLG ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.ITEM_NAME ;;
  }

  dimension: item_ns_id {
    type: number
    sql: ${TABLE}.ITEM_NS_ID ;;
  }

  dimension: item_parnt_dim_id {
    type: number
    sql: ${TABLE}.ITEM_PARNT_DIM_ID ;;
  }

  dimension: item_parnt_name {
    type: string
    sql: ${TABLE}.ITEM_PARNT_NAME ;;
  }

  dimension: item_parnt_ns_id {
    type: number
    sql: ${TABLE}.ITEM_PARNT_NS_ID ;;
  }

  dimension: item_rev_catgry {
    type: string
    sql: ${TABLE}.ITEM_REV_CATGRY ;;
  }

  dimension: item_typ {
    type: string
    sql: ${TABLE}.ITEM_TYP ;;
  }

  dimension_group: last_cogs_corrctn {
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
    sql: ${TABLE}.LAST_COGS_CORRCTN_DATE ;;
  }

  dimension_group: last_inven_cnt {
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
    sql: ${TABLE}.LAST_INVEN_CNT_DATE ;;
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

  dimension: last_purch_price {
    type: number
    sql: ${TABLE}.LAST_PURCH_PRICE ;;
  }

  dimension_group: last_txn {
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
    sql: ${TABLE}.LAST_TXN_DATE ;;
  }

  dimension: max_qty {
    type: number
    sql: ${TABLE}.MAX_QTY ;;
  }

  dimension: min_qty {
    type: number
    sql: ${TABLE}.MIN_QTY ;;
  }

  dimension: mnfctrr {
    type: string
    sql: ${TABLE}.MNFCTRR ;;
  }

  dimension_group: next_inven_cnt {
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
    sql: ${TABLE}.NEXT_INVEN_CNT_DATE ;;
  }

  dimension: prefrd_stock_lvl {
    type: number
    sql: ${TABLE}.PREFRD_STOCK_LVL ;;
  }

  dimension: purch_desc {
    type: string
    sql: ${TABLE}.PURCH_DESC ;;
  }

  dimension: purch_ordr_amt {
    type: number
    sql: ${TABLE}.PURCH_ORDR_AMT ;;
  }

  dimension: purch_ordr_qty {
    type: number
    sql: ${TABLE}.PURCH_ORDR_QTY ;;
  }

  dimension: qty_avail {
    type: number
    sql: ${TABLE}.QTY_AVAIL ;;
  }

  dimension: qty_bkordr {
    type: number
    sql: ${TABLE}.QTY_BKORDR ;;
  }

  dimension: qty_onhnd {
    type: number
    sql: ${TABLE}.QTY_ONHND ;;
  }

  dimension: recpt_amt {
    type: number
    sql: ${TABLE}.RECPT_AMT ;;
  }

  dimension: recpt_qty {
    type: number
    sql: ${TABLE}.RECPT_QTY ;;
  }

  dimension: replnsh_meth {
    type: string
    sql: ${TABLE}.REPLNSH_METH ;;
  }

  dimension: resalbl_flg {
    type: string
    sql: ${TABLE}.RESALBL_FLG ;;
  }

  dimension: shipng_cost {
    type: number
    sql: ${TABLE}.SHIPNG_COST ;;
  }

  dimension: sls_desc {
    type: string
    sql: ${TABLE}.SLS_DESC ;;
  }

  dimension: sls_price {
    type: number
    sql: ${TABLE}.SLS_PRICE ;;
  }

  dimension: store_desc {
    type: string
    sql: ${TABLE}.STORE_DESC ;;
  }

  dimension: store_detld_desc {
    type: string
    sql: ${TABLE}.STORE_DETLD_DESC ;;
  }

  dimension: store_disp_name {
    type: string
    sql: ${TABLE}.STORE_DISP_NAME ;;
  }

  dimension: suply_typ {
    type: string
    sql: ${TABLE}.SUPLY_TYP ;;
  }

  dimension: upc_code {
    type: string
    sql: ${TABLE}.UPC_CODE ;;
  }

  dimension: vendr_name {
    type: string
    sql: ${TABLE}.VENDR_NAME ;;
  }

  dimension: vendr_ns_id {
    type: number
    sql: ${TABLE}.VENDR_NS_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      dist_ntwk_name,
      vendr_name,
      item_parnt_name,
      full_name,
      item_name,
      disp_name,
      store_disp_name
    ]
  }
}
