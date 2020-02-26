connection: "oracle_adwc"

# include all the views
include: "/views/**/*.view"

datagroup: fnpoc2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: fnpoc2_default_datagroup

#explore: dim_sys_date_schema {}

#explore: dm_calndr_dim {}

#explore: dm_class_dim {}

#explore: dm_curncy_dim {}

#explore: dm_cust_dim {}

#explore: dm_date {}

#explore: dm_dept_dim {}

#explore: dm_gl_acct_dim {}

explore: dm_gl_acct_fact {
  join: dm_date {
    type: left_outer
    sql_on: ${dm_gl_acct_fact.actvty_date} = ${dm_date.day_dt_date};;
    relationship: many_to_one
  }
  join: dm_calndr_dim {
    type: left_outer
    sql_on: ${dm_gl_acct_fact.calndr_dim_id} = ${dm_calndr_dim.calndr_dim_id};;
    relationship: many_to_one
  }
  join: dm_class_dim {
    type: left_outer
    sql_on: ${dm_gl_acct_fact.class_dim_id} = ${dm_class_dim.class_dim_id};;
    relationship: many_to_one
  }
  join: dm_loc_dim {
    type: left_outer
    sql_on: ${dm_gl_acct_fact.loc_dim_id} = ${dm_loc_dim.loc_dim_id};;
    relationship: many_to_one
  }
  join: dm_cust_dim {
    type: left_outer
    sql_on: ${dm_gl_acct_fact.cust_dim_id} = ${dm_cust_dim.cust_dim_id};;
    relationship: many_to_one
  }
  join: dm_vendr_dim {
    type: left_outer
    sql_on: ${dm_gl_acct_fact.vendr_dim_id} = ${dm_vendr_dim.vendr_dim_id};;
    relationship: many_to_one
  }
  join: dm_item_dim {
    type: left_outer
    sql_on: ${dm_gl_acct_fact.item_dim_id} = ${dm_item_dim.item_dim_id};;
    relationship: many_to_one
  }
  join: dm_sbsdry_dim {
    type: left_outer
    sql_on: ${dm_gl_acct_fact.sbsdry_dim_id} = ${dm_sbsdry_dim.sbsdry_dim_id};;
    relationship: many_to_one
  }
  join: dm_dept_dim {
    type: left_outer
    sql_on: ${dm_gl_acct_fact.dept_dim_id} = ${dm_dept_dim.dept_dim_id};;
    relationship: many_to_one
  }
  join: dm_gl_amt_typ_dim {
    type: left_outer
    sql_on: ${dm_gl_acct_fact.gl_amt_typ_dim_id} = ${dm_gl_amt_typ_dim.gl_amt_typ_dim_id};;
    relationship: many_to_one
  }
  join: dm_gl_acct_typ_dim {
    type: left_outer
    sql_on: ${dm_gl_acct_fact.gl_acct_typ_dim_id} = ${dm_gl_acct_typ_dim.gl_acct_typ_dim_id};;
    relationship: many_to_one
  }
  join: dm_gl_acct_dim {
    type: left_outer
    sql_on: ${dm_gl_acct_fact.gl_acct_dim_id} = ${dm_gl_acct_dim.gl_acct_dim_id};;
    relationship: many_to_one
  }
  join: dmv_class_dim {
    type: left_outer
    sql_on: ${dm_gl_acct_fact.class_dim_id} = ${dmv_class_dim.class_dim_id};;
    relationship: many_to_one
  }
  join: dmv_cust_dim {
    type: left_outer
    sql_on: ${dm_gl_acct_fact.cust_dim_id} = ${dmv_cust_dim.cust_dim_id};;
    relationship: many_to_one
  }
  join: dmv_dept_dim {
    type: left_outer
    sql_on: ${dm_gl_acct_fact.dept_dim_id} = ${dmv_dept_dim.dept_dim_id};;
    relationship: many_to_one
  }
  join: dmv_gl_acct_dim {
    type: left_outer
    sql_on: ${dm_gl_acct_fact.gl_acct_dim_id} = ${dmv_gl_acct_dim.gl_acct_dim_id};;
    relationship: many_to_one
  }
  join: dmv_item_dim {
    type: left_outer
    sql_on: ${dm_gl_acct_fact.item_dim_id} = ${dmv_item_dim.item_dim_id};;
    relationship: many_to_one
  }
  join: dmv_loc_dim {
    type: left_outer
    sql_on: ${dm_gl_acct_fact.loc_dim_id} = ${dmv_loc_dim.loc_dim_id};;
    relationship: many_to_one
  }
  join: dmv_sbsdry_dim {
    type: left_outer
    sql_on: ${dm_gl_acct_fact.sbsdry_dim_id} = ${dmv_sbsdry_dim.sbsdry_dim_id};;
    relationship: many_to_one
  }
}

#explore: dm_gl_acct_typ_dim {}

#explore: dm_gl_acctng_book_dim {}

#explore: dm_gl_amt_typ_dim {}

#explore: dm_item_dim {}

#explore: dm_loc_dim {}

#explore: dm_sbsdry_dim {}

explore: dm_txn_fact {
  join: dm_calndr_dim {
    type: left_outer
    sql_on: ${dm_txn_fact.calndr_dim_id} = ${dm_calndr_dim.calndr_dim_id};;
    relationship: many_to_one
  }
  join: dm_class_dim {
    type: left_outer
    sql_on: ${dm_txn_fact.class_dim_id} = ${dm_class_dim.class_dim_id};;
    relationship: many_to_one
  }
  join: dm_curncy_dim {
    type: left_outer
    sql_on: ${dm_txn_fact.curncy_dim_id} = ${dm_curncy_dim.curncy_dim_id};;
    relationship: many_to_one
  }
  join: dm_cust_dim {
    type: left_outer
    sql_on: ${dm_txn_fact.cust_dim_id} = ${dm_cust_dim.cust_dim_id};;
    relationship: many_to_one
  }
  join: dm_vendr_dim {
    type: left_outer
    sql_on: ${dm_txn_fact.vendr_dim_id} = ${dm_vendr_dim.vendr_dim_id};;
    relationship: many_to_one
  }
  join: dm_item_dim {
    type: left_outer
    sql_on: ${dm_txn_fact.item_dim_id} = ${dm_item_dim.item_dim_id};;
    relationship: many_to_one
  }
  join: dm_sbsdry_dim {
    type: left_outer
    sql_on: ${dm_txn_fact.sbsdry_dim_id} = ${dm_sbsdry_dim.sbsdry_dim_id};;
    relationship: many_to_one
  }
  join: dm_loc_dim {
    type: left_outer
    sql_on: ${dm_txn_fact.loc_dim_id} = ${dm_loc_dim.loc_dim_id};;
    relationship: many_to_one
  }
  join: dm_dept_dim {
    type: left_outer
    sql_on: ${dm_txn_fact.dept_dim_id} = ${dm_dept_dim.dept_dim_id};;
    relationship: many_to_one
  }
  join: dm_txn_typ_dim {
    type: left_outer
    sql_on: ${dm_txn_fact.txn_typ_dim_id} = ${dm_txn_typ_dim.txn_typ_dim_id};;
    relationship: many_to_one
  }
  join: dm_gl_amt_typ_dim {
    type: left_outer
    sql_on: ${dm_txn_fact.gl_amt_typ_dim_id} = ${dm_gl_amt_typ_dim.gl_amt_typ_dim_id};;
    relationship: many_to_one
  }
  join: dm_gl_acct_typ_dim {
    type: left_outer
    sql_on: ${dm_txn_fact.gl_acct_typ_dim_id} = ${dm_gl_acct_typ_dim.gl_acct_typ_dim_id};;
    relationship: many_to_one
  }
  join: dm_gl_acct_dim {
    type: left_outer
    sql_on: ${dm_txn_fact.gl_acct_dim_id} = ${dm_gl_acct_dim.gl_acct_dim_id};;
    relationship: many_to_one
  }
  join: dmv_class_dim {
    type: left_outer
    sql_on: ${dm_txn_fact.class_dim_id} = ${dmv_class_dim.class_dim_id};;
    relationship: many_to_one
  }
  join: dmv_cust_dim {
    type: left_outer
    sql_on: ${dm_txn_fact.cust_dim_id} = ${dmv_cust_dim.cust_dim_id};;
    relationship: many_to_one
  }
  join: dmv_dept_dim {
    type: left_outer
    sql_on: ${dm_txn_fact.dept_dim_id} = ${dmv_dept_dim.dept_dim_id};;
    relationship: many_to_one
  }
  join: dmv_gl_acct_dim {
    type: left_outer
    sql_on: ${dm_txn_fact.gl_acct_dim_id} = ${dmv_gl_acct_dim.gl_acct_dim_id};;
    relationship: many_to_one
  }
  join: dmv_item_dim {
    type: left_outer
    sql_on: ${dm_txn_fact.item_dim_id} = ${dmv_item_dim.item_dim_id};;
    relationship: many_to_one
  }
  join: dmv_loc_dim {
    type: left_outer
    sql_on: ${dm_txn_fact.loc_dim_id} = ${dmv_loc_dim.loc_dim_id};;
    relationship: many_to_one
  }
  join: dmv_sbsdry_dim {
    type: left_outer
    sql_on: ${dm_txn_fact.sbsdry_dim_id} = ${dmv_sbsdry_dim.sbsdry_dim_id};;
    relationship: many_to_one
  }
}

#explore: dm_txn_typ_dim {}

#explore: dm_vendr_dim {}

#explore: dmv_class_dim {}

#explore: dmv_cust_dim {}

#explore: dmv_dept_dim {}

#explore: dmv_gl_acct_dim {}

#explore: dmv_item_dim {}

#explore: dmv_loc_dim {}

#explore: dmv_sbsdry_dim {}
 #etl_sess_nm
explore: etl_bal_ctrl_execn {
  join: etl_run {
    type: left_outer
    sql_on: ${etl_bal_ctrl_execn.etl_run_id} = ${etl_run.etl_run_id} ;;
    relationship: many_to_one
  }
}

explore: etl_err_log {
  join: etl_run {
    type: left_outer
    sql_on: ${etl_err_log.etl_run_id} = ${etl_run.etl_run_id} ;;
    relationship: many_to_one
  }
}

#explore: etl_err_mstr {}

#explore: etl_err_type {}

#explore: etl_par {}

explore: etl_proc_execn {
  join: etl_run {
    type: left_outer
    sql_on: ${etl_proc_execn.etl_run_id} = ${etl_run.etl_run_id}  ;;
    relationship: many_to_one
  }
  join: etl_proc_execn_targ_tbl {
    type: left_outer
    sql_on: ${etl_proc_execn.etl_run_id} = ${etl_proc_execn_targ_tbl.etl_run_id} and  ${etl_proc_execn.etl_sess_nm} = ${etl_proc_execn_targ_tbl.etl_sess_nm};;
    relationship: many_to_one
  }
}

explore: etl_proc_execn_targ_tbl {
  join: etl_run {
    type: left_outer
    sql_on: ${etl_proc_execn_targ_tbl.etl_run_id} = ${etl_run.etl_run_id} ;;
    relationship: many_to_one
  }
}

#explore: etl_run {}

#explore: etl_run_typ {}

#explore: etl_src_file_hdr {}

#explore: etl_tbl {}
