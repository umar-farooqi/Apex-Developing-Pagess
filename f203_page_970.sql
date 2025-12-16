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
--     PAGE: 970
--   Manifest End
--   Version:         24.1.0
--   Instance ID:     706401905951048
--

begin
null;
end;
/
prompt --application/pages/delete_00970
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>970);
end;
/
prompt --application/pages/page_00970
begin
wwv_flow_imp_page.create_page(
 p_id=>970
,p_name=>'TODO NOTES DETAIL'
,p_alias=>'TODO-NOTES-DETAIL'
,p_step_title=>'TODO NOTES DETAIL'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// function openTaskDialog(taskId, taskName, currentStatus) {',
'function openTaskDialog(taskId) {',
'    // Set the page item values',
'    apex.item("P970_ASSIGN_ID").setValue(taskId);',
'    // apex.item("P970_TASK_NAME").setValue(taskName);',
'    // apex.item("P970_CURRENT_STATUS").setValue(currentStatus);',
'    ',
'    // Refresh the region inside the dialog',
'    apex.region("assign_tsk").refresh();',
'    ',
'    // Open the dialog',
'    apex.theme.openRegion("assign_tsk");',
'}',
'',
'function downloadFile(fileId, fileType) {',
'    // Implement your file download logic here',
'    // Example: window.location.href = "f?p=&APP_ID.:0:&SESSION.:DOWNLOAD::P0_FILE_ID,P0_FILE_TYPE:" + fileId + "," + fileType;',
'    console.log("Downloading file - ID:", fileId, "Type:", fileType);',
'    alert("Download file ID: " + fileId + " Type: " + fileType);',
'}'))
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
'    var hrmisCode = $btn.data(''id'');',
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
'      $s(''P970_ID'', hrmisCode);',
'',
'      // Wait for value to apply',
'      apex.item(''P970_ID'').setValue(hrmisCode);',
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
'        $s(''P970_ID'', '''');',
'        if (callback) callback();',
'      }, 350);',
'    }',
'  });',
'})();',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* General Button Style */',
'.task-not-assigned,',
'.task-assigned,',
'.task-reassigned {',
'    padding: 8px 16px;',
'    border-radius: 6px;',
'    border: none;',
'    color: white;',
'    font-size: 13px;',
'    font-weight: 600;',
'    cursor: pointer;',
'    display: inline-flex;',
'    align-items: center;',
'    gap: 6px;',
'    transition: 0.25s ease;',
'}',
'',
'/* Not Assigned - Blue */',
'.task-not-assigned {',
'    background: #007bff;',
'}',
'.task-not-assigned:hover {',
'    background: #0056b3;',
'}',
'',
'/* Assigned - Green */',
'.task-assigned {',
'    background: #28a745;',
'}',
'.task-assigned:hover {',
'    background: #1e7e34;',
'}',
'',
'/* Reassigned - Orange */',
'.task-reassigned {',
'    background: #ff9800;',
'}',
'.task-reassigned:hover {',
'    background: #e68900;',
'}',
'',
'/* Icon Fix */',
'.task-not-assigned i,',
'.task-assigned i,',
'.task-reassigned i {',
'    font-size: 14px;',
'}',
'',
'',
'.heading-green {',
'    color: green;',
'    text-align: center;',
'    /* font-size: 2em; */',
'}',
'',
'.gradient-line-green {',
'    height: 2px;',
'    border: 0;',
'    border-radius: 3px;',
'    background: linear-gradient(to right, #a4d3a2, #2a8d4b, #a4d3a2);',
'    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);',
'    margin: 10px auto auto;',
'    max-width: 100%;',
'}',
'',
'',
'.t-TabsRegion-items, .t-Region-body {',
'    height: auto !important;',
'    min-height: auto !important;',
'}',
'',
'',
'#ITM, #detail_region, #AM {',
'    border-collapse: collapse;',
'    width: 100%;',
'    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);',
'    overflow-x: auto;',
'}',
'#ITM th, #detail_region th, #AM th {',
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
'#detail_region th span, #detail_region th a,',
'#AM th span, #AM th a {',
'    color: white !important;',
'}',
'#ITM td, #detail_region td, #AM td {',
'    font-size: 13px;',
'    padding: 8px 12px;',
'    border: 1px solid #eee;',
'    text-align: left;',
'    background-color: #ffffff;',
'    transition: background-color 0.2s ease;',
'    word-wrap: break-word;',
'}',
'#ITM td:hover, #detail_region td:hover, #AM td:hover {',
'    background-color: #e7f7e7;',
'    cursor: pointer;',
'}',
'#ITM td.clicked-cell, #detail_region td.clicked-cell, #AM td.clicked-cell {',
'    background-color: #d4edda !important;',
'    box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.1);',
'}',
'#ITM td:first-child, #detail_region td:first-child, #AM td:first-child {',
'    width: 120px;',
'}',
'#ITM td, #ITM th,',
'#detail_region td, #detail_region th,',
'#AM td, #AM th {',
'    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);',
'}',
'#ITM th:not(:first-child), #detail_region th:not(:first-child), #AM th:not(:first-child),',
'#ITM td:not(:first-child), #detail_region td:not(:first-child), #AM td:not(:first-child) {',
'    width: 200px;',
'}',
'@media (max-width: 768px) {',
'    #ITM, #detail_region, #AM {',
'        display: block;',
'        overflow-x: auto;',
'        white-space: nowrap;',
'}',
'    #ITM th, #ITM td,',
'    #detail_region th, #detail_region td,',
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
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53458878224412911)
,p_plug_name=>'Assigned Task'
,p_region_name=>'tsk'
,p_region_css_classes=>'js-dialog-size1000x450'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(2338601010184674)
,p_plug_display_sequence=>80
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    ASSIGNED_TO_TASK,',
'    PRIORITY,',
'    CLOSING_DATE,',
'    ASSIGNED_ID,',
'    REMARKS,',
'    TASK_STATUS,',
'    START_DATE,',
'    status,',
'    ASSIGNED_FROM_TASK',
'from AB_TODO_NOTES DET',
'ORDER BY ID DESC;'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53460083489412923)
,p_plug_name=>'Received Task'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54741464789978971)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'ATN.ASSIGNED_TO_TASK,',
'ATN.PRIORITY,',
'ATN.CLOSING_DATE,',
'ATN.ASSIGNED_ID,',
'ATN.REMARKS,',
'ATNS.NOTES AS MAIN_TASK,',
'ATN.TASK_STATUS,',
'ATN.START_DATE,',
'ATN.status,',
'ATN.ASSIGNED_FROM_TASK',
'',
'from ',
'AB_TODO_NOTES ATN',
'LEFT JOIN AB_TODO_NOTES  ATNS ON ATNS.ID = ATN.ASSIGNED_ID',
'WHERE',
' ATN.ASSIGNED_TO_TASK = :GV_USER_ID',
'OR ATN.ASSIGNED_FROM_TASK = :GV_USER_ID',
'ORDER BY ATN.ID DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'TODO NOTES DETAIL'
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
'  Received Task',
'</h3>',
'<hr class="gradient-line-green">'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(53460121110412924)
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
,p_internal_uid=>53460121110412924
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53462300540412946)
,p_db_column_name=>'ASSIGNED_TO_TASK'
,p_display_order=>10
,p_column_identifier=>'K'
,p_column_label=>'Assigned To Task'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53462402370412947)
,p_db_column_name=>'PRIORITY'
,p_display_order=>20
,p_column_identifier=>'L'
,p_column_label=>'Priority'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53462558514412948)
,p_db_column_name=>'CLOSING_DATE'
,p_display_order=>30
,p_column_identifier=>'M'
,p_column_label=>'Closing Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53462639728412949)
,p_db_column_name=>'ASSIGNED_ID'
,p_display_order=>40
,p_column_identifier=>'N'
,p_column_label=>'Task ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53462730044412950)
,p_db_column_name=>'REMARKS'
,p_display_order=>50
,p_column_identifier=>'O'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55971657654141701)
,p_db_column_name=>'TASK_STATUS'
,p_display_order=>60
,p_column_identifier=>'P'
,p_column_label=>'Task Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55971758977141702)
,p_db_column_name=>'START_DATE'
,p_display_order=>70
,p_column_identifier=>'Q'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55971847734141703)
,p_db_column_name=>'STATUS'
,p_display_order=>80
,p_column_identifier=>'R'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55972173080141706)
,p_db_column_name=>'ASSIGNED_FROM_TASK'
,p_display_order=>90
,p_column_identifier=>'S'
,p_column_label=>'Assigned From Task'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56097407387208102)
,p_db_column_name=>'MAIN_TASK'
,p_display_order=>100
,p_column_identifier=>'T'
,p_column_label=>'Main Task'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(55962318270037344)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'559624'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ASSIGNED_ID:ASSIGNED_TO_TASK:PRIORITY:START_DATE:CLOSING_DATE:TASK_STATUS:REMARKS:'
,p_sort_column_1=>'ASSIGNED_ID'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56098023500208108)
,p_plug_name=>'DASHBOARD V0'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54793060041978986)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_html CLOB;',
'  v_priority_class VARCHAR2(50);',
'  v_status_class VARCHAR2(50);',
'    v_button_html  CLOB;',
'BEGIN',
'  -- HTML Header',
'  v_html := ''<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Task Management Dashboard</title>',
'    <style>',
'',
'',
'        h1 {color: white; text-align: center; margin-bottom: 30px; font-size: 2.5em; ',
'        text-shadow: 2px 2px 4px rgba(0,0,0,0.2);}',
'',
'        .cards-grid {',
'            display: grid;',
'            grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));',
'            gap: 25px;',
'            padding: 10px;',
'        }',
'',
'        .card {',
'            background: white;',
'            border-radius: 15px;',
'            padding: 25px;',
'            box-shadow: 0 10px 30px rgba(0,0,0,0.3);',
'            transition: transform 0.3s ease, box-shadow 0.3s ease;',
'            position: relative;',
'            overflow: hidden;',
'        }',
'',
'        .card:hover {',
'            transform: translateY(-5px);',
'            box-shadow: 0 15px 40px rgba(0,0,0,0.4);',
'        }',
'',
'        .priority-badge {',
'            position: absolute;',
'            top: 15px;',
'            right: 15px;',
'            padding: 6px 12px;',
'            border-radius: 20px;',
'            font-size: 0.85em;',
'            font-weight: bold;',
'            text-transform: uppercase;',
'        }',
'',
'        .priority-high {',
'            background: #ff4757;',
'            color: white;',
'        }',
'',
'        .priority-medium {',
'            background: #ffa502;',
'            color: white;',
'        }',
'',
'        .priority-low {',
'            background: #26de81;',
'            color: white;',
'        }',
'',
'        .card-header {',
'            margin-bottom: 20px;',
'            padding-right: 80px;',
'        }',
'',
'        .main-task {',
'            font-size: 1.4em;',
'            font-weight: bold;',
'            color: #2c3e50;',
'            margin-bottom: 10px;',
'            line-height: 1.3;',
'        }',
'',
'        .assigned-by {',
'            display: flex;',
'            align-items: center;',
'            gap: 8px;',
'            color: #7f8c8d;',
'            font-size: 0.9em;',
'            margin-bottom: 15px;',
'        }',
'',
'        .assigned-by-icon {',
'            font-size: 1.1em;',
'        }',
'',
'        .assigned-by-name {',
'            font-weight: 600;',
'            color: #34495e;',
'        }',
'',
'        .dates-section {',
'            display: flex;',
'            gap: 20px;',
'            margin-bottom: 15px;',
'        }',
'',
'        .date-item {',
'            flex: 1;',
'        }',
'',
'        .date-label {',
'            font-size: 0.75em;',
'            color: #7f8c8d;',
'            text-transform: uppercase;',
'            letter-spacing: 0.5px;',
'            margin-bottom: 5px;',
'        }',
'',
'        .date-value {',
'            font-size: 0.95em;',
'            color: #34495e;',
'            font-weight: 600;',
'        }',
'',
'        .remarks {',
'            margin: 15px 0;',
'            padding: 12px;',
'            background: #f8f9fa;',
'            border-radius: 8px;',
'            border-left: 4px solid #667eea;',
'        }',
'',
'        .remarks-label {',
'            font-size: 0.75em;',
'            color: #7f8c8d;',
'            text-transform: uppercase;',
'            margin-bottom: 5px;',
'        }',
'',
'        .remarks-text {',
'            color: #2c3e50;',
'            font-size: 0.95em;',
'            line-height: 1.5;',
'        }',
'',
'        .status-btn {',
'            width: 100%;',
'            padding: 12px;',
'            border: none;',
'            border-radius: 8px;',
'            font-size: 1em;',
'            font-weight: bold;',
'            cursor: pointer;',
'            transition: all 0.3s ease;',
'            text-transform: uppercase;',
'            letter-spacing: 1px;',
'        }',
'',
'        .status-pending {',
'            background: #f39c12;',
'            color: white;',
'        }',
'',
'        .status-pending:hover {',
'            background: #e67e22;',
'        }',
'',
'        .status-in-progress {',
'            background: #3498db;',
'            color: white;',
'        }',
'',
'        .status-in-progress:hover {',
'            background: #2980b9;',
'        }',
'',
'        .status-completed {',
'            background: #27ae60;',
'            color: white;',
'        }',
'',
'        .status-completed:hover {',
'            background: #229954;',
'        }',
'',
'        .status-on-hold {',
'            background: #95a5a6;',
'            color: white;',
'        }',
'',
'        .status-on-hold:hover {',
'            background: #7f8c8d;',
'        }',
'',
'        ',
'    .heading-green {',
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
'    </style>',
'</head>',
'<body>',
'    <div class="container">',
'        <h3 class="heading-green" style="margin-left: 20px;">',
'           Task Management Dashboard',
'        </h3>',
'        <hr class="gradient-line-green" style="margin-top: 3px;">',
'        <div class="cards-grid" id="cardsContainer">'';',
'',
'  -- Loop through tasks from your table',
'  FOR task_rec IN (',
'    WITH USERS AS (',
'        select',
'                First_name||'' ''||last_name  AS USERNAME,',
'                USER_ID',
'        from AB_UM_USERS_REG',
'             where STATUS = ''Y''',
'    )',
'',
'    select ',
'        ATN.ID AS task_id,',
'        ATN.ASSIGNED_TO_TASK,',
'        ATN.PRIORITY priority,',
'        ATN.CLOSING_DATE closing_date,',
'        ATN.ASSIGNED_ID,',
'        NVL(ATN.REMARKS, ''No Remarks'') REMARKS,',
'        NVL(ATNS.NOTES, ''TASK TITLE'') AS MAIN_TASK,',
'        ATN.TASK_STATUS,',
'        ATN.START_DATE start_date,',
'        ATN.status,',
'        ATNS.CATEGORY,',
'        INITCAP(US.USERNAME) AS assigned_by',
'',
'    from ',
'    AB_TODO_NOTES ATN',
'    LEFT JOIN AB_TODO_NOTES  ATNS ON ATNS.ID = ATN.ASSIGNED_ID',
'         JOIN USERS US ON US.USER_ID = ATNS.USER_ID',
'    WHERE',
'     ATN.ASSIGNED_TO_TASK = :GV_USER_ID',
'    OR ATN.ASSIGNED_FROM_TASK = :GV_USER_ID',
'    ORDER BY ATN.ID DESC',
'',
'  ) LOOP',
'    ',
'    -- Set priority class',
'    v_priority_class := ''priority-'' || LOWER(task_rec.priority);',
'    ',
'    -- Set status class',
'    v_status_class := ''status-'' || LOWER(REPLACE(task_rec.task_status, '' '', ''-''));',
'    ',
'    -- Build each card',
'    v_html := v_html || ''',
'            <div class="card">',
'                <div class="priority-badge '' || v_priority_class || ''">',
'                    '' || task_rec.priority || ''',
'                </div>',
'                <div class="card-header">',
'                    <div class="main-task">'' || task_rec.main_task || ''</div>',
'                    <div class="assigned-by">',
unistr('                        <span class="assigned-by-icon">\D83D\DC64</span>'),
'                        <span>Assigned by: <span class="assigned-by-name">'' || ',
'                        task_rec.assigned_by || ''</span></span>',
'                    </div>',
'                </div>',
'                <div class="dates-section">',
'                    <div class="date-item">',
'                        <div class="date-label">Start Date</div>',
'                        <div class="date-value">'' || ',
'                        TO_CHAR(task_rec.start_date, ''DD-Mon-YYYY'') || ''</div>',
'                    </div>',
'                    <div class="date-item">',
'                        <div class="date-label">Closing Date</div>',
'                        <div class="date-value">'' || ',
'                        TO_CHAR(task_rec.closing_date, ''DD-Mon-YYYY'') || ''</div>',
'                    </div>',
'                    <div class="date-item">',
'                        <div class="date-label">Category</div>',
'                        <div class="date-value">'' || ',
'                        task_rec.CATEGORY || ''</div>',
'                    </div>',
'                </div>',
'                <div class="remarks">',
'                    <div class="remarks-label">Remarks</div>',
'                    <div class="remarks-text">'' || task_rec.remarks || ''</div>',
'                </div>',
'     <button class="status-btn status-'' || LOWER(REPLACE(task_rec.task_status, '' '', ''-'')) || ''"',
'             onclick="event.preventDefault(); openTaskDialog('' || task_rec.task_id || ''); return false;">',
'       '' || APEX_ESCAPE.HTML(task_rec.task_status) || ''',
'    </button>',
'            </div>'';',
'            ',
'  END LOOP;',
'',
'  -- Close HTML',
'  v_html := v_html || ''',
'        </div>',
'    </div>',
'',
'    <script>',
'        function updateStatus(button, taskName) {',
'            const statusOptions = [''''Pending'''', ''''In Progress'''', ''''Completed'''', ''''On Hold''''];',
'            const currentStatus = button.textContent.trim();',
'            const currentIndex = statusOptions.indexOf(currentStatus);',
'            const nextIndex = (currentIndex + 1) % statusOptions.length;',
'            const newStatus = statusOptions[nextIndex];',
'            ',
'            button.className = ''''status-btn status-'''' + newStatus.toLowerCase().replace(/\s+/g, ''''-'''');',
'            button.textContent = newStatus;',
'            ',
'            console.log(''''Task: '''' + taskName + '''' | New Status: '''' + newStatus);',
'        }',
'    </script>',
'</body>',
'</html>'';',
'',
'  -- Output the HTML',
'  htp.p(v_html);',
'  ',
'END;',
'',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56215052281230702)
,p_plug_name=>'TASK_STATUS'
,p_region_name=>'assign_tsk'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(2338601010184674)
,p_plug_display_sequence=>90
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56215343053230705)
,p_plug_name=>'DASHBOARD V1'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54793060041978986)
,p_plug_display_sequence=>31
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_priority_class VARCHAR2(50);',
'  v_status_class VARCHAR2(50);',
'BEGIN',
'  -- HTML Header - Output directly',
'  htp.p(''<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Task Management Dashboard</title>',
'            <style>',
'            h1{',
'              color:#fff;text-align:center;margin-bottom:30px;font-size:2.5em;',
'              text-shadow:2px 2px 4px rgba(0,0,0,.2)',
'            }',
'',
'            .cards-grid{',
'              display:grid;grid-template-columns:repeat(auto-fill,minmax(350px,1fr));',
'              gap:25px;padding:10px',
'            }',
'',
'            .card{',
'              background:#fff;border-radius:15px;padding:25px;',
'              box-shadow:0 10px 30px rgba(0,0,0,.3);',
'              transition:.3s ease;position:relative;overflow:hidden',
'            }',
'            .card:hover{transform:translateY(-5px);box-shadow:0 15px 40px rgba(0,0,0,.4)}',
'',
'            .card-header{margin-bottom:20px;padding-right:80px}',
'',
'',
'            .priority-badge{',
'              position:absolute;top:15px;right:15px;',
'              padding:6px 12px;border-radius:20px;',
'              font-size:.85em;font-weight:700;text-transform:uppercase;color:#fff',
'            }',
'            .priority-high{background:#ff4757}',
'            .priority-medium{background:#ffa502}',
'            .priority-normal{background:#26de81}',
'',
'            .main-task{font-size:1.4em;font-weight:700;color:#2c3e50;margin-bottom:10px;line-height:1.3}',
'',
'            .assigned-by{',
'              display:flex;align-items:center;gap:8px;',
'              color:#7f8c8d;font-size:.9em;margin-bottom:15px',
'            }',
'            .assigned-by-name{font-weight:600;color:#34495e}',
'',
'            .dates-section{display:flex;gap:20px;margin-bottom:15px}',
'            .date-item{flex:1}',
'            .date-label{',
'              font-size:.75em;color:#7f8c8d;text-transform:uppercase;',
'              letter-spacing:.5px;margin-bottom:5px',
'            }',
'            .date-value{font-size:.95em;color:#34495e;font-weight:600}',
'',
'            .remarks{margin:15px 0;padding:12px;background:#f8f9fa;border-radius:8px;border-left:4px solid #667eea;position:relative;overflow:hidden}',
'.remarks-label{font-size:.75em;color:var(--muted);text-transform:uppercase;margin-bottom:5px}',
'.remarks-text{color:#2c3e50;font-size:.95em;line-height:1.5;margin:0}',
'/* clamp: default 3 lines, can be overridden with data-clamp-lines attr on .remarks */',
'.remarks .clamped{display:-webkit-box;-webkit-box-orient:vertical;overflow:hidden;-webkit-line-clamp:3;transition:all .3s ease}',
'.remarks.expanded .clamped{-webkit-line-clamp:unset;display:block;max-height:1000px}',
'.remarks-toggle{display:inline-block;margin-top:8px;padding:6px 10px;border-radius:6px;border:none;background:transparent;color:var(--muted-dark);font-weight:700;cursor:pointer;font-size:.85em}',
'',
'            .status-btn{',
'              width:100%;padding:12px;border:0;border-radius:8px;',
'              font-size:1em;font-weight:700;cursor:pointer;',
'              transition:.3s;text-transform:uppercase;letter-spacing:1px;color:#fff',
'            }',
'            .status-pending{background:#f39c12}',
'            .status-pending:hover{background:#e67e22}',
'',
'            .status-in-pprocess{background:#3498db}',
'            .status-in-pprocess:hover{background:#2980b9}',
'',
'            .status-closed{background:#27ae60}',
'            .status-closed:hover{background:#229954}',
'',
'            .status-on-hold{background:#95a5a6}',
'            .status-on-hold:hover{background:#7f8c8d}',
'',
'            .heading-green{color:green;text-align:center;margin:0;padding:1px 0}',
'',
'            .gradient-line-green{',
'              height:2px;border:0;border-radius:3px;',
'              background:linear-gradient(to right,#a4d3a2,#2a8d4b,#a4d3a2);',
'              box-shadow:0 1px 2px rgba(0,0,0,.1);',
'              margin:10px auto;max-width:100%',
'            }',
'            </style>',
'',
'</head>',
'<body>',
'    <div class="container">',
'        <h3 class="heading-green" style="margin-left: 20px;">',
'           Task Management Dashboard',
'        </h3>',
'        <hr class="gradient-line-green" style="margin-top: 3px;">',
'        <div class="cards-grid" id="cardsContainer">'');',
'',
'  -- Loop through tasks and output each card directly',
'  FOR task_rec IN (',
'    WITH USERS AS (',
'        SELECT',
'            First_name||'' ''||last_name AS USERNAME,',
'            USER_ID',
'        FROM AB_UM_USERS_REG',
'        WHERE STATUS = ''Y''',
'    )',
'    SELECT ',
'        ATN.ID AS task_id,',
'        ATN.ASSIGNED_TO_TASK,',
'        ATN.PRIORITY priority,',
'        ATN.CLOSING_DATE closing_date,',
'        ATN.ASSIGNED_ID,',
'        NVL(ATN.REMARKS, ''No Remarks'') REMARKS,',
'        NVL(ATNS.NOTES, ''TASK TITLE'') AS MAIN_TASK,',
'        ATN.TASK_STATUS,',
'        ATN.START_DATE start_date,',
'        ATN.status,',
'        ATNS.CATEGORY,',
'        ATN.USER_REMARKS,',
'        ATN.ASSIGNED_FROM_TASK,',
'        INITCAP(US.USERNAME) AS assigned_by',
'    FROM ',
'        AB_TODO_NOTES ATN',
'        LEFT JOIN AB_TODO_NOTES ATNS ON ATNS.ID = ATN.ASSIGNED_ID',
'        JOIN USERS US ON US.USER_ID = ATNS.USER_ID',
'    WHERE',
'        ATN.ASSIGNED_TO_TASK = :GV_USER_ID',
'        OR ATN.ASSIGNED_FROM_TASK = :GV_USER_ID',
'    ORDER BY ATN.ID DESC',
'  ) LOOP',
'  CASE task_rec.task_status',
'  WHEN ''PENDING''     THEN v_status_class := ''status-pending'';',
'  WHEN ''IN-PROCESS''  THEN v_status_class := ''status-in-progress'';',
'  WHEN ''CLOSED''      THEN v_status_class := ''status-completed'';',
'  ELSE                    v_status_class := ''status-on-hold'';',
'END CASE;',
'',
'    ',
'    -- Set priority and status classes',
'    v_priority_class := ''priority-'' || LOWER(task_rec.priority);',
'    v_status_class := ''status-'' || LOWER(REPLACE(task_rec.task_status, '' '', ''-''));',
'    ',
'    -- Output each card directly - NO size limitation!',
'    htp.p(''<div class="card">'');',
'    htp.p(''  <div class="priority-badge '' || v_priority_class || ''">'');',
'    htp.p(''    '' || task_rec.priority);',
'    htp.p(''  </div>'');',
'    htp.p(''  <div class="card-header">'');',
'    htp.p(''    <div class="main-task">'' || task_rec.main_task || ''</div>'');',
'    htp.p(''    <div class="assigned-by">'');',
unistr('    htp.p(''      <span class="assigned-by-icon">\D83D\DC64</span>'');'),
'    htp.p(''      <span>Assigned by: <span class="assigned-by-name">'' || task_rec.assigned_by || ''</span></span>'');',
'    htp.p(''    </div>'');',
'    htp.p(''  </div>'');',
'    htp.p(''  <div class="dates-section">'');',
'    htp.p(''    <div class="date-item">'');',
'    htp.p(''      <div class="date-label">Start Date</div>'');',
'    htp.p(''      <div class="date-value">'' || TO_CHAR(task_rec.start_date, ''DD-Mon-YYYY'') || ''</div>'');',
'    htp.p(''    </div>'');',
'    htp.p(''    <div class="date-item">'');',
'    htp.p(''      <div class="date-label">Closing Date</div>'');',
'    htp.p(''      <div class="date-value">'' || TO_CHAR(task_rec.closing_date, ''DD-Mon-YYYY'') || ''</div>'');',
'    htp.p(''    </div>'');',
'    htp.p(''    <div class="date-item">'');',
'    htp.p(''      <div class="date-label">Category</div>'');',
'    htp.p(''      <div class="date-value">'' || task_rec.CATEGORY || ''</div>'');',
'    htp.p(''    </div>'');',
'    htp.p(''  </div>'');',
'htp.p(''  <div class="remarks">'');',
'htp.p(''    <div class="remarks-label">Remarks</div>'');',
'htp.p(''    <div class="remarks-text">'' || task_rec.remarks || ''</div>'');',
'htp.p(''  </div>'');',
'htp.p(',
'  ''<button type="button" class="status-btn '' || v_status_class || ''" '' ||',
'  ''onclick="openTaskDialog('' ||',
'     task_rec.task_id || '','' ||',
'     CHR(39) || REPLACE(task_rec.main_task, CHR(39), CHR(92)||CHR(39)) || CHR(39) || '','' ||',
'     CHR(39) || task_rec.task_status || CHR(39) ||',
'  '');">''',
');',
'',
'htp.p(APEX_ESCAPE.HTML(task_rec.task_status));',
'htp.p(''</button>'');',
'',
'',
'    htp.p(''</div>'');',
'            ',
'  END LOOP;',
'',
'  -- Close HTML - Output directly',
'  htp.p(''    </div>',
'    </div>',
''');',
'',
'  htp.p(''    ',
'</body>',
'</html>'');',
'  ',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56845141846606201)
,p_plug_name=>'Task Management Dashboard'
,p_title=>'Task Management Dashboard'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill:t-TabsRegion-mod--large'
,p_plug_template=>wwv_flow_imp.id(2357896883184680)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3 class="heading-green">',
unistr('  \D83D\DCCB Task Management Dashboard'),
'</h3>',
'<hr class="gradient-line-green">'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56845449247606204)
,p_plug_name=>'PENDING'
,p_parent_plug_id=>wwv_flow_imp.id(56845141846606201)
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_priority_class VARCHAR2(50);',
'  v_status_class VARCHAR2(50);',
'  v_assigned_text VARCHAR2(500);',
'  v_assigned_to_text VARCHAR2(500);',
'BEGIN',
'  htp.p(''<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Task Management Dashboard</title>',
' <style>',
'        * { margin: 0; padding: 0; box-sizing: border-box; }',
'        ',
'        body {',
'            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;',
'        ',
'            min-height: 100vh;',
'      ',
'        }',
'',
'        .cards-grid {',
'            display: grid;',
'            grid-template-columns: repeat(2, minmax(400px, 1fr));',
'            gap: 25px;',
'            padding: 10px 10px;',
'        }',
'',
'        .card {',
'            background: white;',
'            border-radius: 15px;',
'            padding: 25px;',
'            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);',
'            transition: transform 0.3s ease, box-shadow 0.3s ease;',
'            position: relative;',
'            overflow: hidden;',
'        }',
'',
'        .card:hover {',
'            transform: translateY(-5px);',
'            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.4);',
'        }',
'',
'        .priority-badge {',
'            position: absolute;',
'            top: 15px;',
'            right: 15px;',
'            padding: 6px 12px;',
'            border-radius: 20px;',
'            font-size: 0.85em;',
'            font-weight: bold;',
'            text-transform: uppercase;',
'            color: white;',
'        }',
'',
'        .priority-high { background: #ff4757; }',
'        .priority-medium { background: #ffa502; }',
'        .priority-normal { background: #26de81; }',
'        .priority-low { background: #26de81; }',
'',
'        .card-header {',
'            margin-bottom: 20px;',
'            padding-right: 80px;',
'        }',
'',
'        .main-task {',
'            font-size: 1em;',
'            font-weight: bold;',
'            color: #2c3e50;',
'            margin-bottom: 10px;',
'            line-height: auto;',
'        }',
'',
'        .assigned-by {',
'            display: flex;',
'            align-items: center;',
'            gap: 8px;',
'            color: #7f8c8d;',
'            font-size: 0.9em;',
'            margin-bottom: 15px;',
'        }',
'',
'        .assigned-by span:nth-child(3) {',
'    margin-left: auto;',
'}',
'',
'        .assigned-by-icon { font-size: 1.1em; }',
'        .assigned-by-name { font-weight: 600; color: #34495e; }',
'        .assigned-by-you { font-weight: 700; color: #3498db; }',
'',
'        .info-grid {',
'            display: grid;',
'            grid-template-columns: repeat(3, 1fr);',
'            gap: 15px;',
'            margin-bottom: 15px;',
'            padding: 15px;',
'            background: #f8f9fa;',
'            border-radius: 8px;',
'        }',
'',
'        .info-item { text-align: center; }',
'',
'        .info-label {',
'            font-size: 0.75em;',
'            color: #7f8c8d;',
'            text-transform: uppercase;',
'            letter-spacing: 0.5px;',
'            margin-bottom: 5px;',
'            display: block;',
'            font-weight: 600;',
'        }',
'',
'        .info-value {',
'            font-size: 0.95em;',
'            color: #34495e;',
'            font-weight: 600;',
'            display: block;',
'        }',
'',
'        .category-badge {',
'            display: inline-block;',
'            padding: 4px 12px;',
'            border-radius: 15px;',
'            background: linear-gradient(135deg, #667eea, #764ba2);',
'            color: white;',
'            font-size: 0.85em;',
'            font-weight: 600;',
'        }',
'',
'        .remarks-section { margin: 15px 0; }',
'',
'        .remarks-box {',
'            padding: 12px;',
'            background: #f8f9fa;',
'            border-radius: 8px;',
'            border-left: 4px solid #667eea;',
'            margin-bottom: 10px;',
'            position: relative;',
'        }',
'',
'        .remarks-box.user-remarks { border-left-color: #3498db; }',
'',
'        .remarks-label {',
'            font-size: 0.75em;',
'            color: #7f8c8d;',
'            text-transform: uppercase;',
'            margin-bottom: 5px;',
'            font-weight: 600;',
'        }',
'',
'        .remarks-text {',
'            color: #2c3e50;',
'            font-size: 0.95em;',
'            line-height: 1.5;',
'            max-height: 60px;',
'            overflow: hidden;',
'            transition: max-height 0.3s ease;',
'        }',
'',
'        .remarks-text.expanded { max-height: 500px; }',
'',
'        .remarks-toggle {',
'            display: inline-block;',
'            margin-top: 8px;',
'            padding: 4px 10px;',
'            border-radius: 6px;',
'            border: 1px solid #ddd;',
'            background: white;',
'            color: #667eea;',
'            font-weight: 600;',
'            cursor: pointer;',
'            font-size: 0.85em;',
'            transition: 0.2s;',
'        }',
'',
'        .remarks-toggle:hover {',
'            background: #667eea;',
'            color: white;',
'        }',
'',
'        .attachments-section {',
'            margin: 15px 0;',
'            padding: 12px;',
'            background: #f9f9f9;',
'            border-radius: 8px;',
'            border: 1px dashed #ddd;',
'        }',
'',
'        .attachments-label {',
'            font-size: 0.75em;',
'            color: #7f8c8d;',
'            text-transform: uppercase;',
'            margin-bottom: 8px;',
'            font-weight: 600;',
'        }',
'',
'        .attachment-item {',
'            display: flex;',
'            align-items: center;',
'            gap: 8px;',
'            padding: 8px;',
'            background: white;',
'            border-radius: 6px;',
'            margin-bottom: 6px;',
'            transition: 0.2s;',
'            cursor: pointer;',
'        }',
'',
'        .attachment-item:hover {',
'            background: #e8f4f8;',
'            transform: translateX(3px);',
'        }',
'',
'        .attachment-item:last-child { margin-bottom: 0; }',
'        .attachment-icon { font-size: 1.2em; }',
'        .attachment-name { font-size: 0.9em; color: #34495e; font-weight: 500; flex: 1; }',
'',
'        .attachment-badge {',
'            font-size: 0.75em;',
'            padding: 2px 8px;',
'            border-radius: 10px;',
'            background: #667eea;',
'            color: white;',
'        }',
'',
'        .status-btn {',
'            width: 100%;',
'            padding: 12px;',
'            border: 0;',
'            border-radius: 8px;',
'            font-size: 1em;',
'            font-weight: bold;',
'            cursor: pointer;',
'            transition: all 0.3s ease;',
'            text-transform: uppercase;',
'            letter-spacing: 1px;',
'            color: white;',
'        }',
'',
'        .status-pending { background: #f39c12; }',
'        .status-pending:hover { background: #e67e22; }',
'        .status-in-process { background: #3498db; }',
'        .status-in-process:hover { background: #2980b9; }',
'        .status-closed { background: #27ae60; }',
'        .status-closed:hover { background: #229954; }',
'        .status-on-hold { background: #95a5a6; }',
'        .status-on-hold:hover { background: #7f8c8d; }',
'    </style>',
'</head>',
'<body>',
'    <div class="container">',
'        ',
'        <div class="cards-grid">'');',
'',
'',
'  FOR task_rec IN (',
'',
'    WITH USERS AS (',
'        SELECT',
'            FIRST_NAME || '' '' || LAST_NAME AS USERNAME,',
'            USER_ID',
'        FROM AB_UM_USERS_REG',
'        WHERE STATUS = ''Y''',
'    )',
'',
'    ,DOCUMENT AS (',
'            SELECT',
'                DOC_TYPE,',
'                DOC_TYPE_ID,',
'                ''<a href="https://AKB.FAISALMOVERS.CO:8080/i/AKB/'' || DOC_ID || DOCUMENTS_TYPE || ''" target="_blank">Download</a>'' AS DOWNLOAD_LINK,',
'                ''<img src="https://AKB.FAISALMOVERS.CO:8080/i/AKB/'' || DOC_ID || DOCUMENTS_TYPE || ''" width="100px" height="100px" />'' AS IMAGE',
'    FROM ',
'        AB_DOCUMENT_RECORDS',
'    WHERE ',
'        DOC_TYPE =  ''TASK ASSIGN''',
'        AND STATUS = ''Y''',
'    )',
'    SELECT ',
'        ATN.ID AS TASK_ID,',
'        ATN.ASSIGNED_TO_TASK,',
'        ATN.ASSIGNED_FROM_TASK,',
'        ATN.PRIORITY,',
'        ATN.START_DATE,',
'        ATN.CLOSING_DATE,',
'        ATN.TASK_STATUS,',
'        ATN.ASSIGNED_ID,',
'        NVL(ATN.REMARKS,  ''No Remarks '') AS REMARKS,',
'        NVL(ATN.USER_REMARKS,  ''No User Remarks '') AS USER_REMARKS,',
'        NVL(NULL, ''SUB_DOC'') AS ATN_ATTACHMENT,',
'        NVL(ATNS.NOTES,  ''TASK TITLE '') AS MAIN_TASK,',
'        NVL(ATNS.CATEGORY,  ''General '') AS CATEGORY,',
'        NVL(NULL, ''DOC'') AS ATNS_ATTACHMENT,',
'        INITCAP(US.USERNAME) AS ASSIGNED_BY_NAME,',
'        INITCAP(UST.USERNAME) AS ASSIGNED_TO_NAME,',
'        NVL(DOWNLOAD_LINK, ''No document found'') DOWNLOAD_LINK',
'    FROM ',
'        AB_TODO_NOTES ATN',
'        LEFT JOIN AB_TODO_NOTES ATNS ON ATNS.ID = ATN.ASSIGNED_ID',
'        LEFT JOIN USERS US ON US.USER_ID = ATNS.USER_ID',
'        LEFT JOIN USERS UST ON UST.USER_ID = ATN.ASSIGNED_TO_TASK',
'        LEFT JOIN DOCUMENT MDOC ON MDOC.DOC_TYPE_ID = ATNS.ID',
'    WHERE',
'        (ATN.ASSIGNED_TO_TASK = :GV_USER_ID OR ATN.ASSIGNED_FROM_TASK = :GV_USER_ID)',
'        AND ATN.TASK_STATUS = ''PENDING''',
'    ORDER BY ATN.ID DESC',
'',
'  ) LOOP',
'  ',
'    -- Set CSS classes',
'    v_priority_class := ''priority-'' || LOWER(task_rec.PRIORITY);',
'    v_status_class := ''status-'' || LOWER(REPLACE(task_rec.TASK_STATUS, '' '', ''-''));',
'    ',
'    -- Determine assigned by text',
'    IF task_rec.ASSIGNED_FROM_TASK = :GV_USER_ID THEN',
'      v_assigned_text := ''<span class="assigned-by-you">Assigned By You</span>'';',
'    ELSE',
'      v_assigned_text := ''Assigned by: <span class="assigned-by-name">'' || ',
'                         NVL(task_rec.ASSIGNED_BY_NAME, ''Unknown'') || ''</span>'';',
'    END IF;',
'',
'    -- Determine assigned to text',
'    IF task_rec.ASSIGNED_TO_TASK = :GV_USER_ID THEN',
'      v_assigned_to_text := ''<span class="assigned-by-you">Assigned To You</span>'';',
'    ELSE',
'      v_assigned_to_text := ''Assigned to: <span class="assigned-by-name">'' || ',
'                         NVL(task_rec.ASSIGNED_TO_NAME, ''Unknown'') || ''</span>'';',
'    END IF;',
'    ',
'    -- ==================== CARD START ====================',
'    htp.p(''<div class="card">'');',
'    ',
'    -- Priority Badge',
'    htp.p(''  <div class="priority-badge '' || v_priority_class || ''">'');',
'    htp.p(''    '' || task_rec.PRIORITY);',
'    htp.p(''  </div>'');',
'    ',
'    -- Card Header',
'    htp.p(''  <div class="card-header">'');',
'    htp.p(''    <div class="main-task">'' || APEX_ESCAPE.HTML(task_rec.MAIN_TASK) || ''</div>'');',
'    htp.p(''    <div class="assigned-by">'');',
unistr('    htp.p(''      <span class="assigned-by-icon">\D83D\DC64</span>'');'),
'    htp.p(''      <span>'' || v_assigned_to_text || ''</span>'');',
unistr('    htp.p(''      <span class="assigned-by-icon">\D83D\DC64</span>'');'),
'    htp.p(''      <span>'' || v_assigned_text || ''</span>'');',
'    htp.p(''    </div>'');',
'    htp.p(''  </div>'');',
'    ',
'    -- Info Grid (Dates + Category)',
'    htp.p(''  <div class="info-grid">'');',
'    htp.p(''    <div class="info-item">'');',
unistr('    htp.p(''      <span class="info-label">\D83D\DCC5 Start Date</span>'');'),
'    htp.p(''      <span class="info-value">'' || TO_CHAR(task_rec.START_DATE, ''DD-Mon-YY'') || ''</span>'');',
'    htp.p(''    </div>'');',
'    htp.p(''    <div class="info-item">'');',
unistr('    htp.p(''      <span class="info-label">\23F0 Due Date</span>'');'),
'    htp.p(''      <span class="info-value">'' || TO_CHAR(task_rec.CLOSING_DATE, ''DD-Mon-YY'') || ''</span>'');',
'    htp.p(''    </div>'');',
'    htp.p(''    <div class="info-item">'');',
unistr('    htp.p(''      <span class="info-label">\D83C\DFF7\FE0F Category</span>'');'),
'    htp.p(''      <span class="category-badge">'' || APEX_ESCAPE.HTML(task_rec.CATEGORY) || ''</span>'');',
'    htp.p(''    </div>'');',
'    htp.p(''  </div>'');',
'    ',
'    -- Remarks Section',
'    htp.p(''  <div class="remarks-section">'');',
'    ',
'    -- Task Remarks',
'    htp.p(''    <div class="remarks-box">'');',
unistr('    htp.p(''      <div class="remarks-label">\D83D\DCDD Task Remarks</div>'');'),
'    htp.p(''      <div class="remarks-text" id="remarks1_'' || task_rec.TASK_ID || ''">'');',
'    htp.p(''        '' || APEX_ESCAPE.HTML(task_rec.REMARKS));',
'    htp.p(''      </div>'');',
'    htp.p(''    </div>'');',
'    ',
'    -- User Remarks',
'    htp.p(''    <div class="remarks-box user-remarks">'');',
unistr('    htp.p(''      <div class="remarks-label">\D83D\DCAC User Remarks</div>'');'),
'    htp.p(''      <div class="remarks-text" id="remarks2_'' || task_rec.TASK_ID || ''">'');',
'    htp.p(''        '' || APEX_ESCAPE.HTML(task_rec.USER_REMARKS));',
'    htp.p(''      </div>'');',
'    htp.p(''    </div>'');',
'    ',
'    htp.p(''  </div>'');',
'    ',
'   ',
'    IF task_rec.DOWNLOAD_LINK IS NOT NULL THEN',
'      htp.p(''  <div class="attachments-section">'');',
unistr('      htp.p(''    <div class="attachments-label">\D83D\DCCE Attachments</div>'');'),
'      ',
'      -- Main Attachment from ATNS',
'      IF task_rec.DOWNLOAD_LINK IS NOT NULL THEN',
'        htp.p(''    <div class="attachment-item">'');',
unistr('        htp.p(''      <span class="attachment-icon">\D83D\DCC4</span>'');'),
'        htp.p(''      <span class="attachment-name">'' || task_rec.DOWNLOAD_LINK || ''</span>'');',
'        htp.p(''      <span class="attachment-badge">Main</span>'');',
'        htp.p(''    </div>'');',
'      ',
'    END IF;',
'',
'      ',
'      -- Document from ATN',
'    --   IF task_rec.ATN_ATTACHMENT IS NOT NULL THEN',
'    --     htp.p(''    <div class="attachment-item" onclick="downloadFile('' || ',
'    --           task_rec.TASK_ID || '','' || CHR(39) || ''doc'' || CHR(39) || '')">'');',
unistr('    --     htp.p(''      <span class="attachment-icon">\D83D\DCCE</span>'');'),
'    --     htp.p(''      <span class="attachment-name">'' || APEX_ESCAPE.HTML(task_rec.ATN_ATTACHMENT) || ''</span>'');',
'    --     htp.p(''      <span class="attachment-badge">Doc</span>'');',
'    --     htp.p(''    </div>'');',
'    --   END IF;',
'      ',
'      htp.p(''  </div>'');',
'    END IF;',
'    ',
'      IF task_rec.ASSIGNED_TO_TASK = :GV_USER_ID THEN',
'      -- Clickable button for assigned user',
'      htp.p(''  <button type="button" class="status-btn status-btn-active '' || v_status_class || ''" onclick="openTaskDialog('' || ',
'            task_rec.TASK_ID || '','' || ',
'            CHR(39) || REPLACE(APEX_ESCAPE.JS_LITERAL(task_rec.MAIN_TASK), CHR(39), CHR(92) || CHR(39)) || CHR(39) || '','' || ',
'            CHR(39) || task_rec.TASK_STATUS || CHR(39) || '')">'');',
'      htp.p(''    '' || APEX_ESCAPE.HTML(task_rec.TASK_STATUS));',
'      htp.p(''  </button>'');',
'    ELSE',
'      -- Read-only button for other users',
'      htp.p(''  <div style="text-align: center;" class="status-btn status-btn-readonly '' || v_status_class || ''">'');',
'      htp.p(''    '' || APEX_ESCAPE.HTML(task_rec.TASK_STATUS));',
'      htp.p(''  </div>'');',
'    END IF;',
'    ',
'      htp.p(''  </div>'');',
'    ',
'            ',
'  END LOOP;',
'',
'  htp.p(''        </div>',
'    </div>',
'',
'    <script>',
'        function toggleRemarks(elementId) {',
'            const remarksText = document.getElementById(elementId);',
'            const button = event.target;',
'            ',
'            if (remarksText.classList.contains("expanded")) {',
'                remarksText.classList.remove("expanded");',
'                button.textContent = "Show More";',
'            } else {',
'                remarksText.classList.add("expanded");',
'                button.textContent = "Show Less";',
'            }',
'        }',
'        ',
'',
'        ',
'        function downloadFile(fileId, fileType) {',
'            // Implement your file download logic here',
'            // Example: window.location.href = "f?p=&APP_ID.:0:&SESSION.:DOWNLOAD::P0_FILE_ID,P0_FILE_TYPE:" + fileId + "," + fileType;',
'            console.log("Downloading file - ID:", fileId, "Type:", fileType);',
'            alert("Download file ID: " + fileId + " Type: " + fileType);',
'        }',
'    </script>',
'</body>',
'</html>'');',
'  ',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(176472487880144528)
,p_plug_name=>'IN-PROCESS'
,p_parent_plug_id=>wwv_flow_imp.id(56845141846606201)
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_priority_class VARCHAR2(50);',
'  v_status_class VARCHAR2(50);',
'  v_assigned_text VARCHAR2(500);',
'  v_assigned_to_text VARCHAR2(500);',
'BEGIN',
'  htp.p(''<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Task Management Dashboard</title>',
' <style>',
'        * { margin: 0; padding: 0; box-sizing: border-box; }',
'        ',
'        body {',
'            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;',
'        ',
'            min-height: 100vh;',
'      ',
'        }',
'',
'        .cards-grid {',
'            display: grid;',
'            grid-template-columns: repeat(2, minmax(400px, 1fr));',
'            gap: 25px;',
'            padding: 10px 10px;',
'        }',
'',
'        .card {',
'            background: white;',
'            border-radius: 15px;',
'            padding: 25px;',
'            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);',
'            transition: transform 0.3s ease, box-shadow 0.3s ease;',
'            position: relative;',
'            overflow: hidden;',
'        }',
'',
'        .card:hover {',
'            transform: translateY(-5px);',
'            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.4);',
'        }',
'',
'        .priority-badge {',
'            position: absolute;',
'            top: 15px;',
'            right: 15px;',
'            padding: 6px 12px;',
'            border-radius: 20px;',
'            font-size: 0.85em;',
'            font-weight: bold;',
'            text-transform: uppercase;',
'            color: white;',
'        }',
'',
'        .priority-high { background: #ff4757; }',
'        .priority-medium { background: #ffa502; }',
'        .priority-normal { background: #26de81; }',
'        .priority-low { background: #26de81; }',
'',
'        .card-header {',
'            margin-bottom: 20px;',
'            padding-right: 80px;',
'        }',
'',
'        .main-task {',
'            font-size: 1em;',
'            font-weight: bold;',
'            color: #2c3e50;',
'            margin-bottom: 10px;',
'            line-height: 1.3;',
'        }',
'',
'        .assigned-by {',
'            display: flex;',
'            align-items: center;',
'            gap: 8px;',
'            color: #7f8c8d;',
'            font-size: 0.9em;',
'            margin-bottom: 15px;',
'        }',
'',
'        .assigned-by span:nth-child(3) {',
'    margin-left: auto;',
'}',
'',
'        .assigned-by-icon { font-size: 1.1em; }',
'        .assigned-by-name { font-weight: 600; color: #34495e; }',
'        .assigned-by-you { font-weight: 700; color: #3498db; }',
'',
'        .info-grid {',
'            display: grid;',
'            grid-template-columns: repeat(3, 1fr);',
'            gap: 15px;',
'            margin-bottom: 15px;',
'            padding: 15px;',
'            background: #f8f9fa;',
'            border-radius: 8px;',
'        }',
'',
'        .info-item { text-align: center; }',
'',
'        .info-label {',
'            font-size: 0.75em;',
'            color: #7f8c8d;',
'            text-transform: uppercase;',
'            letter-spacing: 0.5px;',
'            margin-bottom: 5px;',
'            display: block;',
'            font-weight: 600;',
'        }',
'',
'        .info-value {',
'            font-size: 0.95em;',
'            color: #34495e;',
'            font-weight: 600;',
'            display: block;',
'        }',
'',
'        .category-badge {',
'            display: inline-block;',
'            padding: 4px 12px;',
'            border-radius: 15px;',
'            background: linear-gradient(135deg, #667eea, #764ba2);',
'            color: white;',
'            font-size: 0.85em;',
'            font-weight: 600;',
'        }',
'',
'        .remarks-section { margin: 15px 0; }',
'',
'        .remarks-box {',
'            padding: 12px;',
'            background: #f8f9fa;',
'            border-radius: 8px;',
'            border-left: 4px solid #667eea;',
'            margin-bottom: 10px;',
'            position: relative;',
'        }',
'',
'        .remarks-box.user-remarks { border-left-color: #3498db; }',
'',
'        .remarks-label {',
'            font-size: 0.75em;',
'            color: #7f8c8d;',
'            text-transform: uppercase;',
'            margin-bottom: 5px;',
'            font-weight: 600;',
'        }',
'',
'        .remarks-text {',
'            color: #2c3e50;',
'            font-size: 0.95em;',
'            line-height: 1.5;',
'            max-height: 60px;',
'            overflow: hidden;',
'            transition: max-height 0.3s ease;',
'        }',
'',
'        .remarks-text.expanded { max-height: 500px; }',
'',
'        .remarks-toggle {',
'            display: inline-block;',
'            margin-top: 8px;',
'            padding: 4px 10px;',
'            border-radius: 6px;',
'            border: 1px solid #ddd;',
'            background: white;',
'            color: #667eea;',
'            font-weight: 600;',
'            cursor: pointer;',
'            font-size: 0.85em;',
'            transition: 0.2s;',
'        }',
'',
'        .remarks-toggle:hover {',
'            background: #667eea;',
'            color: white;',
'        }',
'',
'        .attachments-section {',
'            margin: 15px 0;',
'            padding: 12px;',
'            background: #f9f9f9;',
'            border-radius: 8px;',
'            border: 1px dashed #ddd;',
'        }',
'',
'        .attachments-label {',
'            font-size: 0.75em;',
'            color: #7f8c8d;',
'            text-transform: uppercase;',
'            margin-bottom: 8px;',
'            font-weight: 600;',
'        }',
'',
'        .attachment-item {',
'            display: flex;',
'            align-items: center;',
'            gap: 8px;',
'            padding: 8px;',
'            background: white;',
'            border-radius: 6px;',
'            margin-bottom: 6px;',
'            transition: 0.2s;',
'            cursor: pointer;',
'        }',
'',
'        .attachment-item:hover {',
'            background: #e8f4f8;',
'            transform: translateX(3px);',
'        }',
'',
'        .attachment-item:last-child { margin-bottom: 0; }',
'        .attachment-icon { font-size: 1.2em; }',
'        .attachment-name { font-size: 0.9em; color: #34495e; font-weight: 500; flex: 1; }',
'',
'        .attachment-badge {',
'            font-size: 0.75em;',
'            padding: 2px 8px;',
'            border-radius: 10px;',
'            background: #667eea;',
'            color: white;',
'        }',
'',
'        .status-btn {',
'            width: 100%;',
'            padding: 12px;',
'            border: 0;',
'            border-radius: 8px;',
'            font-size: 1em;',
'            font-weight: bold;',
'            cursor: pointer;',
'            transition: all 0.3s ease;',
'            text-transform: uppercase;',
'            letter-spacing: 1px;',
'            color: white;',
'        }',
'',
'        .status-pending { background: #f39c12; }',
'        .status-pending:hover { background: #e67e22; }',
'        .status-in-process { background: #3498db; }',
'        .status-in-process:hover { background: #2980b9; }',
'        .status-closed { background: #27ae60; }',
'        .status-closed:hover { background: #229954; }',
'        .status-on-hold { background: #95a5a6; }',
'        .status-on-hold:hover { background: #7f8c8d; }',
'    </style>',
'</head>',
'<body>',
'    <div class="container">',
'        ',
'        <div class="cards-grid">'');',
'',
'',
'  FOR task_rec IN (',
'',
'    WITH USERS AS (',
'        SELECT',
'            FIRST_NAME || '' '' || LAST_NAME AS USERNAME,',
'            USER_ID',
'        FROM AB_UM_USERS_REG',
'        WHERE STATUS = ''Y''',
'    )',
'',
'    ,DOCUMENT AS (',
'            SELECT',
'                DOC_TYPE,',
'                DOC_TYPE_ID,',
'                ''<a href="https://AKB.FAISALMOVERS.CO:8080/i/AKB/'' || DOC_ID || DOCUMENTS_TYPE || ''" target="_blank">Download</a>'' AS DOWNLOAD_LINK,',
'                ''<img src="https://AKB.FAISALMOVERS.CO:8080/i/AKB/'' || DOC_ID || DOCUMENTS_TYPE || ''" width="100px" height="100px" />'' AS IMAGE',
'    FROM ',
'        AB_DOCUMENT_RECORDS',
'    WHERE ',
'        DOC_TYPE =  ''TASK ASSIGN''',
'        AND STATUS = ''Y''',
'    )',
'    SELECT ',
'        ATN.ID AS TASK_ID,',
'        ATN.ASSIGNED_TO_TASK,',
'        ATN.ASSIGNED_FROM_TASK,',
'        ATN.PRIORITY,',
'        ATN.START_DATE,',
'        ATN.CLOSING_DATE,',
'        ATN.TASK_STATUS,',
'        ATN.ASSIGNED_ID,',
'        NVL(ATN.REMARKS,  ''No Remarks '') AS REMARKS,',
'        NVL(ATN.USER_REMARKS,  ''No User Remarks '') AS USER_REMARKS,',
'        NVL(NULL, ''SUB_DOC'') AS ATN_ATTACHMENT,',
'        NVL(ATNS.NOTES,  ''TASK TITLE '') AS MAIN_TASK,',
'        NVL(ATNS.CATEGORY,  ''General '') AS CATEGORY,',
'        NVL(NULL, ''DOC'') AS ATNS_ATTACHMENT,',
'        INITCAP(US.USERNAME) AS ASSIGNED_BY_NAME,',
'        INITCAP(UST.USERNAME) AS ASSIGNED_TO_NAME,',
'        NVL(DOWNLOAD_LINK, ''No document found'') DOWNLOAD_LINK',
'    FROM ',
'        AB_TODO_NOTES ATN',
'        LEFT JOIN AB_TODO_NOTES ATNS ON ATNS.ID = ATN.ASSIGNED_ID',
'        LEFT JOIN USERS US ON US.USER_ID = ATNS.USER_ID',
'        LEFT JOIN USERS UST ON UST.USER_ID = ATN.ASSIGNED_TO_TASK',
'        LEFT JOIN DOCUMENT MDOC ON MDOC.DOC_TYPE_ID = ATNS.ID',
'    WHERE',
'        (ATN.ASSIGNED_TO_TASK = :GV_USER_ID OR ATN.ASSIGNED_FROM_TASK = :GV_USER_ID)',
'        AND ATN.TASK_STATUS = ''IN-PROCESS''',
'    ORDER BY ATN.ID DESC',
'',
'  ) LOOP',
'  ',
'    -- Set CSS classes',
'    v_priority_class := ''priority-'' || LOWER(task_rec.PRIORITY);',
'    v_status_class := ''status-'' || LOWER(REPLACE(task_rec.TASK_STATUS, '' '', ''-''));',
'    ',
'    -- Determine assigned by text',
'    IF task_rec.ASSIGNED_FROM_TASK = :GV_USER_ID THEN',
'      v_assigned_text := ''<span class="assigned-by-you">Assigned By You</span>'';',
'    ELSE',
'      v_assigned_text := ''Assigned by: <span class="assigned-by-name">'' || ',
'                         NVL(task_rec.ASSIGNED_BY_NAME, ''Unknown'') || ''</span>'';',
'    END IF;',
'',
'    -- Determine assigned to text',
'    IF task_rec.ASSIGNED_TO_TASK = :GV_USER_ID THEN',
'      v_assigned_to_text := ''<span class="assigned-by-you">Assigned To You</span>'';',
'    ELSE',
'      v_assigned_to_text := ''Assigned to: <span class="assigned-by-name">'' || ',
'                         NVL(task_rec.ASSIGNED_TO_NAME, ''Unknown'') || ''</span>'';',
'    END IF;',
'    ',
'    -- ==================== CARD START ====================',
'    htp.p(''<div class="card">'');',
'    ',
'    -- Priority Badge',
'    htp.p(''  <div class="priority-badge '' || v_priority_class || ''">'');',
'    htp.p(''    '' || task_rec.PRIORITY);',
'    htp.p(''  </div>'');',
'    ',
'    -- Card Header',
'    htp.p(''  <div class="card-header">'');',
'    htp.p(''    <div class="main-task">'' || APEX_ESCAPE.HTML(task_rec.MAIN_TASK) || ''</div>'');',
'    htp.p(''    <div class="assigned-by">'');',
unistr('    htp.p(''      <span class="assigned-by-icon">\D83D\DC64</span>'');'),
'    htp.p(''      <span>'' || v_assigned_to_text || ''</span>'');',
unistr('    htp.p(''      <span class="assigned-by-icon">\D83D\DC64</span>'');'),
'    htp.p(''      <span>'' || v_assigned_text || ''</span>'');',
'    htp.p(''    </div>'');',
'    htp.p(''  </div>'');',
'    ',
'    -- Info Grid (Dates + Category)',
'    htp.p(''  <div class="info-grid">'');',
'    htp.p(''    <div class="info-item">'');',
unistr('    htp.p(''      <span class="info-label">\D83D\DCC5 Start Date</span>'');'),
'    htp.p(''      <span class="info-value">'' || TO_CHAR(task_rec.START_DATE, ''DD-Mon-YY'') || ''</span>'');',
'    htp.p(''    </div>'');',
'    htp.p(''    <div class="info-item">'');',
unistr('    htp.p(''      <span class="info-label">\23F0 Due Date</span>'');'),
'    htp.p(''      <span class="info-value">'' || TO_CHAR(task_rec.CLOSING_DATE, ''DD-Mon-YY'') || ''</span>'');',
'    htp.p(''    </div>'');',
'    htp.p(''    <div class="info-item">'');',
unistr('    htp.p(''      <span class="info-label">\D83C\DFF7\FE0F Category</span>'');'),
'    htp.p(''      <span class="category-badge">'' || APEX_ESCAPE.HTML(task_rec.CATEGORY) || ''</span>'');',
'    htp.p(''    </div>'');',
'    htp.p(''  </div>'');',
'    ',
'    -- Remarks Section',
'    htp.p(''  <div class="remarks-section">'');',
'    ',
'    -- Task Remarks',
'    htp.p(''    <div class="remarks-box">'');',
unistr('    htp.p(''      <div class="remarks-label">\D83D\DCDD Task Remarks</div>'');'),
'    htp.p(''      <div class="remarks-text" id="remarks1_'' || task_rec.TASK_ID || ''">'');',
'    htp.p(''        '' || APEX_ESCAPE.HTML(task_rec.REMARKS));',
'    htp.p(''      </div>'');',
'    htp.p(''    </div>'');',
'    ',
'    -- User Remarks',
'    htp.p(''    <div class="remarks-box user-remarks">'');',
unistr('    htp.p(''      <div class="remarks-label">\D83D\DCAC User Remarks</div>'');'),
'    htp.p(''      <div class="remarks-text" id="remarks2_'' || task_rec.TASK_ID || ''">'');',
'    htp.p(''        '' || APEX_ESCAPE.HTML(task_rec.USER_REMARKS));',
'    htp.p(''      </div>'');',
'    htp.p(''    </div>'');',
'    ',
'    htp.p(''  </div>'');',
'    ',
'   ',
'    IF task_rec.DOWNLOAD_LINK IS NOT NULL THEN',
'      htp.p(''  <div class="attachments-section">'');',
unistr('      htp.p(''    <div class="attachments-label">\D83D\DCCE Attachments</div>'');'),
'      ',
'      -- Main Attachment from ATNS',
'      IF task_rec.DOWNLOAD_LINK IS NOT NULL THEN',
'        htp.p(''    <div class="attachment-item">'');',
unistr('        htp.p(''      <span class="attachment-icon">\D83D\DCC4</span>'');'),
'        htp.p(''      <span class="attachment-name">'' || task_rec.DOWNLOAD_LINK || ''</span>'');',
'        htp.p(''      <span class="attachment-badge">Main</span>'');',
'        htp.p(''    </div>'');',
'      ',
'    END IF;',
'',
'      ',
'      htp.p(''  </div>'');',
'    END IF;',
'    ',
'      IF task_rec.ASSIGNED_TO_TASK = :GV_USER_ID THEN',
'      -- Clickable button for assigned user',
'      htp.p(''  <button type="button" class="status-btn status-btn-active '' || v_status_class || ''" onclick="openTaskDialog('' || ',
'            task_rec.TASK_ID || '','' || ',
'            CHR(39) || REPLACE(APEX_ESCAPE.JS_LITERAL(task_rec.MAIN_TASK), CHR(39), CHR(92) || CHR(39)) || CHR(39) || '','' || ',
'            CHR(39) || task_rec.TASK_STATUS || CHR(39) || '')">'');',
'      htp.p(''    '' || APEX_ESCAPE.HTML(task_rec.TASK_STATUS));',
'      htp.p(''  </button>'');',
'    ELSE',
'      -- Read-only button for other users',
'      htp.p(''  <div style="text-align: center;" class="status-btn status-btn-readonly '' || v_status_class || ''">'');',
'      htp.p(''    '' || APEX_ESCAPE.HTML(task_rec.TASK_STATUS));',
'      htp.p(''  </div>'');',
'    END IF;',
'    ',
'      htp.p(''  </div>'');',
'    ',
'            ',
'  END LOOP;',
'',
'  htp.p(''        </div>',
'    </div>',
'',
'    <script>',
'        function toggleRemarks(elementId) {',
'            const remarksText = document.getElementById(elementId);',
'            const button = event.target;',
'            ',
'            if (remarksText.classList.contains("expanded")) {',
'                remarksText.classList.remove("expanded");',
'                button.textContent = "Show More";',
'            } else {',
'                remarksText.classList.add("expanded");',
'                button.textContent = "Show Less";',
'            }',
'        }',
'        ',
'',
'        ',
'        function downloadFile(fileId, fileType) {',
'            // Implement your file download logic here',
'            // Example: window.location.href = "f?p=&APP_ID.:0:&SESSION.:DOWNLOAD::P0_FILE_ID,P0_FILE_TYPE:" + fileId + "," + fileType;',
'            console.log("Downloading file - ID:", fileId, "Type:", fileType);',
'            alert("Download file ID: " + fileId + " Type: " + fileType);',
'        }',
'    </script>',
'</body>',
'</html>'');',
'  ',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(176472523598144529)
,p_plug_name=>'CLOSED'
,p_parent_plug_id=>wwv_flow_imp.id(56845141846606201)
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_priority_class VARCHAR2(50);',
'  v_status_class VARCHAR2(50);',
'  v_assigned_text VARCHAR2(500);',
'  v_assigned_to_text VARCHAR2(500);',
'BEGIN',
'  htp.p(''<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Task Management Dashboard</title>',
' <style>',
'        * { margin: 0; padding: 0; box-sizing: border-box; }',
'        ',
'        body {',
'            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;',
'        ',
'            min-height: 100vh;',
'      ',
'        }',
'',
'        .cards-grid {',
'            display: grid;',
'            grid-template-columns: repeat(2, minmax(400px, 1fr));',
'            gap: 25px;',
'            padding: 10px 10px;',
'        }',
'',
'        .card {',
'            background: white;',
'            border-radius: 15px;',
'            padding: 25px;',
'            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);',
'            transition: transform 0.3s ease, box-shadow 0.3s ease;',
'            position: relative;',
'            overflow: hidden;',
'        }',
'',
'        .card:hover {',
'            transform: translateY(-5px);',
'            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.4);',
'        }',
'',
'        .priority-badge {',
'            position: absolute;',
'            top: 15px;',
'            right: 15px;',
'            padding: 6px 12px;',
'            border-radius: 20px;',
'            font-size: 0.85em;',
'            font-weight: bold;',
'            text-transform: uppercase;',
'            color: white;',
'        }',
'',
'        .priority-high { background: #ff4757; }',
'        .priority-medium { background: #ffa502; }',
'        .priority-normal { background: #26de81; }',
'        .priority-low { background: #26de81; }',
'',
'        .card-header {',
'            margin-bottom: 20px;',
'            padding-right: 80px;',
'        }',
'',
'        .main-task {',
'            font-size: 1em;',
'            font-weight: bold;',
'            color: #2c3e50;',
'            margin-bottom: 10px;',
'            line-height: 1.3;',
'        }',
'',
'        .assigned-by {',
'            display: flex;',
'            align-items: center;',
'            gap: 8px;',
'            color: #7f8c8d;',
'            font-size: 0.9em;',
'            margin-bottom: 15px;',
'        }',
'',
'        .assigned-by span:nth-child(3) {',
'    margin-left: auto;',
'}',
'',
'        .assigned-by-icon { font-size: 1.1em; }',
'        .assigned-by-name { font-weight: 600; color: #34495e; }',
'        .assigned-by-you { font-weight: 700; color: #3498db; }',
'',
'        .info-grid {',
'            display: grid;',
'            grid-template-columns: repeat(3, 1fr);',
'            gap: 15px;',
'            margin-bottom: 15px;',
'            padding: 15px;',
'            background: #f8f9fa;',
'            border-radius: 8px;',
'        }',
'',
'        .info-item { text-align: center; }',
'',
'        .info-label {',
'            font-size: 0.75em;',
'            color: #7f8c8d;',
'            text-transform: uppercase;',
'            letter-spacing: 0.5px;',
'            margin-bottom: 5px;',
'            display: block;',
'            font-weight: 600;',
'        }',
'',
'        .info-value {',
'            font-size: 0.95em;',
'            color: #34495e;',
'            font-weight: 600;',
'            display: block;',
'        }',
'',
'        .category-badge {',
'            display: inline-block;',
'            padding: 4px 12px;',
'            border-radius: 15px;',
'            background: linear-gradient(135deg, #667eea, #764ba2);',
'            color: white;',
'            font-size: 0.85em;',
'            font-weight: 600;',
'        }',
'',
'        .remarks-section { margin: 15px 0; }',
'',
'        .remarks-box {',
'            padding: 12px;',
'            background: #f8f9fa;',
'            border-radius: 8px;',
'            border-left: 4px solid #667eea;',
'            margin-bottom: 10px;',
'            position: relative;',
'        }',
'',
'        .remarks-box.user-remarks { border-left-color: #3498db; }',
'',
'        .remarks-label {',
'            font-size: 0.75em;',
'            color: #7f8c8d;',
'            text-transform: uppercase;',
'            margin-bottom: 5px;',
'            font-weight: 600;',
'        }',
'',
'        .remarks-text {',
'            color: #2c3e50;',
'            font-size: 0.95em;',
'            line-height: 1.5;',
'            max-height: 60px;',
'            overflow: hidden;',
'            transition: max-height 0.3s ease;',
'        }',
'',
'        .remarks-text.expanded { max-height: 500px; }',
'',
'        .remarks-toggle {',
'            display: inline-block;',
'            margin-top: 8px;',
'            padding: 4px 10px;',
'            border-radius: 6px;',
'            border: 1px solid #ddd;',
'            background: white;',
'            color: #667eea;',
'            font-weight: 600;',
'            cursor: pointer;',
'            font-size: 0.85em;',
'            transition: 0.2s;',
'        }',
'',
'        .remarks-toggle:hover {',
'            background: #667eea;',
'            color: white;',
'        }',
'',
'        .attachments-section {',
'            margin: 15px 0;',
'            padding: 12px;',
'            background: #f9f9f9;',
'            border-radius: 8px;',
'            border: 1px dashed #ddd;',
'        }',
'',
'        .attachments-label {',
'            font-size: 0.75em;',
'            color: #7f8c8d;',
'            text-transform: uppercase;',
'            margin-bottom: 8px;',
'            font-weight: 600;',
'        }',
'',
'        .attachment-item {',
'            display: flex;',
'            align-items: center;',
'            gap: 8px;',
'            padding: 8px;',
'            background: white;',
'            border-radius: 6px;',
'            margin-bottom: 6px;',
'            transition: 0.2s;',
'            cursor: pointer;',
'        }',
'',
'        .attachment-item:hover {',
'            background: #e8f4f8;',
'            transform: translateX(3px);',
'        }',
'',
'        .attachment-item:last-child { margin-bottom: 0; }',
'        .attachment-icon { font-size: 1.2em; }',
'        .attachment-name { font-size: 0.9em; color: #34495e; font-weight: 500; flex: 1; }',
'',
'        .attachment-badge {',
'            font-size: 0.75em;',
'            padding: 2px 8px;',
'            border-radius: 10px;',
'            background: #667eea;',
'            color: white;',
'        }',
'',
'        .status-btn {',
'            width: 100%;',
'            padding: 12px;',
'            border: 0;',
'            border-radius: 8px;',
'            font-size: 1em;',
'            font-weight: bold;',
'            cursor: pointer;',
'            transition: all 0.3s ease;',
'            text-transform: uppercase;',
'            letter-spacing: 1px;',
'            color: white;',
'        }',
'',
'        .status-pending { background: #f39c12; }',
'        .status-pending:hover { background: #e67e22; }',
'        .status-in-process { background: #3498db; }',
'        .status-in-process:hover { background: #2980b9; }',
'        .status-closed { background: #27ae60; }',
'        .status-closed:hover { background: #229954; }',
'        .status-on-hold { background: #95a5a6; }',
'        .status-on-hold:hover { background: #7f8c8d; }',
'    </style>',
'</head>',
'<body>',
'    <div class="container">',
'        ',
'        <div class="cards-grid">'');',
'',
'',
'  FOR task_rec IN (',
'',
'    WITH USERS AS (',
'        SELECT',
'            FIRST_NAME || '' '' || LAST_NAME AS USERNAME,',
'            USER_ID',
'        FROM AB_UM_USERS_REG',
'        WHERE STATUS = ''Y''',
'    )',
'',
'    ,DOCUMENT AS (',
'            SELECT',
'                DOC_TYPE,',
'                DOC_TYPE_ID,',
'                ''<a href="https://AKB.FAISALMOVERS.CO:8080/i/AKB/'' || DOC_ID || DOCUMENTS_TYPE || ''" target="_blank">Download</a>'' AS DOWNLOAD_LINK,',
'                ''<img src="https://AKB.FAISALMOVERS.CO:8080/i/AKB/'' || DOC_ID || DOCUMENTS_TYPE || ''" width="100px" height="100px" />'' AS IMAGE',
'    FROM ',
'        AB_DOCUMENT_RECORDS',
'    WHERE ',
'        DOC_TYPE =  ''TASK ASSIGN''',
'        AND STATUS = ''Y''',
'    )',
'    SELECT ',
'        ATN.ID AS TASK_ID,',
'        ATN.ASSIGNED_TO_TASK,',
'        ATN.ASSIGNED_FROM_TASK,',
'        ATN.PRIORITY,',
'        ATN.START_DATE,',
'        ATN.CLOSING_DATE,',
'        ATN.TASK_STATUS,',
'        ATN.ASSIGNED_ID,',
'        NVL(ATN.REMARKS,  ''No Remarks '') AS REMARKS,',
'        NVL(ATN.USER_REMARKS,  ''No User Remarks '') AS USER_REMARKS,',
'        NVL(NULL, ''SUB_DOC'') AS ATN_ATTACHMENT,',
'        NVL(ATNS.NOTES,  ''TASK TITLE '') AS MAIN_TASK,',
'        NVL(ATNS.CATEGORY,  ''General '') AS CATEGORY,',
'        NVL(NULL, ''DOC'') AS ATNS_ATTACHMENT,',
'        INITCAP(US.USERNAME) AS ASSIGNED_BY_NAME,',
'        INITCAP(UST.USERNAME) AS ASSIGNED_TO_NAME,',
'        NVL(DOWNLOAD_LINK, ''No document found'') DOWNLOAD_LINK',
'    FROM ',
'        AB_TODO_NOTES ATN',
'        LEFT JOIN AB_TODO_NOTES ATNS ON ATNS.ID = ATN.ASSIGNED_ID',
'        LEFT JOIN USERS US ON US.USER_ID = ATNS.USER_ID',
'        LEFT JOIN USERS UST ON UST.USER_ID = ATN.ASSIGNED_TO_TASK',
'        LEFT JOIN DOCUMENT MDOC ON MDOC.DOC_TYPE_ID = ATNS.ID',
'    WHERE',
'        (ATN.ASSIGNED_TO_TASK = :GV_USER_ID OR ATN.ASSIGNED_FROM_TASK = :GV_USER_ID)',
'        AND ATN.TASK_STATUS = ''CLOSED''',
'    ORDER BY ATN.ID DESC',
'',
'  ) LOOP',
'  ',
'    -- Set CSS classes',
'    v_priority_class := ''priority-'' || LOWER(task_rec.PRIORITY);',
'    v_status_class := ''status-'' || LOWER(REPLACE(task_rec.TASK_STATUS, '' '', ''-''));',
'    ',
'    -- Determine assigned by text',
'    IF task_rec.ASSIGNED_FROM_TASK = :GV_USER_ID THEN',
'      v_assigned_text := ''<span class="assigned-by-you">Assigned By You</span>'';',
'    ELSE',
'      v_assigned_text := ''Assigned by: <span class="assigned-by-name">'' || ',
'                         NVL(task_rec.ASSIGNED_BY_NAME, ''Unknown'') || ''</span>'';',
'    END IF;',
'',
'    -- Determine assigned to text',
'    IF task_rec.ASSIGNED_TO_TASK = :GV_USER_ID THEN',
'      v_assigned_to_text := ''<span class="assigned-by-you">Assigned To You</span>'';',
'    ELSE',
'      v_assigned_to_text := ''Assigned to: <span class="assigned-by-name">'' || ',
'                         NVL(task_rec.ASSIGNED_TO_NAME, ''Unknown'') || ''</span>'';',
'    END IF;',
'    ',
'    -- ==================== CARD START ====================',
'    htp.p(''<div class="card">'');',
'    ',
'    -- Priority Badge',
'    htp.p(''  <div class="priority-badge '' || v_priority_class || ''">'');',
'    htp.p(''    '' || task_rec.PRIORITY);',
'    htp.p(''  </div>'');',
'    ',
'    -- Card Header',
'    htp.p(''  <div class="card-header">'');',
'    htp.p(''    <div class="main-task">'' || APEX_ESCAPE.HTML(task_rec.MAIN_TASK) || ''</div>'');',
'    htp.p(''    <div class="assigned-by">'');',
unistr('    htp.p(''      <span class="assigned-by-icon">\D83D\DC64</span>'');'),
'    htp.p(''      <span>'' || v_assigned_to_text || ''</span>'');',
unistr('    htp.p(''      <span class="assigned-by-icon">\D83D\DC64</span>'');'),
'    htp.p(''      <span>'' || v_assigned_text || ''</span>'');',
'    htp.p(''    </div>'');',
'    htp.p(''  </div>'');',
'    ',
'    -- Info Grid (Dates + Category)',
'    htp.p(''  <div class="info-grid">'');',
'    htp.p(''    <div class="info-item">'');',
unistr('    htp.p(''      <span class="info-label">\D83D\DCC5 Start Date</span>'');'),
'    htp.p(''      <span class="info-value">'' || TO_CHAR(task_rec.START_DATE, ''DD-Mon-YY'') || ''</span>'');',
'    htp.p(''    </div>'');',
'    htp.p(''    <div class="info-item">'');',
unistr('    htp.p(''      <span class="info-label">\23F0 Due Date</span>'');'),
'    htp.p(''      <span class="info-value">'' || TO_CHAR(task_rec.CLOSING_DATE, ''DD-Mon-YY'') || ''</span>'');',
'    htp.p(''    </div>'');',
'    htp.p(''    <div class="info-item">'');',
unistr('    htp.p(''      <span class="info-label">\D83C\DFF7\FE0F Category</span>'');'),
'    htp.p(''      <span class="category-badge">'' || APEX_ESCAPE.HTML(task_rec.CATEGORY) || ''</span>'');',
'    htp.p(''    </div>'');',
'    htp.p(''  </div>'');',
'    ',
'    -- Remarks Section',
'    htp.p(''  <div class="remarks-section">'');',
'    ',
'    -- Task Remarks',
'    htp.p(''    <div class="remarks-box">'');',
unistr('    htp.p(''      <div class="remarks-label">\D83D\DCDD Task Remarks</div>'');'),
'    htp.p(''      <div class="remarks-text" id="remarks1_'' || task_rec.TASK_ID || ''">'');',
'    htp.p(''        '' || APEX_ESCAPE.HTML(task_rec.REMARKS));',
'    htp.p(''      </div>'');',
'    htp.p(''    </div>'');',
'    ',
'    -- User Remarks',
'    htp.p(''    <div class="remarks-box user-remarks">'');',
unistr('    htp.p(''      <div class="remarks-label">\D83D\DCAC User Remarks</div>'');'),
'    htp.p(''      <div class="remarks-text" id="remarks2_'' || task_rec.TASK_ID || ''">'');',
'    htp.p(''        '' || APEX_ESCAPE.HTML(task_rec.USER_REMARKS));',
'    htp.p(''      </div>'');',
'    htp.p(''    </div>'');',
'    ',
'    htp.p(''  </div>'');',
'    ',
'   ',
'    IF task_rec.DOWNLOAD_LINK IS NOT NULL THEN',
'      htp.p(''  <div class="attachments-section">'');',
unistr('      htp.p(''    <div class="attachments-label">\D83D\DCCE Attachments</div>'');'),
'      ',
'      -- Main Attachment from ATNS',
'      IF task_rec.DOWNLOAD_LINK IS NOT NULL THEN',
'        htp.p(''    <div class="attachment-item">'');',
unistr('        htp.p(''      <span class="attachment-icon">\D83D\DCC4</span>'');'),
'        htp.p(''      <span class="attachment-name">'' || task_rec.DOWNLOAD_LINK || ''</span>'');',
'        htp.p(''      <span class="attachment-badge">Main</span>'');',
'        htp.p(''    </div>'');',
'      ',
'    END IF;',
'',
'      ',
'      htp.p(''  </div>'');',
'    END IF;',
'',
'      -- Read-only button for other users',
'      htp.p(''  <div style="text-align: center;" class="status-btn status-btn-readonly '' || v_status_class || ''">'');',
'      htp.p(''    '' || APEX_ESCAPE.HTML(task_rec.TASK_STATUS));',
'      htp.p(''  </div>'');',
'    ',
'      htp.p(''  </div>'');',
'    ',
'            ',
'  END LOOP;',
'',
'  htp.p(''        </div>',
'    </div>',
'</body>',
'</html>'');',
'  ',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(222064821022820699)
,p_plug_name=>'TODO NOTES DETAIL'
,p_region_name=>'ITM'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2361825631184681)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH USERS AS (',
'select',
'         First_name||'' ''||last_name  AS USER_NAME,',
'        USER_ID',
'from AB_UM_USERS_REG',
'     where status = ''Y''',
'     ORDER BY USER_ID ASC',
'',
'    ',
')',
',DOCUMENT AS (',
'        SELECT',
'            DOC_TYPE,',
'            DOC_TYPE_ID,',
'            ''<a href="https://AKB.FAISALMOVERS.CO:8080/i/AKB/'' || DOC_ID || DOCUMENTS_TYPE || ''" target="_blank">Download</a>'' AS DOWNLOAD_LINK,',
'            ''<img src="https://AKB.FAISALMOVERS.CO:8080/i/AKB/'' || DOC_ID || DOCUMENTS_TYPE || ''" width="100px" height="100px" />'' AS IMAGE',
'FROM ',
'    AB_DOCUMENT_RECORDS',
'WHERE ',
'    DOC_TYPE =  ''TASK ASSIGN''',
'    AND STATUS = ''Y''',
')',
'select ',
'       ATN.ID,',
'       ATN.NOTES,',
'       ATN.DATE_OF_NOTE,',
'       ATN.CREATED_ON,',
'       ATN.CREATED_BY,',
'       ATN.UPDATED_ON,',
'       ATN.UPDATED_BY,',
'       ATN.CATEGORY,',
'       ATN.STATUS,',
'       ATN.USER_ID,',
'       CASE',
'        WHEN ATN.STATUS = ''OPEN'' THEN',
'  ',
'        ''<button type="button" class="task-assigned" '' ||',
'                ''onclick="javascript:$s(''''P970_ASSIGNED_ID'''','''''' || ATN.ID || ''''''); ',
'                         apex.region(''''tsk'''').refresh(); ',
'                         openModal(''''tsk'''');">'' ||',
'                ''<i class="fa fa-plus-circle"></i> Assign Task</button>''',
'  ',
'',
'        -- for recreate it''s CSS is already added',
'        -- ''<button type="button" class="task-reassigned" >',
'        -- ''<button type="button" class="task-not-assigned" >',
'        -- <i class="fa fa-check-circle"></i> Assigned</button>''',
'            ',
'        ELSE   ',
'            ''<button type="button" class="task-assigned" ><i class="fa fa-check"></i> Completed</button>''',
'',
'       END as task_assigned,',
'       ''DETAIL'' AS DETAIL,',
'       NVL(DOWNLOAD_LINK, ''No document found'') DOWNLOAD_LINK',
'  from AB_TODO_NOTES ATN',
'  LEFT JOIN DOCUMENT MDOC ON MDOC.DOC_TYPE_ID = ATN.ID',
' WHERE ATN.USER_ID = :GV_USER_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'TODO NOTES DETAIL'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3 class="heading-green">',
'  To-Do List',
'</h3>',
'<hr class="gradient-line-green">'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(222064838757820699)
,p_name=>'TODO NOTES DETAIL'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>500
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:971:&APP_SESSION.::&DEBUG.:RP:P971_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'KHURRAM'
,p_internal_uid=>169633604347026394
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(222065563062820701)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Task ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(222065941684820701)
,p_db_column_name=>'NOTES'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Main Task'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(222066396183820702)
,p_db_column_name=>'DATE_OF_NOTE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Date of Note'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(222066751302820702)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(222067180279820702)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(222067551610820702)
,p_db_column_name=>'UPDATED_ON'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(222068005524820702)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(220447353224114921)
,p_db_column_name=>'CATEGORY'
,p_display_order=>17
,p_column_identifier=>'H'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53458469603412907)
,p_db_column_name=>'STATUS'
,p_display_order=>27
,p_column_identifier=>'I'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53458563828412908)
,p_db_column_name=>'USER_ID'
,p_display_order=>37
,p_column_identifier=>'J'
,p_column_label=>'User Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53459855857412921)
,p_db_column_name=>'TASK_ASSIGNED'
,p_display_order=>47
,p_column_identifier=>'L'
,p_column_label=>'Task Assigned'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56098720758208115)
,p_db_column_name=>'DETAIL'
,p_display_order=>57
,p_column_identifier=>'M'
,p_column_label=>'Detail'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <a href="javascript:void(0);" ',
'   class="btn-expand t-Button t-Button--simple t-Button--success" ',
'   data-id="#ID#">',
'   DETAILS',
'</a>',
''))
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176472392869144527)
,p_db_column_name=>'DOWNLOAD_LINK'
,p_display_order=>67
,p_column_identifier=>'N'
,p_column_label=>'Download Link'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(222070036079821700)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1696389'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DATE_OF_NOTE:NOTES:STATUS:CATEGORY:TASK_ASSIGNED:DETAIL'
,p_sort_column_1=>'ID'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56098215882208110)
,p_plug_name=>'TASK DETAIL'
,p_region_name=>'detail_region'
,p_parent_plug_id=>wwv_flow_imp.id(222064821022820699)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2361825631184681)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH USERS AS (',
'select',
'         First_name||'' ''||last_name  AS USER_NAME,',
'        USER_ID',
'from AB_UM_USERS_REG',
'     where status = ''Y''',
'     ORDER BY USER_ID ASC',
'',
'    ',
')',
',DOCUMENT AS (',
'        SELECT',
'            DOC_TYPE,',
'            DOC_TYPE_ID,',
'            ''<a href="https://AKB.FAISALMOVERS.CO:8080/i/AKB/'' || DOC_ID || DOCUMENTS_TYPE || ''" target="_blank">Download</a>'' AS DOWNLOAD_LINK,',
'            ''<img src="https://AKB.FAISALMOVERS.CO:8080/i/AKB/'' || DOC_ID || DOCUMENTS_TYPE || ''" width="100px" height="100px" />'' AS IMAGE',
'FROM ',
'    AB_DOCUMENT_RECORDS',
'WHERE ',
'    DOC_TYPE =  ''USER RESPONSE''',
'    AND STATUS = ''Y''',
')',
'select ',
'       ATN.ID,',
'       US.USER_NAME AS ASSIGNED_TO,',
'       ATNS.ASSIGNED_ID,',
'       ATNS.TASK_STATUS,',
'       ATN.STATUS,',
'       NVL(DOWNLOAD_LINK, ''No document found'') DOWNLOAD_LINK',
'  from AB_TODO_NOTES ATN',
'  LEFT JOIN AB_TODO_NOTES  ATNS ON ATN.ID = ATNS.ASSIGNED_ID',
'       JOIN USERS US ON US.USER_ID = ATNS.ASSIGNED_TO_TASK',
'  LEFT   JOIN DOCUMENT DOC ON DOC.DOC_TYPE_ID = ATNS.ID',
'            ',
' WHERE ATN.USER_ID = :GV_USER_ID',
' AND ATNS.ASSIGNED_ID = :P970_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P970_ID'
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
 p_id=>wwv_flow_imp.id(56098316446208111)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>300
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ANAS-26163'
,p_internal_uid=>56098316446208111
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56098441137208112)
,p_db_column_name=>'ASSIGNED_TO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Assigned To'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56098531515208113)
,p_db_column_name=>'ASSIGNED_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Assigned Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56098673307208114)
,p_db_column_name=>'TASK_STATUS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Task Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56216678116230718)
,p_db_column_name=>'STATUS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Main Status'
,p_column_link=>'javascript:$s("P970_MAIN_STATUS", "#ID#");'
,p_column_linktext=>'#STATUS#'
,p_column_link_attr=>'class="t-Button t-Button--icon t-Button--hot t-Button--success t-Button--simple t-Button--iconLeft"'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56216869327230720)
,p_db_column_name=>'ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(176472096538144524)
,p_db_column_name=>'DOWNLOAD_LINK'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Download Link'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(56161238691997317)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'561613'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ASSIGNED_TO:TASK_STATUS:STATUS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(56215605867230708)
,p_button_sequence=>91
,p_button_plug_id=>wwv_flow_imp.id(56215052281230702)
,p_button_name=>'CHANGE_STATUS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2426385342184703)
,p_button_image_alt=>'Change Status'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-person-running-fast'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53462283624412945)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(53458878224412911)
,p_button_name=>'Assign_Task'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2426385342184703)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Task Assigned'
,p_button_position=>'CREATE'
,p_icon_css_classes=>'fa-person-running-fast'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(222068478558820702)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(222064821022820699)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(2426385342184703)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:971:&APP_SESSION.::&DEBUG.:971::'
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53458989914412912)
,p_name=>'P970_ASSIGNED_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(53458878224412911)
,p_item_source_plug_id=>wwv_flow_imp.id(53458878224412911)
,p_source=>'ASSIGNED_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53459031771412913)
,p_name=>'P970_ASSIGNED_TO_TASK'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(53458878224412911)
,p_item_source_plug_id=>wwv_flow_imp.id(53458878224412911)
,p_prompt=>'<B>Assigned to Task</b>'
,p_source=>'ASSIGNED_TO_TASK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH ASS_ORG AS(',
'      SELECT ',
'             UUA.ACCESS_ID ASS_ORG_ID,',
'             UUA.ACCESS_IDS AS_APP_ID,',
'             UAS.ORG_NAME ',
'       FROM',
'            AB_UM_USER_ACCESS UUA',
'       JOIN AB_UM_APP_SETUP_ORG UAS ON UAS.ORG_ID = UUA.ORG_ID AND UAS.STATUS = ''Y''',
'      WHERE ',
'            UUA.ACCESS_TYPE=''ASSIGN ORGANIZATION'' ',
'        AND UUA.STATUS=''Y''',
'        AND UUA.ORG_ID = :GV_ORG_ID',
'   GROUP BY ',
'            UUA.ACCESS_ID,',
'            UUA.ACCESS_IDS,',
'            UAS.ORG_NAME',
') ',
',ASS_GROUP AS(',
'      SELECT ',
'             UUA.ACCESS_ID ASS_ORG_ID,',
'             UUA.ACCESS_IDS AS_ORG_ID,',
'             USR.UM_NAME GROUP_NAME,',
'             UUA.STATUS',
'       FROM',
'            AB_UM_USER_ACCESS UUA',
'       JOIN AB_UM_SETUP_REGISTRATION USR ON USR.UM_ID = UUA.GROUP_ID AND USR.UM_TYPE = ''GROUP REG''AND USR.STATUS = ''Y''',
'      WHERE      ',
'            UUA.ACCESS_TYPE=''ASSIGN GROUP'' ',
'       AND UUA.STATUS=''Y''',
'       AND UUA.GROUP_ID NOT IN (1,2,57)',
'   GROUP BY ',
'            UUA.ACCESS_ID,',
'            UUA.ACCESS_IDS,',
'            USR.UM_NAME,',
'            UUA.STATUS',
')  ',
'SELECT',
'    UUR.FIRST_NAME || '' '' || UUR.LAST_NAME AS D,',
'    UUR.USER_ID AS R',
'FROM AB_UM_USERS_REG UUR',
' JOIN AB_UM_USER_ACCESS UUA',
'       ON UUA.USER_ID = UUR.USER_ID',
'      AND UUA.ACCESS_TYPE = ''ASSIGN APPLICATION''',
'      AND UUA.STATUS = ''Y''',
'      AND UUA.APPLICATION_ID = 102',
' JOIN ASS_ORG ASR',
'       ON ASR.AS_APP_ID = UUA.ACCESS_ID',
' JOIN ASS_GROUP ASG',
'       ON ASG.AS_ORG_ID = ASR.ASS_ORG_ID',
'WHERE UUR.STATUS = ''Y''',
'GROUP BY',
'    UUR.USER_ID,',
'    UUR.FIRST_NAME,',
'    UUR.LAST_NAME',
'ORDER BY D;',
'',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2423765497184702)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53459174139412914)
,p_name=>'P970_PRIORITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(53458878224412911)
,p_item_source_plug_id=>wwv_flow_imp.id(53458878224412911)
,p_prompt=>'<b>Priority</b>'
,p_source=>'PRIORITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:High;HIGH,Medium;MEDIUM,Normal;NORMAL'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2423765497184702)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53459200167412915)
,p_name=>'P970_CLOSING_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(53458878224412911)
,p_item_source_plug_id=>wwv_flow_imp.id(53458878224412911)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<b>Closing Date</b>'
,p_source=>'CLOSING_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2423765497184702)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53459540744412918)
,p_name=>'P970_TASK_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(53458878224412911)
,p_item_source_plug_id=>wwv_flow_imp.id(53458878224412911)
,p_item_default=>'PENDING'
,p_source=>'TASK_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53459623377412919)
,p_name=>'P970_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(53458878224412911)
,p_item_source_plug_id=>wwv_flow_imp.id(53458878224412911)
,p_prompt=>'<b>Remarks</b>'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2423765497184702)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53459982925412922)
,p_name=>'P970_START_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(53458878224412911)
,p_item_source_plug_id=>wwv_flow_imp.id(53458878224412911)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<b>Start Date</b>'
,p_source=>'START_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2423765497184702)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55971925397141704)
,p_name=>'P970_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(53458878224412911)
,p_item_source_plug_id=>wwv_flow_imp.id(53458878224412911)
,p_item_default=>'TASK ASSIGNED'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55972032609141705)
,p_name=>'P970_ASSIGNED_FROM_TASK'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(53458878224412911)
,p_item_source_plug_id=>wwv_flow_imp.id(53458878224412911)
,p_item_default=>':GV_USER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'ASSIGNED_FROM_TASK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56098856903208116)
,p_name=>'P970_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(222064821022820699)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56215290633230704)
,p_name=>'P970_ASSIGN_ID'
,p_item_sequence=>61
,p_item_plug_id=>wwv_flow_imp.id(56215052281230702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56215477897230706)
,p_name=>'P970_TASK_STATUS_USER'
,p_item_sequence=>71
,p_item_plug_id=>wwv_flow_imp.id(56215052281230702)
,p_use_cache_before_default=>'NO'
,p_item_default=>'IN-PROCESS'
,p_prompt=>'Task Status'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:IN-PROCESS;IN-PROCESS,CLOSED;CLOSED'
,p_field_template=>wwv_flow_imp.id(2423765497184702)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56215556706230707)
,p_name=>'P970_USER_REMARKS'
,p_item_sequence=>81
,p_item_plug_id=>wwv_flow_imp.id(56215052281230702)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User Remarks'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2423765497184702)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56216720228230719)
,p_name=>'P970_MAIN_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(56098215882208110)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56845620853606206)
,p_name=>'P970_DOCUMENT'
,p_item_sequence=>91
,p_item_plug_id=>wwv_flow_imp.id(56215052281230702)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Document'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2423765497184702)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'DROPZONE_BLOCK'
,p_attribute_13=>'Upload file.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(222068799209820702)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(222064821022820699)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(222069277633820703)
,p_event_id=>wwv_flow_imp.id(222068799209820702)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(222064821022820699)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(56215763037230709)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(56215605867230708)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56215817315230710)
,p_event_id=>wwv_flow_imp.id(56215763037230709)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P970_TASK_STATUS_USER IS NULL',
'    THEN',
'        apex_error.add_error(',
'            p_message          => ''Please add Task Status'',',
'            p_display_location => apex_error.c_inline_in_notification',
'        );',
'        RETURN;',
'    END IF;',
'',
'UPDATE AB_TODO_NOTES',
'SET TASK_STATUS = :P970_TASK_STATUS_USER,',
'    USER_REMARKS = :P970_USER_REMARKS',
'WHERE',
'    ID = :P970_ASSIGN_ID;',
'END;'))
,p_attribute_02=>'P970_ASSIGN_ID,P970_TASK_STATUS_USER,P970_USER_REMARKS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56216459955230716)
,p_event_id=>wwv_flow_imp.id(56215763037230709)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(56216261970230714)
,p_name=>'New_1'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(56215605867230708)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56216170294230713)
,p_event_id=>wwv_flow_imp.id(56216261970230714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56216055481230712)
,p_event_id=>wwv_flow_imp.id(56216261970230714)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56215343053230705)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(56216927685230721)
,p_name=>'New_2'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P970_MAIN_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56217052239230722)
,p_event_id=>wwv_flow_imp.id(56216927685230721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'DO YOU WANT TO CLOSE THIS TASK?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56217119085230723)
,p_event_id=>wwv_flow_imp.id(56216927685230721)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE AB_TODO_NOTES',
'SET STATUS = ''CLOSED''',
'WHERE ID = :P970_MAIN_STATUS;'))
,p_attribute_02=>'P970_MAIN_STATUS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56217273344230724)
,p_event_id=>wwv_flow_imp.id(56216927685230721)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53462149635412944)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(53458878224412911)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'New'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'N'
,p_attribute_06=>'N'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>53462149635412944
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(56214977164230701)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'TASK ASSIGN'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P970_ASSIGNED_TO_TASK IS NULL',
'       OR :P970_REMARKS IS NULL',
'    THEN',
'        apex_error.add_error(',
'            p_message          => ''Assigned To Task and Remarks are required.'',',
'            p_display_location => apex_error.c_inline_in_notification',
'        );',
'        RETURN;',
'    END IF;',
'',
'    -- IF :P970_ASSIGNED_TO_TASK IS NULL THEN',
'        -- INSERT',
'        INSERT INTO AB_TODO_NOTES (',
'            ASSIGNED_ID,',
'            ASSIGNED_TO_TASK,',
'            PRIORITY,',
'            START_DATE,',
'            CLOSING_DATE,',
'            TASK_STATUS,',
'            REMARKS,',
'            STATUS,',
'            ASSIGNED_FROM_TASK',
'        ) VALUES (',
'            :P970_ASSIGNED_ID,',
'            :P970_ASSIGNED_TO_TASK,',
'            :P970_PRIORITY,',
'            NVL(:P970_START_DATE, TRUNC(SYSDATE)),',
'            NVL(:P970_CLOSING_DATE, TRUNC(SYSDATE)),',
'            ''PENDING'',',
'            :P970_REMARKS,',
'            ''TASK ASSIGNED'',',
'            :GV_USER_ID',
'        );',
'',
'    -- ELSE',
'    --     -- UPDATE',
'    --     UPDATE AB_TODO_NOTES',
'    --        SET ASSIGNED_TO_TASK   = :P970_ASSIGNED_TO_TASK,',
'    --            PRIORITY           = :P970_PRIORITY,',
'    --            START_DATE         = :P970_START_DATE,',
'    --            CLOSING_DATE       = :P970_CLOSING_DATE,',
'    --            TASK_STATUS        = :P970_TASK_STATUS,',
'    --            REMARKS            = :P970_REMARKS,',
'    --            STATUS             = :P970_STATUS,',
'    --            ASSIGNED_FROM_TASK = :P970_ASSIGNED_FROM_TASK',
'    --      WHERE ASSIGNED_ID = :P970_ASSIGNED_ID;',
'    -- END IF;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(53462283624412945)
,p_internal_uid=>56214977164230701
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(56845538055606205)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'USER_IMAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    DECLARE',
'           l_blob    BLOB;',
'           V_ID      NUMBER;',
'           --V_SEQ     NUMBER;',
'           V_DOCUMENTS_TYPE VARCHAR2(200);',
'    BEGIN',
'         SELECT MAX(DOC_ID) + 1 INTO V_ID FROM AB_DOCUMENT_RECORDS;',
'         V_DOCUMENTS_TYPE := SUBSTR(:P970_DOCUMENT, INSTR(:P970_DOCUMENT, ''.'', -1) + 1);',
'    ------------------------------EXEMPTION IMAGE-----------------------------------------------',
'        IF :P970_DOCUMENT IS NOT NULL THEN',
'            SELECT BLOB_CONTENT INTO l_blob FROM apex_application_temp_files',
'            WHERE NAME = :P970_DOCUMENT;',
'            blob_to_file(',
'                p_blob     => l_blob,',
'                p_dir      => ''AKB'',',
'                p_filename => V_ID||V_DOCUMENTS_TYPE',
'            );',
'            INSERT INTO AB_DOCUMENT_RECORDS(DOC_ID,DOC_TYPE_ID, DOC_TYPE, STATUS, DOCUMENTS_TYPE)',
'            VALUES (V_ID, :P970_ASSIGN_ID, ''USER RESPONSE'', ''Y'',V_DOCUMENTS_TYPE);',
'        END IF;',
'    ------------------------------END-----------------------------------------------',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>56845538055606205
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53461344144412936)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(53458878224412911)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form TODO NOTES DETAIL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>53461344144412936
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
