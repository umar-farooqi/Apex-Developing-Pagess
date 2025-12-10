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
,p_default_application_id=>203
,p_default_id_offset=>0
,p_default_owner=>'DEV'
);
end;
/
 
prompt APPLICATION 203 - Ibrahim Traders
--
-- Application Export:
--   Application:     203
--   Name:            Ibrahim Traders
--   Exported By:     UMAR
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 644
--   Manifest End
--   Version:         24.1.0
--   Instance ID:     706401905951048
--

begin
null;
end;
/
prompt --application/pages/delete_00644
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>644);
end;
/
prompt --application/pages/page_00644
begin
wwv_flow_imp_page.create_page(
 p_id=>644
,p_name=>'Calls Detailed '
,p_alias=>'CALLS-DETAILED'
,p_step_title=>'Calls Detailed '
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function openOutgoingDialog(saleId, createdOnStr) {',
'  apex.item("P644_EMP_ID").setValue(saleId);',
'  apex.item("P644_CREATED_ON").setValue(createdOnStr);',
'  const region = apex.region("PREVIOUS");',
'  if (region) {',
'    region.refresh();',
'    apex.theme.openRegion("PREVIOUS");',
'  } else {',
'    console.error("Region ''PREVIOUS'' not found.");',
'  }',
'}',
'',
'function openOutgoingDialogs(SodIdvalue,detail_id, OrderDateValue,PoIdValue) {',
'  apex.item("P644_SOD_SALE_ID").setValue(SodIdvalue);',
'     apex.item("P644_SO_EMP_ID").setValue(detail_id);',
'  apex.item("P644_SO_CREATED_ON").setValue(OrderDateValue);',
'   apex.item("P644_PO_ID").setValue(PoIdValue); ',
'',
'  const region = apex.region("bags");',
'  if (region) {',
'    region.refresh();',
'    apex.theme.openRegion("bags");',
'  } else {',
'    console.error("Region ''outgoing'' not found.");',
'  }',
'}',
'',
'',
'function openOutgoingDialogss(p_purchase_officer_id) {',
'  apex.item("P644_PURCHASE_OFFICER_WISE").setValue(p_purchase_officer_id);',
'  const region = apex.region("POOR");',
'  if (region) {',
'    region.refresh();',
'    apex.theme.openRegion("POOR");',
'  } else {',
'    console.error("Region ''PURCHASE'' not found.");',
'  }',
'}',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.large-input input,',
'.large-input textarea,',
'.large-input select {',
'    min-height: 20px !important;',
'}',
'',
'/* Button Styling */',
'.large-input button {',
'    height: 50px;',
'    background: linear-gradient(135deg, #3ba14f, #3ba14f);',
'    color: #ffffff;',
'    font-size: 12px;',
'    font-weight: bold;',
'    border: none;',
'    border-radius: 10px;',
'    padding: 4px 8px;',
'    cursor: pointer;',
'    transition: all 0.3s ease-in-out;',
'    text-transform: uppercase;',
'    letter-spacing: 1.2px;',
'    animation: pulse 2s infinite;',
'}',
'',
'/* Hover Effect */',
'.large-input button:hover {',
'    background: linear-gradient(135deg, #2e8b47, #2e8b47);',
'    box-shadow: 0 6px 14px rgba(0, 73, 153, 0.3);',
'    transform: translateY(-4px);',
'    animation: bounce 0.5s ease-in-out;',
'}',
'',
'/* Bounce Animation */',
'@keyframes bounce {',
'    0% { transform: translateY(0); }',
'    50% { transform: translateY(-6px); }',
'    100% { transform: translateY(0); }',
'}',
'',
'/* Subtle Pulsing Effect */',
'@keyframes pulse {',
'    0% { transform: scale(1); }',
'    50% { transform: scale(1.05); }',
'    100% { transform: scale(1); }',
'}',
'',
'',
'',
'#ITM_toolbar_controls {',
'  background-color: #ececec !important;',
'}',
'',
'.a-IRR-toolbar {',
'    background-color: #ececec;}',
'    ',
'.t-Body-content {',
'    background-color: #ececec;',
'    font-SIZE: ''Segoe UI'', Tahoma, Geneva, Verdana, sans-serif;',
'}',
'#ITM, #AR, #PREVIOUS {',
'    border-collapse: collapse;',
'    width: 100%;',
'    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);',
'    overflow-x: auto;',
'}',
'#ITM th, #AR th, #PREVIOUS th {',
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
'#PREVIOUS th span, #PREVIOUS th a {',
'    color: white !important;',
'}',
'#ITM td, #AR td, #PREVIOUS td {',
'    font-size: 15px;',
'    padding: 8px 12px;',
'    border: 1px solid #eee;',
'    text-align: left;',
'    background-color: #ffffff;',
'    transition: background-color 0.2s ease;',
'    word-wrap: break-word;',
'}',
'#ITM td:hover, #AR td:hover, #PREVIOUS td:hover {',
'    background-color: #e7f7e7;',
'    cursor: pointer;',
'}',
'#ITM td.clicked-cell, #AR td.clicked-cell, #PREVIOUS td.clicked-cell {',
'    background-color: #d4edda !important;',
'    box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.1);',
'}',
'#ITM td:first-child, #AR td:first-child, #PREVIOUS td:first-child {',
'    width: 120px;',
'}',
'#ITM td, #ITM th,',
'#AR td, #AR th,',
'#PREVIOUS td, #PREVIOUS th {',
'    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);',
'}',
'#ITM th:not(:first-child), #AR th:not(:first-child), #PREVIOUS th:not(:first-child),',
'#ITM td:not(:first-child), #AR td:not(:first-child), #PREVIOUS td:not(:first-child) {',
'    width: 200px;',
'}',
'@media (max-width: 768px) {',
'    #ITM, #AR, #PREVIOUS {',
'        display: block;',
'        overflow-x: auto;',
'        white-space: nowrap;',
'}',
'    #ITM th, #ITM td,',
'    #AR th, #AR td,',
'    #PREVIOUS th, #PREVIOUS td {',
'        font-size: 12px;',
'        text-align: center;',
'        padding: 10px;',
'    }',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(89351288624410801)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody'
,p_region_attributes=>'style="background-color:#ececec;"'
,p_plug_template=>wwv_flow_imp.id(2361825631184681)
,p_plug_display_sequence=>21
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(89353221111410821)
,p_plug_name=>'Call Detail Records'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useRegionTitle'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:#ececec;"'
,p_plug_template=>wwv_flow_imp.id(2323719936184670)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(2250630693184645)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2427838267184704)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(90526084314089806)
,p_plug_name=>'TAB'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill:t-TabsRegion-mod--large'
,p_plug_template=>wwv_flow_imp.id(2357896883184680)
,p_plug_display_sequence=>1000000020
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(89172478440395840)
,p_name=>'CALL DETAIL'
,p_title=>'Call Detail'
,p_parent_plug_id=>wwv_flow_imp.id(90526084314089806)
,p_template=>wwv_flow_imp.id(2361825631184681)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_sql         CLOB;',
'    v_day_full    VARCHAR2(20);',
'    v_day_alias   VARCHAR2(50);',
'    v_day_display VARCHAR2(20);',
'    v_month       VARCHAR2(2);',
'    v_year        VARCHAR2(4);',
'    v_first_date  DATE;',
'    v_last_date   DATE;',
'BEGIN',
'    v_month := NVL(TO_CHAR(TO_NUMBER(APEX_UTIL.GET_SESSION_STATE(''P644_MONTHS'')), ''FM00''), TO_CHAR(SYSDATE, ''MM''));',
'    v_year  := NVL(APEX_UTIL.GET_SESSION_STATE(''P644_YEAR''), TO_CHAR(SYSDATE, ''YYYY''));',
'    v_first_date := TO_DATE(''01-'' || v_month || ''-'' || v_year, ''DD-MM-YYYY'');',
'    v_last_date  := LAST_DAY(v_first_date);',
'',
'    DBMS_LOB.CREATETEMPORARY(v_sql, TRUE);',
'    DBMS_LOB.APPEND(v_sql, ''-- Month: '' || v_month || '' Year: '' || v_year || CHR(10));',
'',
'    -- Start SELECT clause',
'    DBMS_LOB.APPEND(v_sql, ''SELECT',
'        SALE_OFFICER,',
'        NVL(MAX(TOTAL_CALLS), 0) AS TOTAL_CALLS'');',
'',
'    -- Dynamically generate day columns',
'    FOR i IN 1 .. 31 LOOP ',
'        BEGIN ',
'            v_day_full := TO_CHAR(TO_DATE(i || ''-'' || v_month || ''-'' || v_year, ''DD-MM-YYYY''), ''YYYY-MM-DD'');',
'            v_day_display := TO_CHAR(TO_DATE(i || ''-'' || v_month || ''-'' || v_year, ''DD-MM-YYYY''), ''DD-MM-YYYY'');',
'            v_day_alias := ''Day '' || LPAD(i, 2, ''0'');',
'',
'          IF TO_CHAR(SYSDATE, ''DD-MM-YYYY'') = v_day_display THEN',
'    DBMS_LOB.APPEND(v_sql, '', ',
'        ''''<a style="color:GREEN;font-weight:bold;" href="'''' || get_link( ',
'            MAX(CASE WHEN CALL_DAY = TO_DATE('''''' || v_day_display || '''''', ''''DD-MM-YYYY'''') THEN USER_ID END),',
'            MAX(CASE WHEN CALL_DAY = TO_DATE('''''' || v_day_display || '''''', ''''DD-MM-YYYY'''') THEN CALL_DAY END)',
'        ) || ''''">'''' ||',
'        TO_CHAR(SUM(CASE WHEN CALL_DAY = TO_DATE('''''' || v_day_display || '''''', ''''DD-MM-YYYY'''') THEN DAYS_CALL ELSE NULL END)) || ',
'        ''''</a>'''' AS "'' || v_day_alias || ''"'');',
'ELSE',
'    DBMS_LOB.APPEND(v_sql, '',',
'        ''''<a href="'''' || get_link(',
'            MAX(CASE WHEN CALL_DAY = TO_DATE('''''' || v_day_display || '''''', ''''DD-MM-YYYY'''') THEN USER_ID END),',
'            MAX(CASE WHEN CALL_DAY = TO_DATE('''''' || v_day_display || '''''', ''''DD-MM-YYYY'''') THEN CALL_DAY END)',
'        ) || ''''">'''' ||',
'        TO_CHAR(SUM(CASE WHEN CALL_DAY = TO_DATE('''''' || v_day_display || '''''', ''''DD-MM-YYYY'''') THEN DAYS_CALL ELSE NULL END)) || ',
'        ''''</a>'''' AS "'' || v_day_alias || ''"'');',
'END IF;',
'',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                DBMS_LOB.APPEND(v_sql, '',',
'                    ''''0'''' AS "'' || ''Day '' || LPAD(i, 2, ''0'') || ''"'');',
'        END;',
'    END LOOP;',
'',
'    -- FROM and CTEs',
'    DBMS_LOB.APPEND(v_sql, ''',
'    FROM (',
'        WITH CUSTOMER_ASSIGN AS (',
'            SELECT SI.EMP_ID USER_ID',
'            FROM AB_SALE_INFO SI',
'            JOIN AB_UM_USERS_REG UR ON UR.USER_ID = SI.EMP_ID AND UR.STATUS = ''''Y''''',
'            WHERE SI.SALE_TYPE = ''''CUSTOMER ASSIGN''''',
'              AND SI.ORG_ID = :GV_ORG_ID',
'              AND UR.USER_ID <> 72',
'        ),',
'        CALL_CUSTOMER AS (',
'            SELECT',
'                SD_IDS CALL_ID,',
'                TRUNC(CREATED_ON) CREATED_ON,',
'                CUSTOMER_EMP_ID',
'            FROM AB_SALE_INFO_DET',
'            WHERE DET_SALE_TYPE = ''''CALL CUSTOMER''''',
'              AND STATUS = ''''Y''''',
'              AND ORG_ID = :GV_ORG_ID',
'              AND CREATED_ON BETWEEN TO_DATE(''''01-'''' || '''''' || v_month || '''''' || ''''-'''' || '''''' || v_year || '''''', ''''DD-MM-YYYY'''')',
'                                  AND LAST_DAY(TO_DATE(''''01-'''' || '''''' || v_month || '''''' || ''''-'''' || '''''' || v_year || '''''', ''''DD-MM-YYYY''''))',
'        ),',
'        DATE_WISE_CALL_DETAILS AS (',
'            SELECT',
'                COUNT(CALL_ID) CALL_COUNT,',
'                CUSTOMER_EMP_ID,',
'                CREATED_ON CALL_DATE',
'            FROM CALL_CUSTOMER CC',
'            LEFT JOIN CUSTOMER_ASSIGN CA ON CA.USER_ID = CC.CUSTOMER_EMP_ID',
'            GROUP BY CUSTOMER_EMP_ID, CREATED_ON',
'        ),',
'        TOTAL_CALL_DETAILS AS (',
'            SELECT',
'                COUNT(CALL_ID) CALL_COUNT,',
'                CUSTOMER_EMP_ID',
'            FROM CALL_CUSTOMER CC',
'            LEFT JOIN CUSTOMER_ASSIGN CA ON CA.USER_ID = CC.CUSTOMER_EMP_ID',
'            GROUP BY CUSTOMER_EMP_ID',
'        ),',
'        USER_DETAILS AS (',
'            SELECT',
'                ACCESS_ID,',
'                UA.USER_ID,',
'                REG.FIRST_NAME || '''' '''' || LAST_NAME || '''' (User Name:'''' || U_NAME || '''')'''' SALE_OFFICER',
'            FROM AB_UM_USER_ACCESS UA',
'            JOIN AB_UM_USERS_REG REG ON REG.USER_ID = UA.USER_ID AND REG.USER_TYPE_ID IS NULL',
'            WHERE ACCESS_TYPE = ''''ASSIGN APPLICATION''''',
'              AND APPLICATION_ID = 102',
'              AND UA.STATUS = ''''Y''''',
'        ),',
'        ASS_ORG AS (',
'            SELECT',
'                UUA.ACCESS_ID,',
'                UD.SALE_OFFICER,',
'                UD.USER_ID',
'            FROM AB_UM_USER_ACCESS UUA',
'            JOIN USER_DETAILS UD ON UD.ACCESS_ID = UUA.ACCESS_IDS',
'            WHERE UUA.ACCESS_TYPE = ''''ASSIGN ORGANIZATION''''',
'              AND UUA.STATUS = ''''Y''''',
'              AND UUA.ORG_ID in (1008)',
'        ),',
'        SALE_OFFER AS (',
'            SELECT INITCAP(SALE_OFFICER) SALE_OFFICER, ORG.USER_ID',
'            FROM ASS_ORG ORG',
'            JOIN AB_UM_USER_ACCESS GP ON GP.ACCESS_IDS = ORG.ACCESS_ID',
'            JOIN AB_UM_SETUP_REGISTRATION SR ON SR.UM_ID = GP.GROUP_ID',
'              AND SR.UM_TYPE = ''''GROUP REG''''',
'              AND SR.STATUS = ''''Y''''',
'              AND UM_ID = 21',
'            WHERE GP.ACCESS_TYPE = ''''ASSIGN GROUP''''',
'              AND GP.STATUS = ''''Y''''',
'            -- UNION ALL',
'            -- SELECT INITCAP(UR.FIRST_NAME || '''' '''' || UR.LAST_NAME), USER_ID',
'            -- FROM AB_UM_USERS_REG UR',
'            -- WHERE UR.USER_ID IN (40, 42)',
'        )',
'        SELECT',
'            SALE_OFFICER,',
'            USER_ID,',
'            NVL(TC.CALL_COUNT, 0) TOTAL_CALLS,',
'            DW.CALL_DATE CALL_DAY,',
'            DW.CALL_COUNT DAYS_CALL',
'        FROM SALE_OFFER SO',
'        LEFT JOIN TOTAL_CALL_DETAILS TC ON TC.CUSTOMER_EMP_ID = SO.USER_ID',
'        LEFT JOIN DATE_WISE_CALL_DETAILS DW ON DW.CUSTOMER_EMP_ID = SO.USER_ID',
'',
'    )',
'    GROUP BY SALE_OFFICER',
'    ORDER BY SALE_OFFICER'');',
'',
'    RETURN v_sql;',
'END;',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P644_MONTHS,P644_YEAR'
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
 p_id=>wwv_flow_imp.id(89172563736395841)
,p_query_column_id=>1
,p_column_alias=>'SALE_OFFICER'
,p_column_display_sequence=>10
,p_column_heading=>'Sale Officer'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(89172661171395842)
,p_query_column_id=>2
,p_column_alias=>'TOTAL_CALLS'
,p_column_display_sequence=>20
,p_column_heading=>'Total Calls'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(89172711158395843)
,p_query_column_id=>3
,p_column_alias=>'Day 01'
,p_column_display_sequence=>30
,p_column_heading=>'Day 01'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(89172892025395844)
,p_query_column_id=>4
,p_column_alias=>'Day 02'
,p_column_display_sequence=>40
,p_column_heading=>'Day 02'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(89172966897395845)
,p_query_column_id=>5
,p_column_alias=>'Day 03'
,p_column_display_sequence=>50
,p_column_heading=>'Day 03'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(89173036904395846)
,p_query_column_id=>6
,p_column_alias=>'Day 04'
,p_column_display_sequence=>60
,p_column_heading=>'Day 04'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(89173194625395847)
,p_query_column_id=>7
,p_column_alias=>'Day 05'
,p_column_display_sequence=>70
,p_column_heading=>'Day 05'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(89173260972395848)
,p_query_column_id=>8
,p_column_alias=>'Day 06'
,p_column_display_sequence=>80
,p_column_heading=>'Day 06'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(89173374501395849)
,p_query_column_id=>9
,p_column_alias=>'Day 07'
,p_column_display_sequence=>90
,p_column_heading=>'Day 07'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(89173402312395850)
,p_query_column_id=>10
,p_column_alias=>'Day 08'
,p_column_display_sequence=>100
,p_column_heading=>'Day 08'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90115997397409601)
,p_query_column_id=>11
,p_column_alias=>'Day 09'
,p_column_display_sequence=>110
,p_column_heading=>'Day 09'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90116019661409602)
,p_query_column_id=>12
,p_column_alias=>'Day 10'
,p_column_display_sequence=>120
,p_column_heading=>'Day 10'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90116116498409603)
,p_query_column_id=>13
,p_column_alias=>'Day 11'
,p_column_display_sequence=>130
,p_column_heading=>'Day 11'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90116219593409604)
,p_query_column_id=>14
,p_column_alias=>'Day 12'
,p_column_display_sequence=>140
,p_column_heading=>'Day 12'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90116355958409605)
,p_query_column_id=>15
,p_column_alias=>'Day 13'
,p_column_display_sequence=>150
,p_column_heading=>'Day 13'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90116458615409606)
,p_query_column_id=>16
,p_column_alias=>'Day 14'
,p_column_display_sequence=>160
,p_column_heading=>'Day 14'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90116501737409607)
,p_query_column_id=>17
,p_column_alias=>'Day 15'
,p_column_display_sequence=>170
,p_column_heading=>'Day 15'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90116678764409608)
,p_query_column_id=>18
,p_column_alias=>'Day 16'
,p_column_display_sequence=>180
,p_column_heading=>'Day 16'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90116713001409609)
,p_query_column_id=>19
,p_column_alias=>'Day 17'
,p_column_display_sequence=>190
,p_column_heading=>'Day 17'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90116894805409610)
,p_query_column_id=>20
,p_column_alias=>'Day 18'
,p_column_display_sequence=>200
,p_column_heading=>'Day 18'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90116962115409611)
,p_query_column_id=>21
,p_column_alias=>'Day 19'
,p_column_display_sequence=>210
,p_column_heading=>'Day 19'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90117059670409612)
,p_query_column_id=>22
,p_column_alias=>'Day 20'
,p_column_display_sequence=>220
,p_column_heading=>'Day 20'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90117151164409613)
,p_query_column_id=>23
,p_column_alias=>'Day 21'
,p_column_display_sequence=>230
,p_column_heading=>'Day 21'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90117270835409614)
,p_query_column_id=>24
,p_column_alias=>'Day 22'
,p_column_display_sequence=>240
,p_column_heading=>'Day 22'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90117354779409615)
,p_query_column_id=>25
,p_column_alias=>'Day 23'
,p_column_display_sequence=>250
,p_column_heading=>'Day 23'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90117416099409616)
,p_query_column_id=>26
,p_column_alias=>'Day 24'
,p_column_display_sequence=>260
,p_column_heading=>'Day 24'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90117539470409617)
,p_query_column_id=>27
,p_column_alias=>'Day 25'
,p_column_display_sequence=>270
,p_column_heading=>'Day 25'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90117630278409618)
,p_query_column_id=>28
,p_column_alias=>'Day 26'
,p_column_display_sequence=>280
,p_column_heading=>'Day 26'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90117700290409619)
,p_query_column_id=>29
,p_column_alias=>'Day 27'
,p_column_display_sequence=>290
,p_column_heading=>'Day 27'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90117852807409620)
,p_query_column_id=>30
,p_column_alias=>'Day 28'
,p_column_display_sequence=>300
,p_column_heading=>'Day 28'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90117991548409621)
,p_query_column_id=>31
,p_column_alias=>'Day 29'
,p_column_display_sequence=>310
,p_column_heading=>'Day 29'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90118035502409622)
,p_query_column_id=>32
,p_column_alias=>'Day 30'
,p_column_display_sequence=>320
,p_column_heading=>'Day 30'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90118125301409623)
,p_query_column_id=>33
,p_column_alias=>'Day 31'
,p_column_display_sequence=>330
,p_column_heading=>'Day 31'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(89351555630410804)
,p_plug_name=>'Date Wise Call Details'
,p_region_name=>'PREVIOUS'
,p_parent_plug_id=>wwv_flow_imp.id(89172478440395840)
,p_region_css_classes=>'js-dialog-size1200x600'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:#ececec;"'
,p_plug_template=>wwv_flow_imp.id(2338601010184674)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH CALL_CUSTOMER AS(',
'    SELECT',
'            SD_IDS CALL_ID,',
'            TRUNC(CREATED_ON) CREATED_ON,',
'            CUSTOMER_EMP_ID,',
'            REMARKS,',
'            CUSTOMER_VIEW',
'    FROM',
'            AB_SALE_INFO_DET',
'    WHERE',
'            DET_SALE_TYPE= ''CALL CUSTOMER''',
'        AND STATUS=''Y''',
'        AND ORG_ID=:GV_ORG_ID',
'),',
'SALE_OFFICER_LOVS AS (',
'    SELECT',
'            ACCESS_ID,',
'            UA.USER_ID,',
'            REG.FIRST_NAME||'' ''|| LAST_NAME   SALE_OFFICER',
'    FROM',
'         AB_UM_USER_ACCESS UA ',
'    JOIN AB_UM_USERS_REG REG ON REG.USER_ID=UA.USER_ID AND REG.USER_TYPE_ID IS NULL',
'    WHERE',
'            ACCESS_TYPE=''ASSIGN APPLICATION''',
'        AND APPLICATION_ID=102',
'        AND UA.STATUS=''Y'')',
'        ,ASS_ORG AS(',
'          SELECT ',
'                    UUA.ACCESS_ID,',
'                    UD. SALE_OFFICER,',
'                    UD.USER_ID',
'           FROM',
'                    AB_UM_USER_ACCESS UUA',
'           JOIN  SALE_OFFICER_LOVS UD ON UD.ACCESS_ID=UUA.ACCESS_IDS',
'        WHERE',
'                       --  UUA.ACCESS_TYPE=''ASSIGN ORGANIZATION''   ',
'               -- AND',
'                --  UUA.STATUS=''Y''   ',
'                -- AND ',
'                UUA.ORG_ID IN (1008)',
')',
',SALE_OFFER AS(',
'        SELECT',
'                  INITCAP(SALE_OFFICER) SALE_OFFICER,',
'                  ORG.USER_ID',
'        FROM',
'                        ASS_ORG ORG',
'           JOIN AB_UM_USER_ACCESS GP ON GP.ACCESS_IDS=ORG.ACCESS_ID ',
'           JOIN AB_UM_SETUP_REGISTRATION SR ON SR.UM_ID=GP.GROUP_ID AND SR.UM_TYPE=''GROUP REG'' AND   SR.STATUS=''Y''',
'           AND UM_ID=21 ',
'        WHERE',
'                         GP.ACCESS_TYPE=''ASSIGN GROUP''   ',
'                AND GP.STATUS=''Y''',
'        UNION ALL',
'         SELECT',
'                INITCAP(UR.FIRST_NAME||'' ''|| UR.LAST_NAME) SALE_OFFICER,',
'                USER_ID',
'         FROM',
'                        AB_UM_USERS_REG  UR ',
'        ORDER BY',
'                     USER_ID ASC       ',
' )',
'  SELECT',
'             C.*',
'  FROM(',
'SELECT',
'        rownum  AS Calls,',
'        SI.EMP_ID AS EMP_ID,',
'        SOF.SALE_OFFICER,',
'        ASR.REG_NAME CUSTOMER_NAME,',
'        SIDD.CUSTOMER_ID,',
'        ASR.REG_CITY CITY,',
'        ASR.CONTACT_PERSON,',
'        ASR.REG_AREA AS ZONE,',
'        ASR.PROVINCE,',
'        ASR.CONTACT_NUMBER,',
'        ASR.COUNTRY,',
'        TO_CHAR(CC.CREATED_ON,''DD-MM-YYYY'') CREATED_ON,',
'        TRUNC(TO_DATE(:P644_CREATED_ON, ''DD-MM-YYYY'')),',
'        CC.REMARKS,',
'        CC.CUSTOMER_VIEW--,',
'      --  SIDD.CALL_STATUS,',
'    FROM',
'                           AB_SALE_INFO SI',
'                 JOIN AB_SALE_INFO_DET SIDD ON SIDD.SALE_ID = SI.SALE_ID',
'        LEFT JOIN SALE_OFFICER_LOVS SOF ON  SOF.USER_ID  = SI.EMP_ID',
'                 JOIN AB_SETUP_REGISTRATION ASR ON SIDD.CUSTOMER_ID = ASR.SR_ID',
'                JOIN CALL_CUSTOMER CC ON CC.CALL_ID = SIDD.SD_ID',
'    WHERE',
'                     SIDD.DET_SALE_TYPE = ''CUSTOMER ASSIGN DET''',
'            AND SIDD.STATUS = ''Y''',
'         --   AND SIDD.ORG_ID=:GV_ORG_ID',
'            AND SI.EMP_ID =:P644_EMP_ID ',
'            OR SI.EMP_ID = 72)C',
'            WHERE',
'              ',
'             TO_DATE(CREATED_ON, ''DD-MM-YYYY'')= (TO_DATE(:P644_CREATED_ON, ''DD-MM-YYYY''))'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P644_EMP_ID,P644_CREATED_ON'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(89351671059410805)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>400
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JAHANZAIB'
,p_internal_uid=>89351671059410805
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(89351762850410806)
,p_db_column_name=>'CALLS'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Calls'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(89351842869410807)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(89351980938410808)
,p_db_column_name=>'SALE_OFFICER'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Sale Officer'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(89352001091410809)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(89352112900410810)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Customer Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(89352258772410811)
,p_db_column_name=>'CITY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'City'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(89352389989410812)
,p_db_column_name=>'CONTACT_PERSON'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Contact Person'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(89352463656410813)
,p_db_column_name=>'ZONE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Zone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(89352566990410814)
,p_db_column_name=>'PROVINCE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Province'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(89352682095410815)
,p_db_column_name=>'CONTACT_NUMBER'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Contact Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(89352725833410816)
,p_db_column_name=>'COUNTRY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Country'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(89352917143410818)
,p_db_column_name=>'TRUNC(TO_DATE(:P644_CREATED_ON,''DD-MM-YYYY''))'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Trunc(to Date(:p644 Created On,&#x27;dd-mm-yyyy&#x27;))'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(89353078008410819)
,p_db_column_name=>'REMARKS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(89353137313410820)
,p_db_column_name=>'CUSTOMER_VIEW'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Customer View'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(89353366991410822)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Created On'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(89436481601348768)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'894365'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SALE_OFFICER:CUSTOMER_NAME:CITY:CONTACT_PERSON:ZONE:CONTACT_NUMBER:TRUNC(TO_DATE(:P644_CREATED_ON,''DD-MM-YYYY'')):REMARKS:CUSTOMER_VIEW'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(90526167163089807)
,p_plug_name=>'Sale Orders'
,p_parent_plug_id=>wwv_flow_imp.id(90526084314089806)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2310230379184666)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_sql         CLOB;',
'    v_last_day    NUMBER;',
'    v_month       VARCHAR2(2);',
'    v_year        VARCHAR2(4);',
'    v_first_date  DATE;',
'    v_last_date   DATE;',
'    v_current_date DATE;',
'    V_TRADING_BAGS NUMBER;',
'BEGIN',
'    -- Get selected month/year or defaults',
'    v_month := NVL(TO_CHAR(TO_NUMBER(APEX_UTIL.GET_SESSION_STATE(''P644_MONTHS'')), ''FM00''), TO_CHAR(SYSDATE, ''MM''));',
'    v_year  := NVL(APEX_UTIL.GET_SESSION_STATE(''P644_YEAR''), TO_CHAR(SYSDATE, ''YYYY''));',
'    --V_TRADING_BAGS  := NVL(APEX_UTIL.GET_SESSION_STATE(''P644_BAGS_TYPE''),0);',
'',
'    v_first_date := TO_DATE(''01-'' || v_month || ''-'' || v_year, ''DD-MM-YYYY'');',
'    v_last_date  := LAST_DAY(v_first_date);',
'',
'    DBMS_LOB.CREATETEMPORARY(v_sql, TRUE);',
'',
'    -- Base query',
'    DBMS_LOB.APPEND(v_sql,''',
'SELECT ',
'    UM.USER_NAME AS SALE_OFFICER,',
'    UM.USER_ID,',
'  ',
'     NVL(SUM(SOD.NO_BAGS),0)   AS TOTAL_BAGS',
'    '');',
'',
'    -- Loop over 1-31 days',
'    FOR i IN 1 .. 31 LOOP',
'        -- Compute the actual date for this day',
'        v_current_date := v_first_date + (i - 1);',
'',
'        -- If the date exceeds the month, return NULL columns',
'        IF v_current_date > v_last_date THEN',
'            DBMS_LOB.APPEND(v_sql, '',',
'    NULL AS "DAY_'' || LPAD(i,2,''0'') || ''"'');',
'        ELSE',
'            DBMS_LOB.APPEND(v_sql, '',',
'  ''''<a href="'''' || GET_SECURE_LINK_SALE_BAGS(',
'    MAX(CASE WHEN TRUNC(SO.ORDER_DATE) = TO_DATE('''''' || TO_CHAR(v_current_date, ''DD-MON-YYYY'') || '''''',''''DD-MON-YYYY'''') THEN SOD.SOD_ID END),',
'    MAX(CASE WHEN TRUNC(SO.ORDER_DATE) = TO_DATE('''''' || TO_CHAR(v_current_date, ''DD-MON-YYYY'') || '''''',''''DD-MON-YYYY'''') THEN UM.USER_ID END),',
'    TO_DATE('''''' || TO_CHAR(v_current_date, ''DD-MON-YYYY'') || '''''',''''DD-MON-YYYY''''),',
'    MAX(CASE WHEN TRUNC(SO.ORDER_DATE) = TO_DATE('''''' || TO_CHAR(v_current_date, ''DD-MON-YYYY'') || '''''',''''DD-MON-YYYY'''') THEN POD.DET_ID END)',
') ',
'|| ''''">'''' ||',
'NVL(SUM(',
'    CASE WHEN TRUNC(SO.ORDER_DATE) = TO_DATE('''''' || TO_CHAR(v_current_date, ''DD-MON-YYYY'') || '''''',''''DD-MON-YYYY'''')',
'         THEN NVL(SOD.NO_BAGS,0) + NVL(POD.CHANGE_BAGS,0)',
'    END',
'), NULL) ||',
'''''</a>'''' AS "DAY_'' || LPAD(i,2,''0'') || ''"'');',
'        END IF;',
'    END LOOP;',
'',
'    -- From, joins, where',
'    DBMS_LOB.APPEND(v_sql,''',
'FROM AB_SO_ORDER_HEAD SO',
'LEFT JOIN AB_SO_ORDER_DET SOD ON SOD.SO_ID = SO.SO_ID',
'LEFT JOIN AB_UM_APPLICATION_USERS UM ON UM.USER_ID = SO.SALE_OFFER_ID',
'LEFT JOIN AB_PO_PURCHASE_ORDER PO ON PO.PO_ID = SO.SO_IDS',
'LEFT JOIN AB_PO_PURCHASE_ORDER_DET POD ON POD.PO_ID = PO.PO_ID  AND POD.DET_TYPE = ''''642''''',
'',
'WHERE SO.SO_TYPE IN (''''SALE ORDER'''' , ''''ASO'''',''''645'''')',
'  AND SO.ORG_ID = :GV_ORG_ID',
'  AND SO.STATUS = ''''Y''''',
'  AND SOD.STATUS = ''''Y''''',
'',
'  AND SO.ORDER_DATE BETWEEN TO_DATE('''''' || TO_CHAR(v_first_date, ''DD-MON-YYYY'') || '''''',''''DD-MON-YYYY'''') ',
'                      AND TO_DATE('''''' || TO_CHAR(v_last_date, ''DD-MON-YYYY'') || '''''',''''DD-MON-YYYY'''')',
'',
'                        AND  (SO.SO_TYPE IN ( SELECT REGEXP_SUBSTR(:P644_BAGS_TYPE, ''''[^:]+'''', 1, LEVEL) FROM dual ',
'                  CONNECT BY REGEXP_SUBSTR(:P644_BAGS_TYPE, ''''[^:]+'''', 1, LEVEL) IS NOT NULL ) OR :P644_BAGS_TYPE IS NULL)         ',
'GROUP BY UM.USER_NAME,UM.USER_ID'');',
'',
'    RETURN v_sql;',
'END;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P644_MONTHS,P644_YEAR,P644_BAGS_TYPE'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(90526257754089808)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'WASAY'
,p_internal_uid=>90526257754089808
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90526317963089809)
,p_db_column_name=>'SALE_OFFICER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sale Officer'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90526469512089810)
,p_db_column_name=>'USER_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'User Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90526538681089811)
,p_db_column_name=>'TOTAL_BAGS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Total Bags'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177764582415566405)
,p_db_column_name=>'DAY_01'
,p_display_order=>40
,p_column_identifier=>'BN'
,p_column_label=>'Day 01'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177764609627566406)
,p_db_column_name=>'DAY_02'
,p_display_order=>50
,p_column_identifier=>'BO'
,p_column_label=>'Day 02'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177764783893566407)
,p_db_column_name=>'DAY_03'
,p_display_order=>60
,p_column_identifier=>'BP'
,p_column_label=>'Day 03'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177764827541566408)
,p_db_column_name=>'DAY_04'
,p_display_order=>70
,p_column_identifier=>'BQ'
,p_column_label=>'Day 04'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177764914815566409)
,p_db_column_name=>'DAY_05'
,p_display_order=>80
,p_column_identifier=>'BR'
,p_column_label=>'Day 05'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177765029277566410)
,p_db_column_name=>'DAY_06'
,p_display_order=>90
,p_column_identifier=>'BS'
,p_column_label=>'Day 06'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177765165289566411)
,p_db_column_name=>'DAY_07'
,p_display_order=>100
,p_column_identifier=>'BT'
,p_column_label=>'Day 07'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177765206141566412)
,p_db_column_name=>'DAY_08'
,p_display_order=>110
,p_column_identifier=>'BU'
,p_column_label=>'Day 08'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177765305236566413)
,p_db_column_name=>'DAY_09'
,p_display_order=>120
,p_column_identifier=>'BV'
,p_column_label=>'Day 09'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177765453847566414)
,p_db_column_name=>'DAY_10'
,p_display_order=>130
,p_column_identifier=>'BW'
,p_column_label=>'Day 10'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177765509161566415)
,p_db_column_name=>'DAY_11'
,p_display_order=>140
,p_column_identifier=>'BX'
,p_column_label=>'Day 11'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177765602572566416)
,p_db_column_name=>'DAY_12'
,p_display_order=>150
,p_column_identifier=>'BY'
,p_column_label=>'Day 12'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177765745199566417)
,p_db_column_name=>'DAY_13'
,p_display_order=>160
,p_column_identifier=>'BZ'
,p_column_label=>'Day 13'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177765860744566418)
,p_db_column_name=>'DAY_14'
,p_display_order=>170
,p_column_identifier=>'CA'
,p_column_label=>'Day 14'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177765954519566419)
,p_db_column_name=>'DAY_15'
,p_display_order=>180
,p_column_identifier=>'CB'
,p_column_label=>'Day 15'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177766004114566420)
,p_db_column_name=>'DAY_16'
,p_display_order=>190
,p_column_identifier=>'CC'
,p_column_label=>'Day 16'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177766176338566421)
,p_db_column_name=>'DAY_17'
,p_display_order=>200
,p_column_identifier=>'CD'
,p_column_label=>'Day 17'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177766287705566422)
,p_db_column_name=>'DAY_18'
,p_display_order=>210
,p_column_identifier=>'CE'
,p_column_label=>'Day 18'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177766365453566423)
,p_db_column_name=>'DAY_19'
,p_display_order=>220
,p_column_identifier=>'CF'
,p_column_label=>'Day 19'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177766450190566424)
,p_db_column_name=>'DAY_20'
,p_display_order=>230
,p_column_identifier=>'CG'
,p_column_label=>'Day 20'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177766549300566425)
,p_db_column_name=>'DAY_21'
,p_display_order=>240
,p_column_identifier=>'CH'
,p_column_label=>'Day 21'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177766669176566426)
,p_db_column_name=>'DAY_22'
,p_display_order=>250
,p_column_identifier=>'CI'
,p_column_label=>'Day 22'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177766764839566427)
,p_db_column_name=>'DAY_23'
,p_display_order=>260
,p_column_identifier=>'CJ'
,p_column_label=>'Day 23'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177766874763566428)
,p_db_column_name=>'DAY_24'
,p_display_order=>270
,p_column_identifier=>'CK'
,p_column_label=>'Day 24'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177766921410566429)
,p_db_column_name=>'DAY_25'
,p_display_order=>280
,p_column_identifier=>'CL'
,p_column_label=>'Day 25'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177767057687566430)
,p_db_column_name=>'DAY_26'
,p_display_order=>290
,p_column_identifier=>'CM'
,p_column_label=>'Day 26'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177767197070566431)
,p_db_column_name=>'DAY_27'
,p_display_order=>300
,p_column_identifier=>'CN'
,p_column_label=>'Day 27'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177767214411566432)
,p_db_column_name=>'DAY_28'
,p_display_order=>310
,p_column_identifier=>'CO'
,p_column_label=>'Day 28'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177767381016566433)
,p_db_column_name=>'DAY_29'
,p_display_order=>320
,p_column_identifier=>'CP'
,p_column_label=>'Day 29'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177767407320566434)
,p_db_column_name=>'DAY_30'
,p_display_order=>330
,p_column_identifier=>'CQ'
,p_column_label=>'Day 30'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177767508512566435)
,p_db_column_name=>'DAY_31'
,p_display_order=>340
,p_column_identifier=>'CR'
,p_column_label=>'Day 31'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(90643169642102088)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'906432'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SALE_OFFICER:TOTAL_BAGS:DAY_01:DAY_02:DAY_03:DAY_04:DAY_05:DAY_06:DAY_07:DAY_08:DAY_09:DAY_10:DAY_11:DAY_12:DAY_13:DAY_14:DAY_15:DAY_16:DAY_17:DAY_18:DAY_19:DAY_20:DAY_21:DAY_22:DAY_23:DAY_24:DAY_25:DAY_26:DAY_27:DAY_28:DAY_29:DAY_30:DAY_31'
,p_sum_columns_on_break=>'TOTAL_BAGS:PURCASE_TRADING_BAGS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(90529767606089843)
,p_plug_name=>'Sale Details'
,p_region_name=>'bags'
,p_parent_plug_id=>wwv_flow_imp.id(90526167163089807)
,p_region_css_classes=>'js-dialog-size1200x600 js-dialog-size1000x450'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'js-dialog-size1200x600'
,p_plug_template=>wwv_flow_imp.id(2338601010184674)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH SETUP_REG AS(',
'        SELECT ',
'                    SO.SO_ID,',
'                    UM.USER_ID,',
'                    USER_NAME SALE_OFFER,',
'                    CUST.CITY AS CITY,',
'                    SO.SO_TYPE,',
'                    MAX(CASE WHEN ASR.SR_ID=SO.CUSTOMER_ID THEN ASR.REG_NAME END) AS PARTY_NAME,',
'                    MAX(CASE WHEN ASR.SR_ID=SOD.WAREHOUSE_ID THEN ASR.REG_NAME END) AS FROM_WAREHOUSE,',
'                    MAX(CASE WHEN LD.DET_ID = SO.FREIGHT_TYPE_ID THEN LD.LOOKUP_DET_NAME END) AS FREIGHT_TYPE,',
'                    MAX(CASE WHEN LD.DET_ID = SO.DELIVERY_STATUS THEN LD.LOOKUP_DET_NAME END) AS DELIVERY_STATUS,',
'                    MAX(CASE WHEN LD.DET_ID = SO.PAYMENT_ID THEN LD.LOOKUP_DET_NAME END) AS PAYMENT_MODE',
'        FROM',
'                            AB_SO_ORDER_HEAD SO',
'                 JOIN AB_SO_ORDER_DET SOD ON SOD.SO_ID=SO.SO_ID',
'        LEFT JOIN  AB_LOOKUP_DETAIL LD   ON (LD.DET_ID = SO.FREIGHT_TYPE_ID   OR LD.DET_ID = SO.DELIVERY_STATUS   OR LD.DET_ID = SO.PAYMENT_ID)',
'        LEFT JOIN  AB_SETUP_REGISTRATION ASR ON (ASR.SR_ID=SOD.WAREHOUSE_ID OR ASR.SR_ID=SO.CUSTOMER_ID)',
'        LEFT JOIN  AB_UM_APPLICATION_USERS UM  ON UM.USER_ID=SO.SALE_OFFER_ID',
'        LEFT JOIN ( SELECT ',
'                                        ASR.SR_ID AS CUSTOMER_ID,',
'                                        ASR.REG_CITY AS CITY,',
'                                        ASR.REG_AREA AS Zone',
'                                    FROM ',
'                                        AB_SETUP_REGISTRATION ASR',
'                                    WHERE ',
'                                        ASR.REG_TYPE = ''CUSTOMER REGISTRATION''',
'                                        AND ASR.ORG_ID = :GV_ORG_ID',
'                                    ORDER BY',
'                                        ASR.CREATED_ON DESC) CUST ON CUST.CUSTOMER_ID = SO.CUSTOMER_ID',
'        WHERE',
'                      SO.SO_TYPE in ( ''SALE ORDER'', ''ASO'',''645'')',
'            AND SO.ORG_ID = :GV_ORG_ID',
'            AND SO.STATUS=''Y'' AND SOD.STATUS=''Y''',
'        GROUP BY',
'            SO.SO_ID,',
'            CUST.CITY ,',
'            USER_NAME,UM.USER_ID, SO.SO_TYPE',
'order by so.so_Id desc),',
'      SALE_OFFICER_LOVS AS (',
'    SELECT',
'        DISTINCT REG.FIRST_NAME||'' ''|| REG.LAST_NAME SALE_OFFER,',
'        REG.USER_ID  USER_ID',
'    FROM',
'          AB_UM_USERS_REG REG ',
'     JOIN AB_UM_USER_ACCESS UA ON UA.USER_ID=REG.USER_ID',
'     JOIN AB_UM_USER_ACCESS ORG ON ORG.ACCESS_IDS=UA.ACCESS_ID AND ORG.ACCESS_TYPE=''ASSIGN ORGANIZATION''',
'     JOIN AB_UM_USER_ACCESS DEPT ON DEPT.ACCESS_IDS=ORG.ACCESS_ID AND DEPT.ACCESS_TYPE=''ASSIGN DEPARTMENT'' AND DEPT.DEPT_ID=14',
'    ORDER BY',
'       REG.USER_ID ASC ) ',
' ',
'    SELECT',
'                SO.SO_ID SALE_ID,',
'                SOD.SOD_ID,',
'                SR.USER_ID,',
'                SR.SALE_OFFER,',
'                SR.PARTY_NAME,',
'                SR.CITY ,',
'                SR.FREIGHT_TYPE,',
'                INITCAP(LD1.LOOKUP_DET_NAME) STOCK_TYPE,',
'                INITCAP(LD.LOOKUP_DET_NAME)  STOCK_WISE,',
'                TO_CHAR(SO.ORDER_DATE, ''DD-MON-YYYY'') AS ORDER_DATE,',
'                SO.EST_FREIGHT,',
'                SO.DELIVERY_STATUS,',
'                INITCAP(PAYMENT_MODE ) PAYMENT_MODE,',
'                INITCAP(SO.ORDER_STATUS) ORDER_STATUS,',
'                INITCAP(PO.PURCHASING_TYPE) PURCHASE_ORDER_STATUS,',
'                FROM_WAREHOUSE,',
'                SO.CITY TO_WAREHOUSE,',
'                SOD.ITEM_ID,',
'                ITM.ITEM_NAME || '' '' || ITM.PACKING_SIZE || ''(''||  ITM.UNIT ||'') ''|| PACKING AS PRODUCT_NAME,',
'                NVL(SOD.NO_BAGS,0) + NVL(POD.CHANGE_BAGS,0) AS TOTAL_BAGS,',
'           --     SOD.NO_BAGS,',
'                SOD.BAG_RATE,',
'                SOD.TOTAL_AMOUNT,',
'                SR.SO_TYPE,',
'                INITCAP (SO.CREATED_BY ||'' (''|| TO_CHAR(SO.CREATED_ON,''DD-MON-YYYY'') ||'')'') CREATED_BY',
'    FROM',
'                        AB_SO_ORDER_HEAD SO',
'              LEFT JOIN  AB_SO_ORDER_DET SOD ON SOD.SO_ID=SO.SO_ID',
'              LEFT JOIN AB_PO_PURCHASE_ORDER PO ON PO.PO_ID = SO.SO_IDS',
'              LEFT JOIN AB_PO_PURCHASE_ORDER_DET POD ON POD.PO_ID = PO.PO_ID  AND POD.DET_TYPE = ''642''',
'                LEFT  JOIN  AB_ITEMS_MASTER ITM ON ITM.ITEM_ID=SOD.ITEM_ID',
'                LEFT  JOIN  SETUP_REG SR ON SR.SO_ID=SO.SO_ID',
'                LEFT JOIN AB_LOOKUP_DETAIL LD ON LD.DET_ID=SOD.STOCK_CATEGORY_ID',
'                LEFT JOIN AB_LOOKUP_DETAIL LD1 ON LD1.DET_ID= LD.IDS',
'                --LEFT JOIN SALE_OFFICER_LOVS SOL ON SOL.USER_ID = SR.USER_ID',
'                -- LEFT JOIN AB_SALE_INFO SI ON SI.EMP_ID = SOL.USER_ID',
'    WHERE',
'                   SO.SO_TYPE in ( ''SALE ORDER'', ''ASO'', ''645'')',
'                    AND  SOD.STATUS=''Y''',
'                --   and  SOD.SOD_ID = :P498_SALE_ID_1',
'                   AND SR.USER_ID = :P644_SO_EMP_ID',
'                 --  AND SO.SO_TYPE = NVL(:P644_BAGS_TYPE,SO.SO_TYPE)',
'                 ',
'                  AND  (SO.SO_TYPE IN ( SELECT REGEXP_SUBSTR(:P644_BAGS_TYPE, ''[^:]+'', 1, LEVEL) FROM dual ',
'                  CONNECT BY REGEXP_SUBSTR(:P644_BAGS_TYPE, ''[^:]+'', 1, LEVEL) IS NOT NULL ) OR :P644_BAGS_TYPE IS NULL) ',
'                 ',
'            --   AND POD.PO_ID = :P644_PO_ID',
' AND to_date(trim(SO.ORDER_DATE)) >= NVL(TO_DATE(:P644_SO_CREATED_ON,''DD-MM-YYYY''),to_date(trim(SO.ORDER_DATE)))',
' AND to_date(trim(SO.ORDER_DATE)) <= NVL(TO_DATE(:P644_SO_CREATED_ON,''DD-MM-YYYY''),to_date(trim(SO.ORDER_DATE)))',
'',
'           --  AND  SO.ORDER_DATE = TO_DATE(:P498_UPDATED_ON_1,''DD-MON-YYYY'')',
'                 ',
'        AND  SO.ORG_ID = :GV_ORG_ID      ',
'       -- AND  TRUNC(SO.ORDER_DATE) BETWEEN NVL(TO_DATE(:P300_FROM_DATE, ''DD-MON-YYYY''), TRUNC(SO.ORDER_DATE))  AND NVL(TO_DATE(:P300_TO_DATE, ''DD-MON-YYYY''), TRUNC(SO.ORDER_DATE) )',
'',
'    --    GROUP BY',
'    -- SO.SO_ID,',
'    -- SOD.SOD_ID,',
'    -- SR.SALE_OFFER,',
'    -- PARTY_NAME,',
'    -- SR.USER_ID,',
'    -- SR.CITY,',
'    -- FREIGHT_TYPE,',
'    -- LD1.LOOKUP_DET_NAME,',
'    -- LD.LOOKUP_DET_NAME,',
'    -- TO_CHAR(SO.ORDER_DATE, ''DD-MON-YYYY''),',
'    -- SO.EST_FREIGHT,',
'    -- SO.DELIVERY_STATUS,',
'    -- PAYMENT_MODE,',
'    -- SO.ORDER_STATUS,',
'    -- FROM_WAREHOUSE,',
'    -- SO.CITY,',
'    -- SOD.ITEM_ID,',
'    -- ITM.ITEM_NAME,',
'    -- ITM.PACKING_SIZE,',
'    -- ITM.UNIT,',
'    -- PACKING,',
'    -- SOD.BAG_RATE,',
'    -- SOD.TOTAL_AMOUNT,',
'    -- SO.CREATED_BY,',
'    -- SO.CREATED_ON',
'            ORDER BY',
'             SO.SO_ID DESC',
'',
'',
'--    '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P644_SOD_SALE_ID,P644_SO_EMP_ID,P644_SO_CREATED_ON,P644_PO_ID,P644_BAGS_TYPE'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(90529893118089844)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>500
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'WASAY'
,p_internal_uid=>90529893118089844
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90529919522089845)
,p_db_column_name=>'SALE_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sale Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90530086678089846)
,p_db_column_name=>'SOD_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Sod Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90530159423089847)
,p_db_column_name=>'USER_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'User Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90530252870089848)
,p_db_column_name=>'SALE_OFFER'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Sale Offer'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90530366613089849)
,p_db_column_name=>'PARTY_NAME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Party Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90530494767089850)
,p_db_column_name=>'CITY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'City'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90617784961122101)
,p_db_column_name=>'FREIGHT_TYPE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Freight Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90617805506122102)
,p_db_column_name=>'STOCK_TYPE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Stock Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90617980072122103)
,p_db_column_name=>'STOCK_WISE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Stock Wise'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90618061642122104)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Order Date'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90618143342122105)
,p_db_column_name=>'EST_FREIGHT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Est Freight'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90618207696122106)
,p_db_column_name=>'DELIVERY_STATUS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Delivery Status'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90618385298122107)
,p_db_column_name=>'PAYMENT_MODE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Payment Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90618472723122108)
,p_db_column_name=>'ORDER_STATUS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Order Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90618548348122109)
,p_db_column_name=>'FROM_WAREHOUSE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'From Warehouse'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90618639188122110)
,p_db_column_name=>'TO_WAREHOUSE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'To Warehouse'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90618774350122111)
,p_db_column_name=>'ITEM_ID'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Item Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90618887090122112)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90619040382122114)
,p_db_column_name=>'BAG_RATE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Bag Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90619102448122115)
,p_db_column_name=>'TOTAL_AMOUNT'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Total Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90619288066122116)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148765590009597311)
,p_db_column_name=>'TOTAL_BAGS'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Total Bags'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148766026270597316)
,p_db_column_name=>'PURCHASE_ORDER_STATUS'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Purchase Order Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148766465339597320)
,p_db_column_name=>'SO_TYPE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'So Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(90643705585102060)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'906438'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PARTY_NAME:PRODUCT_NAME:SALE_OFFER:ORDER_DATE:TOTAL_BAGS:BAG_RATE:TOTAL_AMOUNT:ORDER_STATUS:'
,p_sum_columns_on_break=>'NO_BAGS:TOTAL_AMOUNT:TOTAL_BAGS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148767726808597333)
,p_plug_name=>'Sale Details'
,p_region_name=>'bags'
,p_parent_plug_id=>wwv_flow_imp.id(90526167163089807)
,p_region_css_classes=>'js-dialog-size1200x600 js-dialog-size1000x450'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'js-dialog-size1200x600'
,p_plug_template=>wwv_flow_imp.id(2338601010184674)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH SETUP_REG AS(',
'        SELECT ',
'                    SO.SO_ID,',
'                    UM.USER_ID,',
'                    USER_NAME SALE_OFFER,',
'                    CUST.CITY AS CITY,',
'                    SO.SO_TYPE,',
'                    MAX(CASE WHEN ASR.SR_ID=SO.CUSTOMER_ID THEN ASR.REG_NAME END) AS PARTY_NAME,',
'                    MAX(CASE WHEN ASR.SR_ID=SOD.WAREHOUSE_ID THEN ASR.REG_NAME END) AS FROM_WAREHOUSE,',
'                    MAX(CASE WHEN LD.DET_ID = SO.FREIGHT_TYPE_ID THEN LD.LOOKUP_DET_NAME END) AS FREIGHT_TYPE,',
'                    MAX(CASE WHEN LD.DET_ID = SO.DELIVERY_STATUS THEN LD.LOOKUP_DET_NAME END) AS DELIVERY_STATUS,',
'                    MAX(CASE WHEN LD.DET_ID = SO.PAYMENT_ID THEN LD.LOOKUP_DET_NAME END) AS PAYMENT_MODE',
'        FROM',
'                            AB_SO_ORDER_HEAD SO',
'                 JOIN AB_SO_ORDER_DET SOD ON SOD.SO_ID=SO.SO_ID',
'        LEFT JOIN  AB_LOOKUP_DETAIL LD   ON (LD.DET_ID = SO.FREIGHT_TYPE_ID   OR LD.DET_ID = SO.DELIVERY_STATUS   OR LD.DET_ID = SO.PAYMENT_ID)',
'        LEFT JOIN  AB_SETUP_REGISTRATION ASR ON (ASR.SR_ID=SOD.WAREHOUSE_ID OR ASR.SR_ID=SO.CUSTOMER_ID)',
'        LEFT JOIN  AB_UM_APPLICATION_USERS UM  ON UM.USER_ID=SO.SALE_OFFER_ID',
'        LEFT JOIN ( SELECT ',
'                                        ASR.SR_ID AS CUSTOMER_ID,',
'                                        ASR.REG_CITY AS CITY,',
'                                        ASR.REG_AREA AS Zone',
'                                    FROM ',
'                                        AB_SETUP_REGISTRATION ASR',
'                                    WHERE ',
'                                        ASR.REG_TYPE = ''CUSTOMER REGISTRATION''',
'                                        AND ASR.ORG_ID = :GV_ORG_ID',
'                                    ORDER BY',
'                                        ASR.CREATED_ON DESC) CUST ON CUST.CUSTOMER_ID = SO.CUSTOMER_ID',
'        WHERE',
'                      SO.SO_TYPE in ( ''SALE ORDER'', ''ASO'',''645'')',
'            AND SO.ORG_ID = :GV_ORG_ID',
'            AND SO.STATUS=''Y'' AND SOD.STATUS=''Y''',
'        GROUP BY',
'            SO.SO_ID,',
'            CUST.CITY ,',
'            USER_NAME,UM.USER_ID, SO.SO_TYPE',
'order by so.so_Id desc),',
'      SALE_OFFICER_LOVS AS (',
'    SELECT',
'        DISTINCT REG.FIRST_NAME||'' ''|| REG.LAST_NAME SALE_OFFER,',
'        REG.USER_ID  USER_ID',
'    FROM',
'          AB_UM_USERS_REG REG ',
'     JOIN AB_UM_USER_ACCESS UA ON UA.USER_ID=REG.USER_ID',
'     JOIN AB_UM_USER_ACCESS ORG ON ORG.ACCESS_IDS=UA.ACCESS_ID AND ORG.ACCESS_TYPE=''ASSIGN ORGANIZATION''',
'     JOIN AB_UM_USER_ACCESS DEPT ON DEPT.ACCESS_IDS=ORG.ACCESS_ID AND DEPT.ACCESS_TYPE=''ASSIGN DEPARTMENT'' AND DEPT.DEPT_ID=14',
'    ORDER BY',
'       REG.USER_ID ASC ) ',
' ',
'    SELECT',
'                SO.SO_ID SALE_ID,',
'                SOD.SOD_ID,',
'                SR.USER_ID,',
'                SR.SALE_OFFER,',
'                SR.PARTY_NAME,',
'                SR.CITY ,',
'                SR.FREIGHT_TYPE,',
'                INITCAP(LD1.LOOKUP_DET_NAME) STOCK_TYPE,',
'                INITCAP(LD.LOOKUP_DET_NAME)  STOCK_WISE,',
'                TO_CHAR(SO.ORDER_DATE, ''DD-MON-YYYY'') AS ORDER_DATE,',
'                SO.EST_FREIGHT,',
'                SO.DELIVERY_STATUS,',
'                INITCAP(PAYMENT_MODE ) PAYMENT_MODE,',
'                INITCAP(SO.ORDER_STATUS) ORDER_STATUS,',
'                INITCAP(PO.PURCHASING_TYPE) PURCHASE_ORDER_STATUS,',
'                FROM_WAREHOUSE,',
'                SO.CITY TO_WAREHOUSE,',
'                SOD.ITEM_ID,',
'                ITM.ITEM_NAME || '' '' || ITM.PACKING_SIZE || ''(''||  ITM.UNIT ||'') ''|| PACKING AS PRODUCT_NAME,',
'                NVL(SOD.NO_BAGS,0) + NVL(POD.CHANGE_BAGS,0) AS TOTAL_BAGS,',
'           --     SOD.NO_BAGS,',
'                SOD.BAG_RATE,',
'                SOD.TOTAL_AMOUNT,',
'                SR.SO_TYPE,',
'                INITCAP (SO.CREATED_BY ||'' (''|| TO_CHAR(SO.CREATED_ON,''DD-MON-YYYY'') ||'')'') CREATED_BY',
'    FROM',
'                        AB_SO_ORDER_HEAD SO',
'              LEFT JOIN  AB_SO_ORDER_DET SOD ON SOD.SO_ID=SO.SO_ID',
'              LEFT JOIN AB_PO_PURCHASE_ORDER PO ON PO.PO_ID = SO.SO_IDS',
'              LEFT JOIN AB_PO_PURCHASE_ORDER_DET POD ON POD.PO_ID = PO.PO_ID  AND POD.DET_TYPE = ''642''',
'                LEFT  JOIN  AB_ITEMS_MASTER ITM ON ITM.ITEM_ID=SOD.ITEM_ID',
'                LEFT  JOIN  SETUP_REG SR ON SR.SO_ID=SO.SO_ID',
'                LEFT JOIN AB_LOOKUP_DETAIL LD ON LD.DET_ID=SOD.STOCK_CATEGORY_ID',
'                LEFT JOIN AB_LOOKUP_DETAIL LD1 ON LD1.DET_ID= LD.IDS',
'                --LEFT JOIN SALE_OFFICER_LOVS SOL ON SOL.USER_ID = SR.USER_ID',
'                -- LEFT JOIN AB_SALE_INFO SI ON SI.EMP_ID = SOL.USER_ID',
'    WHERE',
'                   SO.SO_TYPE in ( ''SALE ORDER'', ''ASO'', ''645'')',
'                    AND  SOD.STATUS=''Y''',
'                --   and  SOD.SOD_ID = :P498_SALE_ID_1',
'                   AND SR.USER_ID = :P644_SO_EMP_ID',
'                 --  AND SO.SO_TYPE = NVL(:P644_BAGS_TYPE,SO.SO_TYPE)',
'                 ',
'                  AND  (SO.SO_TYPE IN ( SELECT REGEXP_SUBSTR(:P644_BAGS_TYPE, ''[^:]+'', 1, LEVEL) FROM dual ',
'                  CONNECT BY REGEXP_SUBSTR(:P644_BAGS_TYPE, ''[^:]+'', 1, LEVEL) IS NOT NULL ) OR :P644_BAGS_TYPE IS NULL) ',
'                 ',
'            --   AND POD.PO_ID = :P644_PO_ID',
' AND to_date(trim(SO.ORDER_DATE)) >= NVL(TO_DATE(:P644_SO_CREATED_ON,''DD-MM-YYYY''),to_date(trim(SO.ORDER_DATE)))',
' AND to_date(trim(SO.ORDER_DATE)) <= NVL(TO_DATE(:P644_SO_CREATED_ON,''DD-MM-YYYY''),to_date(trim(SO.ORDER_DATE)))',
'',
'           --  AND  SO.ORDER_DATE = TO_DATE(:P498_UPDATED_ON_1,''DD-MON-YYYY'')',
'                 ',
'        AND  SO.ORG_ID = :GV_ORG_ID      ',
'       -- AND  TRUNC(SO.ORDER_DATE) BETWEEN NVL(TO_DATE(:P300_FROM_DATE, ''DD-MON-YYYY''), TRUNC(SO.ORDER_DATE))  AND NVL(TO_DATE(:P300_TO_DATE, ''DD-MON-YYYY''), TRUNC(SO.ORDER_DATE) )',
'',
'    --    GROUP BY',
'    -- SO.SO_ID,',
'    -- SOD.SOD_ID,',
'    -- SR.SALE_OFFER,',
'    -- PARTY_NAME,',
'    -- SR.USER_ID,',
'    -- SR.CITY,',
'    -- FREIGHT_TYPE,',
'    -- LD1.LOOKUP_DET_NAME,',
'    -- LD.LOOKUP_DET_NAME,',
'    -- TO_CHAR(SO.ORDER_DATE, ''DD-MON-YYYY''),',
'    -- SO.EST_FREIGHT,',
'    -- SO.DELIVERY_STATUS,',
'    -- PAYMENT_MODE,',
'    -- SO.ORDER_STATUS,',
'    -- FROM_WAREHOUSE,',
'    -- SO.CITY,',
'    -- SOD.ITEM_ID,',
'    -- ITM.ITEM_NAME,',
'    -- ITM.PACKING_SIZE,',
'    -- ITM.UNIT,',
'    -- PACKING,',
'    -- SOD.BAG_RATE,',
'    -- SOD.TOTAL_AMOUNT,',
'    -- SO.CREATED_BY,',
'    -- SO.CREATED_ON',
'            ORDER BY',
'             SO.SO_ID DESC',
'',
'',
'--    '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P644_SOD_SALE_ID,P644_SO_EMP_ID,P644_SO_CREATED_ON,P644_PO_ID,P644_BAGS_TYPE'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(148767819479597334)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>500
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'UMAR'
,p_internal_uid=>148767819479597334
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148767974466597335)
,p_db_column_name=>'SALE_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sale Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148768026336597336)
,p_db_column_name=>'SOD_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Sod Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148768125479597337)
,p_db_column_name=>'USER_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'User Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148768270425597338)
,p_db_column_name=>'SALE_OFFER'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Sale Offer'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148768311699597339)
,p_db_column_name=>'PARTY_NAME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Party Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148768425841597340)
,p_db_column_name=>'CITY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'City'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148768566189597341)
,p_db_column_name=>'FREIGHT_TYPE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Freight Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148768619149597342)
,p_db_column_name=>'STOCK_TYPE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Stock Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148768709544597343)
,p_db_column_name=>'STOCK_WISE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Stock Wise'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148768865069597344)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Order Date'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148768908868597345)
,p_db_column_name=>'EST_FREIGHT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Est Freight'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148769051880597346)
,p_db_column_name=>'DELIVERY_STATUS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Delivery Status'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148769128646597347)
,p_db_column_name=>'PAYMENT_MODE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Payment Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148769285422597348)
,p_db_column_name=>'ORDER_STATUS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Order Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148769306952597349)
,p_db_column_name=>'FROM_WAREHOUSE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'From Warehouse'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148769492006597350)
,p_db_column_name=>'TO_WAREHOUSE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'To Warehouse'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149914627770440401)
,p_db_column_name=>'ITEM_ID'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Item Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149914753394440402)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149914854849440403)
,p_db_column_name=>'BAG_RATE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Bag Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149914959219440404)
,p_db_column_name=>'TOTAL_AMOUNT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Total Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149915081324440405)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149915143790440406)
,p_db_column_name=>'TOTAL_BAGS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Total Bags'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149915227795440407)
,p_db_column_name=>'PURCHASE_ORDER_STATUS'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Purchase Order Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149915310561440408)
,p_db_column_name=>'SO_TYPE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'So Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(149928366381443200)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1499284'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PARTY_NAME:PRODUCT_NAME:SALE_OFFER:CITY:ORDER_DATE:TOTAL_BAGS:BAG_RATE:TOTAL_AMOUNT:ORDER_STATUS:'
,p_sum_columns_on_break=>'TOTAL_AMOUNT:TOTAL_BAGS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(176129597360998930)
,p_plug_name=>'Local & Trading Purchase'
,p_parent_plug_id=>wwv_flow_imp.id(90526084314089806)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2310230379184666)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_sql          CLOB;',
'    v_last_day     NUMBER;',
'    v_month        VARCHAR2(2);',
'    v_year         VARCHAR2(4);',
'    v_first_date   DATE;',
'    v_last_date    DATE;',
'    v_current_date DATE;',
'BEGIN',
'    v_month := NVL(TO_CHAR(TO_NUMBER(APEX_UTIL.GET_SESSION_STATE(''P644_MONTHS'')), ''FM00''),',
'                   TO_CHAR(SYSDATE, ''MM''));',
'',
'    v_year  := NVL(APEX_UTIL.GET_SESSION_STATE(''P644_YEAR''),',
'                   TO_CHAR(SYSDATE, ''YYYY''));',
'',
'    v_first_date := TO_DATE(''01-'' || v_month || ''-'' || v_year, ''DD-MM-YYYY'');',
'    v_last_date  := LAST_DAY(v_first_date);',
'',
'    DBMS_LOB.CREATETEMPORARY(v_sql, TRUE);',
'',
'    ----------------------------------------------------------------------------',
'    -- BASE SELECT',
'    ----------------------------------------------------------------------------',
'    DBMS_LOB.APPEND(v_sql, ''',
'SELECT',
'     PO.SALE_OFFICER_ID AS PURCHASE_OFFICER_ID,',
'     COALESCE(UR.U_NAME, UM.USER_NAME, PO.CREATED_BY) AS PURCHASE_OFFICER,',
'     NVL(SUM(POD.CHANGE_BAGS), 0) AS PURCHASE_BAGS''',
'    );',
'',
'    ----------------------------------------------------------------------------',
'    --  DAY_01 .. DAY_31 COLUMNS',
'    ----------------------------------------------------------------------------',
'    FOR i IN 1 .. 31 LOOP',
'        v_current_date := v_first_date + (i - 1);',
'',
'        IF v_current_date > v_last_date THEN',
'            DBMS_LOB.APPEND(v_sql, '',',
'    NULL AS "DAY_'' || LPAD(i,2,''0'') || ''"'');',
'        ELSE',
'            DBMS_LOB.APPEND(v_sql, '',',
'    ''''<a href="'''' ||',
'        get_secure_link_purchase_bags(',
'            MAX(CASE WHEN TRUNC(PO.TRANSACTION_DATE)=DATE '''''' ||',
'                TO_CHAR(v_current_date, ''YYYY-MM-DD'') || '''''' ',
'                THEN PO.SALE_OFFICER_ID END)',
'        )',
'        || ''''">'''' ||',
'       SUM(CASE ',
'                WHEN TRUNC(PO.TRANSACTION_DATE)=DATE '''''' ',
'                    || TO_CHAR(v_current_date,''YYYY-MM-DD'') || '''''' ',
'                THEN POD.CHANGE_BAGS ',
'           END)',
'        || ''''</a>'''' AS "DAY_'' || LPAD(i, 2, ''0'') || ''"'');',
'        END IF;',
'    END LOOP;',
'',
'    ----------------------------------------------------------------------------',
'    -- FROM + WHERE',
'    ----------------------------------------------------------------------------',
'    DBMS_LOB.APPEND(v_sql, ''',
'FROM',
'      DEV.AB_PO_PURCHASE_ORDER PO',
'JOIN  DEV.AB_PO_PURCHASE_ORDER_DET POD ',
'        ON POD.PO_ID = PO.PO_ID AND POD.STATUS = ''''Y''''',
'LEFT JOIN DEV.AB_UM_USERS_REG UR ',
'        ON UR.USER_ID = PO.SALE_OFFICER_ID AND UR.STATUS = ''''Y''''',
'LEFT JOIN DEV.AB_UM_APPLICATION_USERS UM   ON UM.USER_ID = PO.SALE_OFFICER_ID',
'WHERE',
'        PO.PO_TYPE IN (''''642'''',''''PURCHASE ORDER'''')',
'    AND PO.STATUS = ''''Y''''',
'    AND PO.ORG_ID = :GV_ORG_ID',
'    AND PO.PURCHASING_TYPE IN (''''TRADING'''',''''LOCAL'''')',
'   AND PO.PURCHASING_TYPE  = NVL(:P644_BAGS_TYPE,PO.PURCHASING_TYPE)',
'    AND PO.TRANSACTION_DATE BETWEEN ',
'        DATE '''''' || TO_CHAR(v_first_date, ''YYYY-MM-DD'') || '''''' AND',
'        DATE '''''' || TO_CHAR(v_last_date, ''YYYY-MM-DD'') || '''''''');',
'',
'    ----------------------------------------------------------------------------',
'    -- GROUP BY',
'    ----------------------------------------------------------------------------',
'    DBMS_LOB.APPEND(v_sql, ''',
'GROUP BY',
'      PO.SALE_OFFICER_ID,',
'      COALESCE(UR.U_NAME, UM.USER_NAME, PO.CREATED_BY)',
''');',
'',
'    RETURN v_sql;',
'END;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P644_MONTHS,P644_YEAR,P644_BAGS_TYPE'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(176129607814998931)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RAZZAK'
,p_internal_uid=>176129607814998931
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177910381969589216)
,p_db_column_name=>'PURCHASE_OFFICER_ID'
,p_display_order=>10
,p_column_identifier=>'AF'
,p_column_label=>'Purchase Officer Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177910440407589217)
,p_db_column_name=>'PURCHASE_OFFICER'
,p_display_order=>20
,p_column_identifier=>'AG'
,p_column_label=>'Purchase Officer'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177910546041589218)
,p_db_column_name=>'PURCHASE_BAGS'
,p_display_order=>30
,p_column_identifier=>'AH'
,p_column_label=>'Purchase Bags'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="background-color:#F7B7A3; padding:6px; display:block;">',
'  #PURCHASE_BAGS#',
'</span>',
''))
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176130061608998935)
,p_db_column_name=>'DAY_01'
,p_display_order=>40
,p_column_identifier=>'A'
,p_column_label=>'Day 01'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176130188613998936)
,p_db_column_name=>'DAY_02'
,p_display_order=>50
,p_column_identifier=>'B'
,p_column_label=>'Day 02'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176130269923998937)
,p_db_column_name=>'DAY_03'
,p_display_order=>60
,p_column_identifier=>'C'
,p_column_label=>'Day 03'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176130315871998938)
,p_db_column_name=>'DAY_04'
,p_display_order=>70
,p_column_identifier=>'D'
,p_column_label=>'Day 04'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176130461815998939)
,p_db_column_name=>'DAY_05'
,p_display_order=>80
,p_column_identifier=>'E'
,p_column_label=>'Day 05'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176130559628998940)
,p_db_column_name=>'DAY_06'
,p_display_order=>90
,p_column_identifier=>'F'
,p_column_label=>'Day 06'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176130636529998941)
,p_db_column_name=>'DAY_07'
,p_display_order=>100
,p_column_identifier=>'G'
,p_column_label=>'Day 07'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176130752151998942)
,p_db_column_name=>'DAY_08'
,p_display_order=>110
,p_column_identifier=>'H'
,p_column_label=>'Day 08'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176130841626998943)
,p_db_column_name=>'DAY_09'
,p_display_order=>120
,p_column_identifier=>'I'
,p_column_label=>'Day 09'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176130944848998944)
,p_db_column_name=>'DAY_10'
,p_display_order=>130
,p_column_identifier=>'J'
,p_column_label=>'Day 10'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176131001262998945)
,p_db_column_name=>'DAY_11'
,p_display_order=>140
,p_column_identifier=>'K'
,p_column_label=>'Day 11'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176131101715998946)
,p_db_column_name=>'DAY_12'
,p_display_order=>150
,p_column_identifier=>'L'
,p_column_label=>'Day 12'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176131217576998947)
,p_db_column_name=>'DAY_13'
,p_display_order=>160
,p_column_identifier=>'M'
,p_column_label=>'Day 13'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176131349254998948)
,p_db_column_name=>'DAY_14'
,p_display_order=>170
,p_column_identifier=>'N'
,p_column_label=>'Day 14'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176131438590998949)
,p_db_column_name=>'DAY_15'
,p_display_order=>180
,p_column_identifier=>'O'
,p_column_label=>'Day 15'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176131563859998950)
,p_db_column_name=>'DAY_16'
,p_display_order=>190
,p_column_identifier=>'P'
,p_column_label=>'Day 16'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177908850447589201)
,p_db_column_name=>'DAY_17'
,p_display_order=>200
,p_column_identifier=>'Q'
,p_column_label=>'Day 17'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177908993227589202)
,p_db_column_name=>'DAY_18'
,p_display_order=>210
,p_column_identifier=>'R'
,p_column_label=>'Day 18'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177909097147589203)
,p_db_column_name=>'DAY_19'
,p_display_order=>220
,p_column_identifier=>'S'
,p_column_label=>'Day 19'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177909196253589204)
,p_db_column_name=>'DAY_20'
,p_display_order=>230
,p_column_identifier=>'T'
,p_column_label=>'Day 20'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177909253400589205)
,p_db_column_name=>'DAY_21'
,p_display_order=>240
,p_column_identifier=>'U'
,p_column_label=>'Day 21'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177909394692589206)
,p_db_column_name=>'DAY_22'
,p_display_order=>250
,p_column_identifier=>'V'
,p_column_label=>'Day 22'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177909436718589207)
,p_db_column_name=>'DAY_23'
,p_display_order=>260
,p_column_identifier=>'W'
,p_column_label=>'Day 23'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177909576908589208)
,p_db_column_name=>'DAY_24'
,p_display_order=>270
,p_column_identifier=>'X'
,p_column_label=>'Day 24'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177909655024589209)
,p_db_column_name=>'DAY_25'
,p_display_order=>280
,p_column_identifier=>'Y'
,p_column_label=>'Day 25'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177909785502589210)
,p_db_column_name=>'DAY_26'
,p_display_order=>290
,p_column_identifier=>'Z'
,p_column_label=>'Day 26'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177909852447589211)
,p_db_column_name=>'DAY_27'
,p_display_order=>300
,p_column_identifier=>'AA'
,p_column_label=>'Day 27'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177909935955589212)
,p_db_column_name=>'DAY_28'
,p_display_order=>310
,p_column_identifier=>'AB'
,p_column_label=>'Day 28'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177910015968589213)
,p_db_column_name=>'DAY_29'
,p_display_order=>320
,p_column_identifier=>'AC'
,p_column_label=>'Day 29'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177910159515589214)
,p_db_column_name=>'DAY_30'
,p_display_order=>330
,p_column_identifier=>'AD'
,p_column_label=>'Day 30'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177910224560589215)
,p_db_column_name=>'DAY_31'
,p_display_order=>340
,p_column_identifier=>'AE'
,p_column_label=>'Day 31'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(177926615885601728)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1779267'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PURCHASE_OFFICER_ID:PURCHASE_OFFICER:PURCHASE_BAGS:DAY_01:DAY_02:DAY_03:DAY_04:DAY_05:DAY_06:DAY_07:DAY_08:DAY_09:DAY_10:DAY_11:DAY_12:DAY_13:DAY_14:DAY_15:DAY_16:DAY_17:DAY_18:DAY_19:DAY_20:DAY_21:DAY_22:DAY_23:DAY_24:DAY_25:DAY_26:DAY_27:DAY_28:DAY'
||'_29:DAY_30:DAY_31'
,p_sum_columns_on_break=>'PURCHASE_BAGS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(177911744015589230)
,p_plug_name=>'Local and Trading Purchase Order Sale Officer Wise Commulatives'
,p_region_name=>'POOR'
,p_parent_plug_id=>wwv_flow_imp.id(176129597360998930)
,p_region_css_classes=>'js-dialog-size1200x600 js-dialog-size1000x450'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:#eaeeee;"'
,p_plug_template=>wwv_flow_imp.id(2338601010184674)
,p_plug_display_sequence=>100000000000
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH LOCAL_PURCHASE_ORDER AS (',
'    SELECT',
'        C.PO_ID,',
'        C.COMPANY_ORDER_NO,',
'        PO.SALE_OFFICER_ID,',
'        NVL(UM.USER_NAME, PO.CREATED_BY) AS SALE_OFFER,',
'        C.TRANSACTION_DATE,',
'        C.ORDER_RAISED,',
'        C.COMPANY_NAME,',
'        C.LOADING_TYPE,',
'        C.PAYMENT_MODE,',
'        C.VENDOR_NAME,',
'        C.SALE_POINT,',
'        C.AGENCY_NAME,',
'        C.POD_ID,',
'        C.ITEM_ID,',
'        C.ITEM_NAME,',
'        C.PURCHASE_BAGS,',
'        C.REMAINING_BAGS,',
'        C.INVOICE_BAGS,',
'        C.PURCHASE_CANCEL_BAGS,',
'        C.BASE_RATE,',
'        ROUND(C.BASE_AMOUNT, 3) AS BASE_AMOUNT,',
'        ROUND(C.PER_BAGS_RATE, 3) AS PER_BAGS_RATE,',
'        ROUND(NVL(C.PER_BAGS_RATE, 0) * NVL(C.PURCHASE_BAGS, 0), 3) AS NET_AMOUNT,',
'        C.REMARKS,',
'        C.ADD_BY',
'    FROM TABLE(AB_PURCHASE_ORDER_PKG.COMPANY_PURCHASE_ORDER(:GV_ORG_ID)) C',
'    JOIN AB_PO_PURCHASE_ORDER PO ON PO.PO_ID = C.PO_ID',
'    LEFT JOIN AB_UM_APPLICATION_USERS UM',
'        ON UM.USER_ID = PO.SALE_OFFICER_ID AND UM.STATUS = ''Y''',
'    WHERE',
'        C.PURCHASING_TYPE <> ''COMPANY''',
'        AND TRUNC(C.TRANSACTION_DATE) BETWEEN',
'            NVL(TO_DATE(:P793_FROM_DATE, ''DD-MON-YYYY''), TRUNC(C.TRANSACTION_DATE))',
'            AND NVL(TO_DATE(:P793_TO_DATE, ''DD-MON-YYYY''), TRUNC(C.TRANSACTION_DATE))',
'),',
'',
'CHART_OF_ACCOUNT AS (',
'    SELECT COA.SUB_ACCOUNT_TYPE, COA.COA_ID, COA.ACCOUNT_TITLE ACCOUNT_TITLE',
'    FROM AB_FIN_COA COA',
'    WHERE COA.STATUS = ''Y''',
'),',
'',
'SALE_OFFER AS (',
'    SELECT USER_ID, U_NAME',
'    FROM AB_UM_USERS_REG',
'    WHERE STATUS = ''Y''',
'),',
'',
'REGISTRATION AS (',
'    SELECT SR_ID, REG_NAME',
'    FROM AB_SETUP_REGISTRATION',
'    WHERE REG_STATUS = ''Y''',
'),',
'',
'LOOKUP AS (',
'    SELECT DET_ID, LOOKUP_DET_NAME',
'    FROM AB_LOOKUP_DETAIL',
'    WHERE STATUS = ''Y''',
'),',
'',
'PURCHASE_TRADE AS (',
'    SELECT',
'        PO.PO_ID,',
'        POD.DET_ID AS POD_ID,',
'        PO.TRANSACTION_DATE,',
'        PO.TOTAL_AMOUNT AS PO_FREIGHT_AMOUNT,',
'        SO.U_NAME AS SALE_OFFER,',
'        PO.SALE_OFFICER_ID AS PURCHASE_OFFICER_ID,',
'        CU.REG_NAME AS PURCHASE_PARTY,',
'        FP.REG_NAME AS PURCHASE_FREIGHT_PARTY,',
'        ITM.ITEM_NAME || '' '' || ITM.PACKING_SIZE || '' '' || ITM.UNIT ||',
'            '' ('' || ITM.PACKING || '')'' AS ITEM_NAME,',
'        POD.ITEM_ID,',
'        POD.CHANGE_BAGS AS PURCHASE_BAGS,',
'        POD.RATE AS PURCHASE_RATE,',
'        POD.NET_AMOUNT AS PURCHASE_AMOUNT,',
'        PO.CREATED_ON,',
'        PO.CREATED_BY,',
'        INITCAP(PO.CREATED_BY || '' ('' || TO_CHAR(PO.CREATED_ON, ''DD-MON-YYYY'') || '')'') AS ADD_BY,',
'        NVL(POD.NET_AMOUNT, 0) - NVL(PO.TOTAL_AMOUNT, 0) AS AFTER_FREIGHT_PURCHASE',
'    FROM AB_PO_PURCHASE_ORDER PO',
'    JOIN AB_PO_PURCHASE_ORDER_DET POD',
'        ON POD.PO_ID = PO.PO_ID AND POD.STATUS = ''Y''',
'    JOIN REGISTRATION CU',
'        ON CU.SR_ID = PO.CUSTOMER_ID',
'    LEFT JOIN REGISTRATION FP',
'        ON FP.SR_ID = PO.FREIGHT_PARTY_ID',
'    LEFT JOIN SALE_OFFER SO',
'        ON SO.USER_ID = PO.SALE_OFFICER_ID',
'    JOIN AB_ITEMS_MASTER ITM',
'        ON ITM.ITEM_ID = POD.ITEM_ID AND ITM.STATUS = ''Y''',
'    JOIN AB_LOGISTICS_INFO LO',
'        ON LO.PO_ID = PO.PO_ID AND LO.STATUS = ''Y''',
'    LEFT JOIN LOOKUP LK',
'        ON LK.DET_ID = PO.FREIGHT_TYPE_ID',
'    WHERE',
'        PO.PO_TYPE = ''642''',
'        AND PO.STATUS = ''Y''',
'        AND PO.ORG_ID = :GV_ORG_ID',
'        AND PO.PURCHASING_TYPE = ''TRADING''',
')',
'',
'SELECT',
'    TO_CHAR(T.TRANSACTION_DATE, ''DD-MON-YYYY'') AS TRANSACTION_DATE,',
'    T.PO_ID,',
'    T.POD_ID,',
'    T.COMPANY_ORDER_NO,',
'    T.PURCHASE_OFFICER_ID,',
'    T.PURCHASE_OFFER,',
'    T.VENDOR_NAME,',
'    T.LOADING_TYPE,',
'    T.COMPANY_NAME,',
'    T.PAYMENT_MODE,',
'    T.SALE_POINT,',
'    T.ITEM_NAME,',
'    T.ITEM_ID,',
'    T.PURCHASE_BAGS,',
'    T.PER_BAGS_RATE,',
'    T.NET_AMOUNT,',
'    T.ADD_BY,',
'    T.REMARKS,',
'CASE ',
'    WHEN T.STATUS = ''LPO'' THEN ',
'        ''<div style="color:white; background:#007bff; ',
'             padding:4px 8px; border-radius:4px; font-size:12px; ',
'             display:inline-block;">LOCAL PURCHASE</div>''',
'    ELSE ',
'        ''<div style="color:white; background:#6c757d; ',
'             padding:4px 8px; border-radius:4px; font-size:12px; ',
'             display:inline-block;">TRADING PURCHASE</div>''',
'END AS PURCHASE_TYPE, ',
'    T.STATUS',
'FROM (',
'    --------------------------------------------------------------------',
'    -- LPO SECTION (from LOCAL_PURCHASE_ORDER)',
'    --------------------------------------------------------------------',
'    SELECT',
'        C.PO_ID,',
'        C.POD_ID,',
'        C.TRANSACTION_DATE,',
'        C.COMPANY_ORDER_NO,',
'        C.SALE_OFFICER_ID AS PURCHASE_OFFICER_ID,',
'        C.SALE_OFFER AS PURCHASE_OFFER,',
'        C.VENDOR_NAME,',
'        C.LOADING_TYPE,',
'        C.COMPANY_NAME,',
'        C.PAYMENT_MODE,',
'        C.SALE_POINT,',
'        C.ITEM_NAME,',
'        C.ITEM_ID,',
'        C.PURCHASE_BAGS,',
'        C.PER_BAGS_RATE,',
'        C.NET_AMOUNT,',
'        C.ADD_BY,',
'        C.REMARKS,',
'        ''LPO'' AS STATUS',
'    FROM LOCAL_PURCHASE_ORDER C',
'',
'    UNION ALL',
'',
'',
'    SELECT',
'        PT.PO_ID,',
'        PT.POD_ID,',
'        PT.TRANSACTION_DATE,',
'        NULL AS COMPANY_ORDER_NO,',
'        PT.PURCHASE_OFFICER_ID,',
'        PT.SALE_OFFER AS PURCHASE_OFFER,',
'        PT.PURCHASE_PARTY AS VENDOR_NAME,',
'        NULL AS LOADING_NAME,',
'        NULL AS COMPANY_NAME,',
'        NULL AS PAYMENT_MODE,',
'        NULL AS SALE_POINT,',
'        PT.ITEM_NAME,',
'        PT.ITEM_ID,',
'        PT.PURCHASE_BAGS,',
'        PT.PURCHASE_RATE AS PER_BAGS_RATE,',
'        PT.PURCHASE_AMOUNT AS NET_AMOUNT,',
'        PT.ADD_BY,',
'        NULL AS REMARKS,',
'        ''TRADE'' AS STATUS',
'    FROM PURCHASE_TRADE PT',
') T',
'WHERE ',
'      T.PURCHASE_OFFICER_ID = NVL(:P644_purchase_OFFICER_WISE,T.PURCHASE_OFFICER_ID)',
'ORDER BY T.TRANSACTION_DATE DESC, T.PO_ID DESC;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P644_PURCHASE_OFFICER_WISE'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(177911872139589231)
,p_max_row_count=>'1000000'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>500
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RAZZAK'
,p_internal_uid=>177911872139589231
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177912095818589233)
,p_db_column_name=>'PO_ID'
,p_display_order=>10
,p_column_identifier=>'B'
,p_column_label=>'Po Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177912196328589234)
,p_db_column_name=>'POD_ID'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>'Pod Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177911956134589232)
,p_db_column_name=>'TRANSACTION_DATE'
,p_display_order=>30
,p_column_identifier=>'A'
,p_column_label=>'Transaction Date'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177912201843589235)
,p_db_column_name=>'COMPANY_ORDER_NO'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Company Order No'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177912324895589236)
,p_db_column_name=>'PURCHASE_OFFICER_ID'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Purchase Officer Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177912445297589237)
,p_db_column_name=>'PURCHASE_OFFER'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Purchase Offer'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177912594430589238)
,p_db_column_name=>'VENDOR_NAME'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Vendor Name'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177912668879589239)
,p_db_column_name=>'LOADING_TYPE'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Loading Type'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177912784692589240)
,p_db_column_name=>'COMPANY_NAME'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Company Name'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177912850840589241)
,p_db_column_name=>'PAYMENT_MODE'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Payment Mode'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177912902584589242)
,p_db_column_name=>'SALE_POINT'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Sale Point'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177913018214589243)
,p_db_column_name=>'ITEM_NAME'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Item Name'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177913169704589244)
,p_db_column_name=>'ITEM_ID'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>'Item Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177913293703589245)
,p_db_column_name=>'PURCHASE_BAGS'
,p_display_order=>150
,p_column_identifier=>'N'
,p_column_label=>'Purchase Bags'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177913376488589246)
,p_db_column_name=>'PER_BAGS_RATE'
,p_display_order=>160
,p_column_identifier=>'O'
,p_column_label=>'Per Bags Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177913404529589247)
,p_db_column_name=>'NET_AMOUNT'
,p_display_order=>170
,p_column_identifier=>'P'
,p_column_label=>'Net Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177913531083589248)
,p_db_column_name=>'ADD_BY'
,p_display_order=>180
,p_column_identifier=>'Q'
,p_column_label=>'Add By'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177913614285589249)
,p_db_column_name=>'REMARKS'
,p_display_order=>190
,p_column_identifier=>'R'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177913785629589250)
,p_db_column_name=>'STATUS'
,p_display_order=>200
,p_column_identifier=>'S'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177985890054876704)
,p_db_column_name=>'PURCHASE_TYPE'
,p_display_order=>210
,p_column_identifier=>'T'
,p_column_label=>'Purchase Type'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(177991017828881243)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1779911'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TRANSACTION_DATE:COMPANY_ORDER_NO:PURCHASE_OFFER:VENDOR_NAME:LOADING_TYPE:COMPANY_NAME:PAYMENT_MODE:SALE_POINT:ITEM_NAME:PURCHASE_BAGS:PER_BAGS_RATE:NET_AMOUNT:ADD_BY:PURCHASE_TYPE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(89351454684410803)
,p_button_sequence=>51
,p_button_plug_id=>wwv_flow_imp.id(89351288624410801)
,p_button_name=>'New'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2426252597184703)
,p_button_image_alt=>'New'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90118226892409624)
,p_name=>'P644_MONTHS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(90526084314089806)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<B>Months</B>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(TO_DATE(LEVEL, ''MM''), ''Month'') AS DISPLAY_VALUE,',
'       TO_CHAR(LEVEL, ''FM00'') AS RETURN_VALUE',
'FROM DUAL',
'CONNECT BY LEVEL <= 12'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2423765497184702)
,p_item_css_classes=>'large-input'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90118325036409625)
,p_name=>'P644_YEAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(90526084314089806)
,p_prompt=>'<B>Year</B>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(ADD_MONTHS(SYSDATE, -(LEVEL - 1) * 12), ''YYYY'') AS DISPLAY_VALUE,',
'       TO_CHAR(ADD_MONTHS(SYSDATE, -(LEVEL - 1) * 12), ''YYYY'') AS RETURN_VALUE',
'FROM DUAL',
'CONNECT BY LEVEL <= 10',
'',
''))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2423765497184702)
,p_item_css_classes=>'large-input'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90619313095122117)
,p_name=>'P644_SOD_SALE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(90526167163089807)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90619485980122118)
,p_name=>'P644_SO_EMP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(90526167163089807)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90619549882122119)
,p_name=>'P644_SO_CREATED_ON'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(90526167163089807)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148765466358597310)
,p_name=>'P644_PO_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(90526167163089807)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148766114045597317)
,p_name=>'P644_BAGS_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(90526084314089806)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Bags Type</b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC2:Normal Sale Order;SALE ORDER,Advance Sale Order;ASO,Tradings Bags;645,Purchase Local;LOCAL,Purchase Trading;TRADING'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2423765497184702)
,p_item_css_classes=>'large-input'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177911629647589229)
,p_name=>'P644_PURCHASE_OFFICER_WISE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(89351288624410801)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178265697863241350)
,p_name=>'P644_EMP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(89351288624410801)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178265799141241351)
,p_name=>'P644_CREATED_ON'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(89351288624410801)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(89340930589426503)
,p_name=>'Refresh the region according to sale officer'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P644_SALE_OFFICER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(89342383736426502)
,p_name=>'New_5'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P644_MONTH_V1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(90118411379409626)
,p_name=>'New'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P644_MONTHS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90118595674409627)
,p_event_id=>wwv_flow_imp.id(90118411379409626)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(89172478440395840)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90619671619122120)
,p_event_id=>wwv_flow_imp.id(90118411379409626)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(90526167163089807)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177910672632589219)
,p_event_id=>wwv_flow_imp.id(90118411379409626)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Purchase Trading and Local Wise Refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(176129597360998930)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(90118616608409628)
,p_name=>'New_1'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P644_YEAR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90118748678409629)
,p_event_id=>wwv_flow_imp.id(90118616608409628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(89172478440395840)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90619714991122121)
,p_event_id=>wwv_flow_imp.id(90118616608409628)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(90526167163089807)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177910850159589221)
,p_event_id=>wwv_flow_imp.id(90118616608409628)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Purchase Trading and Local Wise Refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(176129597360998930)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(89344535672426501)
,p_name=>'New_8'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P644_YEAR_V2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148766215965597318)
,p_name=>'New_2'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P644_BAGS_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148766354999597319)
,p_event_id=>wwv_flow_imp.id(148766215965597318)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(90526167163089807)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177910732413589220)
,p_event_id=>wwv_flow_imp.id(148766215965597318)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Purchase Trading and Local Wise Refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(176129597360998930)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(177985515918876701)
,p_name=>'Refresh Reports'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P644_PURCHASE_OFFICER_WISE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177985679009876702)
,p_event_id=>wwv_flow_imp.id(177985515918876701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(177911744015589230)
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
