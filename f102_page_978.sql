--------------------------------------------------------------------------------
-- © Copyright 2024 | Ibrahim Traders | All Rights Reserved | Release 2.0
--------------------------------------------------------------------------------
prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>1600443709411052
,p_default_application_id=>102
,p_default_id_offset=>0
,p_default_owner=>'DEV'
);
end;
/
 
prompt APPLICATION 102 - Ibrahim Traders
--
-- Application Export:
--   Application:     102
--   Name:            Ibrahim Traders
--   Exported By:     UMAR
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 978
--   Manifest End
--   Version:         24.1.0
--   Instance ID:     706401905951048
--

begin
null;
end;
/
prompt --application/pages/delete_00978
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>978);
end;
/
prompt --application/pages/page_00978
begin
wwv_flow_imp_page.create_page(
 p_id=>978
,p_name=>'Reconcilation Excel'
,p_alias=>'RECONCILATION-EXCEL3'
,p_step_title=>'Reconcilation Excel'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process(',
'    "GET_MATCHED_COUNT_1",',
'    {},',
'    {',
'        success: function(pData) {',
'            // RESULT ko page item me set karna',
'            $s("P978_MATCHING", pData.MATCHAPEX);',
'        },',
'        error: function() {',
'            console.log("Error fetching matched count");',
'        }',
'    }',
');',
'',
'',
'apex.server.process(',
'    "GET_UNMATCHED_COUNT_1_1",',
'    {},',
'    {',
'        success: function(pData) {',
'            // RESULT ko page item me set karna',
'            $s("P978_APEX", pData.APEX);',
'             $s("P978_OLD_SOFTWARE", pData.EBS);',
'        },',
'        error: function() {',
'            console.log("Error fetching matched count");',
'        }',
'    }',
');',
'',
'',
''))
,p_javascript_code_onload=>'$(''#card_pending_count'').text($v(''P972_MATCHING''));'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.button {',
'  background-color: #04AA6D;',
'  border: none;',
'  color: white;',
'  text-align: center;',
'  font-size: 16px;',
'  border-radius: 50%;',
'  text-decoration: none;',
'  display: inline-block;',
'  width: 180px;',
'  height: 180px;',
'  /* line-height: 80px; Vertically centers text */',
'}',
'',
'.button:hover {',
'  background-color: #03945f;',
'  cursor: pointer;',
'}',
'',
'',
'',
'.heading-green {',
'        color: Green;',
'        text-align: center;',
'        margin: 0;',
'        padding: 1px 0;',
'    }',
'',
'    .gradient-line-green {',
'        display: block;',
'        border: 0;',
'        height: 2px; ',
'        border-radius: 3px; ',
'        background: linear-gradient(to right, #a4d3a2, #2a8d4b, #a4d3a2); ',
'        box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1); ',
'        margin: 10px auto; ',
'        max-width: 100%; ',
'    }',
'',
'',
'',
'',
'.large-input input,',
'.large-input textarea,',
'.large-input select {',
'    min-height: 20px !important;',
'}',
'',
'.large-input button {',
'    height: 50px;',
'    background: linear-gradient(135deg, #3ba14f, #3ba14f);',
'    color: #ffffff;',
'    font-size: 12px;',
'    font-weight: bold;',
'    border: none;',
'    border-radius: 10px;',
'    padding: 2px 8px;',
'    cursor: pointer;',
'    transition: all 0.3s ease-in-out;',
'    text-transform: uppercase;',
'    letter-spacing: 1.2px;',
'    animation: pulse 2s infinite;',
'}',
'',
'.large-input button:hover {',
'    background: linear-gradient(135deg, #2e8b47, #2e8b47);',
'    box-shadow: 0 6px 14px rgba(0, 73, 153, 0.3);',
'    transform: translateY(-4px);',
'    animation: bounce 0.5s ease-in-out;',
'}',
'',
'@keyframes bounce {',
'    0% { transform: translateY(0); }',
'    50% { transform: translateY(-6px); }',
'    100% { transform: translateY(0); }',
'}',
'',
'@keyframes pulse {',
'    0% { transform: scale(1); }',
'    50% { transform: scale(1.05); }',
'    100% { transform: scale(1); }',
'}',
'',
'',
'',
'',
'#ITM, #AR, #AM {',
'    border-collapse: collapse;',
'    width: 100%;',
'    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);',
'    overflow-x: auto;',
'}',
'#ITM th, #AR th, #AM th {',
'    background-color: #28a746cc;',
'    color: white !important;',
'    font-weight: 600;',
'    padding: 10px 14px;',
'    font-size: 14px;',
'    letter-spacing: 0.5px;',
'    text-transform: capitalize;',
'    text-align: left;',
'    border: 1px solid #ddd;',
'    white-space: nowrap;',
'}',
'#ITM th span, #ITM th a,',
'#AR th span, #AR th a,',
'#AM th span, #AM th a {',
'    color: white !important;',
'}',
'#ITM td, #AR td, #AM td {',
'    font-size: 13px;',
'    padding: 8px 12px;',
'    border: 1px solid #eee;',
'    text-align: left;',
'    background-color: #ffffff;',
'    transition: background-color 0.2s ease;',
'    word-wrap: break-word;',
'}',
'#ITM td:hover, #AR td:hover, #AM td:hover {',
'    background-color: #e7f7e7;',
'    cursor: pointer;',
'}',
'#ITM td.clicked-cell, #AR td.clicked-cell, #AM td.clicked-cell {',
'    background-color: #d4edda !important;',
'    box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.1);',
'}',
'#ITM td:first-child, #AR td:first-child, #AM td:first-child {',
'    width: 120px;',
'}',
'#ITM td, #ITM th,',
'#AR td, #AR th,',
'#AM td, #AM th {',
'    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);',
'}',
'#ITM th:not(:first-child), #AR th:not(:first-child), #AM th:not(:first-child),',
'#ITM td:not(:first-child), #AR td:not(:first-child), #AM td:not(:first-child) {',
'    width: 200px;',
'}',
'@media (max-width: 768px) {',
'    #ITM, #AR, #AM {',
'        display: block;',
'        overflow-x: auto;',
'        white-space: nowrap;',
'}',
'    #ITM th, #ITM td,',
'    #AR th, #AR td,',
'    #AM th, #AM td {',
'        font-size: 12px;',
'        text-align: center;',
'        padding: 10px;',
'    }',
'}',
'',
'/* Style the outer region wrapper */',
'.t-IRR-region {',
'  background-color: #e7f7e7 !important;',
'  border-radius: 10px !important;',
'  border: none !important;',
'  box-shadow: none !important;',
'}',
'',
'/* Optionally also style the toolbar inner controls */',
'#ITM_toolbar_controls {',
'  background-color: #ececec !important;',
'}',
'',
'.a-IRR-toolbar {',
'    background-color: #ececec;}',
'',
'',
'/* --- */',
'',
'',
'.status-cards {',
'  display: flex;',
'  justify-content: center; ',
'  align-items: center;     ',
'  gap: 25px;',
'  margin: 15px auto;       ',
'  width: fit-content;      ',
'}',
'',
'.status-card {',
'  background: #fff;',
'  border-radius: 16px;',
'  box-shadow: 0 8px 12px rgba(0, 0, 0, 0.08),',
'              0 6px 6px rgba(0, 0, 0, 0.05);',
'  width: 150px;',
'  padding: 20px 10px;',
'  text-align: center;',
'  transition: all 0.3s ease-in-out;',
'  position: relative;',
'  overflow: hidden;',
'}',
'.status-card:hover {',
'  transform: translateY(-5px) scale(1.05);',
'  box-shadow: 0 10px 12px rgba(0, 0, 0, 0.15),',
'              0 10px 10px rgba(0, 0, 0, 0.1);',
'}',
'',
'',
'.status-card .status-icon {',
'  width: 70px;',
'  height: 70px;',
'  margin-bottom: 8px;',
'  animation: bounce 1.2s infinite;',
'}',
'.status-card .count {',
'  font-size: 28px;',
'  font-weight: bold;',
'  color: #222;',
'}',
'.status-card .label {',
'  font-size: 14px;',
'  color: #555;',
'}',
'.status-card.pending {',
'  border-top: 5px solid #f1b207;',
'}',
'.status-card.approved {',
'  border-top: 5px solid #28a745;',
'}',
'.status-card.rejected {',
'  border-top: 5px solid #dc3545;',
'}',
'/* Simple bounce animation for icons */',
'@keyframes bounce {',
'  0%, 100% {',
'    transform: translateY(0);',
'  }',
'  50% {',
'    transform: translateY(-5px);',
'  }',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(500584512240751899)
,p_plug_name=>'matching cards'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2310230379184666)
,p_plug_display_sequence=>1000000030
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH ',
'-- Step 1: Clean and normalize Excel data from collection',
'cleaned_excel AS (',
'    SELECT ',
'        ROWNUM AS excel_row_id,',
'        -- Convert date to DD-MON-YYYY format (handles both RR and YYYY)',
'        TO_CHAR(',
'            TO_DATE(',
'                CASE',
'                    WHEN REGEXP_LIKE(TRIM(c002), ''^[0-9]{1,2}-[A-Z]{3}-[0-9]{2}$'', ''i'')',
'                        THEN TRIM(c002)',
'                    WHEN REGEXP_LIKE(TRIM(c002), ''^[0-9]{1,2}-[A-Z]{3}-[0-9]{4}$'', ''i'')',
'                        THEN TRIM(c002)',
'                    WHEN REGEXP_LIKE(TRIM(c002), ''^[0-9]+$'')',
'                        THEN TO_CHAR(DATE ''1899-12-30'' + TO_NUMBER(c002), ''DD-MON-YYYY'')',
'                    ELSE NULL',
'                END,',
'                ''DD-MON-RR'',',
'                ''NLS_DATE_LANGUAGE=ENGLISH''',
'            ),',
'            ''DD-MON-YYYY''',
'        ) AS excel_date,',
'        TRIM(c003) AS excel_voucher,',
'        -- Clean and convert credit amount',
'        CASE ',
'            WHEN c010 IS NULL THEN 0',
'            WHEN TRIM(c010) = '''' THEN 0',
'            WHEN TRIM(c010) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c010), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c010), '','', ''''), '' '', ''''), ''-'', '''')))',
'            ELSE 0',
'        END AS excel_credit,',
'        -- Clean and convert debit amount',
'        CASE ',
'            WHEN c009 IS NULL THEN 0',
'            WHEN TRIM(c009) = '''' THEN 0',
'            WHEN TRIM(c009) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', '''')))',
'            ELSE 0',
'        END AS excel_debit',
'    FROM apex_collections',
'    WHERE collection_name = ''REC''',
'    AND REGEXP_LIKE(c002, ''^[0-9]{2}-[A-Za-z]{3}-[0-9]{2}$'')',
'AND TO_DATE(c002, ''DD-MON-RR'') BETWEEN',
'      NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TO_DATE(c002, ''DD-MON-RR''))',
'  AND NVL(TO_DATE(:P978_TO_DATE,   ''DD-MON-YYYY''), TO_DATE(c002, ''DD-MON-RR''))',
'      AND UPPER(TRIM(c002)) NOT IN (''FDATE'', ''DATE'')',
'      AND c002 IS NOT NULL',
'),',
'',
'-- Step 2: Get DB data with row identification and convert date to VARCHAR2',
'db_data AS (',
'    SELECT ',
'        ROWNUM AS db_row_id,',
'        TRANSCATION_ID,',
'        TRANSCATION_DATE AS db_date,',
'        VOUCHER_NAME AS db_voucher,',
'        NVL(DR_AMOUNT, 0) AS db_debit,',
'        NVL(CR_AMOUNT, 0) AS db_credit',
'    FROM TABLE(',
'        AB_FINANCE_REPORTS.ACCOUNT_WISE_LEDGER(',
'            :GV_ORG_ID,',
'            NVL(:P978_ACCOUNT, 1),',
'            TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''),',
'            TO_DATE(:P978_TO_DATE, ''DD-MON-YYYY''),',
'            NVL(:P19_OPENING_BALANCE, 0)',
'        )',
'    )',
'),',
'',
'-- Step 4: Detect duplicates in DB (same date + voucher + amounts)',
'-- db_duplicates AS (',
'--     SELECT ',
'--         db_date,',
'--         db_voucher,',
'--         db_debit,',
'--         db_credit,',
'--         COUNT(*) AS dup_count',
'--     FROM db_data',
'--     WHERE db_date IS NOT NULL',
'--     GROUP BY db_date, db_voucher, db_debit, db_credit',
'--     HAVING COUNT(*) > 1',
'-- ),',
'',
'-- Step 5: Match rows based on Date + Amount (Debit OR Credit)',
'matched_rows AS (',
'    SELECT ',
'        db.db_row_id,',
'        ex.excel_row_id,',
'        db.db_date,',
'        ex.excel_date,',
'        db.db_voucher,',
'        ex.excel_voucher,',
'        db.db_debit,',
'        ex.excel_debit,',
'        db.db_credit,',
'        ex.excel_credit,',
'        ROW_NUMBER() OVER (',
'            PARTITION BY db.db_row_id ',
'            ORDER BY ',
'                CASE WHEN db.db_debit = ex.excel_debit AND db.db_credit = ex.excel_credit THEN 1 ELSE 2 END,',
'                ex.excel_row_id',
'        ) AS db_match_rank,',
'        ROW_NUMBER() OVER (',
'            PARTITION BY ex.excel_row_id ',
'            ORDER BY ',
'                CASE WHEN db.db_debit = ex.excel_debit AND db.db_credit = ex.excel_credit THEN 1 ELSE 2 END,',
'                db.db_row_id',
'        ) AS excel_match_rank',
'    FROM db_data db',
'     JOIN cleaned_excel ex',
'        ON db.db_date = ex.excel_date',
'        AND (',
'            db.db_debit = ex.excel_debit ',
'            OR db.db_credit = ex.excel_credit',
'        )',
'),',
'',
'-- Step 6: Get best matches only (first match for each row)',
'best_matches AS (',
'    SELECT ',
'        db_row_id,',
'        excel_row_id,',
'        db_date,',
'        excel_date,',
'        db_voucher,',
'        excel_voucher,',
'        db_debit,',
'        excel_debit,',
'        db_credit,',
'        excel_credit',
'    FROM matched_rows',
'    WHERE db_match_rank = 1 AND excel_match_rank = 1',
')',
',',
'main_data AS (',
'SELECT ',
'    COALESCE(db.db_date, ex.excel_date) AS transaction_date,',
'    db.db_voucher AS apex_voucher,',
'    ex.excel_voucher AS old_software_voucher,',
'    NVL(db.db_debit, 0) AS apex_debit,',
'    NVL(ex.excel_debit, 0) AS old_software_debit,',
'    NVL(db.db_credit, 0) AS apex_credit,',
'    NVL(ex.excel_credit, 0) AS old_software_credit,',
'    NVL(db.db_debit, 0) - NVL(ex.excel_debit, 0) AS debit_variance,',
'    NVL(db.db_credit, 0) - NVL(ex.excel_credit, 0) AS credit_variance,',
'    CASE',
'        -- WHEN db.db_date IS NOT NULL AND EXISTS (',
'        --     SELECT 1 FROM db_duplicates d',
'        --     WHERE d.db_date = db.db_date',
'        --       AND NVL(d.db_voucher, ''NULL'') = NVL(db.db_voucher, ''NULL'')',
'        --       AND d.db_debit = db.db_debit',
'        --       AND d.db_credit = db.db_credit',
'        -- ) THEN ''DUPLICATE IN APEX''',
'        ',
'    ',
'        ',
'        WHEN bm.db_row_id IS NOT NULL AND bm.excel_row_id IS NOT NULL',
'         AND db.db_debit = ex.excel_debit ',
'         AND db.db_credit = ex.excel_credit',
'        THEN ''MATCHED''',
'        ',
'        WHEN bm.db_row_id IS NOT NULL AND bm.excel_row_id IS NOT NULL',
'         AND (db.db_debit != ex.excel_debit OR db.db_credit != ex.excel_credit)',
'        THEN ''AMOUNT MISMATCH''',
'        ',
'        WHEN db.db_row_id IS NOT NULL AND bm.db_row_id IS NULL',
'        THEN ''ONLY IN APEX''',
'        ',
'        WHEN ex.excel_row_id IS NOT NULL AND bm.excel_row_id IS NULL',
'        THEN ''ONLY IN OLD SOFTWARE''',
'        ',
'        ELSE ''UNKNOWN''',
'    END AS status,',
'    db.db_row_id AS apex_row_num,',
'    ex.excel_row_id AS excel_row_num',
'FROM best_matches bm',
'FULL OUTER JOIN db_data db ON bm.db_row_id = db.db_row_id',
'FULL OUTER JOIN cleaned_excel ex ON bm.excel_row_id = ex.excel_row_id',
'ORDER BY ',
'    TO_DATE(COALESCE(db.db_date, ex.excel_date), ''DD-MON-YYYY''),',
'    CASE ',
'        WHEN status = ''MATCHED'' THEN 1',
'        WHEN status = ''AMOUNT MISMATCH'' THEN 2',
'        WHEN status = ''ONLY IN APEX'' THEN 3',
'        WHEN status = ''ONLY IN OLD SOFTWARE'' THEN 4',
'        -- WHEN status = ''DUPLICATE IN OLD SOFTWARE'' THEN 6',
'        ELSE 7',
'    END',
'',
')',
'',
'SELECT ',
'    status,',
'    COUNT(*) AS record_count',
'FROM main_data',
'GROUP BY status',
'ORDER BY status;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P978_FROM_DATE,P978_TO_DATE,P978_REF_CODE'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(504584439493252179)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ANAS-26163'
,p_internal_uid=>504584439493252179
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(504584514330252180)
,p_db_column_name=>'STATUS'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(504584615177252181)
,p_db_column_name=>'RECORD_COUNT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Record Count'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(504963740241087435)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1603255'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STATUS:RECORD_COUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(500988244184081806)
,p_plug_name=>'OLD SOFTWARE'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2361825631184681)
,p_plug_display_sequence=>1000000020
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_display_condition_type=>'NEVER'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3 class="heading-green">',
'   Old Software',
'</h3>',
'<hr class="gradient-line-green">'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(500988508181081809)
,p_name=>'Excel Data Upload (Collection)'
,p_parent_plug_id=>wwv_flow_imp.id(500988244184081806)
,p_template=>wwv_flow_imp.id(2361825631184681)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="background-color:#E4E8E8;"'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    APEX_ITEM.CHECKBOX(1, seq_id, ''CHECKED'') AS "SELECT",',
'    seq_id AS SEQ,',
'',
'    c001 AS COL_A,',
'    c002 AS COL_B,',
'    c003 AS COL_C,',
'    c004 AS COL_D,',
'    c005 AS COL_E,       -- LEVEL5 (full)',
'    c006 AS COL_F,',
'    c007 AS COL_G,',
'    c008 AS COL_H,',
'    c009 AS COL_I,',
'    c010 AS COL_J,',
'    c011 AS COL_K,',
'',
unistr('    -- New Column L \2192 Extract code from LEVEL5 (C005)'),
'   REGEXP_SUBSTR(c005, ''^[0-9]+'') AS L',
'',
'FROM apex_collections',
'WHERE collection_name = ''REC''',
'ORDER BY seq_id',
'',
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P978_FROM_DATE,P978_TO_DATE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2388681489184691)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(174436434749352594)
,p_query_column_id=>1
,p_column_alias=>'SELECT'
,p_column_display_sequence=>60
,p_column_heading=>'Select'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(174436052800352594)
,p_query_column_id=>2
,p_column_alias=>'SEQ'
,p_column_display_sequence=>10
,p_column_heading=>'Seq'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(174431217397352592)
,p_query_column_id=>3
,p_column_alias=>'COL_A'
,p_column_display_sequence=>70
,p_column_heading=>'Col A'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(174431656322352593)
,p_query_column_id=>4
,p_column_alias=>'COL_B'
,p_column_display_sequence=>80
,p_column_heading=>'Col B'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(174432016809352593)
,p_query_column_id=>5
,p_column_alias=>'COL_C'
,p_column_display_sequence=>90
,p_column_heading=>'Col C'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(174432482295352593)
,p_query_column_id=>6
,p_column_alias=>'COL_D'
,p_column_display_sequence=>100
,p_column_heading=>'Col D'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(174432874017352593)
,p_query_column_id=>7
,p_column_alias=>'COL_E'
,p_column_display_sequence=>110
,p_column_heading=>'Col E'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(174433226193352593)
,p_query_column_id=>8
,p_column_alias=>'COL_F'
,p_column_display_sequence=>120
,p_column_heading=>'Col F'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(174433641807352593)
,p_query_column_id=>9
,p_column_alias=>'COL_G'
,p_column_display_sequence=>130
,p_column_heading=>'Col G'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(174434046653352594)
,p_query_column_id=>10
,p_column_alias=>'COL_H'
,p_column_display_sequence=>140
,p_column_heading=>'Col H'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(174434432626352594)
,p_query_column_id=>11
,p_column_alias=>'COL_I'
,p_column_display_sequence=>150
,p_column_heading=>'Col I'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(174434809527352594)
,p_query_column_id=>12
,p_column_alias=>'COL_J'
,p_column_display_sequence=>160
,p_column_heading=>'Col J'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(174435282572352594)
,p_query_column_id=>13
,p_column_alias=>'COL_K'
,p_column_display_sequence=>170
,p_column_heading=>'Col K'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(174435695277352594)
,p_query_column_id=>14
,p_column_alias=>'L'
,p_column_display_sequence=>180
,p_column_heading=>'L'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(502480828271730369)
,p_plug_name=>'HEADER'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2361825631184681)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3 class="heading-green">',
'   Apply Filters',
'</h3>',
'<hr class="gradient-line-green">'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(502484102282730402)
,p_plug_name=>'APEX REGION'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2361825631184681)
,p_plug_display_sequence=>1000000010
,p_location=>null
,p_plug_display_condition_type=>'NEVER'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3 class="heading-green">',
'   Apex Region',
'</h3>',
'<hr class="gradient-line-green">'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(502484988039730411)
,p_plug_name=>'Account Wise Ledger'
,p_parent_plug_id=>wwv_flow_imp.id(502484102282730402)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2310230379184666)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- SELECT *',
'-- FROM TABLE(RECONCILATION_TRIAL_BALANCE_PCK.TRIAL_BALANCE_RECONCILATION_FUN(',
'--     :GV_ORG_ID,',
'--    TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''),',
'--  TO_DATE(:P978_TO_DATE, ''DD-MON-YYYY'')',
'-- ))',
'',
'',
'',
'        WITH COA_ALL_LEVELS AS (',
'            SELECT COA_ID, PARENT_ID, GL_CODE, ACCOUNT_TITLE, STATUS,',
'                   REFERENCE_CODE,',
'                   CASE',
'                       WHEN LENGTH(GL_CODE) = 1  THEN 1',
'                       WHEN LENGTH(GL_CODE) = 3  THEN 2',
'                       WHEN LENGTH(GL_CODE) = 6  THEN 3',
'                       WHEN LENGTH(GL_CODE) = 10 THEN 4',
'                       WHEN LENGTH(GL_CODE) = 15 THEN 5',
'                   END AS ACCOUNT_LEVEL',
'            FROM AB_FIN_COA',
'            WHERE STATUS = ''Y''',
'              AND LENGTH(GL_CODE) IN (1, 3, 6, 10, 15)',
'              AND ORG_ID = :GV_ORG_ID',
'            ORDER BY COA_ID ASC',
'        ),',
'',
'        USER_APPROVAL AS (',
'            SELECT APP_IDS AS APP_ID',
'            FROM AB_USER_ACTION_APPROVAL',
'            WHERE APP_TYPE = ''780''',
'              AND STATUS = ''Y''',
'              AND APPROVAL_STATUS = ''APPROVED''',
'              AND ORG_ID = :GV_ORG_ID',
'        ),',
'',
'        ACCOUNT_TITLE AS (',
'            SELECT TRD.COA_IDD AS ACCOUNT_ID',
'            FROM AB_FIN_TRANSACTION TR',
'            JOIN AB_FIN_TRANSACTION_DET TRD ',
'              ON TRD.TR_ID = TR.TR_ID AND TRD.STATUS = ''Y''',
'            WHERE TR.ORG_ID = :GV_ORG_ID',
'              AND TR.VOUCHER_NAME IS NOT NULL',
'              AND TR.STATUS = ''Y''',
'            GROUP BY TRD.COA_IDD',
'        ),',
'',
'        DEBIT_ACCOUNT AS (',
'            SELECT TR.TR_ID VOUCHER_NO,',
'                   TRD.COA_IDD AS ACCOUNT_ID,',
'                   NVL(TR.TR_DATE, TRD.TRD_DATE) AS VOUCHER_DATE,',
'                   NVL(SUM(DR_AMOUNT), 0) AS DEBIT_AMOUNT',
'            FROM AB_FIN_TRANSACTION TR',
'            JOIN AB_FIN_TRANSACTION_DET TRD ',
'              ON TRD.TR_ID = TR.TR_ID AND TRD.STATUS = ''Y''',
'            JOIN USER_APPROVAL UA ',
'              ON UA.APP_ID = NVL(TR.TR_ID, TRD.TRD_ID)',
'            JOIN AB_FIN_COA COA ',
'              ON COA.COA_ID = TRD.COA_IDD AND COA.STATUS = ''Y''',
'            WHERE TR.ORG_ID = :GV_ORG_ID',
'              AND TR.VOUCHER_NAME IS NOT NULL',
'              AND TR.STATUS = ''Y''',
'              AND CR_AMOUNT IS NULL',
'            GROUP BY TR.TR_ID, TRD.COA_IDD, NVL(TR.TR_DATE, TRD.TRD_DATE)',
'        ),',
'',
'        CREDIT_ACCOUNT AS (',
'            SELECT TR.TR_ID VOUCHER_NO,',
'                   TRD.COA_IDD AS ACCOUNT_ID,',
'                   NVL(TR.TR_DATE, TRD.TRD_DATE) AS VOUCHER_DATE,',
'                   NVL(SUM(CR_AMOUNT), 0) AS CREDIT_AMOUNT',
'            FROM AB_FIN_TRANSACTION TR',
'            JOIN AB_FIN_TRANSACTION_DET TRD ',
'              ON TRD.TR_ID = TR.TR_ID AND TRD.STATUS = ''Y''',
'            JOIN USER_APPROVAL UA ',
'              ON UA.APP_ID = NVL(TR.TR_ID, TRD.TRD_ID)',
'            JOIN AB_FIN_COA COA ',
'              ON COA.COA_ID = TRD.COA_IDD AND COA.STATUS = ''Y''',
'            WHERE TR.ORG_ID = :GV_ORG_ID',
'              AND TR.VOUCHER_NAME IS NOT NULL',
'              AND TR.STATUS = ''Y''',
'              AND DR_AMOUNT IS NULL',
'            GROUP BY TR.TR_ID, TRD.COA_IDD, NVL(TR.TR_DATE, TRD.TRD_DATE)',
'        ),',
'',
'        BEFORE_OPENING_BALANCE AS (',
'            SELECT ACCOUNT_ID,',
'                   NVL(SUM(OPENING_DEBIT), 0) AS OPENING_DEBIT,',
'                   NVL(SUM(OPENING_CREDIT), 0) AS OPENING_CREDIT',
'            FROM (',
'                SELECT ACCOUNT_ID,',
'                       NVL(SUM(DEBIT_AMOUNT), 0) AS OPENING_DEBIT,',
'                       NULL AS OPENING_CREDIT',
'                FROM DEBIT_ACCOUNT',
'                WHERE TRUNC(VOUCHER_DATE) < NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'                GROUP BY ACCOUNT_ID',
'                ',
'                UNION ALL',
'                ',
'                SELECT ACCOUNT_ID,',
'                       NULL AS OPENING_DEBIT,',
'                       NVL(SUM(CREDIT_AMOUNT), 0) AS OPENING_CREDIT',
'                FROM CREDIT_ACCOUNT',
'               WHERE TRUNC(VOUCHER_DATE) < NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'                GROUP BY ACCOUNT_ID',
'            )',
'            GROUP BY ACCOUNT_ID',
'        ),',
'',
'        BETWEEN_TRANSACTIONS AS (',
'            SELECT ACCOUNT_ID,',
'                   NVL(SUM(PERIOD_DEBIT), 0) AS PERIOD_DEBIT,',
'                   NVL(SUM(PERIOD_CREDIT), 0) AS PERIOD_CREDIT',
'            FROM (',
'                SELECT ACCOUNT_ID,',
'                       NVL(SUM(DEBIT_AMOUNT), 0) AS PERIOD_DEBIT,',
'                       NULL AS PERIOD_CREDIT',
'                FROM DEBIT_ACCOUNT',
'              WHERE TRUNC(VOUCHER_DATE) BETWEEN NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'AND NVL(TO_DATE(:P978_TO_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'                GROUP BY ACCOUNT_ID',
'',
'                UNION ALL',
'',
'                SELECT ACCOUNT_ID,',
'                       NULL AS PERIOD_DEBIT,',
'                       NVL(SUM(CREDIT_AMOUNT), 0) AS PERIOD_CREDIT',
'                FROM CREDIT_ACCOUNT',
'              WHERE TRUNC(VOUCHER_DATE) BETWEEN NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'AND NVL(TO_DATE(:P978_TO_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'                GROUP BY ACCOUNT_ID',
'            )',
'            GROUP BY ACCOUNT_ID',
'        ),',
'',
'        ACCOUNT_TOTALS AS (',
'            SELECT AC.ACCOUNT_ID,',
'                   NVL(OPENING_DEBIT, 0) AS TOTAL_OPENING_DEBIT,',
'                   NVL(OPENING_CREDIT, 0) AS TOTAL_OPENING_CREDIT,',
'                   NVL(PERIOD_DEBIT, 0) AS TOTAL_PERIOD_DEBIT,',
'                   NVL(PERIOD_CREDIT, 0) AS TOTAL_PERIOD_CREDIT',
'            FROM ACCOUNT_TITLE AC',
'            LEFT JOIN BEFORE_OPENING_BALANCE OB ON OB.ACCOUNT_ID = AC.ACCOUNT_ID',
'            LEFT JOIN BETWEEN_TRANSACTIONS BT ON BT.ACCOUNT_ID = AC.ACCOUNT_ID',
'        ),',
'',
'        ACCOUNT_HIERARCHY AS (',
'            SELECT',
'                L1.COA_ID AS LEVEL1_ID,',
'                L2.COA_ID AS LEVEL2_ID,',
'                L3.COA_ID AS LEVEL3_ID,',
'                L4.COA_ID AS LEVEL4_ID,',
'                L5.COA_ID AS LEVEL5_ID,',
'                L1.ACCOUNT_TITLE AS LEVEL1_TITLE,',
'                L2.ACCOUNT_TITLE AS LEVEL2_TITLE,',
'                L3.ACCOUNT_TITLE AS LEVEL3_TITLE,',
'                L4.ACCOUNT_TITLE AS LEVEL4_TITLE,',
'                L5.ACCOUNT_TITLE AS LEVEL5_TITLE,',
'                L1.GL_CODE AS LEVEL1_GL_CODE,',
'                L2.GL_CODE AS LEVEL2_GL_CODE,',
'                L3.GL_CODE AS LEVEL3_GL_CODE,',
'                L4.GL_CODE AS LEVEL4_GL_CODE,',
'                L5.GL_CODE AS LEVEL5_GL_CODE,',
'                L1.REFERENCE_CODE AS LEVEL1_REF,',
'                L2.REFERENCE_CODE AS LEVEL2_REF,',
'                L3.REFERENCE_CODE AS LEVEL3_REF,',
'                L4.REFERENCE_CODE AS LEVEL4_REF,',
'                L5.REFERENCE_CODE AS LEVEL5_REF,',
'                COALESCE(L5.COA_ID, L4.COA_ID, L3.COA_ID, L2.COA_ID, L1.COA_ID) AS ACTUAL_ACCOUNT_ID',
'            FROM COA_ALL_LEVELS L1',
'            LEFT JOIN COA_ALL_LEVELS L2 ON L2.PARENT_ID = L1.COA_ID AND L2.ACCOUNT_LEVEL = 2',
'            LEFT JOIN COA_ALL_LEVELS L3 ON L3.PARENT_ID = L2.COA_ID AND L3.ACCOUNT_LEVEL = 3',
'            LEFT JOIN COA_ALL_LEVELS L4 ON L4.PARENT_ID = L3.COA_ID AND L4.ACCOUNT_LEVEL = 4',
'            LEFT JOIN COA_ALL_LEVELS L5 ON L5.PARENT_ID = L4.COA_ID AND L5.ACCOUNT_LEVEL = 5',
'            WHERE L1.ACCOUNT_LEVEL = 1',
'        ),',
'',
'        LEVEL_TOTALS AS (',
'            SELECT',
'                5 AS DISPLAY_LEVEL,',
'                AH.LEVEL5_ID AS ACCOUNT_ID,',
'                AH.LEVEL5_GL_CODE AS GL_CODE,',
'                AH.LEVEL5_TITLE AS ACCOUNT_TITLE,',
'                AH.LEVEL5_REF AS REFERENCE_CODE,',
'                NVL(AT.TOTAL_OPENING_DEBIT, 0) AS OPENING_DEBIT,',
'                NVL(AT.TOTAL_OPENING_CREDIT, 0) AS OPENING_CREDIT,',
'                NVL(AT.TOTAL_PERIOD_DEBIT, 0) AS CURRENT_DEBIT,',
'                NVL(AT.TOTAL_PERIOD_CREDIT, 0) AS CURRENT_CREDIT',
'            FROM ACCOUNT_HIERARCHY AH',
'            LEFT JOIN ACCOUNT_TOTALS AT ON AT.ACCOUNT_ID = AH.LEVEL5_ID',
'            WHERE AH.LEVEL5_ID IS NOT NULL',
'              AND (AT.TOTAL_OPENING_DEBIT != 0 OR AT.TOTAL_OPENING_CREDIT != 0 ',
'               OR AT.TOTAL_PERIOD_DEBIT != 0 OR AT.TOTAL_PERIOD_CREDIT != 0)',
'        )',
'',
'        SELECT',
'            DISPLAY_LEVEL,',
'            ACCOUNT_ID,',
'            GL_CODE,',
'          GL_CODE|| '' - ''||SUBSTR(ACCOUNT_TITLE, 1, 500) AS ACCOUNT_TITLE,',
'            CASE ',
'              WHEN REFERENCE_CODE IS NULL THEN NULL',
'              WHEN REGEXP_LIKE(TRIM(REFERENCE_CODE), ''^-?\d+(\.\d+)?$'') ',
'                THEN TO_NUMBER(TRIM(REFERENCE_CODE))',
'              ELSE NULL',
'            END AS REFERENCE_CODE,',
'           -- ACCOUNT_TITLE,',
'         -- REFERENCE_CODE,',
'            ROUND(NVL(OPENING_DEBIT, 0)) AS OPENING_DEBIT,',
'            ROUND(NVL(OPENING_CREDIT, 0)) AS OPENING_CREDIT,',
'            ROUND(NVL(CURRENT_DEBIT, 0)) AS CURRENT_DEBIT,',
'            ROUND(NVL(CURRENT_CREDIT, 0)) AS CURRENT_CREDIT,',
'',
'                                         CASE ',
'                    WHEN ((NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'                          (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))) > 0',
'                    THEN ROUND(',
'                            (NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'                            (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))',
'                         )',
'                    ELSE 0',
'                END AS CLOSING_DEBIT,',
'',
'                CASE ',
'                    WHEN ((NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'                          (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))) < 0',
'                    THEN ROUND(',
'                            (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0)) -',
'                            (NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0))',
'                         )',
'                    ELSE 0',
'                END AS CLOSING_CREDIT,',
'',
'',
'                       ROUND(',
'                (NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'                (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))',
'            ) AS NET_BALANCE',
'',
'',
'        FROM LEVEL_TOTALS',
'        WHERE ACCOUNT_ID IS NOT NULL',
'        AND REFERENCE_CODE IS NOT NULL',
'         and   ROUND(',
'                (NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'                (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))',
'            ) <> 0',
'        ',
'        ORDER BY GL_CODE ASC',
'    '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P978_FROM_DATE,P978_TO_DATE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(502485077078730412)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ANAS-26163'
,p_internal_uid=>502485077078730412
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(502712212540520769)
,p_db_column_name=>'ACCOUNT_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Account Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(502712302319520770)
,p_db_column_name=>'ACCOUNT_TITLE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Account Title'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344880817464277717)
,p_db_column_name=>'DISPLAY_LEVEL'
,p_display_order=>90
,p_column_identifier=>'O'
,p_column_label=>'Display Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344880990704277719)
,p_db_column_name=>'OPENING_DEBIT'
,p_display_order=>110
,p_column_identifier=>'Q'
,p_column_label=>'Opening Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344881147678277720)
,p_db_column_name=>'OPENING_CREDIT'
,p_display_order=>120
,p_column_identifier=>'R'
,p_column_label=>'Opening Credit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344881206840277721)
,p_db_column_name=>'CURRENT_DEBIT'
,p_display_order=>130
,p_column_identifier=>'S'
,p_column_label=>'Current Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344881338502277722)
,p_db_column_name=>'CURRENT_CREDIT'
,p_display_order=>140
,p_column_identifier=>'T'
,p_column_label=>'Current Credit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344881392180277723)
,p_db_column_name=>'CLOSING_DEBIT'
,p_display_order=>150
,p_column_identifier=>'U'
,p_column_label=>'Closing Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344881489050277724)
,p_db_column_name=>'CLOSING_CREDIT'
,p_display_order=>160
,p_column_identifier=>'V'
,p_column_label=>'Closing Credit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344881617727277725)
,p_db_column_name=>'NET_BALANCE'
,p_display_order=>170
,p_column_identifier=>'W'
,p_column_label=>'Net Balance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346359980933727444)
,p_db_column_name=>'REFERENCE_CODE'
,p_display_order=>180
,p_column_identifier=>'Z'
,p_column_label=>'Reference Code'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(174349103504244743)
,p_db_column_name=>'GL_CODE'
,p_display_order=>190
,p_column_identifier=>'AA'
,p_column_label=>'Gl Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(502722191370523842)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1580840'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'ACCOUNT_TITLE:REFERENCE_CODE:OPENING_DEBIT:OPENING_CREDIT:CURRENT_DEBIT:CURRENT_CREDIT:CLOSING_DEBIT:CLOSING_CREDIT:NET_BALANCE:'
,p_sum_columns_on_break=>'CURRENT_DEBIT:CURRENT_CREDIT:NET_BALANCE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(510749576576327472)
,p_plug_name=>'Main '
,p_plug_display_sequence=>20
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(504586112068252196)
,p_plug_name=>'matching cards region'
,p_parent_plug_id=>wwv_flow_imp.id(510749576576327472)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2361825631184681)
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3 class="heading-green" style="margin-left: 20px; text-align: left;"> ',
'   Trial Reconcillation Summary',
'</h3>',
'<hr class="gradient-line-green">'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(500586331411751917)
,p_plug_name=>'matching cards right'
,p_parent_plug_id=>wwv_flow_imp.id(504586112068252196)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2361825631184681)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="status-cards">',
'',
'  <!-- <div class="status-card pending">',
'    <img src="#APP_FILES#Matched.gif" alt="Pending" class="status-icon">',
'    <div class="count"><span id="card_pending_count">&P978_MATCHING.</span></div>',
'    <div class="label">Records Matched</div>',
'  </div> -->',
'',
'',
'    <div class="status-card pending"',
'        style="cursor: pointer;"',
'        onclick="$s(''P978_STATUS'', ''MATCHED'');">',
'    <img src="#APP_FILES#17122649.gif" alt="Pending" class="status-icon">',
'    <div class="count"><span id="card_pending_count">&P978_MATCHING.</span></div>',
'    <div class="label">Records Matched</div>',
'    </div>',
'',
'  <div class="status-card approved"',
'        style="cursor: pointer;"',
'        onclick="$s(''P978_STATUS'', ''ONLY IN APEX'');">',
'    <img src="#APP_FILES#only.gif" alt="Approved" class="status-icon">',
'    <div class="count"><span id="card_approved_count">&P978_APEX.</span></div>',
'    <div class="label">Only in Apex</div>',
'  </div>',
'',
'  <div class="status-card rejected"',
'        style="cursor: pointer;"',
'        onclick="$s(''P978_STATUS'', ''ONLY IN OLD SOFTWARE'');">',
'    <img src="#APP_FILES#only.gif" alt="Rejected" class="status-icon">',
'    <div class="count"><span id="card_rejected_count">&P978_OLD_SOFTWARE.</span></div>',
'    <div class="label">Only in Old Software</div>',
'  </div>',
'',
'</div>',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(504586195783252197)
,p_plug_name=>'Reconciling'
,p_parent_plug_id=>wwv_flow_imp.id(510749576576327472)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2361825631184681)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3 class="heading-green" style="margin-left: 20px; text-align: left;">',
'   Add Document',
'</h3>',
'<hr class="gradient-line-green">'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(510923314947613878)
,p_plug_name=>'MAIN_REGION'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill'
,p_plug_template=>wwv_flow_imp.id(2357896883184680)
,p_plug_display_sequence=>1000000040
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(346634867875914251)
,p_plug_name=>'NOT matching OLD ORIGINAL QUERY'
,p_title=>'Not Matching'
,p_parent_plug_id=>wwv_flow_imp.id(510923314947613878)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2357896883184680)
,p_plug_display_sequence=>1000000090
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH ',
'-- Step 1: Clean and normalize Excel data from collection',
'cleaned_excel AS (',
'    SELECT ',
'        seq_id AS excel_row_id,',
'        REGEXP_SUBSTR(c005, ''^[0-9]+'') AS L,  -- Extract account code from LEVEL5',
'        -- Clean opening debit (O_DR - Column F) - truncate decimal part',
'        CASE ',
'            WHEN c006 IS NULL THEN 0',
'            WHEN TRIM(c006) = '''' THEN 0',
'            WHEN TRIM(c006) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c006), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC((TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c006), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_opening_debit,',
'        -- Clean opening credit (O_CR - Column G) - truncate decimal part',
'        CASE ',
'            WHEN c007 IS NULL THEN 0',
'            WHEN TRIM(c007) = '''' THEN 0',
'            WHEN TRIM(c007) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c007), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC((TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c007), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_opening_credit,',
'        -- Clean current debit (C_DR - Column H) - truncate decimal part',
'        CASE ',
'            WHEN c008 IS NULL THEN 0',
'            WHEN TRIM(c008) = '''' THEN 0',
'            WHEN TRIM(c008) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c008), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC((TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c008), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_current_debit,',
'        -- Clean current credit (C_CR - Column I) - truncate decimal part',
'        CASE ',
'            WHEN c009 IS NULL THEN 0',
'            WHEN TRIM(c009) = '''' THEN 0',
'            WHEN TRIM(c009) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC((TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_current_credit,',
'        -- Clean closing debit (COL_J - Column J) - truncate decimal part',
'        CASE ',
'            WHEN c010 IS NULL THEN 0',
'            WHEN TRIM(c010) = '''' THEN 0',
'            WHEN TRIM(c010) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c010), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN ROUND(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c010), '','', ''''), '' '', ''''), ''-'', '''')), 0)',
'            ELSE null',
'        END AS excel_closing_credit,',
'        CASE ',
'            WHEN c011 IS NULL THEN 0',
'            WHEN TRIM(c011) = '''' THEN 0',
'            WHEN TRIM(c011) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c011), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN ROUND(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c011), '','', ''''), '' '', ''''), ''-'', '''')), 0)',
'            ELSE null',
'        END AS excel_closing_debit,',
'        c005 AS EXCEL_ACCOUNT_TITLE,',
'        ROW_NUMBER() OVER (ORDER BY seq_id) AS excel_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''REC''',
'),',
'',
'-- COA_ALL_LEVELS and other CTEs remain the same as in your matched query',
'COA_ALL_LEVELS AS (',
'    SELECT COA_ID, PARENT_ID, GL_CODE, ACCOUNT_TITLE, STATUS,',
'           REFERENCE_CODE,',
'           CASE',
'               WHEN LENGTH(GL_CODE) = 1  THEN 1',
'               WHEN LENGTH(GL_CODE) = 3  THEN 2',
'               WHEN LENGTH(GL_CODE) = 6  THEN 3',
'               WHEN LENGTH(GL_CODE) = 10 THEN 4',
'               WHEN LENGTH(GL_CODE) = 15 THEN 5',
'           END AS ACCOUNT_LEVEL',
'    FROM AB_FIN_COA',
'    WHERE STATUS = ''Y''',
'      AND LENGTH(GL_CODE) IN (1, 3, 6, 10, 15)',
'      AND ORG_ID = :GV_ORG_ID',
'    ORDER BY COA_ID ASC',
'),',
'',
'USER_APPROVAL AS (',
'    SELECT APP_IDS AS APP_ID',
'    FROM AB_USER_ACTION_APPROVAL',
'    WHERE APP_TYPE = ''780''',
'      AND STATUS = ''Y''',
'      AND APPROVAL_STATUS = ''APPROVED''',
'      AND ORG_ID = :GV_ORG_ID',
'),',
'',
'ACCOUNT_TITLE AS (',
'    SELECT TRD.COA_IDD AS ACCOUNT_ID',
'    FROM AB_FIN_TRANSACTION TR',
'    JOIN AB_FIN_TRANSACTION_DET TRD ',
'      ON TRD.TR_ID = TR.TR_ID AND TRD.STATUS = ''Y''',
'    WHERE TR.ORG_ID = :GV_ORG_ID',
'      AND TR.VOUCHER_NAME IS NOT NULL',
'      AND TR.STATUS = ''Y''',
'    GROUP BY TRD.COA_IDD',
'),',
'',
'DEBIT_ACCOUNT AS (',
'    SELECT TR.TR_ID VOUCHER_NO,',
'           TRD.COA_IDD AS ACCOUNT_ID,',
'           NVL(TR.TR_DATE, TRD.TRD_DATE) AS VOUCHER_DATE,',
'           NVL(SUM(DR_AMOUNT), 0) AS DEBIT_AMOUNT',
'    FROM AB_FIN_TRANSACTION TR',
'    JOIN AB_FIN_TRANSACTION_DET TRD ',
'      ON TRD.TR_ID = TR.TR_ID AND TRD.STATUS = ''Y''',
'    JOIN USER_APPROVAL UA ',
'      ON UA.APP_ID = NVL(TR.TR_ID, TRD.TRD_ID)',
'    JOIN AB_FIN_COA COA ',
'      ON COA.COA_ID = TRD.COA_IDD AND COA.STATUS = ''Y''',
'    WHERE TR.ORG_ID = :GV_ORG_ID',
'      AND TR.VOUCHER_NAME IS NOT NULL',
'      AND TR.STATUS = ''Y''',
'      AND CR_AMOUNT IS NULL',
'    GROUP BY TR.TR_ID, TRD.COA_IDD, NVL(TR.TR_DATE, TRD.TRD_DATE)',
'),',
'',
'CREDIT_ACCOUNT AS (',
'    SELECT TR.TR_ID VOUCHER_NO,',
'           TRD.COA_IDD AS ACCOUNT_ID,',
'           NVL(TR.TR_DATE, TRD.TRD_DATE) AS VOUCHER_DATE,',
'           NVL(SUM(CR_AMOUNT), 0) AS CREDIT_AMOUNT',
'    FROM AB_FIN_TRANSACTION TR',
'    JOIN AB_FIN_TRANSACTION_DET TRD ',
'      ON TRD.TR_ID = TR.TR_ID AND TRD.STATUS = ''Y''',
'    JOIN USER_APPROVAL UA ',
'      ON UA.APP_ID = NVL(TR.TR_ID, TRD.TRD_ID)',
'    JOIN AB_FIN_COA COA ',
'      ON COA.COA_ID = TRD.COA_IDD AND COA.STATUS = ''Y''',
'    WHERE TR.ORG_ID = :GV_ORG_ID',
'      AND TR.VOUCHER_NAME IS NOT NULL',
'      AND TR.STATUS = ''Y''',
'      AND DR_AMOUNT IS NULL',
'    GROUP BY TR.TR_ID, TRD.COA_IDD, NVL(TR.TR_DATE, TRD.TRD_DATE)',
'),',
'',
'BEFORE_OPENING_BALANCE AS (',
'    SELECT ACCOUNT_ID,',
'           NVL(SUM(OPENING_DEBIT), 0) AS OPENING_DEBIT,',
'           NVL(SUM(OPENING_CREDIT), 0) AS OPENING_CREDIT',
'    FROM (',
'        SELECT ACCOUNT_ID,',
'               NVL(SUM(DEBIT_AMOUNT), 0) AS OPENING_DEBIT,',
'               NULL AS OPENING_CREDIT',
'        FROM DEBIT_ACCOUNT',
'        WHERE TRUNC(VOUCHER_DATE) < NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'        GROUP BY ACCOUNT_ID',
'        ',
'        UNION ALL',
'        ',
'        SELECT ACCOUNT_ID,',
'               NULL AS OPENING_DEBIT,',
'               NVL(SUM(CREDIT_AMOUNT), 0) AS OPENING_CREDIT',
'        FROM CREDIT_ACCOUNT',
'        WHERE TRUNC(VOUCHER_DATE) < NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'        GROUP BY ACCOUNT_ID',
'    )',
'    GROUP BY ACCOUNT_ID',
'),',
'',
'BETWEEN_TRANSACTIONS AS (',
'    SELECT ACCOUNT_ID,',
'           NVL(SUM(PERIOD_DEBIT), 0) AS PERIOD_DEBIT,',
'           NVL(SUM(PERIOD_CREDIT), 0) AS PERIOD_CREDIT',
'    FROM (',
'        SELECT ACCOUNT_ID,',
'               NVL(SUM(DEBIT_AMOUNT), 0) AS PERIOD_DEBIT,',
'               NULL AS PERIOD_CREDIT',
'        FROM DEBIT_ACCOUNT',
'        WHERE TRUNC(VOUCHER_DATE) BETWEEN NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'                                        AND NVL(TO_DATE(:P978_TO_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'        GROUP BY ACCOUNT_ID',
'',
'        UNION ALL',
'',
'        SELECT ACCOUNT_ID,',
'               NULL AS PERIOD_DEBIT,',
'               NVL(SUM(CREDIT_AMOUNT), 0) AS PERIOD_CREDIT',
'        FROM CREDIT_ACCOUNT',
'        WHERE TRUNC(VOUCHER_DATE) BETWEEN NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'                                        AND NVL(TO_DATE(:P978_TO_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'        GROUP BY ACCOUNT_ID',
'    )',
'    GROUP BY ACCOUNT_ID',
'),',
'',
'ACCOUNT_TOTALS AS (',
'    SELECT AC.ACCOUNT_ID,',
'           NVL(OPENING_DEBIT, 0) AS TOTAL_OPENING_DEBIT,',
'           NVL(OPENING_CREDIT, 0) AS TOTAL_OPENING_CREDIT,',
'           NVL(PERIOD_DEBIT, 0) AS TOTAL_PERIOD_DEBIT,',
'           NVL(PERIOD_CREDIT, 0) AS TOTAL_PERIOD_CREDIT',
'    FROM ACCOUNT_TITLE AC',
'    LEFT JOIN BEFORE_OPENING_BALANCE OB ON OB.ACCOUNT_ID = AC.ACCOUNT_ID',
'    LEFT JOIN BETWEEN_TRANSACTIONS BT ON BT.ACCOUNT_ID = AC.ACCOUNT_ID',
'),',
'',
'ACCOUNT_HIERARCHY AS (',
'    SELECT',
'        L1.COA_ID AS LEVEL1_ID,',
'        L2.COA_ID AS LEVEL2_ID,',
'        L3.COA_ID AS LEVEL3_ID,',
'        L4.COA_ID AS LEVEL4_ID,',
'        L5.COA_ID AS LEVEL5_ID,',
'        L1.ACCOUNT_TITLE AS LEVEL1_TITLE,',
'        L2.ACCOUNT_TITLE AS LEVEL2_TITLE,',
'        L3.ACCOUNT_TITLE AS LEVEL3_TITLE,',
'        L4.ACCOUNT_TITLE AS LEVEL4_TITLE,',
'        L5.ACCOUNT_TITLE AS LEVEL5_TITLE,',
'        L1.GL_CODE AS LEVEL1_GL_CODE,',
'        L2.GL_CODE AS LEVEL2_GL_CODE,',
'        L3.GL_CODE AS LEVEL3_GL_CODE,',
'        L4.GL_CODE AS LEVEL4_GL_CODE,',
'        L5.GL_CODE AS LEVEL5_GL_CODE,',
'        L1.REFERENCE_CODE AS LEVEL1_REF,',
'        L2.REFERENCE_CODE AS LEVEL2_REF,',
'        L3.REFERENCE_CODE AS LEVEL3_REF,',
'        L4.REFERENCE_CODE AS LEVEL4_REF,',
'        L5.REFERENCE_CODE AS LEVEL5_REF,',
'        COALESCE(L5.COA_ID, L4.COA_ID, L3.COA_ID, L2.COA_ID, L1.COA_ID) AS ACTUAL_ACCOUNT_ID',
'    FROM COA_ALL_LEVELS L1',
'    LEFT JOIN COA_ALL_LEVELS L2 ON L2.PARENT_ID = L1.COA_ID AND L2.ACCOUNT_LEVEL = 2',
'    LEFT JOIN COA_ALL_LEVELS L3 ON L3.PARENT_ID = L2.COA_ID AND L3.ACCOUNT_LEVEL = 3',
'    LEFT JOIN COA_ALL_LEVELS L4 ON L4.PARENT_ID = L3.COA_ID AND L4.ACCOUNT_LEVEL = 4',
'    LEFT JOIN COA_ALL_LEVELS L5 ON L5.PARENT_ID = L4.COA_ID AND L5.ACCOUNT_LEVEL = 5',
'    WHERE L1.ACCOUNT_LEVEL = 1',
'),',
'',
'LEVEL_TOTALS AS (',
'    SELECT',
'        5 AS DISPLAY_LEVEL,',
'        AH.LEVEL5_ID AS ACCOUNT_ID,',
'        AH.LEVEL5_GL_CODE AS GL_CODE,',
'        AH.LEVEL5_TITLE AS ACCOUNT_TITLE,',
'        AH.LEVEL5_REF AS REFERENCE_CODE,',
'        NVL(AT.TOTAL_OPENING_DEBIT, 0) AS OPENING_DEBIT,',
'        NVL(AT.TOTAL_OPENING_CREDIT, 0) AS OPENING_CREDIT,',
'        NVL(AT.TOTAL_PERIOD_DEBIT, 0) AS CURRENT_DEBIT,',
'        NVL(AT.TOTAL_PERIOD_CREDIT, 0) AS CURRENT_CREDIT',
'    FROM ACCOUNT_HIERARCHY AH',
'    LEFT JOIN ACCOUNT_TOTALS AT ON AT.ACCOUNT_ID = AH.LEVEL5_ID',
'    WHERE AH.LEVEL5_ID IS NOT NULL',
'      AND (AT.TOTAL_OPENING_DEBIT != 0 OR AT.TOTAL_OPENING_CREDIT != 0 ',
'       OR AT.TOTAL_PERIOD_DEBIT != 0 OR AT.TOTAL_PERIOD_CREDIT != 0)',
'),',
'',
'MAIN_QUERY AS (',
'    SELECT',
'        DISPLAY_LEVEL,',
'        ACCOUNT_ID,',
'        GL_CODE,',
'        GL_CODE|| '' - ''||SUBSTR(ACCOUNT_TITLE, 1, 500) AS ACCOUNT_TITLE,',
'        CASE ',
'          WHEN REFERENCE_CODE IS NULL THEN NULL',
'          WHEN REGEXP_LIKE(TRIM(REFERENCE_CODE), ''^-?\d+(\.\d+)?$'') ',
'            THEN TO_NUMBER(TRIM(REFERENCE_CODE))',
'          ELSE NULL',
'        END AS REFERENCE_CODE,',
'        ROUND(NVL(OPENING_DEBIT, 0)) AS OPENING_DEBIT,',
'        ROUND(NVL(OPENING_CREDIT, 0)) AS OPENING_CREDIT,',
'        ROUND(NVL(CURRENT_DEBIT, 0)) AS CURRENT_DEBIT,',
'        ROUND(NVL(CURRENT_CREDIT, 0)) AS CURRENT_CREDIT,',
'        CASE ',
'            WHEN ((NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'                  (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))) > 0',
'            THEN ROUND(',
'                    (NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'                    (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))',
'                 )',
'            ELSE null',
'        END AS CLOSING_DEBIT,',
'        CASE ',
'            WHEN ((NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'                  (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))) < 0',
'            THEN ROUND(',
'                    (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0)) -',
'                    (NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0))',
'                 )',
'            ELSE null',
'        END AS CLOSING_CREDIT,',
'        ROUND(',
'            (NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'            (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))',
'        ) AS NET_BALANCE',
'    FROM LEVEL_TOTALS',
'    WHERE ACCOUNT_ID IS NOT NULL',
'    AND REFERENCE_CODE IS NOT NULL',
'    AND ROUND(',
'            (NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'            (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))',
'        ) <> 0',
'    ORDER BY GL_CODE ASC',
'),',
'',
'-- Step 2: Get APEX account data with sequence number',
'apex_data AS (',
'    SELECT ',
'        DISPLAY_LEVEL,',
'        ACCOUNT_ID,',
'        ACCOUNT_TITLE,',
'        REFERENCE_CODE,',
'        NVL(OPENING_DEBIT, 0) AS apex_opening_debit,',
'        NVL(OPENING_CREDIT, 0) AS apex_opening_credit,',
'        NVL(CURRENT_DEBIT, 0) AS apex_current_debit,',
'        NVL(CURRENT_CREDIT, 0) AS apex_current_credit,',
'        NVL(CLOSING_DEBIT, null) AS apex_closing_debit,',
'        NVL(CLOSING_CREDIT, null) AS apex_closing_credit,',
'        ROW_NUMBER() OVER (ORDER BY ACCOUNT_ID) AS apex_seq',
'    FROM MAIN_QUERY',
'    WHERE ACCOUNT_ID IS NOT NULL',
'),',
'',
'-- Step 3: Match by account code (L = REFERENCE_CODE) AND closing balances',
'matched_records AS (',
'    SELECT ',
'        ad.REFERENCE_CODE AS account_code,',
'        ad.ACCOUNT_TITLE,',
'        ad.apex_opening_debit,',
'        ex.excel_opening_debit,',
'        ad.apex_opening_credit,',
'        ex.excel_opening_credit,',
'        ad.apex_current_debit,',
'        ex.excel_current_debit,',
'        ad.apex_current_credit,',
'        ex.excel_current_credit,',
'        ad.apex_closing_debit,',
'        ex.excel_closing_debit,',
'        ad.apex_closing_credit,',
'        ex.excel_closing_credit,',
'        (ad.apex_opening_debit - ex.excel_opening_debit) AS opening_debit_variance,',
'        (ad.apex_opening_credit - ex.excel_opening_credit) AS opening_credit_variance,',
'        (ad.apex_current_debit - ex.excel_current_debit) AS current_debit_variance,',
'        (ad.apex_current_credit - ex.excel_current_credit) AS current_credit_variance,',
'        (ad.apex_closing_debit - ex.excel_closing_debit) AS closing_debit_variance,',
'        (ad.apex_closing_credit - ex.excel_closing_credit) AS closing_credit_variance,',
'        ''MATCHED'' AS status,',
'        ad.ACCOUNT_ID AS apex_account_id,',
'        ex.excel_row_id,',
'        ex.EXCEL_ACCOUNT_TITLE,',
'        ex.L',
'    FROM apex_data ad',
'    INNER JOIN cleaned_excel ex ',
'        ON ad.REFERENCE_CODE = TO_NUMBER(ex.L)',
'        AND ad.apex_closing_debit = ex.excel_closing_debit  ',
'        AND ad.apex_closing_credit = ex.excel_closing_credit',
'),',
'',
'-- Step 4: Unmatched APEX records',
'unmatched_apex AS (',
'    SELECT ',
'        ad.REFERENCE_CODE AS account_code,',
'        ad.ACCOUNT_TITLE,',
'        ad.apex_opening_debit,',
'        null AS excel_opening_debit,',
'        ad.apex_opening_credit,',
'        null AS excel_opening_credit,',
'        ad.apex_current_debit,',
'        null AS excel_current_debit,',
'        ad.apex_current_credit,',
'        null AS excel_current_credit,',
'        ad.apex_closing_debit,',
'        null AS excel_closing_debit,',
'        ad.apex_closing_credit,',
'       null AS excel_closing_credit,',
'        ad.apex_opening_debit AS opening_debit_variance,',
'        ad.apex_opening_credit AS opening_credit_variance,',
'        ad.apex_current_debit AS current_debit_variance,',
'        ad.apex_current_credit AS current_credit_variance,',
'        ad.apex_closing_debit AS closing_debit_variance,',
'        ad.apex_closing_credit AS closing_credit_variance,',
'        ''ONLY IN APEX'' AS status,',
'        ad.ACCOUNT_ID AS apex_account_id,',
'        NULL AS excel_row_id,',
'        NULL AS EXCEL_ACCOUNT_TITLE,',
'        NULL AS L',
'    FROM apex_data ad',
'    WHERE NOT EXISTS (',
'        SELECT 1 FROM cleaned_excel ex ',
'        WHERE ad.REFERENCE_CODE = TO_NUMBER(ex.L)',
'        AND ad.apex_closing_debit = ex.excel_closing_debit  ',
'        AND ad.apex_closing_credit = ex.excel_closing_credit',
'    )',
'),',
'',
'-- Step 5: Unmatched Excel records',
'unmatched_excel AS (',
'    SELECT ',
'       -- TO_NUMBER(ex.L) AS account_code,',
'       NULL AS account_code,',
'        NULL AS ACCOUNT_TITLE,',
'        null AS apex_opening_debit,',
'        ex.excel_opening_debit,',
'        null AS apex_opening_credit,',
'        ex.excel_opening_credit,',
'        null AS apex_current_debit,',
'        ex.excel_current_debit,',
'        null AS apex_current_credit,',
'        ex.excel_current_credit,',
'        null AS apex_closing_debit,',
'        ex.excel_closing_debit,',
'        null AS apex_closing_credit,',
'        ex.excel_closing_credit,',
'        -ex.excel_opening_debit AS opening_debit_variance,',
'        -ex.excel_opening_credit AS opening_credit_variance,',
'        -ex.excel_current_debit AS current_debit_variance,',
'        -ex.excel_current_credit AS current_credit_variance,',
'        -ex.excel_closing_debit AS closing_debit_variance,',
'        -ex.excel_closing_credit AS closing_credit_variance,',
'        ''ONLY IN EXCEL'' AS status,',
'        NULL AS apex_account_id,',
'        ex.excel_row_id,',
'        ex.EXCEL_ACCOUNT_TITLE,',
'        ex.L',
'    FROM cleaned_excel ex',
'    WHERE NOT EXISTS (',
'        SELECT 1 FROM apex_data ad ',
'        WHERE ad.REFERENCE_CODE = TO_NUMBER(ex.L)',
'        AND ad.apex_closing_debit = ex.excel_closing_debit  ',
'        AND ad.apex_closing_credit = ex.excel_closing_credit',
'    )',
'),',
'',
'-- Step 6: Combine all results',
'final_data AS (',
'    -- SELECT * FROM matched_records',
'    -- UNION ALL',
'    SELECT * FROM unmatched_apex',
'    UNION ALL',
'    SELECT * FROM unmatched_excel',
')',
'',
'SELECT *',
'FROM final_data',
'WHERE status IN (''ONLY IN APEX'', ''ONLY IN EXCEL'')',
'ORDER BY account_code, status, excel_row_id, apex_account_id;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P978_FROM_DATE,P978_TO_DATE'
,p_plug_required_role=>wwv_flow_imp.id(36704506721739483)
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Not Matching'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(346634931818914252)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'UMAR'
,p_internal_uid=>346634931818914252
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346984453158793347)
,p_db_column_name=>'ACCOUNT_CODE'
,p_display_order=>10
,p_column_identifier=>'Z'
,p_column_label=>'Account Code'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346984490160793348)
,p_db_column_name=>'ACCOUNT_TITLE'
,p_display_order=>20
,p_column_identifier=>'AA'
,p_column_label=>'Account Title'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346984644128793349)
,p_db_column_name=>'APEX_OPENING_DEBIT'
,p_display_order=>30
,p_column_identifier=>'AB'
,p_column_label=>'Apex Opening Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346984751559793350)
,p_db_column_name=>'EXCEL_OPENING_DEBIT'
,p_display_order=>40
,p_column_identifier=>'AC'
,p_column_label=>'Excel Opening Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346984821616793351)
,p_db_column_name=>'APEX_OPENING_CREDIT'
,p_display_order=>50
,p_column_identifier=>'AD'
,p_column_label=>'Apex Opening Credit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346984890490793352)
,p_db_column_name=>'EXCEL_OPENING_CREDIT'
,p_display_order=>60
,p_column_identifier=>'AE'
,p_column_label=>'Excel Opening Credit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346985029534793353)
,p_db_column_name=>'APEX_CURRENT_DEBIT'
,p_display_order=>70
,p_column_identifier=>'AF'
,p_column_label=>'Apex Current Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346985125271793354)
,p_db_column_name=>'EXCEL_CURRENT_DEBIT'
,p_display_order=>80
,p_column_identifier=>'AG'
,p_column_label=>'Excel Current Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346985177463793355)
,p_db_column_name=>'APEX_CURRENT_CREDIT'
,p_display_order=>90
,p_column_identifier=>'AH'
,p_column_label=>'Apex Current Credit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346985359306793356)
,p_db_column_name=>'EXCEL_CURRENT_CREDIT'
,p_display_order=>100
,p_column_identifier=>'AI'
,p_column_label=>'Excel Current Credit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346985447522793357)
,p_db_column_name=>'APEX_CLOSING_DEBIT'
,p_display_order=>110
,p_column_identifier=>'AJ'
,p_column_label=>'Apex Closing Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346985469730793358)
,p_db_column_name=>'EXCEL_CLOSING_DEBIT'
,p_display_order=>120
,p_column_identifier=>'AK'
,p_column_label=>'Excel Closing Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346985568405793359)
,p_db_column_name=>'APEX_CLOSING_CREDIT'
,p_display_order=>130
,p_column_identifier=>'AL'
,p_column_label=>'Apex Closing Credit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346985745945793360)
,p_db_column_name=>'EXCEL_CLOSING_CREDIT'
,p_display_order=>140
,p_column_identifier=>'AM'
,p_column_label=>'Excel Closing Credit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346985795060793361)
,p_db_column_name=>'OPENING_DEBIT_VARIANCE'
,p_display_order=>150
,p_column_identifier=>'AN'
,p_column_label=>'Opening Debit Variance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346985936329793362)
,p_db_column_name=>'OPENING_CREDIT_VARIANCE'
,p_display_order=>160
,p_column_identifier=>'AO'
,p_column_label=>'Opening Credit Variance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346986063710793363)
,p_db_column_name=>'CURRENT_DEBIT_VARIANCE'
,p_display_order=>170
,p_column_identifier=>'AP'
,p_column_label=>'Current Debit Variance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346986158274793364)
,p_db_column_name=>'CURRENT_CREDIT_VARIANCE'
,p_display_order=>180
,p_column_identifier=>'AQ'
,p_column_label=>'Current Credit Variance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346986255167793365)
,p_db_column_name=>'CLOSING_DEBIT_VARIANCE'
,p_display_order=>190
,p_column_identifier=>'AR'
,p_column_label=>'Closing Debit Variance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346986365867793366)
,p_db_column_name=>'CLOSING_CREDIT_VARIANCE'
,p_display_order=>200
,p_column_identifier=>'AS'
,p_column_label=>'Closing Credit Variance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(347692822122240617)
,p_db_column_name=>'STATUS'
,p_display_order=>210
,p_column_identifier=>'AT'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(347692915013240618)
,p_db_column_name=>'APEX_ACCOUNT_ID'
,p_display_order=>220
,p_column_identifier=>'AU'
,p_column_label=>'Apex Account Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(347692996358240619)
,p_db_column_name=>'EXCEL_ROW_ID'
,p_display_order=>230
,p_column_identifier=>'AV'
,p_column_label=>'Excel Row Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(347693128527240620)
,p_db_column_name=>'EXCEL_ACCOUNT_TITLE'
,p_display_order=>240
,p_column_identifier=>'AW'
,p_column_label=>'Excel Account Title'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(347693228313240621)
,p_db_column_name=>'L'
,p_display_order=>250
,p_column_identifier=>'AX'
,p_column_label=>'L'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(346712802810092699)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1723316'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(346805514764378918)
,p_plug_name=>'NOT matching WITH PACKAGE'
,p_title=>'Not Matching'
,p_region_name=>'AR'
,p_parent_plug_id=>wwv_flow_imp.id(510923314947613878)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2357896883184680)
,p_plug_display_sequence=>1000000080
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH',
'-- Step 1: Clean and normalize Excel data from collection',
'cleaned_excel AS (',
'SELECT',
'seq_id AS excel_row_id,',
'REGEXP_SUBSTR(c005, ''^[0-9]+'') AS L, -- Extract account code from LEVEL5',
'-- Clean opening debit (O_DR - Column F) - truncate decimal part',
'CASE',
'WHEN c006 IS NULL THEN 0',
'WHEN TRIM(c006) = '''' THEN 0',
'WHEN TRIM(c006) = ''-'' THEN 0',
'WHEN REGEXP_LIKE(',
'REPLACE(REPLACE(REPLACE(TRIM(c006), '','', ''''), '' '', ''''), ''-'', ''''),',
'''^[0-9]+\.?[0-9]*$''',
')',
'THEN TRUNC((TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c006), '','', ''''), '' '', ''''), ''-'', ''''))))',
'ELSE 0',
'END AS excel_opening_debit,',
'-- Clean opening credit (O_CR - Column G) - truncate decimal part',
'CASE',
'WHEN c007 IS NULL THEN 0',
'WHEN TRIM(c007) = '''' THEN 0',
'WHEN TRIM(c007) = ''-'' THEN 0',
'WHEN REGEXP_LIKE(',
'REPLACE(REPLACE(REPLACE(TRIM(c007), '','', ''''), '' '', ''''), ''-'', ''''),',
'''^[0-9]+\.?[0-9]*$''',
')',
'THEN TRUNC((TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c007), '','', ''''), '' '', ''''), ''-'', ''''))))',
'ELSE 0',
'END AS excel_opening_credit,',
'-- Clean current debit (C_DR - Column H) - truncate decimal part',
'CASE',
'WHEN c008 IS NULL THEN 0',
'WHEN TRIM(c008) = '''' THEN 0',
'WHEN TRIM(c008) = ''-'' THEN 0',
'WHEN REGEXP_LIKE(',
'REPLACE(REPLACE(REPLACE(TRIM(c008), '','', ''''), '' '', ''''), ''-'', ''''),',
'''^[0-9]+\.?[0-9]*$''',
')',
'THEN TRUNC((TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c008), '','', ''''), '' '', ''''), ''-'', ''''))))',
'ELSE 0',
'END AS excel_current_debit,',
'-- Clean current credit (C_CR - Column I) - truncate decimal part',
'CASE',
'WHEN c009 IS NULL THEN 0',
'WHEN TRIM(c009) = '''' THEN 0',
'WHEN TRIM(c009) = ''-'' THEN 0',
'WHEN REGEXP_LIKE(',
'REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', ''''),',
'''^[0-9]+\.?[0-9]*$''',
')',
'THEN TRUNC((TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', ''''))))',
'ELSE 0',
'END AS excel_current_credit,',
'-- Clean closing debit (COL_J - Column J) - truncate decimal part',
'CASE',
'WHEN c010 IS NULL THEN 0',
'WHEN TRIM(c010) = '''' THEN 0',
'WHEN TRIM(c010) = ''-'' THEN 0',
'WHEN REGEXP_LIKE(',
'REPLACE(REPLACE(REPLACE(TRIM(c010), '','', ''''), '' '', ''''), ''-'', ''''),',
'''^[0-9]+\.?[0-9]*$''',
')',
'THEN ROUND(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c010), '','', ''''), '' '', ''''), ''-'', '''')), 0)',
'ELSE 0',
'END AS excel_closing_credit,',
'CASE',
'WHEN c011 IS NULL THEN 0',
'WHEN TRIM(c011) = '''' THEN 0',
'WHEN TRIM(c011) = ''-'' THEN 0',
'WHEN REGEXP_LIKE(',
'REPLACE(REPLACE(REPLACE(TRIM(c011), '','', ''''), '' '', ''''), ''-'', ''''),',
'''^[0-9]+\.?[0-9]*$''',
')',
'THEN ROUND(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c011), '','', ''''), '' '', ''''), ''-'', '''')), 0)',
'ELSE 0',
'END AS excel_closing_debit,',
'c005 AS EXCEL_ACCOUNT_TITLE,',
'ROW_NUMBER() OVER (ORDER BY seq_id) AS excel_seq',
'FROM apex_collections',
'WHERE collection_name = ''REC''',
'),',
'',
'-- COA_ALL_LEVELS and other CTEs remain the same as in your matched query',
'COA_ALL_LEVELS AS (',
'SELECT COA_ID, PARENT_ID, GL_CODE, ACCOUNT_TITLE, STATUS,',
'REFERENCE_CODE,',
'CASE',
'WHEN LENGTH(GL_CODE) = 1 THEN 1',
'WHEN LENGTH(GL_CODE) = 3 THEN 2',
'WHEN LENGTH(GL_CODE) = 6 THEN 3',
'WHEN LENGTH(GL_CODE) = 10 THEN 4',
'WHEN LENGTH(GL_CODE) = 15 THEN 5',
'END AS ACCOUNT_LEVEL',
'FROM AB_FIN_COA',
'WHERE STATUS = ''Y''',
'AND LENGTH(GL_CODE) IN (1, 3, 6, 10, 15)',
'AND ORG_ID = :GV_ORG_ID',
'ORDER BY COA_ID ASC',
'),',
'',
'USER_APPROVAL AS (',
'SELECT APP_IDS AS APP_ID',
'FROM AB_USER_ACTION_APPROVAL',
'WHERE APP_TYPE = ''780''',
'AND STATUS = ''Y''',
'AND APPROVAL_STATUS = ''APPROVED''',
'AND ORG_ID = :GV_ORG_ID',
'),',
'',
'ACCOUNT_TITLE AS (',
'SELECT TRD.COA_IDD AS ACCOUNT_ID',
'FROM AB_FIN_TRANSACTION TR',
'JOIN AB_FIN_TRANSACTION_DET TRD',
'ON TRD.TR_ID = TR.TR_ID AND TRD.STATUS = ''Y''',
'WHERE TR.ORG_ID = :GV_ORG_ID',
'AND TR.VOUCHER_NAME IS NOT NULL',
'AND TR.STATUS = ''Y''',
'GROUP BY TRD.COA_IDD',
'),',
'',
'DEBIT_ACCOUNT AS (',
'SELECT TR.TR_ID VOUCHER_NO,',
'TRD.COA_IDD AS ACCOUNT_ID,',
'NVL(TR.TR_DATE, TRD.TRD_DATE) AS VOUCHER_DATE,',
'NVL(SUM(DR_AMOUNT), 0) AS DEBIT_AMOUNT',
'FROM AB_FIN_TRANSACTION TR',
'JOIN AB_FIN_TRANSACTION_DET TRD',
'ON TRD.TR_ID = TR.TR_ID AND TRD.STATUS = ''Y''',
'JOIN USER_APPROVAL UA',
'ON UA.APP_ID = NVL(TR.TR_ID, TRD.TRD_ID)',
'JOIN AB_FIN_COA COA',
'ON COA.COA_ID = TRD.COA_IDD AND COA.STATUS = ''Y''',
'WHERE TR.ORG_ID = :GV_ORG_ID',
'AND TR.VOUCHER_NAME IS NOT NULL',
'AND TR.STATUS = ''Y''',
'AND CR_AMOUNT IS NULL',
'GROUP BY TR.TR_ID, TRD.COA_IDD, NVL(TR.TR_DATE, TRD.TRD_DATE)',
'),',
'',
'CREDIT_ACCOUNT AS (',
'SELECT TR.TR_ID VOUCHER_NO,',
'TRD.COA_IDD AS ACCOUNT_ID,',
'NVL(TR.TR_DATE, TRD.TRD_DATE) AS VOUCHER_DATE,',
'NVL(SUM(CR_AMOUNT), 0) AS CREDIT_AMOUNT',
'FROM AB_FIN_TRANSACTION TR',
'JOIN AB_FIN_TRANSACTION_DET TRD',
'ON TRD.TR_ID = TR.TR_ID AND TRD.STATUS = ''Y''',
'JOIN USER_APPROVAL UA',
'ON UA.APP_ID = NVL(TR.TR_ID, TRD.TRD_ID)',
'JOIN AB_FIN_COA COA',
'ON COA.COA_ID = TRD.COA_IDD AND COA.STATUS = ''Y''',
'WHERE TR.ORG_ID = :GV_ORG_ID',
'AND TR.VOUCHER_NAME IS NOT NULL',
'AND TR.STATUS = ''Y''',
'AND DR_AMOUNT IS NULL',
'GROUP BY TR.TR_ID, TRD.COA_IDD, NVL(TR.TR_DATE, TRD.TRD_DATE)',
'),',
'',
'BEFORE_OPENING_BALANCE AS (',
'SELECT ACCOUNT_ID,',
'NVL(SUM(OPENING_DEBIT), 0) AS OPENING_DEBIT,',
'NVL(SUM(OPENING_CREDIT), 0) AS OPENING_CREDIT',
'FROM (',
'SELECT ACCOUNT_ID,',
'NVL(SUM(DEBIT_AMOUNT), 0) AS OPENING_DEBIT,',
'NULL AS OPENING_CREDIT',
'FROM DEBIT_ACCOUNT',
'WHERE TRUNC(VOUCHER_DATE) < NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'GROUP BY ACCOUNT_ID',
'',
'UNION ALL',
'',
'SELECT ACCOUNT_ID,',
'NULL AS OPENING_DEBIT,',
'NVL(SUM(CREDIT_AMOUNT), 0) AS OPENING_CREDIT',
'FROM CREDIT_ACCOUNT',
'WHERE TRUNC(VOUCHER_DATE) < NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'GROUP BY ACCOUNT_ID',
')',
'GROUP BY ACCOUNT_ID',
'),',
'',
'BETWEEN_TRANSACTIONS AS (',
'SELECT ACCOUNT_ID,',
'NVL(SUM(PERIOD_DEBIT), 0) AS PERIOD_DEBIT,',
'NVL(SUM(PERIOD_CREDIT), 0) AS PERIOD_CREDIT',
'FROM (',
'SELECT ACCOUNT_ID,',
'NVL(SUM(DEBIT_AMOUNT), 0) AS PERIOD_DEBIT,',
'NULL AS PERIOD_CREDIT',
'FROM DEBIT_ACCOUNT',
'WHERE TRUNC(VOUCHER_DATE) BETWEEN NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'AND NVL(TO_DATE(:P978_TO_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'GROUP BY ACCOUNT_ID',
'',
'UNION ALL',
'',
'SELECT ACCOUNT_ID,',
'NULL AS PERIOD_DEBIT,',
'NVL(SUM(CREDIT_AMOUNT), 0) AS PERIOD_CREDIT',
'FROM CREDIT_ACCOUNT',
'WHERE TRUNC(VOUCHER_DATE) BETWEEN NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'AND NVL(TO_DATE(:P978_TO_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'GROUP BY ACCOUNT_ID',
')',
'GROUP BY ACCOUNT_ID',
'),',
'',
'ACCOUNT_TOTALS AS (',
'SELECT AC.ACCOUNT_ID,',
'NVL(OPENING_DEBIT, 0) AS TOTAL_OPENING_DEBIT,',
'NVL(OPENING_CREDIT, 0) AS TOTAL_OPENING_CREDIT,',
'NVL(PERIOD_DEBIT, 0) AS TOTAL_PERIOD_DEBIT,',
'NVL(PERIOD_CREDIT, 0) AS TOTAL_PERIOD_CREDIT',
'FROM ACCOUNT_TITLE AC',
'LEFT JOIN BEFORE_OPENING_BALANCE OB ON OB.ACCOUNT_ID = AC.ACCOUNT_ID',
'LEFT JOIN BETWEEN_TRANSACTIONS BT ON BT.ACCOUNT_ID = AC.ACCOUNT_ID',
'),',
'',
'ACCOUNT_HIERARCHY AS (',
'SELECT',
'L1.COA_ID AS LEVEL1_ID,',
'L2.COA_ID AS LEVEL2_ID,',
'L3.COA_ID AS LEVEL3_ID,',
'L4.COA_ID AS LEVEL4_ID,',
'L5.COA_ID AS LEVEL5_ID,',
'L1.ACCOUNT_TITLE AS LEVEL1_TITLE,',
'L2.ACCOUNT_TITLE AS LEVEL2_TITLE,',
'L3.ACCOUNT_TITLE AS LEVEL3_TITLE,',
'L4.ACCOUNT_TITLE AS LEVEL4_TITLE,',
'L5.ACCOUNT_TITLE AS LEVEL5_TITLE,',
'L1.GL_CODE AS LEVEL1_GL_CODE,',
'L2.GL_CODE AS LEVEL2_GL_CODE,',
'L3.GL_CODE AS LEVEL3_GL_CODE,',
'L4.GL_CODE AS LEVEL4_GL_CODE,',
'L5.GL_CODE AS LEVEL5_GL_CODE,',
'L1.REFERENCE_CODE AS LEVEL1_REF,',
'L2.REFERENCE_CODE AS LEVEL2_REF,',
'L3.REFERENCE_CODE AS LEVEL3_REF,',
'L4.REFERENCE_CODE AS LEVEL4_REF,',
'L5.REFERENCE_CODE AS LEVEL5_REF,',
'COALESCE(L5.COA_ID, L4.COA_ID, L3.COA_ID, L2.COA_ID, L1.COA_ID) AS ACTUAL_ACCOUNT_ID',
'FROM COA_ALL_LEVELS L1',
'LEFT JOIN COA_ALL_LEVELS L2 ON L2.PARENT_ID = L1.COA_ID AND L2.ACCOUNT_LEVEL = 2',
'LEFT JOIN COA_ALL_LEVELS L3 ON L3.PARENT_ID = L2.COA_ID AND L3.ACCOUNT_LEVEL = 3',
'LEFT JOIN COA_ALL_LEVELS L4 ON L4.PARENT_ID = L3.COA_ID AND L4.ACCOUNT_LEVEL = 4',
'LEFT JOIN COA_ALL_LEVELS L5 ON L5.PARENT_ID = L4.COA_ID AND L5.ACCOUNT_LEVEL = 5',
'WHERE L1.ACCOUNT_LEVEL = 1',
'),',
'',
'LEVEL_TOTALS AS (',
'SELECT',
'5 AS DISPLAY_LEVEL,',
'AH.LEVEL5_ID AS ACCOUNT_ID,',
'AH.LEVEL5_GL_CODE AS GL_CODE,',
'AH.LEVEL5_TITLE AS ACCOUNT_TITLE,',
'AH.LEVEL5_REF AS REFERENCE_CODE,',
'NVL(AT.TOTAL_OPENING_DEBIT, 0) AS OPENING_DEBIT,',
'NVL(AT.TOTAL_OPENING_CREDIT, 0) AS OPENING_CREDIT,',
'NVL(AT.TOTAL_PERIOD_DEBIT, 0) AS CURRENT_DEBIT,',
'NVL(AT.TOTAL_PERIOD_CREDIT, 0) AS CURRENT_CREDIT',
'FROM ACCOUNT_HIERARCHY AH',
'LEFT JOIN ACCOUNT_TOTALS AT ON AT.ACCOUNT_ID = AH.LEVEL5_ID',
'WHERE AH.LEVEL5_ID IS NOT NULL',
'AND (AT.TOTAL_OPENING_DEBIT != 0 OR AT.TOTAL_OPENING_CREDIT != 0',
'OR AT.TOTAL_PERIOD_DEBIT != 0 OR AT.TOTAL_PERIOD_CREDIT != 0)',
'),',
'',
'MAIN_QUERY AS (',
'SELECT',
'DISPLAY_LEVEL,',
'ACCOUNT_ID,',
'GL_CODE,',
'GL_CODE|| '' - ''||SUBSTR(ACCOUNT_TITLE, 1, 500) AS ACCOUNT_TITLE,',
'CASE',
'WHEN REFERENCE_CODE IS NULL THEN NULL',
'WHEN REGEXP_LIKE(TRIM(REFERENCE_CODE), ''^-?\d+(\.\d+)?$'')',
'THEN TO_NUMBER(TRIM(REFERENCE_CODE))',
'ELSE NULL',
'END AS REFERENCE_CODE,',
'ROUND(NVL(OPENING_DEBIT, 0)) AS OPENING_DEBIT,',
'ROUND(NVL(OPENING_CREDIT, 0)) AS OPENING_CREDIT,',
'ROUND(NVL(CURRENT_DEBIT, 0)) AS CURRENT_DEBIT,',
'ROUND(NVL(CURRENT_CREDIT, 0)) AS CURRENT_CREDIT,',
'CASE',
'WHEN ((NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'(NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))) > 0',
'THEN ROUND(',
'(NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'(NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))',
')',
'ELSE 0',
'END AS CLOSING_DEBIT,',
'CASE',
'WHEN ((NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'(NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))) < 0',
'THEN ROUND(',
'(NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0)) -',
'(NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0))',
')',
'ELSE 0',
'END AS CLOSING_CREDIT,',
'ROUND(',
'(NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'(NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))',
') AS NET_BALANCE',
'FROM LEVEL_TOTALS',
'WHERE ACCOUNT_ID IS NOT NULL',
'AND REFERENCE_CODE IS NOT NULL',
'AND ROUND(',
'(NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'(NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))',
') <> 0',
'ORDER BY GL_CODE ASC',
'),',
'',
'-- Step 2: Get APEX account data with sequence number',
'apex_data AS (',
'SELECT',
'DISPLAY_LEVEL,',
'ACCOUNT_ID,',
'ACCOUNT_TITLE,',
'REFERENCE_CODE,',
'NVL(OPENING_DEBIT, 0) AS apex_opening_debit,',
'NVL(OPENING_CREDIT, 0) AS apex_opening_credit,',
'NVL(CURRENT_DEBIT, 0) AS apex_current_debit,',
'NVL(CURRENT_CREDIT, 0) AS apex_current_credit,',
'NVL(CLOSING_DEBIT, 0) AS apex_closing_debit,',
'NVL(CLOSING_CREDIT, 0) AS apex_closing_credit,',
'ROW_NUMBER() OVER (ORDER BY ACCOUNT_ID) AS apex_seq',
'FROM MAIN_QUERY',
'WHERE ACCOUNT_ID IS NOT NULL',
'),',
'',
'-- Step 3: Match by account code (L = REFERENCE_CODE) AND closing balances',
'matched_records AS (',
'SELECT',
'ad.REFERENCE_CODE AS account_code,',
'ad.ACCOUNT_TITLE,',
'ad.apex_opening_debit,',
'ex.excel_opening_debit,',
'ad.apex_opening_credit,',
'ex.excel_opening_credit,',
'ad.apex_current_debit,',
'ex.excel_current_debit,',
'ad.apex_current_credit,',
'ex.excel_current_credit,',
'ad.apex_closing_debit,',
'ex.excel_closing_debit,',
'ad.apex_closing_credit,',
'ex.excel_closing_credit,',
'(ad.apex_opening_debit - ex.excel_opening_debit) AS opening_debit_variance,',
'(ad.apex_opening_credit - ex.excel_opening_credit) AS opening_credit_variance,',
'(ad.apex_current_debit - ex.excel_current_debit) AS current_debit_variance,',
'(ad.apex_current_credit - ex.excel_current_credit) AS current_credit_variance,',
'(ad.apex_closing_debit - ex.excel_closing_debit) AS closing_debit_variance,',
'(ad.apex_closing_credit - ex.excel_closing_credit) AS closing_credit_variance,',
'''MATCHED'' AS status,',
'ad.ACCOUNT_ID AS apex_account_id,',
'ex.excel_row_id,',
'ex.EXCEL_ACCOUNT_TITLE,',
'ex.L',
'FROM apex_data ad',
'INNER JOIN cleaned_excel ex',
'ON ad.REFERENCE_CODE = TO_NUMBER(ex.L)',
'AND ad.apex_closing_debit = ex.excel_closing_debit',
'AND ad.apex_closing_credit = ex.excel_closing_credit',
'),',
'',
'-- Step 4: Unmatched APEX records',
'unmatched_apex AS (',
'SELECT',
'ad.REFERENCE_CODE AS account_code,',
'ad.ACCOUNT_TITLE,',
'ad.apex_opening_debit,',
'0 AS excel_opening_debit,',
'ad.apex_opening_credit,',
'0 AS excel_opening_credit,',
'ad.apex_current_debit,',
'0 AS excel_current_debit,',
'ad.apex_current_credit,',
'0 AS excel_current_credit,',
'ad.apex_closing_debit,',
'0 AS excel_closing_debit,',
'ad.apex_closing_credit,',
'0 AS excel_closing_credit,',
'ad.apex_opening_debit AS opening_debit_variance,',
'ad.apex_opening_credit AS opening_credit_variance,',
'ad.apex_current_debit AS current_debit_variance,',
'ad.apex_current_credit AS current_credit_variance,',
'ad.apex_closing_debit AS closing_debit_variance,',
'ad.apex_closing_credit AS closing_credit_variance,',
'''ONLY IN APEX'' AS status,',
'ad.ACCOUNT_ID AS apex_account_id,',
'NULL AS excel_row_id,',
'NULL AS EXCEL_ACCOUNT_TITLE,',
'NULL AS L',
'FROM apex_data ad',
'WHERE NOT EXISTS (',
'SELECT 1 FROM cleaned_excel ex',
'WHERE ad.REFERENCE_CODE = TO_NUMBER(ex.L)',
'AND ad.apex_closing_debit = ex.excel_closing_debit',
'AND ad.apex_closing_credit = ex.excel_closing_credit',
')',
'),',
'',
'-- Step 5: Unmatched Excel records',
'unmatched_excel AS (',
'SELECT',
'--TO_NUMBER(ex.L) AS account_code,',
'NULL AS account_code,',
'NULL AS ACCOUNT_TITLE,',
'0 AS apex_opening_debit,',
'ex.excel_opening_debit,',
'0 AS apex_opening_credit,',
'ex.excel_opening_credit,',
'0 AS apex_current_debit,',
'ex.excel_current_debit,',
'0 AS apex_current_credit,',
'ex.excel_current_credit,',
'0 AS apex_closing_debit,',
'ex.excel_closing_debit,',
'0 AS apex_closing_credit,',
'ex.excel_closing_credit,',
'-ex.excel_opening_debit AS opening_debit_variance,',
'-ex.excel_opening_credit AS opening_credit_variance,',
'-ex.excel_current_debit AS current_debit_variance,',
'-ex.excel_current_credit AS current_credit_variance,',
'-ex.excel_closing_debit AS closing_debit_variance,',
'-ex.excel_closing_credit AS closing_credit_variance,',
'''ONLY IN EXCEL'' AS status,',
'NULL AS apex_account_id,',
'ex.excel_row_id,',
'ex.EXCEL_ACCOUNT_TITLE,',
'ex.L',
'FROM cleaned_excel ex',
'WHERE NOT EXISTS (',
'SELECT 1 FROM apex_data ad',
'WHERE ad.REFERENCE_CODE = TO_NUMBER(ex.L)',
'AND ad.apex_closing_debit = ex.excel_closing_debit',
'AND ad.apex_closing_credit = ex.excel_closing_credit',
')',
'),',
'',
'-- Step 6: Combine all results',
'final_data AS (',
'SELECT * FROM matched_records',
'UNION ALL',
'SELECT * FROM unmatched_apex',
'UNION ALL',
'SELECT * FROM unmatched_excel',
')',
'',
'SELECT *',
'FROM final_data',
'WHERE status IN (''ONLY IN APEX'', ''ONLY IN EXCEL'')',
'ORDER BY account_code, status, excel_row_id, apex_account_id;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P978_FROM_DATE,P978_TO_DATE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Not Matching'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(346805598697378919)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'UMAR'
,p_internal_uid=>346805598697378919
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346808755016378950)
,p_db_column_name=>'ACCOUNT_TITLE'
,p_display_order=>20
,p_column_identifier=>'AE'
,p_column_label=>'Apex Account Title'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346808863086378951)
,p_db_column_name=>'APEX_OPENING_DEBIT'
,p_display_order=>30
,p_column_identifier=>'AF'
,p_column_label=>'Apex Opening Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346808871888378952)
,p_db_column_name=>'EXCEL_OPENING_DEBIT'
,p_display_order=>40
,p_column_identifier=>'AG'
,p_column_label=>'Excel Opening Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346809019377378953)
,p_db_column_name=>'APEX_OPENING_CREDIT'
,p_display_order=>50
,p_column_identifier=>'AH'
,p_column_label=>'Apex Opening Credit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346809084659378954)
,p_db_column_name=>'EXCEL_OPENING_CREDIT'
,p_display_order=>60
,p_column_identifier=>'AI'
,p_column_label=>'Excel Opening Credit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346809266985378955)
,p_db_column_name=>'APEX_CURRENT_DEBIT'
,p_display_order=>70
,p_column_identifier=>'AJ'
,p_column_label=>'Apex Current Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346809285145378956)
,p_db_column_name=>'EXCEL_CURRENT_DEBIT'
,p_display_order=>80
,p_column_identifier=>'AK'
,p_column_label=>'Excel Current Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346809405395378957)
,p_db_column_name=>'APEX_CURRENT_CREDIT'
,p_display_order=>90
,p_column_identifier=>'AL'
,p_column_label=>'Apex Current Credit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346809560505378958)
,p_db_column_name=>'EXCEL_CURRENT_CREDIT'
,p_display_order=>100
,p_column_identifier=>'AM'
,p_column_label=>'Excel Current Credit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346809648481378959)
,p_db_column_name=>'APEX_CLOSING_DEBIT'
,p_display_order=>110
,p_column_identifier=>'AN'
,p_column_label=>'Apex Closing Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346809706186378960)
,p_db_column_name=>'EXCEL_CLOSING_DEBIT'
,p_display_order=>120
,p_column_identifier=>'AO'
,p_column_label=>'Excel Closing Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346809773876378961)
,p_db_column_name=>'APEX_CLOSING_CREDIT'
,p_display_order=>130
,p_column_identifier=>'AP'
,p_column_label=>'Apex Closing Credit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346809878905378962)
,p_db_column_name=>'EXCEL_CLOSING_CREDIT'
,p_display_order=>140
,p_column_identifier=>'AQ'
,p_column_label=>'Excel Closing Credit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346810022349378963)
,p_db_column_name=>'OPENING_DEBIT_VARIANCE'
,p_display_order=>150
,p_column_identifier=>'AR'
,p_column_label=>'Opening Debit Variance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346810118277378964)
,p_db_column_name=>'OPENING_CREDIT_VARIANCE'
,p_display_order=>160
,p_column_identifier=>'AS'
,p_column_label=>'Opening Credit Variance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346810256793378965)
,p_db_column_name=>'CURRENT_DEBIT_VARIANCE'
,p_display_order=>170
,p_column_identifier=>'AT'
,p_column_label=>'Current Debit Variance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346810284541378966)
,p_db_column_name=>'CURRENT_CREDIT_VARIANCE'
,p_display_order=>180
,p_column_identifier=>'AU'
,p_column_label=>'Current Credit Variance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346981368520793317)
,p_db_column_name=>'CLOSING_DEBIT_VARIANCE'
,p_display_order=>190
,p_column_identifier=>'AV'
,p_column_label=>'Closing Debit Variance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346981563381793318)
,p_db_column_name=>'CLOSING_CREDIT_VARIANCE'
,p_display_order=>200
,p_column_identifier=>'AW'
,p_column_label=>'Closing Credit Variance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346981610865793319)
,p_db_column_name=>'STATUS'
,p_display_order=>210
,p_column_identifier=>'AX'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346981713663793320)
,p_db_column_name=>'APEX_ACCOUNT_ID'
,p_display_order=>220
,p_column_identifier=>'AY'
,p_column_label=>'Apex Account Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346981834482793321)
,p_db_column_name=>'EXCEL_ROW_ID'
,p_display_order=>230
,p_column_identifier=>'AZ'
,p_column_label=>'Excel Row Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346981902606793322)
,p_db_column_name=>'EXCEL_ACCOUNT_TITLE'
,p_display_order=>240
,p_column_identifier=>'BA'
,p_column_label=>'Excel Account Title'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346982050309793323)
,p_db_column_name=>'L'
,p_display_order=>250
,p_column_identifier=>'BB'
,p_column_label=>'Excel Reference Code'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346982083932793324)
,p_db_column_name=>'ACCOUNT_CODE'
,p_display_order=>260
,p_column_identifier=>'BC'
,p_column_label=>'Apex Account Code'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(346830904901436487)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1724497'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'ACCOUNT_TITLE:ACCOUNT_CODE:APEX_CLOSING_DEBIT:APEX_CLOSING_CREDIT:STATUS:EXCEL_ACCOUNT_TITLE:L:EXCEL_CLOSING_DEBIT:EXCEL_CLOSING_CREDIT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(502713188266520779)
,p_plug_name=>'Matching'
,p_title=>'Matched'
,p_region_name=>'ITM'
,p_parent_plug_id=>wwv_flow_imp.id(510923314947613878)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2357896883184680)
,p_plug_display_sequence=>1000000050
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH ',
'-- Step 1: Clean and normalize Excel data from collection',
'cleaned_excel AS (',
'    SELECT ',
'        seq_id AS excel_row_id,',
'        REGEXP_SUBSTR(c005, ''^[0-9]+'') AS L,  -- Extract account code from LEVEL5',
'        -- Clean opening debit (O_DR - Column F) - truncate decimal part',
'        CASE ',
'            WHEN c006 IS NULL THEN 0',
'            WHEN TRIM(c006) = '''' THEN 0',
'            WHEN TRIM(c006) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c006), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC((TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c006), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_opening_debit,',
'        -- Clean opening credit (O_CR - Column G) - truncate decimal part',
'        CASE ',
'            WHEN c007 IS NULL THEN 0',
'            WHEN TRIM(c007) = '''' THEN 0',
'            WHEN TRIM(c007) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c007), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC((TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c007), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_opening_credit,',
'        -- Clean current debit (C_DR - Column H) - truncate decimal part',
'        CASE ',
'            WHEN c008 IS NULL THEN 0',
'            WHEN TRIM(c008) = '''' THEN 0',
'            WHEN TRIM(c008) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c008), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC((TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c008), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_current_debit,',
'        -- Clean current credit (C_CR - Column I) - truncate decimal part',
'        CASE ',
'            WHEN c009 IS NULL THEN 0',
'            WHEN TRIM(c009) = '''' THEN 0',
'            WHEN TRIM(c009) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC((TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_current_credit,',
'        -- Clean closing debit (COL_J - Column J) - truncate decimal part',
'',
'        CASE ',
'    WHEN c010 IS NULL THEN 0',
'    WHEN TRIM(c010) = '''' THEN 0',
'    WHEN TRIM(c010) = ''-'' THEN 0',
'    WHEN REGEXP_LIKE(',
'        REPLACE(REPLACE(REPLACE(TRIM(c010), '','', ''''), '' '', ''''), ''-'', ''''), ',
'        ''^[0-9]+\.?[0-9]*$''',
'    )',
'        THEN ROUND(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c010), '','', ''''), '' '', ''''), ''-'', '''')), 0)',
'    ELSE 0',
'END AS excel_closing_credit  ,',
'',
'CASE ',
'    WHEN c011 IS NULL THEN 0',
'    WHEN TRIM(c011) = '''' THEN 0',
'    WHEN TRIM(c011) = ''-'' THEN 0',
'    WHEN REGEXP_LIKE(',
'        REPLACE(REPLACE(REPLACE(TRIM(c011), '','', ''''), '' '', ''''), ''-'', ''''), ',
'        ''^[0-9]+\.?[0-9]*$''',
'    )',
'        THEN ROUND(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c011), '','', ''''), '' '', ''''), ''-'', '''')), 0)',
'    ELSE 0',
'END AS excel_closing_debit,',
'',
'    ',
'        c005   AS EXCEL_ACCOUNT_TITLE,',
'        ROW_NUMBER() OVER (ORDER BY seq_id) AS excel_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''REC''',
'),',
'',
' COA_ALL_LEVELS AS (',
'            SELECT COA_ID, PARENT_ID, GL_CODE, ACCOUNT_TITLE, STATUS,',
'                   REFERENCE_CODE,',
'                   CASE',
'                       WHEN LENGTH(GL_CODE) = 1  THEN 1',
'                       WHEN LENGTH(GL_CODE) = 3  THEN 2',
'                       WHEN LENGTH(GL_CODE) = 6  THEN 3',
'                       WHEN LENGTH(GL_CODE) = 10 THEN 4',
'                       WHEN LENGTH(GL_CODE) = 15 THEN 5',
'                   END AS ACCOUNT_LEVEL',
'            FROM AB_FIN_COA',
'            WHERE STATUS = ''Y''',
'              AND LENGTH(GL_CODE) IN (1, 3, 6, 10, 15)',
'              AND ORG_ID = :GV_ORG_ID',
'            ORDER BY COA_ID ASC',
'        ),',
'',
'        USER_APPROVAL AS (',
'            SELECT APP_IDS AS APP_ID',
'            FROM AB_USER_ACTION_APPROVAL',
'            WHERE APP_TYPE = ''780''',
'              AND STATUS = ''Y''',
'              AND APPROVAL_STATUS = ''APPROVED''',
'              AND ORG_ID = :GV_ORG_ID',
'        ),',
'',
'        ACCOUNT_TITLE AS (',
'            SELECT TRD.COA_IDD AS ACCOUNT_ID',
'            FROM AB_FIN_TRANSACTION TR',
'            JOIN AB_FIN_TRANSACTION_DET TRD ',
'              ON TRD.TR_ID = TR.TR_ID AND TRD.STATUS = ''Y''',
'            WHERE TR.ORG_ID = :GV_ORG_ID',
'              AND TR.VOUCHER_NAME IS NOT NULL',
'              AND TR.STATUS = ''Y''',
'            GROUP BY TRD.COA_IDD',
'        ),',
'',
'        DEBIT_ACCOUNT AS (',
'            SELECT TR.TR_ID VOUCHER_NO,',
'                   TRD.COA_IDD AS ACCOUNT_ID,',
'                   NVL(TR.TR_DATE, TRD.TRD_DATE) AS VOUCHER_DATE,',
'                   NVL(SUM(DR_AMOUNT), 0) AS DEBIT_AMOUNT',
'            FROM AB_FIN_TRANSACTION TR',
'            JOIN AB_FIN_TRANSACTION_DET TRD ',
'              ON TRD.TR_ID = TR.TR_ID AND TRD.STATUS = ''Y''',
'            JOIN USER_APPROVAL UA ',
'              ON UA.APP_ID = NVL(TR.TR_ID, TRD.TRD_ID)',
'            JOIN AB_FIN_COA COA ',
'              ON COA.COA_ID = TRD.COA_IDD AND COA.STATUS = ''Y''',
'            WHERE TR.ORG_ID = :GV_ORG_ID',
'              AND TR.VOUCHER_NAME IS NOT NULL',
'              AND TR.STATUS = ''Y''',
'              AND CR_AMOUNT IS NULL',
'            GROUP BY TR.TR_ID, TRD.COA_IDD, NVL(TR.TR_DATE, TRD.TRD_DATE)',
'        ),',
'',
'        CREDIT_ACCOUNT AS (',
'            SELECT TR.TR_ID VOUCHER_NO,',
'                   TRD.COA_IDD AS ACCOUNT_ID,',
'                   NVL(TR.TR_DATE, TRD.TRD_DATE) AS VOUCHER_DATE,',
'                   NVL(SUM(CR_AMOUNT), 0) AS CREDIT_AMOUNT',
'            FROM AB_FIN_TRANSACTION TR',
'            JOIN AB_FIN_TRANSACTION_DET TRD ',
'              ON TRD.TR_ID = TR.TR_ID AND TRD.STATUS = ''Y''',
'            JOIN USER_APPROVAL UA ',
'              ON UA.APP_ID = NVL(TR.TR_ID, TRD.TRD_ID)',
'            JOIN AB_FIN_COA COA ',
'              ON COA.COA_ID = TRD.COA_IDD AND COA.STATUS = ''Y''',
'            WHERE TR.ORG_ID = :GV_ORG_ID',
'              AND TR.VOUCHER_NAME IS NOT NULL',
'              AND TR.STATUS = ''Y''',
'              AND DR_AMOUNT IS NULL',
'            GROUP BY TR.TR_ID, TRD.COA_IDD, NVL(TR.TR_DATE, TRD.TRD_DATE)',
'        ),',
'',
'        BEFORE_OPENING_BALANCE AS (',
'            SELECT ACCOUNT_ID,',
'                   NVL(SUM(OPENING_DEBIT), 0) AS OPENING_DEBIT,',
'                   NVL(SUM(OPENING_CREDIT), 0) AS OPENING_CREDIT',
'            FROM (',
'                SELECT ACCOUNT_ID,',
'                       NVL(SUM(DEBIT_AMOUNT), 0) AS OPENING_DEBIT,',
'                       NULL AS OPENING_CREDIT',
'                FROM DEBIT_ACCOUNT',
'                WHERE TRUNC(VOUCHER_DATE) < NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'                GROUP BY ACCOUNT_ID',
'                ',
'                UNION ALL',
'                ',
'                SELECT ACCOUNT_ID,',
'                       NULL AS OPENING_DEBIT,',
'                       NVL(SUM(CREDIT_AMOUNT), 0) AS OPENING_CREDIT',
'                FROM CREDIT_ACCOUNT',
'               WHERE TRUNC(VOUCHER_DATE) < NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'                GROUP BY ACCOUNT_ID',
'            )',
'            GROUP BY ACCOUNT_ID',
'        ),',
'',
'        BETWEEN_TRANSACTIONS AS (',
'            SELECT ACCOUNT_ID,',
'                   NVL(SUM(PERIOD_DEBIT), 0) AS PERIOD_DEBIT,',
'                   NVL(SUM(PERIOD_CREDIT), 0) AS PERIOD_CREDIT',
'            FROM (',
'                SELECT ACCOUNT_ID,',
'                       NVL(SUM(DEBIT_AMOUNT), 0) AS PERIOD_DEBIT,',
'                       NULL AS PERIOD_CREDIT',
'                FROM DEBIT_ACCOUNT',
'              WHERE TRUNC(VOUCHER_DATE) BETWEEN NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'AND NVL(TO_DATE(:P978_TO_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'                GROUP BY ACCOUNT_ID',
'',
'                UNION ALL',
'',
'                SELECT ACCOUNT_ID,',
'                       NULL AS PERIOD_DEBIT,',
'                       NVL(SUM(CREDIT_AMOUNT), 0) AS PERIOD_CREDIT',
'                FROM CREDIT_ACCOUNT',
'              WHERE TRUNC(VOUCHER_DATE) BETWEEN NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'AND NVL(TO_DATE(:P978_TO_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'                GROUP BY ACCOUNT_ID',
'            )',
'            GROUP BY ACCOUNT_ID',
'        ),',
'',
'        ACCOUNT_TOTALS AS (',
'            SELECT AC.ACCOUNT_ID,',
'                   NVL(OPENING_DEBIT, 0) AS TOTAL_OPENING_DEBIT,',
'                   NVL(OPENING_CREDIT, 0) AS TOTAL_OPENING_CREDIT,',
'                   NVL(PERIOD_DEBIT, 0) AS TOTAL_PERIOD_DEBIT,',
'                   NVL(PERIOD_CREDIT, 0) AS TOTAL_PERIOD_CREDIT',
'            FROM ACCOUNT_TITLE AC',
'            LEFT JOIN BEFORE_OPENING_BALANCE OB ON OB.ACCOUNT_ID = AC.ACCOUNT_ID',
'            LEFT JOIN BETWEEN_TRANSACTIONS BT ON BT.ACCOUNT_ID = AC.ACCOUNT_ID',
'        ),',
'',
'        ACCOUNT_HIERARCHY AS (',
'            SELECT',
'                L1.COA_ID AS LEVEL1_ID,',
'                L2.COA_ID AS LEVEL2_ID,',
'                L3.COA_ID AS LEVEL3_ID,',
'                L4.COA_ID AS LEVEL4_ID,',
'                L5.COA_ID AS LEVEL5_ID,',
'                L1.ACCOUNT_TITLE AS LEVEL1_TITLE,',
'                L2.ACCOUNT_TITLE AS LEVEL2_TITLE,',
'                L3.ACCOUNT_TITLE AS LEVEL3_TITLE,',
'                L4.ACCOUNT_TITLE AS LEVEL4_TITLE,',
'                L5.ACCOUNT_TITLE AS LEVEL5_TITLE,',
'                L1.GL_CODE AS LEVEL1_GL_CODE,',
'                L2.GL_CODE AS LEVEL2_GL_CODE,',
'                L3.GL_CODE AS LEVEL3_GL_CODE,',
'                L4.GL_CODE AS LEVEL4_GL_CODE,',
'                L5.GL_CODE AS LEVEL5_GL_CODE,',
'                L1.REFERENCE_CODE AS LEVEL1_REF,',
'                L2.REFERENCE_CODE AS LEVEL2_REF,',
'                L3.REFERENCE_CODE AS LEVEL3_REF,',
'                L4.REFERENCE_CODE AS LEVEL4_REF,',
'                L5.REFERENCE_CODE AS LEVEL5_REF,',
'                COALESCE(L5.COA_ID, L4.COA_ID, L3.COA_ID, L2.COA_ID, L1.COA_ID) AS ACTUAL_ACCOUNT_ID',
'            FROM COA_ALL_LEVELS L1',
'            LEFT JOIN COA_ALL_LEVELS L2 ON L2.PARENT_ID = L1.COA_ID AND L2.ACCOUNT_LEVEL = 2',
'            LEFT JOIN COA_ALL_LEVELS L3 ON L3.PARENT_ID = L2.COA_ID AND L3.ACCOUNT_LEVEL = 3',
'            LEFT JOIN COA_ALL_LEVELS L4 ON L4.PARENT_ID = L3.COA_ID AND L4.ACCOUNT_LEVEL = 4',
'            LEFT JOIN COA_ALL_LEVELS L5 ON L5.PARENT_ID = L4.COA_ID AND L5.ACCOUNT_LEVEL = 5',
'            WHERE L1.ACCOUNT_LEVEL = 1',
'        ),',
'',
'        LEVEL_TOTALS AS (',
'            SELECT',
'                5 AS DISPLAY_LEVEL,',
'                AH.LEVEL5_ID AS ACCOUNT_ID,',
'                AH.LEVEL5_GL_CODE AS GL_CODE,',
'                AH.LEVEL5_TITLE AS ACCOUNT_TITLE,',
'                AH.LEVEL5_REF AS REFERENCE_CODE,',
'                NVL(AT.TOTAL_OPENING_DEBIT, 0) AS OPENING_DEBIT,',
'                NVL(AT.TOTAL_OPENING_CREDIT, 0) AS OPENING_CREDIT,',
'                NVL(AT.TOTAL_PERIOD_DEBIT, 0) AS CURRENT_DEBIT,',
'                NVL(AT.TOTAL_PERIOD_CREDIT, 0) AS CURRENT_CREDIT',
'            FROM ACCOUNT_HIERARCHY AH',
'            LEFT JOIN ACCOUNT_TOTALS AT ON AT.ACCOUNT_ID = AH.LEVEL5_ID',
'            WHERE AH.LEVEL5_ID IS NOT NULL',
'              AND (AT.TOTAL_OPENING_DEBIT != 0 OR AT.TOTAL_OPENING_CREDIT != 0 ',
'               OR AT.TOTAL_PERIOD_DEBIT != 0 OR AT.TOTAL_PERIOD_CREDIT != 0)',
'        )',
',',
'   MAIN_QUERY AS (     SELECT',
'            DISPLAY_LEVEL,',
'            ACCOUNT_ID,',
'            GL_CODE,',
'          GL_CODE|| '' - ''||SUBSTR(ACCOUNT_TITLE, 1, 500) AS ACCOUNT_TITLE,',
'            CASE ',
'              WHEN REFERENCE_CODE IS NULL THEN NULL',
'              WHEN REGEXP_LIKE(TRIM(REFERENCE_CODE), ''^-?\d+(\.\d+)?$'') ',
'                THEN TO_NUMBER(TRIM(REFERENCE_CODE))',
'              ELSE NULL',
'            END AS REFERENCE_CODE,',
'           -- ACCOUNT_TITLE,',
'         -- REFERENCE_CODE,',
'            ROUND(NVL(OPENING_DEBIT, 0)) AS OPENING_DEBIT,',
'            ROUND(NVL(OPENING_CREDIT, 0)) AS OPENING_CREDIT,',
'            ROUND(NVL(CURRENT_DEBIT, 0)) AS CURRENT_DEBIT,',
'            ROUND(NVL(CURRENT_CREDIT, 0)) AS CURRENT_CREDIT,',
'',
'                                         CASE ',
'                    WHEN ((NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'                          (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))) > 0',
'                    THEN ROUND(',
'                            (NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'                            (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))',
'                         )',
'                    ELSE 0',
'                END AS CLOSING_DEBIT,',
'',
'                CASE ',
'                    WHEN ((NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'                          (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))) < 0',
'                    THEN ROUND(',
'                            (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0)) -',
'                            (NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0))',
'                         )',
'                    ELSE 0',
'                END AS CLOSING_CREDIT,',
'',
'',
'                       ROUND(',
'                (NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'                (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))',
'            ) AS NET_BALANCE',
'',
'',
'        FROM LEVEL_TOTALS',
'        WHERE ACCOUNT_ID IS NOT NULL',
'        AND REFERENCE_CODE IS NOT NULL',
'         and   ROUND(',
'                (NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'                (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))',
'            ) <> 0',
'        ',
'        ORDER BY GL_CODE ASC',
'    ',
'   )',
',',
'-- Step 2: Get APEX account data with sequence number',
'apex_data AS (',
'    SELECT ',
'        DISPLAY_LEVEL,',
'        ACCOUNT_ID,',
'        ACCOUNT_TITLE,',
'        REFERENCE_CODE,',
'          NVL(OPENING_DEBIT, 0)      AS apex_opening_debit,',
'        NVL(OPENING_CREDIT, 0)     AS apex_opening_credit,',
'        NVL(CURRENT_DEBIT, 0)      AS apex_current_debit,',
'        NVL(CURRENT_CREDIT, 0)     AS apex_current_credit,',
'        NVL(CLOSING_DEBIT, 0)      AS apex_closing_debit,',
'        NVL(CLOSING_CREDIT, 0)     AS apex_closing_credit,',
'',
'',
'        -- NVL(TRUNC(OPENING_DEBIT),0) AS apex_opening_debit,',
'        -- NVL(TRUNC(OPENING_CREDIT),0) AS apex_opening_credit,',
'        -- NVL(TRUNC(CURRENT_DEBIT),0) AS apex_current_debit,',
'        -- NVL(TRUNC(CURRENT_CREDIT),0) AS apex_current_credit,',
'        -- NVL(TRUNC(CLOSING_DEBIT),0) AS apex_closing_debit,',
'        -- NVL(TRUNC(CLOSING_CREDIT),0) AS apex_closing_credit,',
'        ROW_NUMBER() OVER (ORDER BY ACCOUNT_ID) AS apex_seq',
'    FROM MAIN_QUERY',
'    WHERE ACCOUNT_ID IS NOT NULL',
'   -- AND REFERENCE_CODE = NVL(:P978_REF_CODE, REFERENCE_CODE)',
'  ',
'),',
'',
'-- Step 3: Match by account code (L = REFERENCE_CODE)',
'matched_records AS (',
'    SELECT ',
'        ad.apex_seq,',
'        ex.excel_seq,',
'        ad.REFERENCE_CODE AS apex_account_code,',
'        ex.L AS excel_account_code,',
'        ad.ACCOUNT_TITLE,',
'        ad.apex_opening_debit,',
'        ex.excel_opening_debit,',
'        ad.apex_opening_credit,',
'        ex.excel_opening_credit,',
'        ad.apex_current_debit,',
'        ex.excel_current_debit,',
'        ad.apex_current_credit,',
'        ex.excel_current_credit,',
'        ad.apex_closing_debit,',
'        ex.excel_closing_debit,',
'        ad.apex_closing_credit,',
'        ex.excel_closing_credit,',
'        (ad.apex_opening_debit - ex.excel_opening_debit) AS opening_debit_variance,',
'        (ad.apex_opening_credit - ex.excel_opening_credit) AS opening_credit_variance,',
'        (ad.apex_current_debit - ex.excel_current_debit) AS current_debit_variance,',
'        (ad.apex_current_credit - ex.excel_current_credit) AS current_credit_variance,',
'        (ad.apex_closing_debit - ex.excel_closing_debit) AS closing_debit_variance,',
'        (ad.apex_closing_credit - ex.excel_closing_credit) AS closing_credit_variance,',
'        ''MATCHED'' AS status,',
'        EXCEL_ACCOUNT_TITLE',
'    FROM apex_data ad',
'    INNER JOIN cleaned_excel ex ON ad.REFERENCE_CODE = ex.L',
'        --   AND ad.apex_opening_debit = ex.excel_opening_debit',
'        --   AND ad.apex_opening_credit = ex.excel_opening_credit  ',
'        --   AND ad.apex_current_debit = ex.excel_current_debit',
'        --   AND ad.apex_current_credit = ex.excel_current_credit',
'        AND ad.apex_closing_debit = ex.excel_closing_debit  ',
'         AND ad.apex_closing_credit =  ex.excel_closing_credit',
')',
'',
'SELECT ',
'    excel_account_code as  Excel_account_code,',
'    apex_account_code AS Apex_account_code,',
'    ACCOUNT_TITLE AS APEX_ACCOUNT_TITLE,',
'EXCEL_ACCOUNT_TITLE AS EXCEL_ACCOUNT_TITLE,',
'',
'apex_opening_debit AS apex_opening_debit,',
'excel_opening_debit AS excel_opening_debit,',
'',
'apex_opening_credit AS apex_opening_credit,',
'excel_opening_credit AS excel_opening_credit,',
'',
'apex_current_debit AS apex_current_debit,',
'excel_current_debit AS excel_current_debit,',
'',
'apex_current_credit AS apex_current_credit,',
'excel_current_credit AS excel_current_credit,',
'',
'apex_closing_debit AS apex_closing_debit,',
'excel_closing_debit AS excel_closing_debit,',
'',
'apex_closing_credit AS apex_closing_credit,',
'excel_closing_credit AS excel_closing_credit,',
'',
'opening_debit_variance AS opening_debit_variance,',
'opening_credit_variance AS opening_credit_variance,',
'current_debit_variance AS current_debit_variance,',
'current_credit_variance AS current_credit_variance,',
'closing_debit_variance AS closing_debit_variance,',
'closing_credit_variance AS closing_credit_variance,',
'',
'    --  MAX(ACCOUNT_TITLE) AS APEX_ACCOUNT_TITLE,',
'    --  MAX(EXCEL_ACCOUNT_TITLE) AS EXCEL_ACCOUNT_TITLE,',
'',
'    -- SUM(apex_opening_debit) AS apex_opening_debit,',
'    -- SUM(excel_opening_debit) AS excel_opening_debit,',
'',
'    -- SUM(apex_opening_credit) AS apex_opening_credit,',
'    -- SUM(excel_opening_credit) AS excel_opening_credit,',
'',
'    -- SUM(apex_current_debit) AS apex_current_debit,',
'    -- SUM(excel_current_debit) AS excel_current_debit,',
'',
'    -- SUM(apex_current_credit) AS apex_current_credit,',
'    -- SUM(excel_current_credit) AS excel_current_credit,',
'',
'    -- SUM(apex_closing_debit) AS apex_closing_debit,',
'    -- SUM(excel_closing_debit) AS excel_closing_debit,',
'',
'    -- SUM(apex_closing_credit) AS apex_closing_credit,',
'    -- SUM(excel_closing_credit) AS excel_closing_credit,',
'',
'    -- SUM(opening_debit_variance) AS opening_debit_variance,',
'    -- SUM(opening_credit_variance) AS opening_credit_variance,',
'    -- SUM(current_debit_variance) AS current_debit_variance,',
'    -- SUM(current_credit_variance) AS current_credit_variance,',
'    -- SUM(closing_debit_variance) AS closing_debit_variance,',
'    -- SUM(closing_credit_variance) AS closing_credit_variance,',
'',
'    ''MATCHED'' AS status',
'FROM matched_records',
'--GROUP BY apex_account_code, excel_account_code',
'ORDER BY apex_account_code;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P978_FROM_DATE,P978_TO_DATE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Matched'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH ',
'-- Step 1: Clean and normalize Excel data from collection',
'cleaned_excel AS (',
'    SELECT ',
'        seq_id AS excel_row_id,',
'        REGEXP_SUBSTR(c005, ''^[0-9]+'') AS L,  -- Extract account code from LEVEL5',
'        -- Clean opening debit (O_DR - Column F)',
'        CASE ',
'            WHEN c006 IS NULL THEN 0',
'            WHEN TRIM(c006) = '''' THEN 0',
'            WHEN TRIM(c006) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c006), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c006), '','', ''''), '' '', ''''), ''-'', '''')))',
'            ELSE 0',
'        END AS excel_opening_debit,',
'        -- Clean opening credit (O_CR - Column G)',
'        CASE ',
'            WHEN c007 IS NULL THEN 0',
'            WHEN TRIM(c007) = '''' THEN 0',
'            WHEN TRIM(c007) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c007), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c007), '','', ''''), '' '', ''''), ''-'', '''')))',
'            ELSE 0',
'        END AS excel_opening_credit,',
'        -- Clean current debit (C_DR - Column H)',
'        CASE ',
'            WHEN c008 IS NULL THEN 0',
'            WHEN TRIM(c008) = '''' THEN 0',
'            WHEN TRIM(c008) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c008), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c008), '','', ''''), '' '', ''''), ''-'', '''')))',
'            ELSE 0',
'        END AS excel_current_debit,',
'        -- Clean current credit (C_CR - Column I)',
'        CASE ',
'            WHEN c009 IS NULL THEN 0',
'            WHEN TRIM(c009) = '''' THEN 0',
'            WHEN TRIM(c009) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', '''')))',
'            ELSE 0',
'        END AS excel_current_credit,',
'        ROW_NUMBER() OVER (ORDER BY seq_id) AS excel_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''REC''',
'),',
'',
'-- COA_ALL_LEVELS',
'LEVEL_TOTALS AS (',
'    SELECT * FROM',
'     RECONCILATION_TRIAL_SHEET',
'),',
'',
'-- Step 2: Get APEX account data with sequence number',
'apex_data AS (',
'    SELECT ',
'        DISPLAY_LEVEL,',
'        ACCOUNT_ID,',
'        ACCOUNT_TITLE  ACCOUNT_TITLE,',
'        REFERENCE_CODE,',
'        VOUCHER_DATE,',
'        NVL(OPENING_DEBIT,0) AS apex_opening_debit,',
'        NVL(OPENING_CREDIT,0) AS apex_opening_credit,',
'        NVL(CURRENT_DEBIT,0) AS apex_current_debit,',
'        NVL(CURRENT_CREDIT,0) AS apex_current_credit,',
'        ROW_NUMBER() OVER (ORDER BY ACCOUNT_ID) AS apex_seq',
'    FROM LEVEL_TOTALS',
'    WHERE ACCOUNT_ID IS NOT NULL',
'  ',
'    AND REFERENCE_CODE = NVL(:P972_REF_CODE, REFERENCE_CODE)',
'    AND   ',
'  TRUNC(VOUCHER_DATE) BETWEEN NVL(TO_DATE(:P972_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'  AND NVL(TO_DATE(:P972_TO_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'),',
'',
'-- Step 3: Match by account code (L = REFERENCE_CODE)',
'matched_records AS (',
'    SELECT ',
'        ad.apex_seq,',
'        ex.excel_seq,',
'        ad.REFERENCE_CODE AS apex_account_code,',
'        ex.L AS excel_account_code,',
'        ad.ACCOUNT_TITLE,',
'        ad.apex_opening_debit,',
'        ex.excel_opening_debit,',
'        ad.apex_opening_credit,',
'        ex.excel_opening_credit,',
'        ad.apex_current_debit,',
'        ex.excel_current_debit,',
'        ad.apex_current_credit,',
'        ex.excel_current_credit,',
'        (ad.apex_opening_debit - ex.excel_opening_debit) AS opening_debit_variance,',
'        (ad.apex_opening_credit - ex.excel_opening_credit) AS opening_credit_variance,',
'        (ad.apex_current_debit - ex.excel_current_debit) AS current_debit_variance,',
'        (ad.apex_current_credit - ex.excel'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(502713370658520780)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ANAS-26163'
,p_internal_uid=>502713370658520780
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(503135957731620202)
,p_db_column_name=>'STATUS'
,p_display_order=>100
,p_column_identifier=>'AU'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344883212294277741)
,p_db_column_name=>'APEX_OPENING_DEBIT'
,p_display_order=>140
,p_column_identifier=>'BG'
,p_column_label=>'Apex Opening Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344883333120277742)
,p_db_column_name=>'EXCEL_OPENING_DEBIT'
,p_display_order=>150
,p_column_identifier=>'BH'
,p_column_label=>'Excel Opening Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344883451440277743)
,p_db_column_name=>'APEX_OPENING_CREDIT'
,p_display_order=>160
,p_column_identifier=>'BI'
,p_column_label=>'Apex Opening Credit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344883472858277744)
,p_db_column_name=>'EXCEL_OPENING_CREDIT'
,p_display_order=>170
,p_column_identifier=>'BJ'
,p_column_label=>'Excel Opening Credit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344883640819277745)
,p_db_column_name=>'APEX_CURRENT_DEBIT'
,p_display_order=>180
,p_column_identifier=>'BK'
,p_column_label=>'Apex Current Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344883708498277746)
,p_db_column_name=>'EXCEL_CURRENT_DEBIT'
,p_display_order=>190
,p_column_identifier=>'BL'
,p_column_label=>'Excel Current Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344883812453277747)
,p_db_column_name=>'APEX_CURRENT_CREDIT'
,p_display_order=>200
,p_column_identifier=>'BM'
,p_column_label=>'Apex Current Credit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344883928264277748)
,p_db_column_name=>'EXCEL_CURRENT_CREDIT'
,p_display_order=>210
,p_column_identifier=>'BN'
,p_column_label=>'Excel Current Credit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344883969472277749)
,p_db_column_name=>'OPENING_DEBIT_VARIANCE'
,p_display_order=>220
,p_column_identifier=>'BO'
,p_column_label=>'Opening Debit Variance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344884146644277750)
,p_db_column_name=>'OPENING_CREDIT_VARIANCE'
,p_display_order=>230
,p_column_identifier=>'BP'
,p_column_label=>'Opening Credit Variance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344884264683277751)
,p_db_column_name=>'CURRENT_DEBIT_VARIANCE'
,p_display_order=>240
,p_column_identifier=>'BQ'
,p_column_label=>'Current Debit Variance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344884334832277752)
,p_db_column_name=>'CURRENT_CREDIT_VARIANCE'
,p_display_order=>250
,p_column_identifier=>'BR'
,p_column_label=>'Current Credit Variance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344991522058024628)
,p_db_column_name=>'APEX_CLOSING_DEBIT'
,p_display_order=>280
,p_column_identifier=>'BU'
,p_column_label=>'Apex Closing Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344991636200024629)
,p_db_column_name=>'EXCEL_CLOSING_DEBIT'
,p_display_order=>290
,p_column_identifier=>'BV'
,p_column_label=>'Excel Closing Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344991726188024630)
,p_db_column_name=>'APEX_CLOSING_CREDIT'
,p_display_order=>300
,p_column_identifier=>'BW'
,p_column_label=>'Apex Closing Credit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344991791346024631)
,p_db_column_name=>'EXCEL_CLOSING_CREDIT'
,p_display_order=>310
,p_column_identifier=>'BX'
,p_column_label=>'Excel Closing Credit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344991967324024632)
,p_db_column_name=>'CLOSING_DEBIT_VARIANCE'
,p_display_order=>320
,p_column_identifier=>'BY'
,p_column_label=>'Closing Debit Variance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344992018308024633)
,p_db_column_name=>'CLOSING_CREDIT_VARIANCE'
,p_display_order=>330
,p_column_identifier=>'BZ'
,p_column_label=>'Closing Credit Variance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(345605041587261039)
,p_db_column_name=>'EXCEL_ACCOUNT_CODE'
,p_display_order=>340
,p_column_identifier=>'CB'
,p_column_label=>'Excel Account Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346360134086727445)
,p_db_column_name=>'APEX_ACCOUNT_CODE'
,p_display_order=>350
,p_column_identifier=>'CD'
,p_column_label=>'Apex Account Code'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346982231026793325)
,p_db_column_name=>'APEX_ACCOUNT_TITLE'
,p_display_order=>360
,p_column_identifier=>'CE'
,p_column_label=>'Apex Account Title'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346982272950793326)
,p_db_column_name=>'EXCEL_ACCOUNT_TITLE'
,p_display_order=>370
,p_column_identifier=>'CF'
,p_column_label=>'Excel Account Title'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(502739223229699030)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1581010'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'APEX_ACCOUNT_TITLE:APEX_ACCOUNT_CODE:APEX_CLOSING_DEBIT:APEX_CLOSING_CREDIT:STATUS:EXCEL_ACCOUNT_TITLE:EXCEL_ACCOUNT_CODE:EXCEL_CLOSING_DEBIT:EXCEL_CLOSING_CREDIT:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(344993548735024648)
,p_plug_name=>'matching count'
,p_region_name=>'VOU'
,p_parent_plug_id=>wwv_flow_imp.id(502713188266520779)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2310230379184666)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH ',
'-- Step 1: Clean and normalize Excel data from collection',
'cleaned_excel AS (',
'    SELECT ',
'        seq_id AS excel_row_id,',
'        REGEXP_SUBSTR(c005, ''^[0-9]+'') AS L,  -- Extract account code from LEVEL5',
'        -- Clean opening debit (O_DR - Column F) - truncate decimal part',
'        CASE ',
'            WHEN c006 IS NULL THEN 0',
'            WHEN TRIM(c006) = '''' THEN 0',
'            WHEN TRIM(c006) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c006), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC((TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c006), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_opening_debit,',
'        -- Clean opening credit (O_CR - Column G) - truncate decimal part',
'        CASE ',
'            WHEN c007 IS NULL THEN 0',
'            WHEN TRIM(c007) = '''' THEN 0',
'            WHEN TRIM(c007) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c007), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC((TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c007), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_opening_credit,',
'        -- Clean current debit (C_DR - Column H) - truncate decimal part',
'        CASE ',
'            WHEN c008 IS NULL THEN 0',
'            WHEN TRIM(c008) = '''' THEN 0',
'            WHEN TRIM(c008) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c008), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC((TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c008), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_current_debit,',
'        -- Clean current credit (C_CR - Column I) - truncate decimal part',
'        CASE ',
'            WHEN c009 IS NULL THEN 0',
'            WHEN TRIM(c009) = '''' THEN 0',
'            WHEN TRIM(c009) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC((TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_current_credit,',
'        -- Clean closing debit (COL_J - Column J) - truncate decimal part',
'',
'        CASE ',
'    WHEN c010 IS NULL THEN 0',
'    WHEN TRIM(c010) = '''' THEN 0',
'    WHEN TRIM(c010) = ''-'' THEN 0',
'    WHEN REGEXP_LIKE(',
'        REPLACE(REPLACE(REPLACE(TRIM(c010), '','', ''''), '' '', ''''), ''-'', ''''), ',
'        ''^[0-9]+\.?[0-9]*$''',
'    )',
'        THEN ROUND(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c010), '','', ''''), '' '', ''''), ''-'', '''')), 0)',
'    ELSE 0',
'END AS excel_closing_credit  ,',
'',
'CASE ',
'    WHEN c011 IS NULL THEN 0',
'    WHEN TRIM(c011) = '''' THEN 0',
'    WHEN TRIM(c011) = ''-'' THEN 0',
'    WHEN REGEXP_LIKE(',
'        REPLACE(REPLACE(REPLACE(TRIM(c011), '','', ''''), '' '', ''''), ''-'', ''''), ',
'        ''^[0-9]+\.?[0-9]*$''',
'    )',
'        THEN ROUND(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c011), '','', ''''), '' '', ''''), ''-'', '''')), 0)',
'    ELSE 0',
'END AS excel_closing_debit,',
'',
'    ',
'        c005   AS EXCEL_ACCOUNT_TITLE,',
'        ROW_NUMBER() OVER (ORDER BY seq_id) AS excel_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''REC''',
'),',
'',
' COA_ALL_LEVELS AS (',
'            SELECT COA_ID, PARENT_ID, GL_CODE, ACCOUNT_TITLE, STATUS,',
'                   REFERENCE_CODE,',
'                   CASE',
'                       WHEN LENGTH(GL_CODE) = 1  THEN 1',
'                       WHEN LENGTH(GL_CODE) = 3  THEN 2',
'                       WHEN LENGTH(GL_CODE) = 6  THEN 3',
'                       WHEN LENGTH(GL_CODE) = 10 THEN 4',
'                       WHEN LENGTH(GL_CODE) = 15 THEN 5',
'                   END AS ACCOUNT_LEVEL',
'            FROM AB_FIN_COA',
'            WHERE STATUS = ''Y''',
'              AND LENGTH(GL_CODE) IN (1, 3, 6, 10, 15)',
'              AND ORG_ID = :GV_ORG_ID',
'            ORDER BY COA_ID ASC',
'        ),',
'',
'        USER_APPROVAL AS (',
'            SELECT APP_IDS AS APP_ID',
'            FROM AB_USER_ACTION_APPROVAL',
'            WHERE APP_TYPE = ''780''',
'              AND STATUS = ''Y''',
'              AND APPROVAL_STATUS = ''APPROVED''',
'              AND ORG_ID = :GV_ORG_ID',
'        ),',
'',
'        ACCOUNT_TITLE AS (',
'            SELECT TRD.COA_IDD AS ACCOUNT_ID',
'            FROM AB_FIN_TRANSACTION TR',
'            JOIN AB_FIN_TRANSACTION_DET TRD ',
'              ON TRD.TR_ID = TR.TR_ID AND TRD.STATUS = ''Y''',
'            WHERE TR.ORG_ID = :GV_ORG_ID',
'              AND TR.VOUCHER_NAME IS NOT NULL',
'              AND TR.STATUS = ''Y''',
'            GROUP BY TRD.COA_IDD',
'        ),',
'',
'        DEBIT_ACCOUNT AS (',
'            SELECT TR.TR_ID VOUCHER_NO,',
'                   TRD.COA_IDD AS ACCOUNT_ID,',
'                   NVL(TR.TR_DATE, TRD.TRD_DATE) AS VOUCHER_DATE,',
'                   NVL(SUM(DR_AMOUNT), 0) AS DEBIT_AMOUNT',
'            FROM AB_FIN_TRANSACTION TR',
'            JOIN AB_FIN_TRANSACTION_DET TRD ',
'              ON TRD.TR_ID = TR.TR_ID AND TRD.STATUS = ''Y''',
'            JOIN USER_APPROVAL UA ',
'              ON UA.APP_ID = NVL(TR.TR_ID, TRD.TRD_ID)',
'            JOIN AB_FIN_COA COA ',
'              ON COA.COA_ID = TRD.COA_IDD AND COA.STATUS = ''Y''',
'            WHERE TR.ORG_ID = :GV_ORG_ID',
'              AND TR.VOUCHER_NAME IS NOT NULL',
'              AND TR.STATUS = ''Y''',
'              AND CR_AMOUNT IS NULL',
'            GROUP BY TR.TR_ID, TRD.COA_IDD, NVL(TR.TR_DATE, TRD.TRD_DATE)',
'        ),',
'',
'        CREDIT_ACCOUNT AS (',
'            SELECT TR.TR_ID VOUCHER_NO,',
'                   TRD.COA_IDD AS ACCOUNT_ID,',
'                   NVL(TR.TR_DATE, TRD.TRD_DATE) AS VOUCHER_DATE,',
'                   NVL(SUM(CR_AMOUNT), 0) AS CREDIT_AMOUNT',
'            FROM AB_FIN_TRANSACTION TR',
'            JOIN AB_FIN_TRANSACTION_DET TRD ',
'              ON TRD.TR_ID = TR.TR_ID AND TRD.STATUS = ''Y''',
'            JOIN USER_APPROVAL UA ',
'              ON UA.APP_ID = NVL(TR.TR_ID, TRD.TRD_ID)',
'            JOIN AB_FIN_COA COA ',
'              ON COA.COA_ID = TRD.COA_IDD AND COA.STATUS = ''Y''',
'            WHERE TR.ORG_ID = :GV_ORG_ID',
'              AND TR.VOUCHER_NAME IS NOT NULL',
'              AND TR.STATUS = ''Y''',
'              AND DR_AMOUNT IS NULL',
'            GROUP BY TR.TR_ID, TRD.COA_IDD, NVL(TR.TR_DATE, TRD.TRD_DATE)',
'        ),',
'',
'        BEFORE_OPENING_BALANCE AS (',
'            SELECT ACCOUNT_ID,',
'                   NVL(SUM(OPENING_DEBIT), 0) AS OPENING_DEBIT,',
'                   NVL(SUM(OPENING_CREDIT), 0) AS OPENING_CREDIT',
'            FROM (',
'                SELECT ACCOUNT_ID,',
'                       NVL(SUM(DEBIT_AMOUNT), 0) AS OPENING_DEBIT,',
'                       NULL AS OPENING_CREDIT',
'                FROM DEBIT_ACCOUNT',
'                WHERE TRUNC(VOUCHER_DATE) < NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'                GROUP BY ACCOUNT_ID',
'                ',
'                UNION ALL',
'                ',
'                SELECT ACCOUNT_ID,',
'                       NULL AS OPENING_DEBIT,',
'                       NVL(SUM(CREDIT_AMOUNT), 0) AS OPENING_CREDIT',
'                FROM CREDIT_ACCOUNT',
'               WHERE TRUNC(VOUCHER_DATE) < NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'                GROUP BY ACCOUNT_ID',
'            )',
'            GROUP BY ACCOUNT_ID',
'        ),',
'',
'        BETWEEN_TRANSACTIONS AS (',
'            SELECT ACCOUNT_ID,',
'                   NVL(SUM(PERIOD_DEBIT), 0) AS PERIOD_DEBIT,',
'                   NVL(SUM(PERIOD_CREDIT), 0) AS PERIOD_CREDIT',
'            FROM (',
'                SELECT ACCOUNT_ID,',
'                       NVL(SUM(DEBIT_AMOUNT), 0) AS PERIOD_DEBIT,',
'                       NULL AS PERIOD_CREDIT',
'                FROM DEBIT_ACCOUNT',
'              WHERE TRUNC(VOUCHER_DATE) BETWEEN NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'AND NVL(TO_DATE(:P978_TO_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'                GROUP BY ACCOUNT_ID',
'',
'                UNION ALL',
'',
'                SELECT ACCOUNT_ID,',
'                       NULL AS PERIOD_DEBIT,',
'                       NVL(SUM(CREDIT_AMOUNT), 0) AS PERIOD_CREDIT',
'                FROM CREDIT_ACCOUNT',
'              WHERE TRUNC(VOUCHER_DATE) BETWEEN NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'AND NVL(TO_DATE(:P978_TO_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'                GROUP BY ACCOUNT_ID',
'            )',
'            GROUP BY ACCOUNT_ID',
'        ),',
'',
'        ACCOUNT_TOTALS AS (',
'            SELECT AC.ACCOUNT_ID,',
'                   NVL(OPENING_DEBIT, 0) AS TOTAL_OPENING_DEBIT,',
'                   NVL(OPENING_CREDIT, 0) AS TOTAL_OPENING_CREDIT,',
'                   NVL(PERIOD_DEBIT, 0) AS TOTAL_PERIOD_DEBIT,',
'                   NVL(PERIOD_CREDIT, 0) AS TOTAL_PERIOD_CREDIT',
'            FROM ACCOUNT_TITLE AC',
'            LEFT JOIN BEFORE_OPENING_BALANCE OB ON OB.ACCOUNT_ID = AC.ACCOUNT_ID',
'            LEFT JOIN BETWEEN_TRANSACTIONS BT ON BT.ACCOUNT_ID = AC.ACCOUNT_ID',
'        ),',
'',
'        ACCOUNT_HIERARCHY AS (',
'            SELECT',
'                L1.COA_ID AS LEVEL1_ID,',
'                L2.COA_ID AS LEVEL2_ID,',
'                L3.COA_ID AS LEVEL3_ID,',
'                L4.COA_ID AS LEVEL4_ID,',
'                L5.COA_ID AS LEVEL5_ID,',
'                L1.ACCOUNT_TITLE AS LEVEL1_TITLE,',
'                L2.ACCOUNT_TITLE AS LEVEL2_TITLE,',
'                L3.ACCOUNT_TITLE AS LEVEL3_TITLE,',
'                L4.ACCOUNT_TITLE AS LEVEL4_TITLE,',
'                L5.ACCOUNT_TITLE AS LEVEL5_TITLE,',
'                L1.GL_CODE AS LEVEL1_GL_CODE,',
'                L2.GL_CODE AS LEVEL2_GL_CODE,',
'                L3.GL_CODE AS LEVEL3_GL_CODE,',
'                L4.GL_CODE AS LEVEL4_GL_CODE,',
'                L5.GL_CODE AS LEVEL5_GL_CODE,',
'                L1.REFERENCE_CODE AS LEVEL1_REF,',
'                L2.REFERENCE_CODE AS LEVEL2_REF,',
'                L3.REFERENCE_CODE AS LEVEL3_REF,',
'                L4.REFERENCE_CODE AS LEVEL4_REF,',
'                L5.REFERENCE_CODE AS LEVEL5_REF,',
'                COALESCE(L5.COA_ID, L4.COA_ID, L3.COA_ID, L2.COA_ID, L1.COA_ID) AS ACTUAL_ACCOUNT_ID',
'            FROM COA_ALL_LEVELS L1',
'            LEFT JOIN COA_ALL_LEVELS L2 ON L2.PARENT_ID = L1.COA_ID AND L2.ACCOUNT_LEVEL = 2',
'            LEFT JOIN COA_ALL_LEVELS L3 ON L3.PARENT_ID = L2.COA_ID AND L3.ACCOUNT_LEVEL = 3',
'            LEFT JOIN COA_ALL_LEVELS L4 ON L4.PARENT_ID = L3.COA_ID AND L4.ACCOUNT_LEVEL = 4',
'            LEFT JOIN COA_ALL_LEVELS L5 ON L5.PARENT_ID = L4.COA_ID AND L5.ACCOUNT_LEVEL = 5',
'            WHERE L1.ACCOUNT_LEVEL = 1',
'        ),',
'',
'        LEVEL_TOTALS AS (',
'            SELECT',
'                5 AS DISPLAY_LEVEL,',
'                AH.LEVEL5_ID AS ACCOUNT_ID,',
'                AH.LEVEL5_GL_CODE AS GL_CODE,',
'                AH.LEVEL5_TITLE AS ACCOUNT_TITLE,',
'                AH.LEVEL5_REF AS REFERENCE_CODE,',
'                NVL(AT.TOTAL_OPENING_DEBIT, 0) AS OPENING_DEBIT,',
'                NVL(AT.TOTAL_OPENING_CREDIT, 0) AS OPENING_CREDIT,',
'                NVL(AT.TOTAL_PERIOD_DEBIT, 0) AS CURRENT_DEBIT,',
'                NVL(AT.TOTAL_PERIOD_CREDIT, 0) AS CURRENT_CREDIT',
'            FROM ACCOUNT_HIERARCHY AH',
'            LEFT JOIN ACCOUNT_TOTALS AT ON AT.ACCOUNT_ID = AH.LEVEL5_ID',
'            WHERE AH.LEVEL5_ID IS NOT NULL',
'              AND (AT.TOTAL_OPENING_DEBIT != 0 OR AT.TOTAL_OPENING_CREDIT != 0 ',
'               OR AT.TOTAL_PERIOD_DEBIT != 0 OR AT.TOTAL_PERIOD_CREDIT != 0)',
'        )',
',',
'   MAIN_QUERY AS (     SELECT',
'            DISPLAY_LEVEL,',
'            ACCOUNT_ID,',
'            GL_CODE,',
'          GL_CODE|| '' - ''||SUBSTR(ACCOUNT_TITLE, 1, 500) AS ACCOUNT_TITLE,',
'            CASE ',
'              WHEN REFERENCE_CODE IS NULL THEN NULL',
'              WHEN REGEXP_LIKE(TRIM(REFERENCE_CODE), ''^-?\d+(\.\d+)?$'') ',
'                THEN TO_NUMBER(TRIM(REFERENCE_CODE))',
'              ELSE NULL',
'            END AS REFERENCE_CODE,',
'           -- ACCOUNT_TITLE,',
'         -- REFERENCE_CODE,',
'            ROUND(NVL(OPENING_DEBIT, 0)) AS OPENING_DEBIT,',
'            ROUND(NVL(OPENING_CREDIT, 0)) AS OPENING_CREDIT,',
'            ROUND(NVL(CURRENT_DEBIT, 0)) AS CURRENT_DEBIT,',
'            ROUND(NVL(CURRENT_CREDIT, 0)) AS CURRENT_CREDIT,',
'',
'                                         CASE ',
'                    WHEN ((NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'                          (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))) > 0',
'                    THEN ROUND(',
'                            (NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'                            (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))',
'                         )',
'                    ELSE 0',
'                END AS CLOSING_DEBIT,',
'',
'                CASE ',
'                    WHEN ((NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'                          (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))) < 0',
'                    THEN ROUND(',
'                            (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0)) -',
'                            (NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0))',
'                         )',
'                    ELSE 0',
'                END AS CLOSING_CREDIT,',
'',
'',
'                       ROUND(',
'                (NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'                (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))',
'            ) AS NET_BALANCE',
'',
'',
'        FROM LEVEL_TOTALS',
'        WHERE ACCOUNT_ID IS NOT NULL',
'        AND REFERENCE_CODE IS NOT NULL',
'         and   ROUND(',
'                (NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'                (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))',
'            ) <> 0',
'        ',
'        ORDER BY GL_CODE ASC',
'    ',
'   )',
',',
'-- Step 2: Get APEX account data with sequence number',
'apex_data AS (',
'    SELECT ',
'        DISPLAY_LEVEL,',
'        ACCOUNT_ID,',
'        ACCOUNT_TITLE,',
'        REFERENCE_CODE,',
'          NVL(OPENING_DEBIT, 0)      AS apex_opening_debit,',
'        NVL(OPENING_CREDIT, 0)     AS apex_opening_credit,',
'        NVL(CURRENT_DEBIT, 0)      AS apex_current_debit,',
'        NVL(CURRENT_CREDIT, 0)     AS apex_current_credit,',
'        NVL(CLOSING_DEBIT, 0)      AS apex_closing_debit,',
'        NVL(CLOSING_CREDIT, 0)     AS apex_closing_credit,',
'',
'',
'        -- NVL(TRUNC(OPENING_DEBIT),0) AS apex_opening_debit,',
'        -- NVL(TRUNC(OPENING_CREDIT),0) AS apex_opening_credit,',
'        -- NVL(TRUNC(CURRENT_DEBIT),0) AS apex_current_debit,',
'        -- NVL(TRUNC(CURRENT_CREDIT),0) AS apex_current_credit,',
'        -- NVL(TRUNC(CLOSING_DEBIT),0) AS apex_closing_debit,',
'        -- NVL(TRUNC(CLOSING_CREDIT),0) AS apex_closing_credit,',
'        ROW_NUMBER() OVER (ORDER BY ACCOUNT_ID) AS apex_seq',
'    FROM MAIN_QUERY',
'    WHERE ACCOUNT_ID IS NOT NULL',
'   -- AND REFERENCE_CODE = NVL(:P978_REF_CODE, REFERENCE_CODE)',
'  ',
'),',
'',
'-- Step 3: Match by account code (L = REFERENCE_CODE)',
'matched_records AS (',
'    SELECT ',
'        ad.apex_seq,',
'        ex.excel_seq,',
'        ad.REFERENCE_CODE AS apex_account_code,',
'        ex.L AS excel_account_code,',
'        ad.ACCOUNT_TITLE,',
'        ad.apex_opening_debit,',
'        ex.excel_opening_debit,',
'        ad.apex_opening_credit,',
'        ex.excel_opening_credit,',
'        ad.apex_current_debit,',
'        ex.excel_current_debit,',
'        ad.apex_current_credit,',
'        ex.excel_current_credit,',
'        ad.apex_closing_debit,',
'        ex.excel_closing_debit,',
'        ad.apex_closing_credit,',
'        ex.excel_closing_credit,',
'        (ad.apex_opening_debit - ex.excel_opening_debit) AS opening_debit_variance,',
'        (ad.apex_opening_credit - ex.excel_opening_credit) AS opening_credit_variance,',
'        (ad.apex_current_debit - ex.excel_current_debit) AS current_debit_variance,',
'        (ad.apex_current_credit - ex.excel_current_credit) AS current_credit_variance,',
'        (ad.apex_closing_debit - ex.excel_closing_debit) AS closing_debit_variance,',
'        (ad.apex_closing_credit - ex.excel_closing_credit) AS closing_credit_variance,',
'        ''MATCHED'' AS status,',
'        EXCEL_ACCOUNT_TITLE',
'    FROM apex_data ad',
'    INNER JOIN cleaned_excel ex ON ad.REFERENCE_CODE = ex.L',
'        --   AND ad.apex_opening_debit = ex.excel_opening_debit',
'        --   AND ad.apex_opening_credit = ex.excel_opening_credit  ',
'        --   AND ad.apex_current_debit = ex.excel_current_debit',
'        --   AND ad.apex_current_credit = ex.excel_current_credit',
'        AND ad.apex_closing_debit = ex.excel_closing_debit  ',
'         AND ad.apex_closing_credit =  ex.excel_closing_credit',
')',
'',
'SELECT ',
'    excel_account_code as  Excel_account_code,',
'    apex_account_code AS Apex_account_code,',
'    ACCOUNT_TITLE AS APEX_ACCOUNT_TITLE,',
'EXCEL_ACCOUNT_TITLE AS EXCEL_ACCOUNT_TITLE,',
'',
'apex_opening_debit AS apex_opening_debit,',
'excel_opening_debit AS excel_opening_debit,',
'',
'apex_opening_credit AS apex_opening_credit,',
'excel_opening_credit AS excel_opening_credit,',
'',
'apex_current_debit AS apex_current_debit,',
'excel_current_debit AS excel_current_debit,',
'',
'apex_current_credit AS apex_current_credit,',
'excel_current_credit AS excel_current_credit,',
'',
'apex_closing_debit AS apex_closing_debit,',
'excel_closing_debit AS excel_closing_debit,',
'',
'apex_closing_credit AS apex_closing_credit,',
'excel_closing_credit AS excel_closing_credit,',
'',
'opening_debit_variance AS opening_debit_variance,',
'opening_credit_variance AS opening_credit_variance,',
'current_debit_variance AS current_debit_variance,',
'current_credit_variance AS current_credit_variance,',
'closing_debit_variance AS closing_debit_variance,',
'closing_credit_variance AS closing_credit_variance,',
'',
'    --  MAX(ACCOUNT_TITLE) AS APEX_ACCOUNT_TITLE,',
'    --  MAX(EXCEL_ACCOUNT_TITLE) AS EXCEL_ACCOUNT_TITLE,',
'',
'    -- SUM(apex_opening_debit) AS apex_opening_debit,',
'    -- SUM(excel_opening_debit) AS excel_opening_debit,',
'',
'    -- SUM(apex_opening_credit) AS apex_opening_credit,',
'    -- SUM(excel_opening_credit) AS excel_opening_credit,',
'',
'    -- SUM(apex_current_debit) AS apex_current_debit,',
'    -- SUM(excel_current_debit) AS excel_current_debit,',
'',
'    -- SUM(apex_current_credit) AS apex_current_credit,',
'    -- SUM(excel_current_credit) AS excel_current_credit,',
'',
'    -- SUM(apex_closing_debit) AS apex_closing_debit,',
'    -- SUM(excel_closing_debit) AS excel_closing_debit,',
'',
'    -- SUM(apex_closing_credit) AS apex_closing_credit,',
'    -- SUM(excel_closing_credit) AS excel_closing_credit,',
'',
'    -- SUM(opening_debit_variance) AS opening_debit_variance,',
'    -- SUM(opening_credit_variance) AS opening_credit_variance,',
'    -- SUM(current_debit_variance) AS current_debit_variance,',
'    -- SUM(current_credit_variance) AS current_credit_variance,',
'    -- SUM(closing_debit_variance) AS closing_debit_variance,',
'    -- SUM(closing_credit_variance) AS closing_credit_variance,',
'',
'    ''MATCHED'' AS status',
'FROM matched_records',
'--GROUP BY apex_account_code, excel_account_code',
'--ORDER BY apex_account_code;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'NEVER'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174349287725244744)
,p_name=>'EXCEL_ACCOUNT_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCEL_ACCOUNT_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Excel Account Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174349360752244745)
,p_name=>'APEX_ACCOUNT_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APEX_ACCOUNT_CODE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Apex Account Code'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174349462574244746)
,p_name=>'APEX_ACCOUNT_TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APEX_ACCOUNT_TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Apex Account Title'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174349504553244747)
,p_name=>'EXCEL_ACCOUNT_TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCEL_ACCOUNT_TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Excel Account Title'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174349699962244748)
,p_name=>'APEX_OPENING_DEBIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APEX_OPENING_DEBIT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Apex Opening Debit'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174349702977244749)
,p_name=>'EXCEL_OPENING_DEBIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCEL_OPENING_DEBIT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Excel Opening Debit'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174349877246244750)
,p_name=>'APEX_OPENING_CREDIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APEX_OPENING_CREDIT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Apex Opening Credit'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174468736784375101)
,p_name=>'EXCEL_OPENING_CREDIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCEL_OPENING_CREDIT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Excel Opening Credit'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174468855714375102)
,p_name=>'APEX_CURRENT_DEBIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APEX_CURRENT_DEBIT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Apex Current Debit'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174468932160375103)
,p_name=>'EXCEL_CURRENT_DEBIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCEL_CURRENT_DEBIT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Excel Current Debit'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174469022110375104)
,p_name=>'APEX_CURRENT_CREDIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APEX_CURRENT_CREDIT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Apex Current Credit'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174469190659375105)
,p_name=>'EXCEL_CURRENT_CREDIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCEL_CURRENT_CREDIT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Excel Current Credit'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>140
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174469258084375106)
,p_name=>'APEX_CLOSING_DEBIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APEX_CLOSING_DEBIT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Apex Closing Debit'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174469379597375107)
,p_name=>'EXCEL_CLOSING_DEBIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCEL_CLOSING_DEBIT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Excel Closing Debit'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174469493638375108)
,p_name=>'APEX_CLOSING_CREDIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APEX_CLOSING_CREDIT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Apex Closing Credit'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174469585591375109)
,p_name=>'EXCEL_CLOSING_CREDIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCEL_CLOSING_CREDIT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Excel Closing Credit'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>180
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174469652150375110)
,p_name=>'OPENING_DEBIT_VARIANCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPENING_DEBIT_VARIANCE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Opening Debit Variance'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>190
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174469725165375111)
,p_name=>'OPENING_CREDIT_VARIANCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPENING_CREDIT_VARIANCE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Opening Credit Variance'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>200
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174469849488375112)
,p_name=>'CURRENT_DEBIT_VARIANCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRENT_DEBIT_VARIANCE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Current Debit Variance'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>210
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174469917536375113)
,p_name=>'CURRENT_CREDIT_VARIANCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRENT_CREDIT_VARIANCE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Current Credit Variance'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>220
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174470028666375114)
,p_name=>'CLOSING_DEBIT_VARIANCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLOSING_DEBIT_VARIANCE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Closing Debit Variance'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>230
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174470141630375115)
,p_name=>'CLOSING_CREDIT_VARIANCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLOSING_CREDIT_VARIANCE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Closing Credit Variance'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>240
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174470260715375116)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>7
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(344994217761024655)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(344994292838024656)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(344994035332024653)
,p_internal_uid=>344994035332024653
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(345580227995099379)
,p_interactive_grid_id=>wwv_flow_imp.id(344994035332024653)
,p_static_id=>'1711990'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(345580449069099380)
,p_report_id=>wwv_flow_imp.id(345580227995099379)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(174478426605385643)
,p_view_id=>wwv_flow_imp.id(345580449069099380)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(174349287725244744)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(174479324613385647)
,p_view_id=>wwv_flow_imp.id(345580449069099380)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(174349360752244745)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(174480266873385650)
,p_view_id=>wwv_flow_imp.id(345580449069099380)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(174349462574244746)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(174481177318385653)
,p_view_id=>wwv_flow_imp.id(345580449069099380)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(174349504553244747)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(174482005021385656)
,p_view_id=>wwv_flow_imp.id(345580449069099380)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(174349699962244748)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(174482917503385660)
,p_view_id=>wwv_flow_imp.id(345580449069099380)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(174349702977244749)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(174483820400385663)
,p_view_id=>wwv_flow_imp.id(345580449069099380)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(174349877246244750)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(174484796217385666)
,p_view_id=>wwv_flow_imp.id(345580449069099380)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(174468736784375101)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(174485667942385669)
,p_view_id=>wwv_flow_imp.id(345580449069099380)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(174468855714375102)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(174486572969385673)
,p_view_id=>wwv_flow_imp.id(345580449069099380)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(174468932160375103)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(174487452349385676)
,p_view_id=>wwv_flow_imp.id(345580449069099380)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(174469022110375104)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(174488373662385679)
,p_view_id=>wwv_flow_imp.id(345580449069099380)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(174469190659375105)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(174489215955385682)
,p_view_id=>wwv_flow_imp.id(345580449069099380)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(174469258084375106)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(174490072711385684)
,p_view_id=>wwv_flow_imp.id(345580449069099380)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(174469379597375107)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(174490911860385687)
,p_view_id=>wwv_flow_imp.id(345580449069099380)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(174469493638375108)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(174491864310385690)
,p_view_id=>wwv_flow_imp.id(345580449069099380)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(174469585591375109)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(174492781397385693)
,p_view_id=>wwv_flow_imp.id(345580449069099380)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(174469652150375110)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(174493680302385696)
,p_view_id=>wwv_flow_imp.id(345580449069099380)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(174469725165375111)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(174494519954385699)
,p_view_id=>wwv_flow_imp.id(345580449069099380)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(174469849488375112)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(174495473095385702)
,p_view_id=>wwv_flow_imp.id(345580449069099380)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(174469917536375113)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(174496373784385705)
,p_view_id=>wwv_flow_imp.id(345580449069099380)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(174470028666375114)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(174497211248385708)
,p_view_id=>wwv_flow_imp.id(345580449069099380)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(174470141630375115)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(174498118023385712)
,p_view_id=>wwv_flow_imp.id(345580449069099380)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(174470260715375116)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(345583412952103039)
,p_view_id=>wwv_flow_imp.id(345580449069099380)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(344994217761024655)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(174438840456352596)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(504586195783252197)
,p_button_name=>'UPLOAD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--hoverIconSpin'
,p_button_template_id=>wwv_flow_imp.id(2426385342184703)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reconciliation'
,p_button_css_classes=>'button'
,p_icon_css_classes=>'fa-recycle'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(174430407296352590)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(500988244184081806)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(2426385342184703)
,p_button_image_alt=>'Save'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(174438489699352596)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(504586195783252197)
,p_button_name=>'Remove_Excel_File'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2426385342184703)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Remove Excel File'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-edit'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(174463898910352613)
,p_branch_name=>'Go To Page 978'
,p_branch_action=>'f?p=&APP_ID.:978:&SESSION.::&DEBUG.:CR,978::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(174438489699352596)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(501084137842081913)
,p_name=>'P978_UPLOAD_FILE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(504586195783252197)
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2423765497184702)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'DROPZONE_BLOCK'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(502535044629730474)
,p_name=>'P978_FROM_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(502480828271730369)
,p_prompt=>'<B>From Date</B>'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2423765497184702)
,p_item_css_classes=>'large-input'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(502535214618730475)
,p_name=>'P978_TO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(502480828271730369)
,p_prompt=>'<B>To Date</B>'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2423765497184702)
,p_item_css_classes=>'large-input'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(502535433786730477)
,p_name=>'P978_REF_CODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(502480828271730369)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Account</b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT REFERENCE_CODE AS DISPLAY_VALUE,',
'      REFERENCE_CODE AS RETURN_VALUE',
'      ',
'      -- COA_ID AS RETURN_VALUE',
'',
'',
'        FROM AB_FIN_COA',
'            WHERE ORG_ID = :GV_ORG_ID',
'            AND REFERENCE_CODE IS NOT NULL',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Account--'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(2423765497184702)
,p_item_css_classes=>'large-input'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(503913719814579234)
,p_name=>'P978_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(510923314947613878)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(505071384882433843)
,p_name=>'P978_MATCHING'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(502480828271730369)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(505071556578433845)
,p_name=>'P978_APEX'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(502480828271730369)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(505071758220433847)
,p_name=>'P978_OLD_SOFTWARE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(502480828271730369)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(174460431343352611)
,p_name=>'clear excel'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(174438489699352596)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174461908860352612)
,p_event_id=>wwv_flow_imp.id(174460431343352611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'IF APEX_COLLECTION.COLLECTION_EXISTS(''REC'') THEN',
'       apex_collection.truncate_collection(p_collection_name => ''REC'');',
'end if;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174462459185352612)
,p_event_id=>wwv_flow_imp.id(174460431343352611)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(500988508181081809)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174958605011280502)
,p_event_id=>wwv_flow_imp.id(174460431343352611)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174460957333352611)
,p_event_id=>wwv_flow_imp.id(174460431343352611)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("AR").refresh();',
'apex.region("AR").widget().interactiveGrid("getViews","grid").model.clearChanges();',
''))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(174450928189352608)
,p_name=>'From Date Wise Refresh the All region'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P978_FROM_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174451998279352608)
,p_event_id=>wwv_flow_imp.id(174450928189352608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(502484988039730411)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174454469788352609)
,p_event_id=>wwv_flow_imp.id(174450928189352608)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(500988508181081809)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174470392904375117)
,p_event_id=>wwv_flow_imp.id(174450928189352608)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(502713188266520779)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174455403923352609)
,p_event_id=>wwv_flow_imp.id(174450928189352608)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(500584512240751899)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174451452827352608)
,p_event_id=>wwv_flow_imp.id(174450928189352608)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT ',
'       MATCH_COUNT into :P978_MATCHING',
'   FROM (',
'     WITH ',
'cleaned_excel AS (',
'    SELECT   seq_id AS excel_row_id, REGEXP_SUBSTR(c005, ''^[0-9]+'') AS L,',
'        CASE   WHEN c006 IS NULL OR TRIM(c006) IN ('''', ''-'') THEN 0  WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c006), '','', ''''), '' '', ''''), ''-'', ''''),   ''^[0-9]+\.?[0-9]*$''',
'            ) THEN TRUNC(ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c006), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0 END AS excel_opening_debit,',
'        CASE   WHEN c007 IS NULL OR TRIM(c007) IN ('''', ''-'') THEN 0  WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c007), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            ) THEN TRUNC(ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c007), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0  END AS excel_opening_credit,',
'        CASE ',
'            WHEN c008 IS NULL OR TRIM(c008) IN ('''', ''-'') THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c008), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC(ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c008), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_current_debit,',
'        CASE ',
'            WHEN c009 IS NULL OR TRIM(c009) IN ('''', ''-'') THEN 0 WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', ''''),  ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC(ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0 END AS excel_current_credit,',
'        CASE ',
'            WHEN c010 IS NULL OR TRIM(c010) IN ('''', ''-'') THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c010), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC(ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c010), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_closing_debit,',
'        CASE ',
'            WHEN c011 IS NULL OR TRIM(c011) IN ('''', ''-'') THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c011), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC(ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c011), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_closing_credit,',
'        ROW_NUMBER() OVER (ORDER BY seq_id) AS excel_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''REC''',
'),',
'',
'LEVEL_TOTALS AS (',
'SELECT *',
'FROM TABLE(RECONCILATION_TRIAL_BALANCE_PCK.TRIAL_BALANCE_RECONCILATION_FUN(',
'    :GV_ORG_ID,',
'    TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''),',
'    TO_DATE(:P978_TO_DATE, ''DD-MON-YYYY'')',
'))',
'),',
'',
'apex_data AS (',
'    SELECT ',
'        DISPLAY_LEVEL,',
'        ACCOUNT_ID,',
'        ACCOUNT_TITLE,',
'        REFERENCE_CODE,',
'        NVL(TRUNC(OPENING_DEBIT),0) AS apex_opening_debit,',
'        NVL(TRUNC(OPENING_CREDIT),0) AS apex_opening_credit,',
'        NVL(TRUNC(CURRENT_DEBIT),0) AS apex_current_debit,',
'        NVL(TRUNC(CURRENT_CREDIT),0) AS apex_current_credit,',
'        NVL(TRUNC(CLOSING_DEBIT),0) AS apex_closing_debit,',
'        NVL(TRUNC(CLOSING_CREDIT),0) AS apex_closing_credit,',
'        ROW_NUMBER() OVER (ORDER BY ACCOUNT_ID) AS apex_seq',
'    FROM LEVEL_TOTALS',
'    WHERE ACCOUNT_ID IS NOT NULL',
'),',
'',
'matched_records AS (',
'    SELECT ',
'        ad.apex_seq,',
'        ex.excel_seq,',
'        ad.REFERENCE_CODE AS apex_account_code,',
'        ex.L AS excel_account_code',
'    FROM apex_data ad',
'    INNER JOIN cleaned_excel ex ',
'        ON ad.REFERENCE_CODE = ex.L',
'       AND ad.apex_closing_debit = ex.excel_closing_debit',
'       AND ad.apex_closing_credit = ex.excel_closing_credit',
')',
'',
'',
'SELECT COUNT(*)  as MATCH_COUNT',
'FROM (',
'    SELECT apex_account_code, excel_account_code',
'    FROM matched_records',
'    GROUP BY apex_account_code, excel_account_code',
')',
'',
'',
'  );'))
,p_attribute_02=>'P978_FROM_DATE,P978_TO_DATE'
,p_attribute_03=>'P978_MATCHING'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174452956628352609)
,p_event_id=>wwv_flow_imp.id(174450928189352608)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'     ONLY_IN_APEX_COUNT,',
'     ONLY_IN_EXCEL_COUNT',
'     INTO ',
'     :P978_APEX,',
'     :P978_OLD_SOFTWARE',
'',
'  FROM (   ',
'          ',
'WITH ',
'cleaned_excel AS (',
'    SELECT ',
'        seq_id AS excel_row_id,',
'        REGEXP_SUBSTR(c005, ''^[0-9]+'') AS L,',
'        CASE WHEN c006 IS NULL OR TRIM(c006) IN ('''', ''-'') THEN 0',
'             WHEN REGEXP_LIKE(REPLACE(REPLACE(REPLACE(TRIM(c006), '','', ''''), '' '', ''''), ''-'', ''''),',
'                               ''^[0-9]+\.?[0-9]*$'')',
'             THEN TRUNC(ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c006), '','', ''''), '' '', ''''), ''-'', ''''))))',
'             ELSE 0 END AS excel_opening_debit,',
'        CASE WHEN c007 IS NULL OR TRIM(c007) IN ('''', ''-'') THEN 0',
'             WHEN REGEXP_LIKE(REPLACE(REPLACE(REPLACE(TRIM(c007), '','', ''''), '' '', ''''), ''-'', ''''),',
'                               ''^[0-9]+\.?[0-9]*$'')',
'             THEN TRUNC(ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c007), '','', ''''), '' '', ''''), ''-'', ''''))))',
'             ELSE 0 END AS excel_opening_credit,',
'        ROW_NUMBER() OVER (PARTITION BY REGEXP_SUBSTR(c005, ''^[0-9]+'') ORDER BY seq_id) AS excel_seq,',
'        c005 AS EXCEL_ACCOUNT_TITLE',
'    FROM apex_collections',
'    WHERE collection_name = ''REC''',
'    AND REGEXP_SUBSTR(c005, ''^[0-9]+'') IS NOT NULL',
'),',
'',
'LEVEL_TOTALS AS (',
'',
'SELECT *',
'FROM TABLE(RECONCILATION_TRIAL_BALANCE_PCK.TRIAL_BALANCE_RECONCILATION_FUN(',
'    :GV_ORG_ID,',
'   TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''),',
' TO_DATE(:P978_TO_DATE, ''DD-MON-YYYY'')',
'))',
'',
'',
'  --  SELECT * FROM RECONCILATION_TRIAL_SHEET',
'),',
'',
'apex_data AS (',
'    SELECT ',
'        ACCOUNT_ID,',
'        ACCOUNT_TITLE,',
'        REFERENCE_CODE,',
'        TRUNC(OPENING_DEBIT) AS apex_opening_debit,',
'        TRUNC(OPENING_CREDIT) AS apex_opening_credit,',
'        TRUNC(CURRENT_DEBIT) AS apex_current_debit,',
'        TRUNC(CURRENT_CREDIT) AS apex_current_credit,',
'        TRUNC(CLOSING_DEBIT) AS apex_closing_debit,',
'        TRUNC(CLOSING_CREDIT) AS apex_closing_credit,',
'        ROW_NUMBER() OVER (PARTITION BY REFERENCE_CODE ORDER BY ACCOUNT_ID) AS apex_seq',
'    FROM LEVEL_TOTALS',
'    WHERE ACCOUNT_ID IS NOT NULL',
'),',
'',
'matched_records AS (',
'    SELECT ',
'        ad.REFERENCE_CODE,',
'        ad.apex_seq,',
'        ex.excel_seq',
'    FROM apex_data ad',
'    INNER JOIN cleaned_excel ex ',
'        ON ad.REFERENCE_CODE = ex.L',
'        AND ad.apex_seq = ex.excel_seq',
'),',
'',
'unmatched_apex AS (',
'    SELECT COUNT(*) AS cnt_apex',
'    FROM apex_data ad',
'    WHERE NOT EXISTS (',
'        SELECT 1 FROM matched_records m',
'        WHERE m.REFERENCE_CODE = ad.REFERENCE_CODE',
'        AND m.apex_seq = ad.apex_seq',
'    )',
'),',
'',
'unmatched_excel AS (',
'    SELECT COUNT(*) AS cnt_excel',
'    FROM cleaned_excel ex',
'    WHERE NOT EXISTS (',
'        SELECT 1 FROM matched_records m',
'        WHERE m.REFERENCE_CODE = ex.L',
'        AND m.excel_seq = ex.excel_seq',
'    )',
')',
'',
'SELECT ',
'    (SELECT cnt_apex FROM unmatched_apex) AS ONLY_IN_APEX_COUNT,',
'    (SELECT cnt_excel FROM unmatched_excel) AS ONLY_IN_EXCEL_COUNT',
'    ',
'    ',
'     FROM dual',
'',
'  );',
'',
''))
,p_attribute_02=>'P978_FROM_DATE,P978_TO_DATE'
,p_attribute_03=>'P978_APEX,P978_OLD_SOFTWARE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174452498408352608)
,p_event_id=>wwv_flow_imp.id(174450928189352608)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P978_MATCHING'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174453473781352609)
,p_event_id=>wwv_flow_imp.id(174450928189352608)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P978_APEX'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174453966399352609)
,p_event_id=>wwv_flow_imp.id(174450928189352608)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P978_OLD_SOFTWARE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174455986964352610)
,p_event_id=>wwv_flow_imp.id(174450928189352608)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(346805514764378918)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(174443117279352604)
,p_name=>'To Date Wise Refresh the All region'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P978_TO_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174447169218352606)
,p_event_id=>wwv_flow_imp.id(174443117279352604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(502484988039730411)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174443694755352604)
,p_event_id=>wwv_flow_imp.id(174443117279352604)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(500988508181081809)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174470481383375118)
,p_event_id=>wwv_flow_imp.id(174443117279352604)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(502713188266520779)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174444673171352604)
,p_event_id=>wwv_flow_imp.id(174443117279352604)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(500584512240751899)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174446682614352605)
,p_event_id=>wwv_flow_imp.id(174443117279352604)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select match_count into :P978_MATCHING from ',
'  ',
'  ( WITH ',
'cleaned_excel AS (',
'    SELECT   seq_id AS excel_row_id, REGEXP_SUBSTR(c005, ''^[0-9]+'') AS L,',
'        CASE   WHEN c006 IS NULL OR TRIM(c006) IN ('''', ''-'') THEN 0  WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c006), '','', ''''), '' '', ''''), ''-'', ''''),   ''^[0-9]+\.?[0-9]*$''',
'            ) THEN TRUNC(ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c006), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0 END AS excel_opening_debit,',
'        CASE   WHEN c007 IS NULL OR TRIM(c007) IN ('''', ''-'') THEN 0  WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c007), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            ) THEN TRUNC(ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c007), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0  END AS excel_opening_credit,',
'        CASE ',
'            WHEN c008 IS NULL OR TRIM(c008) IN ('''', ''-'') THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c008), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC(ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c008), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_current_debit,',
'        CASE ',
'            WHEN c009 IS NULL OR TRIM(c009) IN ('''', ''-'') THEN 0 WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', ''''),  ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC(ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0 END AS excel_current_credit,',
'        CASE ',
'            WHEN c010 IS NULL OR TRIM(c010) IN ('''', ''-'') THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c010), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC(ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c010), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_closing_debit,',
'        CASE ',
'            WHEN c011 IS NULL OR TRIM(c011) IN ('''', ''-'') THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c011), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC(ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c011), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_closing_credit,',
'        ROW_NUMBER() OVER (ORDER BY seq_id) AS excel_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''REC''',
'),',
'',
'LEVEL_TOTALS AS (',
'SELECT *',
'FROM TABLE(RECONCILATION_TRIAL_BALANCE_PCK.TRIAL_BALANCE_RECONCILATION_FUN(',
'    :GV_ORG_ID,',
'    TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''),',
'    TO_DATE(:P978_TO_DATE, ''DD-MON-YYYY'')',
'))',
'),',
'',
'apex_data AS (',
'    SELECT ',
'        DISPLAY_LEVEL,',
'        ACCOUNT_ID,',
'        ACCOUNT_TITLE,',
'        REFERENCE_CODE,',
'        NVL(TRUNC(OPENING_DEBIT),0) AS apex_opening_debit,',
'        NVL(TRUNC(OPENING_CREDIT),0) AS apex_opening_credit,',
'        NVL(TRUNC(CURRENT_DEBIT),0) AS apex_current_debit,',
'        NVL(TRUNC(CURRENT_CREDIT),0) AS apex_current_credit,',
'        NVL(TRUNC(CLOSING_DEBIT),0) AS apex_closing_debit,',
'        NVL(TRUNC(CLOSING_CREDIT),0) AS apex_closing_credit,',
'        ROW_NUMBER() OVER (ORDER BY ACCOUNT_ID) AS apex_seq',
'    FROM LEVEL_TOTALS',
'    WHERE ACCOUNT_ID IS NOT NULL',
'),',
'',
'matched_records AS (',
'    SELECT ',
'        ad.apex_seq,',
'        ex.excel_seq,',
'        ad.REFERENCE_CODE AS apex_account_code,',
'        ex.L AS excel_account_code',
'    FROM apex_data ad',
'    INNER JOIN cleaned_excel ex ',
'        ON ad.REFERENCE_CODE = ex.L',
'       AND ad.apex_closing_debit = ex.excel_closing_debit',
'       AND ad.apex_closing_credit = ex.excel_closing_credit',
')',
'',
unistr('-- \2B50 FINAL COUNT QUERY'),
'SELECT COUNT(*)  as match_count',
'FROM (',
'    SELECT apex_account_code, excel_account_code',
'    FROM matched_records',
'    GROUP BY apex_account_code, excel_account_code',
')',
'',
'',
'  );'))
,p_attribute_02=>'P978_FROM_DATE,P978_TO_DATE'
,p_attribute_03=>'P978_MATCHING'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174447692483352606)
,p_event_id=>wwv_flow_imp.id(174443117279352604)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P978_MATCHING'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174445147240352605)
,p_event_id=>wwv_flow_imp.id(174443117279352604)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'     ONLY_IN_APEX_COUNT,',
'     ONLY_IN_EXCEL_COUNT',
'     INTO ',
'     :P978_APEX,',
'     :P978_OLD_SOFTWARE',
'',
'  FROM (   ',
'          ',
'WITH ',
'cleaned_excel AS (',
'    SELECT ',
'        seq_id AS excel_row_id,',
'        REGEXP_SUBSTR(c005, ''^[0-9]+'') AS L,',
'        CASE WHEN c006 IS NULL OR TRIM(c006) IN ('''', ''-'') THEN 0',
'             WHEN REGEXP_LIKE(REPLACE(REPLACE(REPLACE(TRIM(c006), '','', ''''), '' '', ''''), ''-'', ''''),',
'                               ''^[0-9]+\.?[0-9]*$'')',
'             THEN TRUNC(ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c006), '','', ''''), '' '', ''''), ''-'', ''''))))',
'             ELSE 0 END AS excel_opening_debit,',
'        CASE WHEN c007 IS NULL OR TRIM(c007) IN ('''', ''-'') THEN 0',
'             WHEN REGEXP_LIKE(REPLACE(REPLACE(REPLACE(TRIM(c007), '','', ''''), '' '', ''''), ''-'', ''''),',
'                               ''^[0-9]+\.?[0-9]*$'')',
'             THEN TRUNC(ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c007), '','', ''''), '' '', ''''), ''-'', ''''))))',
'             ELSE 0 END AS excel_opening_credit,',
'        ROW_NUMBER() OVER (PARTITION BY REGEXP_SUBSTR(c005, ''^[0-9]+'') ORDER BY seq_id) AS excel_seq,',
'        c005 AS EXCEL_ACCOUNT_TITLE',
'    FROM apex_collections',
'    WHERE collection_name = ''REC''',
'    AND REGEXP_SUBSTR(c005, ''^[0-9]+'') IS NOT NULL',
'),',
'',
'LEVEL_TOTALS AS (',
'',
'SELECT *',
'FROM TABLE(RECONCILATION_TRIAL_BALANCE_PCK.TRIAL_BALANCE_RECONCILATION_FUN(',
'    :GV_ORG_ID,',
'   TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''),',
' TO_DATE(:P978_TO_DATE, ''DD-MON-YYYY'')',
'))',
'',
'',
'  --  SELECT * FROM RECONCILATION_TRIAL_SHEET',
'),',
'',
'apex_data AS (',
'    SELECT ',
'        ACCOUNT_ID,',
'        ACCOUNT_TITLE,',
'        REFERENCE_CODE,',
'        TRUNC(OPENING_DEBIT) AS apex_opening_debit,',
'        TRUNC(OPENING_CREDIT) AS apex_opening_credit,',
'        TRUNC(CURRENT_DEBIT) AS apex_current_debit,',
'        TRUNC(CURRENT_CREDIT) AS apex_current_credit,',
'        TRUNC(CLOSING_DEBIT) AS apex_closing_debit,',
'        TRUNC(CLOSING_CREDIT) AS apex_closing_credit,',
'        ROW_NUMBER() OVER (PARTITION BY REFERENCE_CODE ORDER BY ACCOUNT_ID) AS apex_seq',
'    FROM LEVEL_TOTALS',
'    WHERE ACCOUNT_ID IS NOT NULL',
'),',
'',
'matched_records AS (',
'    SELECT ',
'        ad.REFERENCE_CODE,',
'        ad.apex_seq,',
'        ex.excel_seq',
'    FROM apex_data ad',
'    INNER JOIN cleaned_excel ex ',
'        ON ad.REFERENCE_CODE = ex.L',
'        AND ad.apex_seq = ex.excel_seq',
'),',
'',
'unmatched_apex AS (',
'    SELECT COUNT(*) AS cnt_apex',
'    FROM apex_data ad',
'    WHERE NOT EXISTS (',
'        SELECT 1 FROM matched_records m',
'        WHERE m.REFERENCE_CODE = ad.REFERENCE_CODE',
'        AND m.apex_seq = ad.apex_seq',
'    )',
'),',
'',
'unmatched_excel AS (',
'    SELECT COUNT(*) AS cnt_excel',
'    FROM cleaned_excel ex',
'    WHERE NOT EXISTS (',
'        SELECT 1 FROM matched_records m',
'        WHERE m.REFERENCE_CODE = ex.L',
'        AND m.excel_seq = ex.excel_seq',
'    )',
')',
'',
'SELECT ',
'    (SELECT cnt_apex FROM unmatched_apex) AS ONLY_IN_APEX_COUNT,',
'    (SELECT cnt_excel FROM unmatched_excel) AS ONLY_IN_EXCEL_COUNT',
'    ',
'    ',
'     FROM dual',
'',
'  );',
'',
''))
,p_attribute_02=>'P978_FROM_DATE,P978_TO_DATE'
,p_attribute_03=>'P978_APEX,P978_OLD_SOFTWARE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174445682668352605)
,p_event_id=>wwv_flow_imp.id(174443117279352604)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P978_APEX'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174446132522352605)
,p_event_id=>wwv_flow_imp.id(174443117279352604)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P978_OLD_SOFTWARE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174448109006352606)
,p_event_id=>wwv_flow_imp.id(174443117279352604)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(346805514764378918)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(174441705935352602)
,p_name=>'New_2'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P978_REF_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174442295432352603)
,p_event_id=>wwv_flow_imp.id(174441705935352602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(502484988039730411)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174442723651352603)
,p_event_id=>wwv_flow_imp.id(174441705935352602)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(502713188266520779)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(174462825764352612)
,p_name=>'New_3'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P978_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174463346659352612)
,p_event_id=>wwv_flow_imp.id(174462825764352612)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(502713188266520779)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(174448599724352606)
,p_name=>'New_4'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(174438840456352596)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174450589138352607)
,p_event_id=>wwv_flow_imp.id(174448599724352606)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174449070337352607)
,p_event_id=>wwv_flow_imp.id(174448599724352606)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'matched'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_matched NUMBER := 0;',
'BEGIN',
'    WITH ',
'    -- Step 1: Clean and normalize Excel data from collection',
'    cleaned_excel AS (',
'        SELECT ',
'            seq_id AS excel_row_id,',
'            REGEXP_SUBSTR(c005, ''^[0-9]+'') AS L,  -- Extract account code from LEVEL5',
'            -- Clean opening debit (O_DR - Column F)',
'            CASE ',
'                WHEN c006 IS NULL THEN 0',
'                WHEN TRIM(c006) = '''' THEN 0',
'                WHEN TRIM(c006) = ''-'' THEN 0',
'                WHEN REGEXP_LIKE(',
'                    REPLACE(REPLACE(REPLACE(TRIM(c006), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                    ''^[0-9]+\.?[0-9]*$''',
'                )',
'                    THEN ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c006), '','', ''''), '' '', ''''), ''-'', '''')))',
'                ELSE 0',
'            END AS excel_opening_debit,',
'            -- Clean opening credit (O_CR - Column G)',
'            CASE ',
'                WHEN c007 IS NULL THEN 0',
'                WHEN TRIM(c007) = '''' THEN 0',
'                WHEN TRIM(c007) = ''-'' THEN 0',
'                WHEN REGEXP_LIKE(',
'                    REPLACE(REPLACE(REPLACE(TRIM(c007), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                    ''^[0-9]+\.?[0-9]*$''',
'                )',
'                    THEN ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c007), '','', ''''), '' '', ''''), ''-'', '''')))',
'                ELSE 0',
'            END AS excel_opening_credit,',
'            -- Clean current debit (C_DR - Column H)',
'            CASE ',
'                WHEN c008 IS NULL THEN 0',
'                WHEN TRIM(c008) = '''' THEN 0',
'                WHEN TRIM(c008) = ''-'' THEN 0',
'                WHEN REGEXP_LIKE(',
'                    REPLACE(REPLACE(REPLACE(TRIM(c008), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                    ''^[0-9]+\.?[0-9]*$''',
'                )',
'                    THEN ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c008), '','', ''''), '' '', ''''), ''-'', '''')))',
'                ELSE 0',
'            END AS excel_current_debit,',
'            -- Clean current credit (C_CR - Column I)',
'            CASE ',
'                WHEN c009 IS NULL THEN 0',
'                WHEN TRIM(c009) = '''' THEN 0',
'                WHEN TRIM(c009) = ''-'' THEN 0',
'                WHEN REGEXP_LIKE(',
'                    REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                    ''^[0-9]+\.?[0-9]*$''',
'                )',
'                    THEN ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', '''')))',
'                ELSE 0',
'            END AS excel_current_credit,',
'            ROW_NUMBER() OVER (ORDER BY seq_id) AS excel_seq',
'        FROM apex_collections',
'        WHERE collection_name = ''REC''',
'    ),',
'',
'    -- COA_ALL_LEVELS',
'    LEVEL_TOTALS AS (',
'        SELECT * FROM RECONCILATION_TRIAL_SHEET',
'    ),',
'',
'    -- Step 2: Get APEX account data with sequence number',
'    apex_data AS (',
'        SELECT ',
'            DISPLAY_LEVEL,',
'            ACCOUNT_ID,',
'            ACCOUNT_TITLE,',
'            REFERENCE_CODE,',
'            VOUCHER_DATE,',
'            NVL(OPENING_DEBIT,0) AS apex_opening_debit,',
'            NVL(OPENING_CREDIT,0) AS apex_opening_credit,',
'            NVL(CURRENT_DEBIT,0) AS apex_current_debit,',
'            NVL(CURRENT_CREDIT,0) AS apex_current_credit,',
'            ROW_NUMBER() OVER (ORDER BY ACCOUNT_ID) AS apex_seq',
'        FROM LEVEL_TOTALS',
'        WHERE ACCOUNT_ID IS NOT NULL',
'        --AND REFERENCE_CODE = NVL(:P978_REF_CODE, REFERENCE_CODE)',
'        AND TRUNC(VOUCHER_DATE) BETWEEN ',
'            NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'            AND NVL(TO_DATE(:P978_TO_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'    )',
'',
'    -- Step 3: Match and count records',
'    SELECT COUNT(*) INTO v_matched',
'    FROM apex_data ad',
'    INNER JOIN cleaned_excel ex ',
'        ON ad.REFERENCE_CODE = ex.L ',
'        AND ad.apex_seq = ex.excel_seq;',
'',
'    :P978_MATCHING := v_matched;',
'END;',
''))
,p_attribute_02=>'P978_FROM_DATE,P978_TO_DATE,P978_REF_CODE'
,p_attribute_03=>'P978_MATCHING'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174450099433352607)
,p_event_id=>wwv_flow_imp.id(174448599724352606)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'apex'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_apex  NUMBER := 0;',
'BEGIN   ',
'WITH cleaned_excel AS (',
'SELECT ',
'ROWNUM AS excel_row_id,',
'TO_CHAR(',
'TO_DATE(',
'CASE',
'WHEN REGEXP_LIKE(TRIM(c002), ''^[0-9]{1,2}-[A-Z]{3}-[0-9]{2}$'', ''i'')',
'    THEN TRIM(c002)',
'WHEN REGEXP_LIKE(TRIM(c002), ''^[0-9]{1,2}-[A-Z]{3}-[0-9]{4}$'', ''i'')',
'    THEN TRIM(c002)',
'WHEN REGEXP_LIKE(TRIM(c002), ''^[0-9]+$'')',
'    THEN TO_CHAR(DATE ''1899-12-30'' + TO_NUMBER(c002), ''DD-MON-YYYY'')',
'ELSE NULL',
'END,',
'''DD-MON-RR'',',
'''NLS_DATE_LANGUAGE=ENGLISH''',
'),',
'''DD-MON-YYYY''',
') AS excel_date,',
'TRIM(c003) AS excel_voucher,',
'-- Clean and convert credit amount',
'CASE ',
'WHEN c010 IS NULL THEN 0',
'WHEN TRIM(c010) = '''' THEN 0',
'WHEN TRIM(c010) = ''-'' THEN 0',
'WHEN REGEXP_LIKE(',
'REPLACE(REPLACE(REPLACE(TRIM(c010), '','', ''''), '' '', ''''), ''-'', ''''), ',
'''^[0-9]+\.?[0-9]*$''',
')',
'THEN ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c010), '','', ''''), '' '', ''''), ''-'', '''')))',
'ELSE 0',
'END AS excel_credit,',
'CASE ',
'WHEN c009 IS NULL THEN 0',
'WHEN TRIM(c009) = '''' THEN 0',
'WHEN TRIM(c009) = ''-'' THEN 0',
'WHEN REGEXP_LIKE(',
'REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', ''''), ',
'''^[0-9]+\.?[0-9]*$''',
')',
'THEN ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', '''')))',
'ELSE 0',
'END AS excel_debit',
'FROM apex_collections',
'WHERE collection_name = ''REC''',
'AND REGEXP_LIKE(c002, ''^[0-9]{2}-[A-Za-z]{3}-[0-9]{2}$'')',
'AND TO_DATE(c002, ''DD-MON-RR'') BETWEEN',
'NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TO_DATE(c002, ''DD-MON-RR''))',
'AND NVL(TO_DATE(:P978_TO_DATE,   ''DD-MON-YYYY''), TO_DATE(c002, ''DD-MON-RR''))',
'AND UPPER(TRIM(c002)) NOT IN (''FDATE'', ''DATE'')',
'AND c002 IS NOT NULL',
'),db_data AS (',
'SELECT ',
'ROWNUM AS db_row_id,',
'TRANSCATION_ID,',
'TRANSCATION_DATE AS db_date,',
'VOUCHER_NAME AS db_voucher,',
'NVL(DR_AMOUNT, 0) AS db_debit,',
'NVL(CR_AMOUNT, 0) AS db_credit',
'FROM TABLE(',
'AB_FINANCE_REPORTS.ACCOUNT_WISE_LEDGER(',
':GV_ORG_ID,',
'NVL(:P978_ACCOUNT, 1),',
'TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''),',
'TO_DATE(:P978_TO_DATE, ''DD-MON-YYYY''),',
'NVL(:P19_OPENING_BALANCE, 0)',
')',
')',
'),matched_rows AS (',
'SELECT ',
'db.db_row_id,',
'ex.excel_row_id,',
'db.db_date,',
'ex.excel_date,',
'db.db_voucher,',
'ex.excel_voucher,',
'db.db_debit,',
'ex.excel_debit,',
'db.db_credit,',
'ex.excel_credit,',
'ROW_NUMBER() OVER (',
'PARTITION BY db.db_row_id ',
'ORDER BY ',
'CASE WHEN db.db_debit = ex.excel_debit AND db.db_credit = ex.excel_credit THEN 1 ELSE 2 END,',
'ex.excel_row_id',
') AS db_match_rank,',
'ROW_NUMBER() OVER (',
'PARTITION BY ex.excel_row_id ',
'ORDER BY ',
'CASE WHEN db.db_debit = ex.excel_debit AND db.db_credit = ex.excel_credit THEN 1 ELSE 2 END,',
'db.db_row_id',
') AS excel_match_rank',
'FROM db_data db',
'JOIN cleaned_excel ex',
'ON db.db_date = ex.excel_date',
'AND (',
'db.db_debit = ex.excel_debit ',
'OR db.db_credit = ex.excel_credit',
')',
'),',
'',
'-- Step 6: Get best matches only (first match for each row)',
'best_matches AS (',
'SELECT ',
'db_row_id,',
'excel_row_id,',
'db_date,',
'excel_date,',
'db_debit,',
'excel_debit,',
'db_credit,',
'excel_credit',
'FROM matched_rows',
'WHERE db_match_rank = 1 AND excel_match_rank = 1',
')',
',',
'main_data AS (',
'SELECT ',
'CASE',
'WHEN bm.db_row_id IS NOT NULL AND bm.excel_row_id IS NOT NULL',
'AND db.db_debit = ex.excel_debit ',
'AND db.db_credit = ex.excel_credit',
'THEN ''MATCHED''',
'',
'WHEN db.db_row_id IS NOT NULL AND bm.db_row_id IS NULL',
'THEN ''ONLY IN APEX''',
'',
'WHEN ex.excel_row_id IS NOT NULL AND bm.excel_row_id IS NULL',
'THEN ''ONLY IN OLD SOFTWARE''',
'',
'ELSE ''UNKNOWN''',
'END AS status,',
'db.db_row_id AS apex_row_num,',
'ex.excel_row_id AS excel_row_num',
'FROM best_matches bm',
'FULL OUTER JOIN db_data db ON bm.db_row_id = db.db_row_id',
'FULL OUTER JOIN cleaned_excel ex ON bm.excel_row_id = ex.excel_row_id',
'ORDER BY ',
'TO_DATE(COALESCE(db.db_date, ex.excel_date), ''DD-MON-YYYY''),',
'CASE ',
'WHEN status = ''MATCHED'' THEN 1',
'WHEN status = ''AMOUNT MISMATCH'' THEN 2',
'WHEN status = ''ONLY IN APEX'' THEN 3',
'ELSE 7 END',
')SELECT ',
'COUNT(*) AS record_count',
'INTO v_apex',
'FROM main_data',
'where status = ''ONLY IN APEX''',
'GROUP BY status;',
':P978_APEX  := v_apex;',
'END;'))
,p_attribute_02=>'P978_FROM_DATE,P978_TO_DATE,P978_REF_CODE'
,p_attribute_03=>'P978_APEX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174449534393352607)
,p_event_id=>wwv_flow_imp.id(174448599724352606)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'old_software'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_old  NUMBER := 0;',
'BEGIN   ',
'WITH cleaned_excel AS (',
'SELECT ',
'ROWNUM AS excel_row_id,',
'TO_CHAR(',
'TO_DATE(',
'CASE',
'WHEN REGEXP_LIKE(TRIM(c002), ''^[0-9]{1,2}-[A-Z]{3}-[0-9]{2}$'', ''i'')',
'    THEN TRIM(c002)',
'WHEN REGEXP_LIKE(TRIM(c002), ''^[0-9]{1,2}-[A-Z]{3}-[0-9]{4}$'', ''i'')',
'    THEN TRIM(c002)',
'WHEN REGEXP_LIKE(TRIM(c002), ''^[0-9]+$'')',
'    THEN TO_CHAR(DATE ''1899-12-30'' + TO_NUMBER(c002), ''DD-MON-YYYY'')',
'ELSE NULL',
'END,',
'''DD-MON-RR'',',
'''NLS_DATE_LANGUAGE=ENGLISH''',
'),',
'''DD-MON-YYYY''',
') AS excel_date,',
'TRIM(c003) AS excel_voucher,',
'-- Clean and convert credit amount',
'CASE ',
'WHEN c010 IS NULL THEN 0',
'WHEN TRIM(c010) = '''' THEN 0',
'WHEN TRIM(c010) = ''-'' THEN 0',
'WHEN REGEXP_LIKE(',
'REPLACE(REPLACE(REPLACE(TRIM(c010), '','', ''''), '' '', ''''), ''-'', ''''), ',
'''^[0-9]+\.?[0-9]*$''',
')',
'THEN ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c010), '','', ''''), '' '', ''''), ''-'', '''')))',
'ELSE 0',
'END AS excel_credit,',
'CASE ',
'WHEN c009 IS NULL THEN 0',
'WHEN TRIM(c009) = '''' THEN 0',
'WHEN TRIM(c009) = ''-'' THEN 0',
'WHEN REGEXP_LIKE(',
'REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', ''''), ',
'''^[0-9]+\.?[0-9]*$''',
')',
'THEN ABS(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', '''')))',
'ELSE 0',
'END AS excel_debit',
'FROM apex_collections',
'WHERE collection_name = ''REC''',
'AND REGEXP_LIKE(c002, ''^[0-9]{2}-[A-Za-z]{3}-[0-9]{2}$'')',
'AND TO_DATE(c002, ''DD-MON-RR'') BETWEEN',
'NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TO_DATE(c002, ''DD-MON-RR''))',
'AND NVL(TO_DATE(:P978_TO_DATE,   ''DD-MON-YYYY''), TO_DATE(c002, ''DD-MON-RR''))',
'AND UPPER(TRIM(c002)) NOT IN (''FDATE'', ''DATE'')',
'AND c002 IS NOT NULL',
'),db_data AS (',
'SELECT ',
'ROWNUM AS db_row_id,',
'TRANSCATION_ID,',
'TRANSCATION_DATE AS db_date,',
'VOUCHER_NAME AS db_voucher,',
'NVL(DR_AMOUNT, 0) AS db_debit,',
'NVL(CR_AMOUNT, 0) AS db_credit',
'FROM TABLE(',
'AB_FINANCE_REPORTS.ACCOUNT_WISE_LEDGER(',
':GV_ORG_ID,',
'NVL(:P978_ACCOUNT, 1),',
'TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''),',
'TO_DATE(:P978_TO_DATE, ''DD-MON-YYYY''),',
'NVL(:P19_OPENING_BALANCE, 0)',
')',
')',
'),matched_rows AS (',
'SELECT ',
'db.db_row_id,',
'ex.excel_row_id,',
'db.db_date,',
'ex.excel_date,',
'db.db_voucher,',
'ex.excel_voucher,',
'db.db_debit,',
'ex.excel_debit,',
'db.db_credit,',
'ex.excel_credit,',
'ROW_NUMBER() OVER (',
'PARTITION BY db.db_row_id ',
'ORDER BY ',
'CASE WHEN db.db_debit = ex.excel_debit AND db.db_credit = ex.excel_credit THEN 1 ELSE 2 END,',
'ex.excel_row_id',
') AS db_match_rank,',
'ROW_NUMBER() OVER (',
'PARTITION BY ex.excel_row_id ',
'ORDER BY ',
'CASE WHEN db.db_debit = ex.excel_debit AND db.db_credit = ex.excel_credit THEN 1 ELSE 2 END,',
'db.db_row_id',
') AS excel_match_rank',
'FROM db_data db',
'JOIN cleaned_excel ex',
'ON db.db_date = ex.excel_date',
'AND (',
'db.db_debit = ex.excel_debit ',
'OR db.db_credit = ex.excel_credit',
')',
'),',
'',
'-- Step 6: Get best matches only (first match for each row)',
'best_matches AS (',
'SELECT ',
'db_row_id,',
'excel_row_id,',
'db_date,',
'excel_date,',
'db_debit,',
'excel_debit,',
'db_credit,',
'excel_credit',
'FROM matched_rows',
'WHERE db_match_rank = 1 AND excel_match_rank = 1',
')',
',',
'main_data AS (',
'SELECT ',
'CASE',
'WHEN bm.db_row_id IS NOT NULL AND bm.excel_row_id IS NOT NULL',
'AND db.db_debit = ex.excel_debit ',
'AND db.db_credit = ex.excel_credit',
'THEN ''MATCHED''',
'',
'WHEN db.db_row_id IS NOT NULL AND bm.db_row_id IS NULL',
'THEN ''ONLY IN APEX''',
'',
'WHEN ex.excel_row_id IS NOT NULL AND bm.excel_row_id IS NULL',
'THEN ''ONLY IN OLD SOFTWARE''',
'',
'ELSE ''UNKNOWN''',
'END AS status,',
'db.db_row_id AS apex_row_num,',
'ex.excel_row_id AS excel_row_num',
'FROM best_matches bm',
'FULL OUTER JOIN db_data db ON bm.db_row_id = db.db_row_id',
'FULL OUTER JOIN cleaned_excel ex ON bm.excel_row_id = ex.excel_row_id',
'ORDER BY ',
'TO_DATE(COALESCE(db.db_date, ex.excel_date), ''DD-MON-YYYY''),',
'CASE ',
'WHEN status = ''MATCHED'' THEN 1',
'WHEN status = ''ONLY IN OLD SOFTWARE'' THEN 4',
'ELSE 7 END',
')SELECT ',
'COUNT(*) AS record_count',
'INTO v_old',
'FROM main_data',
'where status = ''ONLY IN OLD SOFTWARE''',
'GROUP BY status;',
':P978_OLD_SOFTWARE  := v_old;',
'END;'))
,p_attribute_02=>'P978_FROM_DATE,P978_TO_DATE,P978_REF_CODE'
,p_attribute_03=>'P978_OLD_SOFTWARE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(174459010365352611)
,p_name=>'VALUE SENT TO MATCHING ITEM'
,p_event_sequence=>80
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(344993548735024648)
,p_triggering_element=>'TOTAL_SUM'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174459569022352611)
,p_event_id=>wwv_flow_imp.id(174459010365352611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P978_MATCHING'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':TOTAL_SUM'
,p_attribute_07=>'TOTAL_SUM'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174460056474352611)
,p_event_id=>wwv_flow_imp.id(174459010365352611)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P978_MATCHING'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = apex.region("VOU").widget().interactiveGrid("getViews", "grid").model;',
'var total = 0;',
'',
'// IG column key',
'var col_total = model.getFieldKey("TOTAL_SUM");',
'',
'// Loop rows',
'model.forEach(function(r){',
'    var val = parseFloat(r[col_total]);',
'    if (!isNaN(val)) {',
'        total += val;',
'    }',
'});',
'',
'// Set value into APEX item',
'$s(''P978_MATCHING'', total);',
'',
'// Update card live',
'$(''#card_pending_count'').text(total);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(174456323555352610)
,p_name=>'VALUE FATCH'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P978_MATCHING'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174456840885352610)
,p_event_id=>wwv_flow_imp.id(174456323555352610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#card_pending_count'').text($v(''P978_MATCHING''));'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(174458134632352610)
,p_name=>'New_6'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P978_APEX'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174458685628352610)
,p_event_id=>wwv_flow_imp.id(174458134632352610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#card_approved_count'').text($v(''P978_APEX''));'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(174457279115352610)
,p_name=>'New_7'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P978_OLD_SOFTWARE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174457705205352610)
,p_event_id=>wwv_flow_imp.id(174457279115352610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#card_rejected_count'').text($v(''P978_OLD_SOFTWARE''));'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(174439766603352600)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'PLUGIN_NL.AMIS.SCHEFFER.PROCESS.EXCEL2COLLECTION'
,p_process_name=>'REC_UPLOAD'
,p_attribute_01=>'P978_UPLOAD_FILE'
,p_attribute_02=>'REC'
,p_attribute_03=>'1'
,p_attribute_04=>';'
,p_attribute_05=>'"'
,p_attribute_07=>'Y'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(174438840456352596)
,p_internal_uid=>174439766603352600
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(174411195471352569)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(344993548735024648)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'matching count - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>174411195471352569
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(174473640271375150)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear excel file'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF APEX_COLLECTION.COLLECTION_EXISTS(''REC'') THEN',
'       apex_collection.truncate_collection(p_collection_name => ''REC'');',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>174473640271375150
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(174440966012352601)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_MATCHED_COUNT_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_result NUMBER;',
'BEGIN',
'',
'WITH ',
'-- Step 1: Clean and normalize Excel data from collection',
'cleaned_excel AS (',
'    SELECT ',
'        seq_id AS excel_row_id,',
'        REGEXP_SUBSTR(c005, ''^[0-9]+'') AS L,  -- Extract account code from LEVEL5',
'        -- Clean opening debit (O_DR - Column F) - truncate decimal part',
'        CASE ',
'            WHEN c006 IS NULL THEN 0',
'            WHEN TRIM(c006) = '''' THEN 0',
'            WHEN TRIM(c006) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c006), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC((TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c006), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_opening_debit,',
'        -- Clean opening credit (O_CR - Column G) - truncate decimal part',
'        CASE ',
'            WHEN c007 IS NULL THEN 0',
'            WHEN TRIM(c007) = '''' THEN 0',
'            WHEN TRIM(c007) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c007), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC((TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c007), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_opening_credit,',
'        -- Clean current debit (C_DR - Column H) - truncate decimal part',
'        CASE ',
'            WHEN c008 IS NULL THEN 0',
'            WHEN TRIM(c008) = '''' THEN 0',
'            WHEN TRIM(c008) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c008), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC((TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c008), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_current_debit,',
'        -- Clean current credit (C_CR - Column I) - truncate decimal part',
'        CASE ',
'            WHEN c009 IS NULL THEN 0',
'            WHEN TRIM(c009) = '''' THEN 0',
'            WHEN TRIM(c009) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC((TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_current_credit,',
'        -- Clean closing debit (COL_J - Column J) - truncate decimal part',
'',
'        CASE ',
'    WHEN c010 IS NULL THEN 0',
'    WHEN TRIM(c010) = '''' THEN 0',
'    WHEN TRIM(c010) = ''-'' THEN 0',
'    WHEN REGEXP_LIKE(',
'        REPLACE(REPLACE(REPLACE(TRIM(c010), '','', ''''), '' '', ''''), ''-'', ''''), ',
'        ''^[0-9]+\.?[0-9]*$''',
'    )',
'        THEN ROUND(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c010), '','', ''''), '' '', ''''), ''-'', '''')), 0)',
'    ELSE 0',
'END AS excel_closing_credit  ,',
'',
'CASE ',
'    WHEN c011 IS NULL THEN 0',
'    WHEN TRIM(c011) = '''' THEN 0',
'    WHEN TRIM(c011) = ''-'' THEN 0',
'    WHEN REGEXP_LIKE(',
'        REPLACE(REPLACE(REPLACE(TRIM(c011), '','', ''''), '' '', ''''), ''-'', ''''), ',
'        ''^[0-9]+\.?[0-9]*$''',
'    )',
'        THEN ROUND(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c011), '','', ''''), '' '', ''''), ''-'', '''')), 0)',
'    ELSE 0',
'END AS excel_closing_debit,',
'',
'    ',
'        c005   AS EXCEL_ACCOUNT_TITLE,',
'        ROW_NUMBER() OVER (ORDER BY seq_id) AS excel_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''REC''',
'),',
'',
'LEVEL_TOTALS AS (',
'SELECT *',
'FROM TABLE(RECONCILATION_TRIAL_BALANCE_PCK.TRIAL_BALANCE_RECONCILATION_FUN(',
'    :GV_ORG_ID,',
'    TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''),',
'    TO_DATE(:P978_TO_DATE, ''DD-MON-YYYY'')',
'))',
'),',
'',
'apex_data AS (',
'    SELECT ',
'        DISPLAY_LEVEL,',
'        ACCOUNT_ID,',
'        ACCOUNT_TITLE,',
'        REFERENCE_CODE,',
'        NVL(OPENING_DEBIT, 0)       AS apex_opening_debit,',
'        NVL(OPENING_CREDIT, 0)      AS apex_opening_credit,',
'        NVL(CURRENT_DEBIT, 0)       AS apex_current_debit,',
'        NVL(CURRENT_CREDIT, 0)      AS apex_current_credit,',
'        NVL(CLOSING_DEBIT, 0)       AS apex_closing_debit,',
'        NVL(CLOSING_CREDIT, 0)      AS apex_closing_credit,',
'',
'        ROW_NUMBER() OVER (ORDER BY ACCOUNT_ID) AS apex_seq',
'    FROM LEVEL_TOTALS',
'    WHERE ACCOUNT_ID IS NOT NULL',
'),',
'',
'matched_records AS (',
'    SELECT ',
'        ad.apex_seq,',
'        ex.excel_seq,',
'        ad.REFERENCE_CODE AS apex_account_code,',
'        ex.L AS excel_account_code',
'    FROM apex_data ad',
'    INNER JOIN cleaned_excel ex ',
'        ON ad.REFERENCE_CODE = ex.L',
'       AND ad.apex_closing_debit = ex.excel_closing_debit',
'       AND ad.apex_closing_credit = ex.excel_closing_credit',
')',
'',
unistr('-- \2B50 FINAL COUNT QUERY'),
'SELECT COUNT(*) INTO l_result',
'FROM (',
'    SELECT apex_account_code, excel_account_code',
'    FROM matched_records',
'    GROUP BY apex_account_code, excel_account_code',
');',
'',
unistr('-- \2B50 JSON OUTPUT'),
'apex_json.open_object;',
'apex_json.write(''MATCHAPEX'', l_result);',
'apex_json.close_object;',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>174440966012352601
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(174473010739375144)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_UNMATCHED_COUNT_1_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    I_APEX NUMBER;',
'    I_EBS NUMBER;',
'',
'BEGIN',
'WITH ',
'-- Step 1: Clean and normalize Excel data from collection',
'cleaned_excel AS (',
'    SELECT ',
'        seq_id AS excel_row_id,',
'        REGEXP_SUBSTR(c005, ''^[0-9]+'') AS L,  -- Extract account code from LEVEL5',
'        -- Clean opening debit (O_DR - Column F) - truncate decimal part',
'        CASE ',
'            WHEN c006 IS NULL THEN 0',
'            WHEN TRIM(c006) = '''' THEN 0',
'            WHEN TRIM(c006) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c006), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC((TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c006), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_opening_debit,',
'        -- Clean opening credit (O_CR - Column G) - truncate decimal part',
'        CASE ',
'            WHEN c007 IS NULL THEN 0',
'            WHEN TRIM(c007) = '''' THEN 0',
'            WHEN TRIM(c007) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c007), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC((TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c007), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_opening_credit,',
'        -- Clean current debit (C_DR - Column H) - truncate decimal part',
'        CASE ',
'            WHEN c008 IS NULL THEN 0',
'            WHEN TRIM(c008) = '''' THEN 0',
'            WHEN TRIM(c008) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c008), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC((TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c008), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_current_debit,',
'        -- Clean current credit (C_CR - Column I) - truncate decimal part',
'        CASE ',
'            WHEN c009 IS NULL THEN 0',
'            WHEN TRIM(c009) = '''' THEN 0',
'            WHEN TRIM(c009) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN TRUNC((TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c009), '','', ''''), '' '', ''''), ''-'', ''''))))',
'            ELSE 0',
'        END AS excel_current_credit,',
'        -- Clean closing debit (COL_J - Column J) - truncate decimal part',
'        CASE ',
'            WHEN c010 IS NULL THEN 0',
'            WHEN TRIM(c010) = '''' THEN 0',
'            WHEN TRIM(c010) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c010), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN ROUND(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c010), '','', ''''), '' '', ''''), ''-'', '''')), 0)',
'            ELSE 0',
'        END AS excel_closing_credit,',
'        CASE ',
'            WHEN c011 IS NULL THEN 0',
'            WHEN TRIM(c011) = '''' THEN 0',
'            WHEN TRIM(c011) = ''-'' THEN 0',
'            WHEN REGEXP_LIKE(',
'                REPLACE(REPLACE(REPLACE(TRIM(c011), '','', ''''), '' '', ''''), ''-'', ''''), ',
'                ''^[0-9]+\.?[0-9]*$''',
'            )',
'                THEN ROUND(TO_NUMBER(REPLACE(REPLACE(REPLACE(TRIM(c011), '','', ''''), '' '', ''''), ''-'', '''')), 0)',
'            ELSE 0',
'        END AS excel_closing_debit,',
'        c005 AS EXCEL_ACCOUNT_TITLE,',
'        ROW_NUMBER() OVER (ORDER BY seq_id) AS excel_seq',
'    FROM apex_collections',
'    WHERE collection_name = ''REC''',
'),',
'',
'-- COA_ALL_LEVELS and other CTEs remain the same as in your matched query',
'COA_ALL_LEVELS AS (',
'    SELECT COA_ID, PARENT_ID, GL_CODE, ACCOUNT_TITLE, STATUS,',
'           REFERENCE_CODE,',
'           CASE',
'               WHEN LENGTH(GL_CODE) = 1  THEN 1',
'               WHEN LENGTH(GL_CODE) = 3  THEN 2',
'               WHEN LENGTH(GL_CODE) = 6  THEN 3',
'               WHEN LENGTH(GL_CODE) = 10 THEN 4',
'               WHEN LENGTH(GL_CODE) = 15 THEN 5',
'           END AS ACCOUNT_LEVEL',
'    FROM AB_FIN_COA',
'    WHERE STATUS = ''Y''',
'      AND LENGTH(GL_CODE) IN (1, 3, 6, 10, 15)',
'      AND ORG_ID = :GV_ORG_ID',
'    ORDER BY COA_ID ASC',
'),',
'',
'USER_APPROVAL AS (',
'    SELECT APP_IDS AS APP_ID',
'    FROM AB_USER_ACTION_APPROVAL',
'    WHERE APP_TYPE = ''780''',
'      AND STATUS = ''Y''',
'      AND APPROVAL_STATUS = ''APPROVED''',
'      AND ORG_ID = :GV_ORG_ID',
'),',
'',
'ACCOUNT_TITLE AS (',
'    SELECT TRD.COA_IDD AS ACCOUNT_ID',
'    FROM AB_FIN_TRANSACTION TR',
'    JOIN AB_FIN_TRANSACTION_DET TRD ',
'      ON TRD.TR_ID = TR.TR_ID AND TRD.STATUS = ''Y''',
'    WHERE TR.ORG_ID = :GV_ORG_ID',
'      AND TR.VOUCHER_NAME IS NOT NULL',
'      AND TR.STATUS = ''Y''',
'    GROUP BY TRD.COA_IDD',
'),',
'',
'DEBIT_ACCOUNT AS (',
'    SELECT TR.TR_ID VOUCHER_NO,',
'           TRD.COA_IDD AS ACCOUNT_ID,',
'           NVL(TR.TR_DATE, TRD.TRD_DATE) AS VOUCHER_DATE,',
'           NVL(SUM(DR_AMOUNT), 0) AS DEBIT_AMOUNT',
'    FROM AB_FIN_TRANSACTION TR',
'    JOIN AB_FIN_TRANSACTION_DET TRD ',
'      ON TRD.TR_ID = TR.TR_ID AND TRD.STATUS = ''Y''',
'    JOIN USER_APPROVAL UA ',
'      ON UA.APP_ID = NVL(TR.TR_ID, TRD.TRD_ID)',
'    JOIN AB_FIN_COA COA ',
'      ON COA.COA_ID = TRD.COA_IDD AND COA.STATUS = ''Y''',
'    WHERE TR.ORG_ID = :GV_ORG_ID',
'      AND TR.VOUCHER_NAME IS NOT NULL',
'      AND TR.STATUS = ''Y''',
'      AND CR_AMOUNT IS NULL',
'    GROUP BY TR.TR_ID, TRD.COA_IDD, NVL(TR.TR_DATE, TRD.TRD_DATE)',
'),',
'',
'CREDIT_ACCOUNT AS (',
'    SELECT TR.TR_ID VOUCHER_NO,',
'           TRD.COA_IDD AS ACCOUNT_ID,',
'           NVL(TR.TR_DATE, TRD.TRD_DATE) AS VOUCHER_DATE,',
'           NVL(SUM(CR_AMOUNT), 0) AS CREDIT_AMOUNT',
'    FROM AB_FIN_TRANSACTION TR',
'    JOIN AB_FIN_TRANSACTION_DET TRD ',
'      ON TRD.TR_ID = TR.TR_ID AND TRD.STATUS = ''Y''',
'    JOIN USER_APPROVAL UA ',
'      ON UA.APP_ID = NVL(TR.TR_ID, TRD.TRD_ID)',
'    JOIN AB_FIN_COA COA ',
'      ON COA.COA_ID = TRD.COA_IDD AND COA.STATUS = ''Y''',
'    WHERE TR.ORG_ID = :GV_ORG_ID',
'      AND TR.VOUCHER_NAME IS NOT NULL',
'      AND TR.STATUS = ''Y''',
'      AND DR_AMOUNT IS NULL',
'    GROUP BY TR.TR_ID, TRD.COA_IDD, NVL(TR.TR_DATE, TRD.TRD_DATE)',
'),',
'',
'BEFORE_OPENING_BALANCE AS (',
'    SELECT ACCOUNT_ID,',
'           NVL(SUM(OPENING_DEBIT), 0) AS OPENING_DEBIT,',
'           NVL(SUM(OPENING_CREDIT), 0) AS OPENING_CREDIT',
'    FROM (',
'        SELECT ACCOUNT_ID,',
'               NVL(SUM(DEBIT_AMOUNT), 0) AS OPENING_DEBIT,',
'               NULL AS OPENING_CREDIT',
'        FROM DEBIT_ACCOUNT',
'        WHERE TRUNC(VOUCHER_DATE) < NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'        GROUP BY ACCOUNT_ID',
'        ',
'        UNION ALL',
'        ',
'        SELECT ACCOUNT_ID,',
'               NULL AS OPENING_DEBIT,',
'               NVL(SUM(CREDIT_AMOUNT), 0) AS OPENING_CREDIT',
'        FROM CREDIT_ACCOUNT',
'        WHERE TRUNC(VOUCHER_DATE) < NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'        GROUP BY ACCOUNT_ID',
'    )',
'    GROUP BY ACCOUNT_ID',
'),',
'',
'BETWEEN_TRANSACTIONS AS (',
'    SELECT ACCOUNT_ID,',
'           NVL(SUM(PERIOD_DEBIT), 0) AS PERIOD_DEBIT,',
'           NVL(SUM(PERIOD_CREDIT), 0) AS PERIOD_CREDIT',
'    FROM (',
'        SELECT ACCOUNT_ID,',
'               NVL(SUM(DEBIT_AMOUNT), 0) AS PERIOD_DEBIT,',
'               NULL AS PERIOD_CREDIT',
'        FROM DEBIT_ACCOUNT',
'        WHERE TRUNC(VOUCHER_DATE) BETWEEN NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'                                        AND NVL(TO_DATE(:P978_TO_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'        GROUP BY ACCOUNT_ID',
'',
'        UNION ALL',
'',
'        SELECT ACCOUNT_ID,',
'               NULL AS PERIOD_DEBIT,',
'               NVL(SUM(CREDIT_AMOUNT), 0) AS PERIOD_CREDIT',
'        FROM CREDIT_ACCOUNT',
'        WHERE TRUNC(VOUCHER_DATE) BETWEEN NVL(TO_DATE(:P978_FROM_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'                                        AND NVL(TO_DATE(:P978_TO_DATE, ''DD-MON-YYYY''), TRUNC(VOUCHER_DATE))',
'        GROUP BY ACCOUNT_ID',
'    )',
'    GROUP BY ACCOUNT_ID',
'),',
'',
'ACCOUNT_TOTALS AS (',
'    SELECT AC.ACCOUNT_ID,',
'           NVL(OPENING_DEBIT, 0) AS TOTAL_OPENING_DEBIT,',
'           NVL(OPENING_CREDIT, 0) AS TOTAL_OPENING_CREDIT,',
'           NVL(PERIOD_DEBIT, 0) AS TOTAL_PERIOD_DEBIT,',
'           NVL(PERIOD_CREDIT, 0) AS TOTAL_PERIOD_CREDIT',
'    FROM ACCOUNT_TITLE AC',
'    LEFT JOIN BEFORE_OPENING_BALANCE OB ON OB.ACCOUNT_ID = AC.ACCOUNT_ID',
'    LEFT JOIN BETWEEN_TRANSACTIONS BT ON BT.ACCOUNT_ID = AC.ACCOUNT_ID',
'),',
'',
'ACCOUNT_HIERARCHY AS (',
'    SELECT',
'        L1.COA_ID AS LEVEL1_ID,',
'        L2.COA_ID AS LEVEL2_ID,',
'        L3.COA_ID AS LEVEL3_ID,',
'        L4.COA_ID AS LEVEL4_ID,',
'        L5.COA_ID AS LEVEL5_ID,',
'        L1.ACCOUNT_TITLE AS LEVEL1_TITLE,',
'        L2.ACCOUNT_TITLE AS LEVEL2_TITLE,',
'        L3.ACCOUNT_TITLE AS LEVEL3_TITLE,',
'        L4.ACCOUNT_TITLE AS LEVEL4_TITLE,',
'        L5.ACCOUNT_TITLE AS LEVEL5_TITLE,',
'        L1.GL_CODE AS LEVEL1_GL_CODE,',
'        L2.GL_CODE AS LEVEL2_GL_CODE,',
'        L3.GL_CODE AS LEVEL3_GL_CODE,',
'        L4.GL_CODE AS LEVEL4_GL_CODE,',
'        L5.GL_CODE AS LEVEL5_GL_CODE,',
'        L1.REFERENCE_CODE AS LEVEL1_REF,',
'        L2.REFERENCE_CODE AS LEVEL2_REF,',
'        L3.REFERENCE_CODE AS LEVEL3_REF,',
'        L4.REFERENCE_CODE AS LEVEL4_REF,',
'        L5.REFERENCE_CODE AS LEVEL5_REF,',
'        COALESCE(L5.COA_ID, L4.COA_ID, L3.COA_ID, L2.COA_ID, L1.COA_ID) AS ACTUAL_ACCOUNT_ID',
'    FROM COA_ALL_LEVELS L1',
'    LEFT JOIN COA_ALL_LEVELS L2 ON L2.PARENT_ID = L1.COA_ID AND L2.ACCOUNT_LEVEL = 2',
'    LEFT JOIN COA_ALL_LEVELS L3 ON L3.PARENT_ID = L2.COA_ID AND L3.ACCOUNT_LEVEL = 3',
'    LEFT JOIN COA_ALL_LEVELS L4 ON L4.PARENT_ID = L3.COA_ID AND L4.ACCOUNT_LEVEL = 4',
'    LEFT JOIN COA_ALL_LEVELS L5 ON L5.PARENT_ID = L4.COA_ID AND L5.ACCOUNT_LEVEL = 5',
'    WHERE L1.ACCOUNT_LEVEL = 1',
'),',
'',
'LEVEL_TOTALS AS (',
'    SELECT',
'        5 AS DISPLAY_LEVEL,',
'        AH.LEVEL5_ID AS ACCOUNT_ID,',
'        AH.LEVEL5_GL_CODE AS GL_CODE,',
'        AH.LEVEL5_TITLE AS ACCOUNT_TITLE,',
'        AH.LEVEL5_REF AS REFERENCE_CODE,',
'        NVL(AT.TOTAL_OPENING_DEBIT, 0) AS OPENING_DEBIT,',
'        NVL(AT.TOTAL_OPENING_CREDIT, 0) AS OPENING_CREDIT,',
'        NVL(AT.TOTAL_PERIOD_DEBIT, 0) AS CURRENT_DEBIT,',
'        NVL(AT.TOTAL_PERIOD_CREDIT, 0) AS CURRENT_CREDIT',
'    FROM ACCOUNT_HIERARCHY AH',
'    LEFT JOIN ACCOUNT_TOTALS AT ON AT.ACCOUNT_ID = AH.LEVEL5_ID',
'    WHERE AH.LEVEL5_ID IS NOT NULL',
'      AND (AT.TOTAL_OPENING_DEBIT != 0 OR AT.TOTAL_OPENING_CREDIT != 0 ',
'       OR AT.TOTAL_PERIOD_DEBIT != 0 OR AT.TOTAL_PERIOD_CREDIT != 0)',
'),',
'',
'MAIN_QUERY AS (',
'    SELECT',
'        DISPLAY_LEVEL,',
'        ACCOUNT_ID,',
'        GL_CODE,',
'        GL_CODE|| '' - ''||SUBSTR(ACCOUNT_TITLE, 1, 500) AS ACCOUNT_TITLE,',
'        CASE ',
'          WHEN REFERENCE_CODE IS NULL THEN NULL',
'          WHEN REGEXP_LIKE(TRIM(REFERENCE_CODE), ''^-?\d+(\.\d+)?$'') ',
'            THEN TO_NUMBER(TRIM(REFERENCE_CODE))',
'          ELSE NULL',
'        END AS REFERENCE_CODE,',
'        ROUND(NVL(OPENING_DEBIT, 0)) AS OPENING_DEBIT,',
'        ROUND(NVL(OPENING_CREDIT, 0)) AS OPENING_CREDIT,',
'        ROUND(NVL(CURRENT_DEBIT, 0)) AS CURRENT_DEBIT,',
'        ROUND(NVL(CURRENT_CREDIT, 0)) AS CURRENT_CREDIT,',
'        CASE ',
'            WHEN ((NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'                  (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))) > 0',
'            THEN ROUND(',
'                    (NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'                    (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))',
'                 )',
'            ELSE 0',
'        END AS CLOSING_DEBIT,',
'        CASE ',
'            WHEN ((NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'                  (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))) < 0',
'            THEN ROUND(',
'                    (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0)) -',
'                    (NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0))',
'                 )',
'            ELSE 0',
'        END AS CLOSING_CREDIT,',
'        ROUND(',
'            (NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'            (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))',
'        ) AS NET_BALANCE',
'    FROM LEVEL_TOTALS',
'    WHERE ACCOUNT_ID IS NOT NULL',
'    AND REFERENCE_CODE IS NOT NULL',
'    AND ROUND(',
'            (NVL(OPENING_DEBIT, 0) + NVL(CURRENT_DEBIT, 0)) -',
'            (NVL(OPENING_CREDIT, 0) + NVL(CURRENT_CREDIT, 0))',
'        ) <> 0',
'    ORDER BY GL_CODE ASC',
'),',
'',
'-- Step 2: Get APEX account data with sequence number',
'apex_data AS (',
'    SELECT ',
'        DISPLAY_LEVEL,',
'        ACCOUNT_ID,',
'        ACCOUNT_TITLE,',
'        REFERENCE_CODE,',
'        NVL(OPENING_DEBIT, 0) AS apex_opening_debit,',
'        NVL(OPENING_CREDIT, 0) AS apex_opening_credit,',
'        NVL(CURRENT_DEBIT, 0) AS apex_current_debit,',
'        NVL(CURRENT_CREDIT, 0) AS apex_current_credit,',
'        NVL(CLOSING_DEBIT, 0) AS apex_closing_debit,',
'        NVL(CLOSING_CREDIT, 0) AS apex_closing_credit,',
'        ROW_NUMBER() OVER (ORDER BY ACCOUNT_ID) AS apex_seq',
'    FROM MAIN_QUERY',
'    WHERE ACCOUNT_ID IS NOT NULL',
'),',
'',
'-- Step 3: Match by account code (L = REFERENCE_CODE) AND closing balances',
'matched_records AS (',
'    SELECT ',
'        ad.REFERENCE_CODE AS account_code,',
'        ad.ACCOUNT_TITLE,',
'        ad.apex_opening_debit,',
'        ex.excel_opening_debit,',
'        ad.apex_opening_credit,',
'        ex.excel_opening_credit,',
'        ad.apex_current_debit,',
'        ex.excel_current_debit,',
'        ad.apex_current_credit,',
'        ex.excel_current_credit,',
'        ad.apex_closing_debit,',
'        ex.excel_closing_debit,',
'        ad.apex_closing_credit,',
'        ex.excel_closing_credit,',
'        (ad.apex_opening_debit - ex.excel_opening_debit) AS opening_debit_variance,',
'        (ad.apex_opening_credit - ex.excel_opening_credit) AS opening_credit_variance,',
'        (ad.apex_current_debit - ex.excel_current_debit) AS current_debit_variance,',
'        (ad.apex_current_credit - ex.excel_current_credit) AS current_credit_variance,',
'        (ad.apex_closing_debit - ex.excel_closing_debit) AS closing_debit_variance,',
'        (ad.apex_closing_credit - ex.excel_closing_credit) AS closing_credit_variance,',
'        ''MATCHED'' AS status,',
'        ad.ACCOUNT_ID AS apex_account_id,',
'        ex.excel_row_id,',
'        ex.EXCEL_ACCOUNT_TITLE,',
'        ex.L',
'    FROM apex_data ad',
'    INNER JOIN cleaned_excel ex ',
'        ON ad.REFERENCE_CODE = TO_NUMBER(ex.L)',
'        AND ad.apex_closing_debit = ex.excel_closing_debit  ',
'        AND ad.apex_closing_credit = ex.excel_closing_credit',
'),',
'',
'-- Step 4: Unmatched APEX records',
'unmatched_apex AS (',
'    SELECT ',
'        ad.REFERENCE_CODE AS account_code,',
'        ad.ACCOUNT_TITLE,',
'        ad.apex_opening_debit,',
'        0 AS excel_opening_debit,',
'        ad.apex_opening_credit,',
'        0 AS excel_opening_credit,',
'        ad.apex_current_debit,',
'        0 AS excel_current_debit,',
'        ad.apex_current_credit,',
'        0 AS excel_current_credit,',
'        ad.apex_closing_debit,',
'        0 AS excel_closing_debit,',
'        ad.apex_closing_credit,',
'        0 AS excel_closing_credit,',
'        ad.apex_opening_debit AS opening_debit_variance,',
'        ad.apex_opening_credit AS opening_credit_variance,',
'        ad.apex_current_debit AS current_debit_variance,',
'        ad.apex_current_credit AS current_credit_variance,',
'        ad.apex_closing_debit AS closing_debit_variance,',
'        ad.apex_closing_credit AS closing_credit_variance,',
'        ''ONLY IN APEX'' AS status,',
'        ad.ACCOUNT_ID AS apex_account_id,',
'        NULL AS excel_row_id,',
'        NULL AS EXCEL_ACCOUNT_TITLE,',
'        NULL AS L',
'    FROM apex_data ad',
'    WHERE NOT EXISTS (',
'        SELECT 1 FROM cleaned_excel ex ',
'        WHERE ad.REFERENCE_CODE = TO_NUMBER(ex.L)',
'        AND ad.apex_closing_debit = ex.excel_closing_debit  ',
'        AND ad.apex_closing_credit = ex.excel_closing_credit',
'    )',
'),',
'',
'-- Step 5: Unmatched Excel records',
'unmatched_excel AS (',
'    SELECT ',
'        TO_NUMBER(ex.L) AS account_code,',
'        NULL AS ACCOUNT_TITLE,',
'        0 AS apex_opening_debit,',
'        ex.excel_opening_debit,',
'        0 AS apex_opening_credit,',
'        ex.excel_opening_credit,',
'        0 AS apex_current_debit,',
'        ex.excel_current_debit,',
'        0 AS apex_current_credit,',
'        ex.excel_current_credit,',
'        0 AS apex_closing_debit,',
'        ex.excel_closing_debit,',
'        0 AS apex_closing_credit,',
'        ex.excel_closing_credit,',
'        -ex.excel_opening_debit AS opening_debit_variance,',
'        -ex.excel_opening_credit AS opening_credit_variance,',
'        -ex.excel_current_debit AS current_debit_variance,',
'        -ex.excel_current_credit AS current_credit_variance,',
'        -ex.excel_closing_debit AS closing_debit_variance,',
'        -ex.excel_closing_credit AS closing_credit_variance,',
'        ''ONLY IN EXCEL'' AS status,',
'        NULL AS apex_account_id,',
'        ex.excel_row_id,',
'        ex.EXCEL_ACCOUNT_TITLE,',
'        ex.L',
'    FROM cleaned_excel ex',
'    WHERE NOT EXISTS (',
'        SELECT 1 FROM apex_data ad ',
'        WHERE ad.REFERENCE_CODE = TO_NUMBER(ex.L)',
'        AND ad.apex_closing_debit = ex.excel_closing_debit  ',
'        AND ad.apex_closing_credit = ex.excel_closing_credit',
'    )',
'),',
'',
'-- Step 6: Combine all results',
'final_data AS (',
'    SELECT * FROM matched_records',
'    UNION ALL',
'    SELECT * FROM unmatched_apex',
'    UNION ALL',
'    SELECT * FROM unmatched_excel',
'),',
'',
'-- Step 7: Count unmatched records',
'count_unmatched_apex AS (',
'    SELECT COUNT(*) AS cnt_apex',
'    FROM final_data',
'    WHERE status = ''ONLY IN APEX''',
'),',
'',
'count_unmatched_excel AS (',
'    SELECT COUNT(*) AS cnt_excel',
'    FROM final_data',
'    WHERE status = ''ONLY IN EXCEL''',
')',
'',
'-- Step 8: Select the counts into variables',
'SELECT ',
'    (SELECT cnt_apex FROM count_unmatched_apex) AS ONLY_IN_APEX_COUNT,',
'    (SELECT cnt_excel FROM count_unmatched_excel) AS ONLY_IN_EXCEL_COUNT',
'    into I_APEX,',
'    I_EBS',
'FROM dual;',
'',
'-- Step 9: Return the counts as JSON',
'apex_json.open_object;',
'apex_json.write(''APEX'', I_APEX);',
'apex_json.write(''EBS'', I_EBS);',
'apex_json.close_object;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>174473010739375144
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
