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
--     PAGE: 855
--   Manifest End
--   Version:         24.1.0
--   Instance ID:     706401905951048
--

begin
null;
end;
/
prompt --application/pages/delete_00855
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>855);
end;
/
prompt --application/pages/page_00855
begin
wwv_flow_imp_page.create_page(
 p_id=>855
,p_name=>'Sub JV Salary'
,p_alias=>'SUB-JV-SALARY'
,p_step_title=>'Sub JV Salary'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function(){',
'  var $ = apex.jQuery;',
'',
'  // Create placeholder for detail region (if not exists)',
'  if (!$(''#detail_placeholder'').length) {',
'    $(''body'').append(''<div id="detail_placeholder" style="display:none;"></div>'');',
'  }',
'',
'  // Add CSS once',
'  if (!$(''#nested-style'').length) {',
'    $(''head'').append(`',
'      <style id="nested-style">',
'        #detail_region {',
'          transition: all 0.25s ease;',
'          opacity: 0;',
'          transform: translateY(-8px);',
'        }',
'        #detail_region.showing {',
'          opacity: 1;',
'          transform: translateY(0);',
'        }',
'        tr.my_custom_row td {',
'          padding: 12px 16px;',
'          background: #f9f9f9;',
'          border-top: 1px solid #ddd;',
'        }',
'        tr.my_custom_row .nested-wrapper {',
'          max-height: 0;',
'          overflow: hidden;',
'          opacity: 0;',
'          transition: max-height 0.35s ease, opacity 0.25s ease;',
'          border-radius: 8px;',
'          background: #fff;',
'          box-shadow: 0 2px 6px rgba(0,0,0,0.08);',
'          padding: 8px 10px;',
'        }',
'        tr.my_custom_row.expanded .nested-wrapper {',
'          max-height: 1200px;',
'          opacity: 1;',
'        }',
'      </style>',
'    `);',
'  }',
'',
'  $(document).on(''click'', ''.btn-expand'', function(e){',
'    e.preventDefault();',
'    var $btn = $(this);',
'    var $tr = $btn.closest(''tr'');',
'    var hrmisCode = $btn.data(''hrmis'');',
'',
'    if (!hrmisCode) {',
'      console.warn(''No HRMIS code found for row.'');',
'      return;',
'    }',
'',
'    // Check for already open row',
'    var $openRow = $(''tr.my_custom_row.expanded'');',
'    var isSame = $tr.next(''.my_custom_row'').length && $tr.next(''.my_custom_row'').hasClass(''expanded'');',
'',
'    if (isSame) {',
'      closeRow($tr.next(''.my_custom_row''));',
'      return;',
'    }',
'',
'    if ($openRow.length) {',
'      closeRow($openRow, openNewRow);',
'    } else {',
'      openNewRow();',
'    }',
'',
'    function openNewRow(){',
'      var colspan = $tr.find(''td'').length || 1;',
'      $tr.after(''<tr class="my_custom_row"><td colspan="'' + colspan + ''"><div class="nested-wrapper"></div></td></tr>'');',
'      var $wrapper = $tr.next(''.my_custom_row'').find(''.nested-wrapper'');',
'',
'      // Move detail region into place',
'      $wrapper.append($(''#detail_region'').removeClass(''showing'').show());',
'      $s(''P855_ID'', hrmisCode);',
'',
'      // Wait for value to apply',
'      apex.item(''P855_ID'').setValue(hrmisCode);',
'',
'      setTimeout(function(){',
'        try {',
'          apex.region(''detail_region'').refresh();',
'        } catch (err) {',
'          console.warn(''detail_region refresh error:'', err);',
'        }',
'',
'        requestAnimationFrame(function(){',
'          $tr.next(''.my_custom_row'').addClass(''expanded'');',
'          $(''#detail_region'').addClass(''showing'');',
'        });',
'      }, 300);',
'    }',
'',
'    function closeRow($row, callback){',
'      $(''#detail_region'').removeClass(''showing'');',
'      $row.removeClass(''expanded'');',
'      setTimeout(function(){',
'        $(''#detail_placeholder'').append($(''#detail_region'').hide());',
'        $row.remove();',
'        $s(''P855_ID'', '''');',
'        if (callback) callback();',
'      }, 350);',
'    }',
'  });',
'})();',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'.large-input input,',
'.large-input textarea,',
'.large-input select {',
'    min-height: 20px !important;',
'}',
'',
'',
'',
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
'',
'',
'/* Style for Interactive Report column headers (labels) */',
'#DOR th {',
'    background-color: #3ba14f ;',
'    font-weight: bold;',
'    padding: 12px;',
'    text-align: left;',
'    border: 1px solid #dddd;',
'    white-space: nowrap;',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'}',
'/* FOR THE ARROWS*/',
'#DOR th span {',
'    color: white !important;  ',
'}',
'/* TEXT COLOR */',
'#DOR th a {',
'    color: white !important;  ',
'}',
'',
'/* Set a fixed width for the rest of the columns */',
'#DOR th:not(:first-child), #DOR td:not(:first-child) {',
'',
'    word-wrap: break-word;  /* Break words when they overflow */',
'    /*white-space: normal; Allow normal wrapping for table cells */',
'}',
'',
'/* Hover effect for cells */',
'#DOR td:hover {',
'    background-color: #f1f1f1;  /* Change background color on hover */',
'    cursor: pointer;  /* Change cursor to pointer for better interactivity */',
'}',
'',
'/* Optional: Add subtle shadow to header and data cells */',
'#DOR td, #DOR th {',
'    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);  /* Add shadow around cells */',
'}',
'',
'/* Responsive Design: Adjust column appearance for smaller screens */',
'@media (max-width: 768px) {',
'    #ITM td, #ITM th {',
'      ',
'        padding: 8px;  /* Reduce padding for better space usage */',
'    }',
'}',
'',
'',
'',
'',
'',
'',
'',
'.t-Body-content {',
'    background-color: #ececec;',
'}',
'.heading-green {',
'        color: Green;',
'        text-align: center;',
'        margin: 0;',
'        padding: 1px 0;',
'}',
'.gradient-line-green {',
'        display: block;',
'        border: 0;',
'        height: 2px; ',
'        border-radius: 3px; ',
'        background: linear-gradient(to right, #a4d3a2, #2a8d4b, #a4d3a2); ',
'        box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1); ',
'        margin: 10px auto; ',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145012492681142517)
,p_plug_name=>'JV Salary'
,p_region_name=>'detail_region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2310230379184666)
,p_plug_display_sequence=>101
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH emp_code AS (',
'   SELECT ',
'          ''EMP CODE # ''||HRMIS_CODE||'' - ''|| NAME AS EMP_NAME,',
'          HRMIS_CODE,',
'          EMP_ID',
'   FROM HR_EMPLOYEE_REGISTRATION',
')',
'',
',USER_APPROVAL AS (',
'         SELECT',
'            APP_IDS AS APP_ID,',
'            INITCAP(CREATED_BY) ||'' (''|| TO_CHAR(CREATED_ON,''DD-MON-YYYY'') ||'')'' APPROVED_BY ,',
'            APPROVAL_STATUS,',
'            CREATED_ON',
'        FROM ',
'                    AB_USER_ACTION_APPROVAL',
'        WHERE ',
'                     APP_TYPE = ''780''',
'            AND STATUS = ''Y''',
'            AND APPROVAL_STATUS=''APPROVED''',
'            AND ORG_ID=:GV_ORG_ID',
')',
'  SELECT ',
'       ASR.HRMIS_CODE,',
'       ASR.EMP_NAME,',
'       (AFT.TR_DATE) as TR_DATE,',
'       NVL(AFTD.DR_AMOUNT,0) AS TOTAL_DEBIT_AMOUNT,',
'       NVL(AFTD.CR_AMOUNT,0) AS TOTAL_CREDIT_AMOUNT,',
'       NVL(AFTD.DR_AMOUNT,0) - NVL(AFTD.CR_AMOUNT,0) BALANCE,',
'       ADL.LOOKUP_DET_NAME AS SUB_ACCOUNT_TYPE,',
'       AFT.VOUCHER_TYPE_ID,',
'       AFT.VOUCHER_NAME AS VOUCHER_NAME,',
'       AFT.TR_TYPE,',
'       UA.APPROVAL_STATUS,',
'       AFTD.TR_DESCRIPTION AS NARRATION',
'',
'    FROM AB_FIN_TRANSACTION AFT',
'    LEFT JOIN AB_FIN_TRANSACTION_DET AFTD  ON AFTD.TR_ID = AFT.TR_ID',
'    LEFT JOIN emp_code ASR ON ASR.EMP_ID = NVL(AFTD.EMPLOYEE_REGISTRATION_ID,AFTD.HR_EMP_IDD)',
'    LEFT JOIN AB_LOOKUP_DETAIL ADL ON ADL.DET_ID  = NVL(AFTD.SALARY_ACCOUNT_ID,AFTD.ACCOUNT_TYPE_ID)',
'    LEFT JOIN AB_LOOKUP_DETAIL ADLS ON ADLS.DET_ID = AFT.VOUCHER_TYPE_ID',
'    JOIN USER_APPROVAL UA ON UA.APP_ID = AFT.TR_ID',
'    WHERE AFT.TR_TYPE in  (801,635,628)',
'',
'       AND AFTD.TRD_TYPE in  (801,635,628)',
'',
'             AND (',
'      (AFT.VOUCHER_TYPE_ID IN (611, 613) AND NVL(AFTD.DR_AMOUNT,0) > 0)  -- Sirf Debit',
'   OR (AFT.VOUCHER_TYPE_ID IN (612, 614) AND NVL(AFTD.CR_AMOUNT,0) > 0)  -- Sirf Credit',
'   OR (AFT.VOUCHER_TYPE_ID = 799) ',
'   ) ',
'    ',
'',
'            AND (ADL.DET_ID IN ( SELECT REGEXP_SUBSTR(:P855_SUB_ACC_TYPE, ''[^:]+'', 1, LEVEL) FROM dual ',
'        CONNECT BY REGEXP_SUBSTR(:P855_SUB_ACC_TYPE, ''[^:]+'', 1, LEVEL) IS NOT NULL ) ',
'        OR :P855_SUB_ACC_TYPE IS NULL)',
'              ',
'       AND AFT.org_id = :GV_ORG_ID',
'       AND ASR.HRMIS_CODE = :P855_ID',
'       order by AFT.TR_DATE desc',
'    ;',
'',
'',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P855_ID,P855_SUB_ACC_TYPE'
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
 p_id=>wwv_flow_imp.id(145015459731142547)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'UMAR'
,p_internal_uid=>145015459731142547
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145015556622142548)
,p_db_column_name=>'HRMIS_CODE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Hrmis Code'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145015657720142549)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145015750056142550)
,p_db_column_name=>'TR_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Transaction Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146755106643074701)
,p_db_column_name=>'TOTAL_DEBIT_AMOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Total Debit Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146755268190074702)
,p_db_column_name=>'TOTAL_CREDIT_AMOUNT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Total Credit Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146755308950074703)
,p_db_column_name=>'SUB_ACCOUNT_TYPE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Sub Account Type'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148765851118597314)
,p_db_column_name=>'VOUCHER_NAME'
,p_display_order=>70
,p_column_identifier=>'J'
,p_column_label=>'Voucher Name'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148765987434597315)
,p_db_column_name=>'APPROVAL_STATUS'
,p_display_order=>80
,p_column_identifier=>'K'
,p_column_label=>'Approval Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156905984523388111)
,p_db_column_name=>'NARRATION'
,p_display_order=>90
,p_column_identifier=>'L'
,p_column_label=>'Debit / Credit Narration'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156906025951388112)
,p_db_column_name=>'TR_TYPE'
,p_display_order=>100
,p_column_identifier=>'M'
,p_column_label=>'Tr Type'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156908326655388135)
,p_db_column_name=>'VOUCHER_TYPE_ID'
,p_display_order=>110
,p_column_identifier=>'N'
,p_column_label=>'Voucher Type Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(160115219509639426)
,p_db_column_name=>'BALANCE'
,p_display_order=>120
,p_column_identifier=>'O'
,p_column_label=>'Balance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(146773881517077057)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1467739'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TR_DATE:VOUCHER_NAME:EMP_NAME:SUB_ACCOUNT_TYPE:TOTAL_DEBIT_AMOUNT:TOTAL_CREDIT_AMOUNT:NARRATION'
,p_sort_column_1=>'TR_DATE'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(269606550538649760)
,p_plug_name=>'MASTER JV Salary'
,p_region_name=>'DOR'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2361825631184681)
,p_plug_display_sequence=>91
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH emp_code AS (',
'    SELECT  ',
'        NAME AS EMP_NAME,',
'        HRMIS_CODE,',
'        EMP_ID,',
'        SUB_DEPARTMENT',
'    FROM HR_EMPLOYEE_REGISTRATION',
'    WHERE STATUS = ''Y''',
'),',
'detail_data AS (',
'    SELECT ',
'        ASR.HRMIS_CODE,',
'        (MAX(AFT.TR_DATE)) as TR_DATE,',
'        NVL(SUM(AFTD.DR_AMOUNT),0) AS TOTAL_DEBIT_AMOUNT,',
'        NVL(SUM(AFTD.CR_AMOUNT),0) AS TOTAL_CREDIT_AMOUNT,',
'        NVL(SUM(AFTD.DR_AMOUNT), 0) - NVL(SUM(AFTD.CR_AMOUNT), 0) AS BALANCE',
'    FROM AB_FIN_TRANSACTION AFT',
'    JOIN AB_FIN_TRANSACTION_DET AFTD ',
'        ON AFTD.TR_ID = AFT.TR_ID',
'    LEFT JOIN emp_code ASR ',
'        ON ASR.EMP_ID = NVL(AFTD.EMPLOYEE_REGISTRATION_ID, AFTD.HR_EMP_IDD)',
'    LEFT JOIN AB_LOOKUP_DETAIL ADL ',
'        ON ADL.DET_ID = NVL(AFTD.SALARY_ACCOUNT_ID, AFTD.ACCOUNT_TYPE_ID)',
'    WHERE AFT.TR_TYPE IN (801,635,628)',
'      AND AFTD.TRD_TYPE IN (801,635,628)',
'      AND AFT.org_id = :GV_ORG_ID',
'      AND ASR.HRMIS_CODE IS NOT NULL',
'      AND ASR.HRMIS_CODE = NVL(:P855_EMP_CODE, ASR.HRMIS_CODE)',
'',
'      ',
'             AND (',
'      (AFT.VOUCHER_TYPE_ID IN (611, 613) AND NVL(AFTD.DR_AMOUNT,0) > 0)  -- Sirf Debit',
'   OR (AFT.VOUCHER_TYPE_ID IN (612, 614) AND NVL(AFTD.CR_AMOUNT,0) > 0)  -- Sirf Credit',
'   OR (AFT.VOUCHER_TYPE_ID = 799) ',
'   ) ',
'',
'',
'',
'',
'      --  FIX: handle multiple sub-departments properly',
'      AND (',
'          :P855_SUB_DEPARTMENT IS NULL',
'          OR ASR.SUB_DEPARTMENT IN (',
'              SELECT TRIM(REGEXP_SUBSTR(:P855_SUB_DEPARTMENT, ''[^:]+'', 1, LEVEL))',
'              FROM dual',
'              CONNECT BY REGEXP_SUBSTR(:P855_SUB_DEPARTMENT, ''[^:]+'', 1, LEVEL) IS NOT NULL',
'          )',
'      )',
'',
'      AND (',
'          :P855_SUB_ACC_TYPE IS NULL',
'          OR ADL.DET_ID IN (',
'              SELECT REGEXP_SUBSTR(:P855_SUB_ACC_TYPE, ''[^:]+'', 1, LEVEL)',
'              FROM dual ',
'              CONNECT BY REGEXP_SUBSTR(:P855_SUB_ACC_TYPE, ''[^:]+'', 1, LEVEL) IS NOT NULL',
'          )',
'      )',
'    GROUP BY ASR.HRMIS_CODE',
')',
'SELECT',
'    ASR.EMP_ID,',
'    ASR.HRMIS_CODE AS HRMIS_CODE,',
'    ASR.EMP_NAME AS EMP_NAME,',
'    ASR.SUB_DEPARTMENT AS SUB_DEPARTMENT,',
'    NVL(DD.TOTAL_DEBIT_AMOUNT,0) AS BALANCED_DEBIT,',
'    NVL(DD.TOTAL_CREDIT_AMOUNT,0) AS BALANCED_CREDIT,',
'    NVL(DD.BALANCE,0) AS BALANCE,',
'    ''DETAIL'' AS DETAIL,',
'    DD.TR_DATE AS TRANSACTION_DATE',
'    ',
'FROM emp_code ASR',
'LEFT JOIN detail_data DD ',
'    ON DD.HRMIS_CODE = ASR.HRMIS_CODE',
'',
'--  Keep same logic at outer level too',
'WHERE (',
'    :P855_SUB_DEPARTMENT IS NULL',
'    OR ASR.SUB_DEPARTMENT IN (',
'        SELECT TRIM(REGEXP_SUBSTR(:P855_SUB_DEPARTMENT, ''[^:]+'', 1, LEVEL))',
'        FROM dual',
'        CONNECT BY REGEXP_SUBSTR(:P855_SUB_DEPARTMENT, ''[^:]+'', 1, LEVEL) IS NOT NULL',
'    )',
')',
'    AND (',
'     (TRUNC(DD.TR_DATE) BETWEEN ',
'          NVL(TO_DATE(:P855_FROM_DATE, ''DD-MON-YYYY''), TRUNC(DD.TR_DATE))',
'      AND NVL(TO_DATE(:P855_TO_DATE, ''DD-MON-YYYY''), TRUNC(DD.TR_DATE))',
'     )',
'    -- OR DD.TR_DATE IS NULL',
')',
'',
'',
'AND ASR.HRMIS_CODE = NVL(:P855_EMP_CODE, ASR.HRMIS_CODE) ',
'ORDER BY ASR.HRMIS_CODE',
'',
'',
'',
'',
'',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P855_EMP_CODE,P855_SUB_DEPARTMENT,P855_FROM_DATE,P855_TO_DATE'
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
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3 class="heading-green">',
'   Employee Sub Ledger',
'</h3>',
'<hr class="gradient-line-green">'))
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(146755492059074704)
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
,p_internal_uid=>146755492059074704
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146755578284074705)
,p_db_column_name=>'HRMIS_CODE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Hrmis Code'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146755624430074706)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146755738875074707)
,p_db_column_name=>'DETAIL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Detail'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <a href="javascript:void(0);" ',
'   class="btn-expand t-Button t-Button--simple t-Button--success" ',
'   data-hrmis="#HRMIS_CODE#" ',
'   data-deptno="#DEPTNO#">',
'   DETAILS',
'</a>',
'',
'',
'',
'<!-- <a href="javascript:void(0);"',
'   onclick="$s(''P855_ID'', ''#HRMIS_CODE#'');"',
'   data-deptno="#DEPTNO#"',
'   class="btn-expand t-Button t-Button--simple t-Button--success">',
'   DETAILS',
'</a> -->'))
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146756741434074717)
,p_db_column_name=>'SUB_DEPARTMENT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Sub Department'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146759348616074743)
,p_db_column_name=>'BALANCED_DEBIT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Balanced Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146759421338074744)
,p_db_column_name=>'BALANCED_CREDIT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Balanced Credit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146759662366074746)
,p_db_column_name=>'EMP_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148764860522597304)
,p_db_column_name=>'BALANCE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Balance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156906287594388114)
,p_db_column_name=>'TRANSACTION_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Transaction Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(146773227200077044)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1467733'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'HRMIS_CODE:EMP_NAME:SUB_DEPARTMENT:BALANCED_DEBIT:BALANCED_CREDIT:BALANCE:DETAIL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(284983486092065904)
,p_plug_name=>'JV Salary HIDE'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2310230379184666)
,p_plug_display_sequence=>111
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with emp_code as (',
'    SELECT ''Emp Code''||'' #  ''||jt.hrmis_code|| '' - ''||jt.name display_value,',
'       jt.hrmis_code AS return_value',
'FROM api_employee_json t,',
'     JSON_TABLE(',
'       t.json_clob, ''$.items[*]''',
'       COLUMNS (',
'          hrmis_code   NUMBER        PATH ''$.hrmis_code'',',
'          name         VARCHAR2(4000) PATH ''$.name'',',
'          region       VARCHAR2(100)  PATH ''$.region''',
'       )',
'     ) jt',
'ORDER BY jt.name',
'',
')',
'',
'',
'select AFT.TR_ID,',
'       max(AFT.TR_DATE) as TR_DATE,',
'       max(AFT.VOUCHER_NAME) AS VOUCHER_NAME,',
'       max(AFT.VOUCHER_TYPE_ID) AS VOUCHER_TYPE_ID,',
'       max(AFT.STATUS) AS STATUS,',
'       max(AFT.CREATED_ON) AS CREATED_ON,',
'       max(AFT.CREATED_BY) AS CREATED_BY,',
'       max(AFT.UPDATED_ON) AS UPDATED_ON,',
'       max(AFT.UPDATED_BY) AS UPDATED_BY,',
'',
'',
unistr('               -- \D83D\DD39 Debit Accounts'),
'        ''<ul style="color:green;"><li>'' ||',
'        LISTAGG(DISTINCT CASE WHEN AFTD.DR_AMOUNT IS NOT NULL ',
'                         THEN COA.GL_CODE ||'' - ''|| COA.ACCOUNT_TITLE END, ',
'                         ''</li><li>'') ',
'        WITHIN GROUP (ORDER BY AFTD.TRD_ID) ||',
'        ''</li></ul>'' AS DEBIT_ACCOUNT,',
'',
unistr('        -- \D83D\DD39 Credit Accounts'),
'        ''<ul style="color:blue;"><li>'' ||',
'        LISTAGG(DISTINCT CASE WHEN AFTD.CR_AMOUNT IS NOT NULL ',
'                         THEN COA.GL_CODE ||'' - ''|| COA.ACCOUNT_TITLE END, ',
'                         ''</li><li>'') ',
'        WITHIN GROUP (ORDER BY AFTD.TRD_ID) ||',
'        ''</li></ul>'' AS CREDIT_ACCOUNT,',
'',
unistr('        -- \D83D\DD39 Debit Narration'),
'        ''<ul style="color:purple;"><li>'' ||',
'        LISTAGG(DISTINCT CASE WHEN AFTD.DR_AMOUNT IS NOT NULL ',
'                         THEN AFTD.TR_DESCRIPTION END, ',
'                         ''</li><li>'') ',
'        WITHIN GROUP (ORDER BY AFTD.TRD_ID) ||',
'        ''</li></ul>'' AS DEBIT_NARRATION,',
'',
unistr('        -- \D83D\DD39 Debit Employee Name'),
'        ''<ul style="color:brown;"><li>'' ||',
'        LISTAGG(DISTINCT CASE WHEN AFTD.DR_AMOUNT IS NOT NULL ',
'                         THEN ASR.FIRST_NAME END, ',
'                         ''</li><li>'') ',
'        WITHIN GROUP (ORDER BY AFTD.TRD_ID) ||',
'        ''</li></ul>'' AS Debit_EMPLOYEE_NAME,',
'',
unistr('        -- \D83D\DD39 Debit Salary Account'),
'        ''<ul style="color:darkorange;"><li>'' ||',
'        LISTAGG(DISTINCT CASE WHEN AFTD.DR_AMOUNT IS NOT NULL ',
'                         THEN ADL.LOOKUP_DET_NAME END, ',
'                         ''</li><li>'') ',
'        WITHIN GROUP (ORDER BY AFTD.TRD_ID) ||',
'        ''</li></ul>'' AS Debit_SALARY_ACCOUNT,',
'',
unistr('        -- \D83D\DD39 Credit Narration'),
'        ''<ul style="color:purple;"><li>'' ||',
'        LISTAGG(DISTINCT CASE WHEN AFTD.CR_AMOUNT IS NOT NULL ',
'                         THEN AFTD.TR_DESCRIPTION END, ',
'                         ''</li><li>'') ',
'        WITHIN GROUP (ORDER BY AFTD.TRD_ID) ||',
'        ''</li></ul>'' AS CREDIT_NARRATION,',
'',
unistr('        -- \D83D\DD39 Credit Employee Name'),
'        ''<ul style="color:red;"><li>'' ||',
'        LISTAGG(DISTINCT CASE WHEN AFTD.CR_AMOUNT IS NOT NULL ',
'                         THEN ASR.FIRST_NAME END, ',
'                         ''</li><li>'') ',
'        WITHIN GROUP (ORDER BY AFTD.TRD_ID) ||',
'        ''</li></ul>'' AS Credit_EMPLOYEE_NAME,',
'',
unistr('        -- \D83D\DD39 Credit Salary Account'),
'        ''<ul style="color:teal;"><li>'' ||',
'        LISTAGG(DISTINCT CASE WHEN AFTD.CR_AMOUNT IS NOT NULL ',
'                         THEN ADL.LOOKUP_DET_NAME END, ',
'                         ''</li><li>'') ',
'        WITHIN GROUP (ORDER BY AFTD.TRD_ID) ||',
'        ''</li></ul>'' AS Credit_SALARY_ACCOUNT,',
'',
'',
'    --   LISTAGG(CASE WHEN AFTD.DR_AMOUNT IS NOT NULL THEN  COA.GL_CODE ||'' - ''|| COA.ACCOUNT_TITLE  END, '', '') WITHIN GROUP (ORDER BY AFTD.TRD_ID) AS DEBIT_ACCOUNT,',
'      ',
'    --    LISTAGG(CASE WHEN AFTD.CR_AMOUNT IS NOT NULL THEN  COA.GL_CODE ||'' - ''|| COA.ACCOUNT_TITLE  END, '', '') WITHIN GROUP (ORDER BY AFTD.TRD_ID) AS CREDIT_ACCOUNT,',
'',
'    --   LISTAGG( DISTINCT  CASE WHEN AFTD.DR_AMOUNT IS NOT NULL THEN  AFTD.TR_DESCRIPTION END, '', '') WITHIN GROUP (ORDER BY AFTD.TRD_ID) AS DEBIT_NARRATION,',
'    --    LISTAGG( DISTINCT  CASE WHEN AFTD.DR_AMOUNT IS NOT NULL THEN ASR.FIRST_NAME END, '', '') WITHIN GROUP (ORDER BY AFTD.TRD_ID) AS Debit_EMPLOYEE_NAME,',
'    --   LISTAGG(DISTINCT  CASE WHEN AFTD.DR_AMOUNT IS NOT NULL THEN ADL.LOOKUP_DET_NAME  END, '', '' ) WITHIN GROUP (ORDER BY AFTD.TRD_ID) AS Debit_SALARY_ACCOUNT,',
'      ',
'    --   LISTAGG( DISTINCT  CASE WHEN AFTD.CR_AMOUNT IS NOT NULL THEN  AFTD.TR_DESCRIPTION END, '', '') WITHIN GROUP (ORDER BY AFTD.TRD_ID) AS CREDIT_NARRATION,',
'      ',
'    --    LISTAGG(DISTINCT   CASE WHEN AFTD.CR_AMOUNT IS NOT NULL THEN ASR.FIRST_NAME END, '', '') WITHIN GROUP (ORDER BY AFTD.TRD_ID) AS Credit_EMPLOYEE_NAME,',
'    --     LISTAGG(DISTINCT  CASE WHEN AFTD.CR_AMOUNT IS NOT NULL THEN ADL.LOOKUP_DET_NAME  END, '', '' ) WITHIN GROUP (ORDER BY AFTD.TRD_ID) AS Credit_SALARY_ACCOUNT,',
'         NVL(SUM(AFTD.DR_AMOUNT ),0) DR_AMOUNT ,',
'         NVL(SUM(AFTD.CR_AMOUNT ),0) CR_AMOUNT ,',
' ',
'',
'',
'                   ',
'',
'       MAX(AFT.TR_TYPE) AS TR_TYPE',
'      ',
'  from AB_FIN_TRANSACTION AFT',
'  LEFT JOIN AB_FIN_TRANSACTION_DET AFTD ON AFTD.TR_ID = AFT.TR_ID',
'  LEFT JOIN  AB_LOOKUP_DETAIL ALD ON ALD.DET_ID = AFT.VOUCHER_TYPE_ID --AND ALD.DET_ID = 799',
'  LEFT JOIN AB_LOOKUP_DETAIL ADL ON ADL.DET_ID  = AFTD.SALARY_ACCOUNT_ID',
'  LEFT JOIN AB_FIN_COA COA ON COA.COA_ID = AFTD.COA_IDD',
'  LEFT JOIN AB_EMPLOYEES_REGISTRATION ASR ON ASR.EMP_ID = AFTD.EMPLOYEE_REGISTRATION_ID',
' WHERE  AFT.TR_TYPE = 801',
'  and AFTD.TRD_TYPE = 801',
'  and AFT.org_id = :GV_ORG_ID',
'',
'',
'  GROUP BY ',
'       AFT.TR_ID',
'       ',
'  order by AFT.TR_ID DESC',
'',
'',
'',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'JV Salary'
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
 p_id=>wwv_flow_imp.id(284983594531065905)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'UMAR'
,p_internal_uid=>284983594531065905
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284983703852065906)
,p_db_column_name=>'TR_ID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Tr ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284983798711065907)
,p_db_column_name=>'TR_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Transaction Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284983963033065908)
,p_db_column_name=>'VOUCHER_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Voucher Name'
,p_column_link=>'f?p=&APP_ID.:514:&SESSION.::&DEBUG.:514:P514_TR_ID:#TR_ID#'
,p_column_linktext=>'#VOUCHER_NAME#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284983983662065909)
,p_db_column_name=>'VOUCHER_TYPE_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Voucher Type Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284984087053065910)
,p_db_column_name=>'STATUS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284984228050065911)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284984284974065912)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284984431794065913)
,p_db_column_name=>'UPDATED_ON'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Updated On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284984546410065914)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284984640719065915)
,p_db_column_name=>'TR_TYPE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Tr Type'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284984767166065916)
,p_db_column_name=>'DEBIT_EMPLOYEE_NAME'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Debit Employee Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284984851711065917)
,p_db_column_name=>'DEBIT_SALARY_ACCOUNT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Debit Salary Account'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284984888769065918)
,p_db_column_name=>'CREDIT_EMPLOYEE_NAME'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Credit Employee Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284985028922065919)
,p_db_column_name=>'CREDIT_SALARY_ACCOUNT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Credit Salary Account'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284985120422065920)
,p_db_column_name=>'DEBIT_ACCOUNT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Debit Account'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284985274939065921)
,p_db_column_name=>'DEBIT_NARRATION'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Debit Narration'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284985363473065922)
,p_db_column_name=>'DR_AMOUNT'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Debit Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284985465106065923)
,p_db_column_name=>'CREDIT_ACCOUNT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Credit Account'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284985482525065924)
,p_db_column_name=>'CREDIT_NARRATION'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Credit Narration'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284985640365065925)
,p_db_column_name=>'CR_AMOUNT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Credit Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(148210028640040008)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(269606550538649760)
,p_button_name=>'Employee_Sub_Ledger'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2426385342184703)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Employee Sub Ledger Master'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:956:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(159303890780454830)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(269606550538649760)
,p_button_name=>'Employee_Sub_Ledger_Detail'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2426385342184703)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Employee Sub Ledger Detail'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:934:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(160115897836639432)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(269606550538649760)
,p_button_name=>'Employee_total_balance_test'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2426385342184703)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Employee Total Balance Test'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:937:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-print'
,p_security_scheme=>wwv_flow_imp.id(36704506721739483)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(162142078242309904)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(269606550538649760)
,p_button_name=>'print'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2426385342184703)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Employee Total Balance'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145013277222142525)
,p_name=>'P855_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(269606550538649760)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146756968506074719)
,p_name=>'P855_EMP_CODE'
,p_item_sequence=>41
,p_prompt=>'<B>Emp Name</B>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'       SELECT  HRMIS_CODE ||'' - ''|| NAME AS EMP_NAME,',
'       HRMIS_CODE',
'       FROM HR_EMPLOYEE_REGISTRATION',
'       Where STATUS = ''Y''',
'    '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(2423765497184702)
,p_item_css_classes=>'large-input'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146757267835074722)
,p_name=>'P855_SUB_DEPARTMENT'
,p_item_sequence=>51
,p_prompt=>'<B>Sub Department</B>'
,p_display_as=>'NATIVE_COMBOBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'   DISTINCT SUB_DEPARTMENT as display, ',
'    SUB_DEPARTMENT ',
'FROM HR_EMPLOYEE_REGISTRATION',
'WHERE STATUS = ''Y''',
'AND SUB_DEPARTMENT IS NOT NULL',
'',
'',
''))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(2423765497184702)
,p_item_css_classes=>'large-input'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'CONTAINS'
,p_attribute_02=>'N'
,p_attribute_04=>'N'
,p_attribute_07=>'Y'
,p_attribute_09=>'0'
,p_attribute_11=>'P855_SUB_DEPARTMENT_1'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146757530157074725)
,p_name=>'P855_SUB_ACC_TYPE'
,p_item_sequence=>61
,p_prompt=>'<B>Sub Account Type</B>'
,p_display_as=>'NATIVE_COMBOBOX'
,p_lov=>'SELECT  LOOKUP_DET_NAME , DET_ID FROM AB_LOOKUP_DETAIL WHERE LOOKUP_ID = 053 AND STATUS=''Y'''
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(2423765497184702)
,p_item_css_classes=>'large-input'
,p_item_icon_css_classes=>'fa-combo-chart'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'CONTAINS'
,p_attribute_02=>'N'
,p_attribute_04=>'N'
,p_attribute_07=>'Y'
,p_attribute_09=>'0'
,p_attribute_11=>'P855_SUB_ACC_TYPE_1'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146759078142074740)
,p_name=>'P855_SUB_ACC_TYPE_1'
,p_item_sequence=>71
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146759530380074745)
,p_name=>'P855_SUB_DEPARTMENT_1'
,p_item_sequence=>81
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156908546623388137)
,p_name=>'P855_FROM_DATE'
,p_item_sequence=>21
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(TO_DATE(''30-JUN-'' || TO_CHAR(SYSDATE, ''YYYY''), ''DD-MON-YYYY''), ''DD-MON-YYYY'') AS START_DATE',
'FROM DUAL;'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'<B>From Date</B>'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2423765497184702)
,p_item_css_classes=>'large-input'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156908647871388138)
,p_name=>'P855_TO_DATE'
,p_item_sequence=>31
,p_use_cache_before_default=>'NO'
,p_item_default=>'SELECT TO_CHAR(SYSDATE,''DD-MON-YYYY'') AS DATE_JV FROM DUAL;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'<B>To Date</b>'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2423765497184702)
,p_item_css_classes=>'large-input'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146757001011074720)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P855_EMP_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146758790072074737)
,p_event_id=>wwv_flow_imp.id(146757001011074720)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146757834937074728)
,p_name=>'Refresh The Region'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P855_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146757936788074729)
,p_event_id=>wwv_flow_imp.id(146757834937074728)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(145012492681142517)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146758019658074730)
,p_name=>'New_1'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P855_SUB_DEPARTMENT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146758873653074738)
,p_event_id=>wwv_flow_imp.id(146758019658074730)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146759140887074741)
,p_name=>'New_2'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P855_SUB_ACC_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146759260741074742)
,p_event_id=>wwv_flow_imp.id(146759140887074741)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156908755145388139)
,p_name=>'New_5'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P855_TO_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156908886892388140)
,p_event_id=>wwv_flow_imp.id(156908755145388139)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(269606550538649760)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156908957380388141)
,p_name=>'New_6'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P855_FROM_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156909083384388142)
,p_event_id=>wwv_flow_imp.id(156908957380388141)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(269606550538649760)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(160114756561639421)
,p_name=>'New_4'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P855_EMP_CODE'
,p_condition_element=>'P855_EMP_CODE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160114825283639422)
,p_event_id=>wwv_flow_imp.id(160114756561639421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(159303890780454830)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160114915036639423)
,p_event_id=>wwv_flow_imp.id(160114756561639421)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(159303890780454830)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(162142138100309905)
,p_name=>'New_3'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(162142078242309904)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(162142285622309906)
,p_event_id=>wwv_flow_imp.id(162142138100309905)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:window.open("f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=Employee_total_balance","_blank");'
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
