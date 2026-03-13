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
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.12'
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
--     PAGE: 92
--   Manifest End
--   Version:         24.2.12
--   Instance ID:     706401905951048
--

begin
null;
end;
/
prompt --application/pages/delete_00092
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>92);
end;
/
prompt --application/pages/page_00092
begin
wwv_flow_imp_page.create_page(
 p_id=>92
,p_name=>'Counter Sale Invoice Detail'
,p_alias=>'COUNTER-SALE-INVOICE-DETAIL3'
,p_step_title=>'Counter Sale Invoice Detail'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function refreshCards() {',
'  // Helper function to format numbers',
'  function formatNumber(value, decimals = 0) {',
'    if (!value) return ''0'';',
'    return Number(value).toLocaleString(undefined, { minimumFractionDigits: decimals, maximumFractionDigits: decimals });',
'  }',
'',
'  // Sale Point',
'  $(''#card_sale_point_name'').text(apex.item(''P92_SALE_POINT'').getValue() || ''--'');',
'',
'  // Total Sale Bags (integer)',
'  $(''#card_pending_count'').text(formatNumber(apex.item(''P92_TOTAL_BAGS'').getValue(), 0));',
'',
'  // Total Amount (2 decimal places)',
'  $(''#card_approved_count'').text(formatNumber(apex.item(''P92_TOTAL_AMOUNT'').getValue(), 2));',
'}',
'',
'// Refresh when page ready',
'$(document).on(''apexreadyend'', function () {',
'  refreshCards();',
'});',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.status-cards {',
'  display: flex;',
'  gap: 12px;',
'  padding: 15px;',
'  margin: 0;',
'}',
'',
'/* Base style for all cards */',
'.status-card {',
'  min-width: 180px;',
'  max-width: 250px;',
'  text-align: center;',
'  padding: 20px 12px;',
'  border-radius: 12px;',
'  box-shadow: 0 4px 12px rgba(0,0,0,0.15);',
'  transition: transform 0.2s, box-shadow 0.2s;',
'  cursor: default;',
'  display: flex;',
'  flex-direction: column;',
'  align-items: center;',
'  justify-content: center;',
'}',
'',
'/* Hover effect */',
'.status-card:hover {',
'  transform: translateY(-3px);',
'  box-shadow: 0 6px 16px rgba(0,0,0,0.2);',
'}',
'',
'/* Icons */',
'.status-icon {',
'  width: 50px;',
'  height: 50px;',
'  margin-bottom: 12px;',
'}',
'',
'.count {',
'  font-size: 20px;',
'  font-weight: 700;',
'  text-align: center;',
'  word-wrap: break-word;',
'}',
'',
'.label {',
'  margin-top: 5px;',
'  font-size: 14px;',
'  color: #333;',
'}',
'',
'/* Individual card colors */',
'.sale-point {',
'  background: #e0f0ff; /* light blue */',
'}',
'',
'.sale-bags {',
'  background: #ffe0b3; /* light orange */',
'}',
'',
'.total-amount {',
'  background: #d4edda; /* light green */',
'}',
'',
'',
'',
'',
'',
'.t-Body-content {',
'    background-color: #ececec;',
'        font-family: ''Segoe UI'', Tahoma, Geneva, Verdana, sans-serif;',
'',
'}',
'.my-alt-button::before {',
unistr('        content: "\2795"; '),
'        font-size: 13px; ',
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
'        max-width: 100%; ',
'}',
'',
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
'#AA, #AR, #AM , #arrear, #CPS , #DWR, #OVR {',
'    border-collapse: collapse;',
'    width: 100%;',
'    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);',
'    overflow-x: auto;',
'}',
'#AA th, #AR th, #AM th, #arrear th, #CPS th, #DWR th, #OVR th {',
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
'#AA th span, #AA th a,',
'#AR th span, #AR th a,',
'#AM th span, #AM th a,',
'#CPS th span, #CPS th a,',
'#arrear th span, #arrear th a,',
'#DWR th span, #DWR th a,',
'#OVR th span, #OVR th a {',
'    color: white !important;',
'}',
'#AA td, #AR td, #AM td #arrear td , #CPS td, #DWR td, #OVR td{',
'    font-size: 13px;',
'    padding: 8px 12px;',
'    border: 1px solid #eee;',
'    text-align: left;',
'    background-color: #ffffff;',
'    transition: background-color 0.2s ease;',
'    word-wrap: break-word;',
'}',
'.debit-bg {',
'    background-color: #c5dcf2;',
'    color: #004085;',
'    padding: 6px 10px;',
'    font-weight: bold;',
'    border-radius: 4px;',
'    display: inline-block;',
'    width: 100%;',
'    box-sizing: border-box;',
'}',
'.credit-bg {',
'    background-color: #bcf6d8;',
'    color: #155724;',
'    padding: 6px 10px;',
'    font-weight: bold;',
'    border-radius: 4px;',
'    display: inline-block;',
'    width: 100%;',
'    box-sizing: border-box;',
'}',
'#AA td:hover, #AR td:hover, #AM td:hover , #arrear td:hover  , #CPS td:hover, #DWR td:hover, #OVR td:hover {',
'    background-color: #e7f7e7;',
'    cursor: pointer;',
'}',
'#AA td.clicked-cell, #AR td.clicked-cell, #AM td.clicked-cell , #arrear td.clicked-cell, #CPS td.clicked-cell , #DWR td.clicked-cell, #OVR td.clicked-cell {',
'    background-color: #d4edda !important;',
'    box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.1);',
'}',
'#AA td:first-child, #AR td:first-child, #AM td:first-child, #arrear td:first-child, #CPS td:first-child , #DWR td:first-child ,#OVR td:first-child  {',
'    width: 120px;',
'}',
'#AA td, #AA th,',
'#AR td, #AR th,',
'#AM td, #AM th,',
'#arrear td, #arrear th ,',
'#CPS td, #CPS th,',
'#DWR td, #DWR th,',
'#OVR td, #OVR th{',
'    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);',
'}',
'#AA th:not(:first-child), #AR th:not(:first-child), #AM th:not(:first-child) , #arrear th:not(:first-child),   #CPS th:not(:first-child), #DWR th:not(:first-child),#OVR th:not(:first-child),',
'#AA td:not(:first-child), #AR td:not(:first-child), #AM td:not(:first-child) , #arrear td:not(:first-child),   #CPS td:not(:first-child), #DWR td:not(:first-child),#OVR td:not(:first-child) {',
'    width: 200px;',
'}',
'@media (max-width: 768px) {',
'    #AA, #AR, #AM {',
'        display: block;',
'        overflow-x: auto;',
'        white-space: nowrap;',
'}',
'    #AA th, #AA td,',
'    #AR th, #AR td,',
'    #AM th, #AM td,',
'    #arrear th, #arrear td ,',
'     #CPS th, #CPS td ,',
'     #DWR th, #DWR td,',
'      #OVR th, #OVR td{',
'        font-size: 12px;',
'        text-align: center;',
'        padding: 10px;',
'    }',
'}',
'',
'',
'/* .t-Button.t-Button--simple.t-Button--hot.t-Button--stretch {',
'    background: linear-gradient(25deg, #06a526, #AEFFDE);',
'    color: #4A171E; /* Slightly darker text color */',
'    border: none; /* Remove border if desired */',
'    font-weight: normal;',
'}',
'',
'',
'.t-Button.t-Button--simple.t-Button--hot.t-Button--stretch::after {',
unistr('    content: "\D83D\DDA8\FE0F"; '),
'    margin-left: 5px; ',
'    font-size: 16px; ',
'} */',
'',
'.t-IRR-region {',
'  background-color: #e7f7e7 !important;',
'  border-radius: 10px !important;',
'  border: none !important;',
'  box-shadow: none !important;',
'}',
'#BT_toolbar_controls {',
'  background-color: #ececec !important;',
'}',
'.a-IRR-toolbar {',
'    background-color: #ececec;}',
'',
'',
'.data-box {',
'  display: inline-block;',
'  width: 80px;',
'  text-align: center;',
'  font-weight: bold;',
'  padding: 4px;',
'  border-radius: 4px;',
'  box-sizing: border-box;',
'}',
'',
'.bg-rate   { background-color: #e0f7fa; color: #006064; }',
'.bg-net    { background-color: #F0E1B9FF; color: #A13941FF; width: 120px; }',
'.bg-bag    { background-color: #f7e8e6; color: #2BAE66FF; }',
'.bg-per    { background-color: #FFF2D7; color: #F98866; }',
'.bg-nett   { background-color: #C4DFE6; color: #31473A; width: 120px; }',
'.bg-opn    { background-color: #9EC8B9; color: #1B4242; }',
'',
'',
'.approval-cell {',
'    font-weight: bold;',
'    color: white;',
'    padding: 6px 10px;',
'    border-radius: 5px;',
'    text-align: center;',
'    display: block;',
'    width: 100%;',
'}',
'',
'.approval-cell i {',
'    margin-right: 5px;',
'    vertical-align: middle;',
'}',
'',
'/* STATUS COLORS */',
'',
'',
'.approval-cell.rejected {',
'    background-color: #d32f2f; /* Darker Red */',
'}',
'',
'.approval-cell.pending {',
'    background-color: #6c757d; /* Neutral Gray */',
'}',
'',
'.approval-cell.shipment {',
'    background-color: #4694e7; /* Primary Blue */',
'}',
'',
'.approval-cell.loading {',
'    background-color: #d7860b; /* Orange Yellow */',
'    color: black;',
'}',
'',
'.approval-cell.dispatched {',
'    background-color: #14b887; /* Teal Green */',
'}',
'',
'.approval-cell.reached {',
'    background-color: #28a745; /* Deep Purple */',
'}',
'',
'.approval-cell.arrived {',
'    background-color: #4694e7; /* Deep Purple */',
'}',
'',
'.approval-cell.pendispatch {',
'    background-color: #e4841e; /* Distinct Orange-Red */',
'}',
'',
'',
'/*-------------------- pending-badge-------------------*/',
'.pending-badge {',
'  background-color: #CBC3E3; ',
'  color: #800020; ',
'  padding: 6px 12px;',
'  border: 1px solid #CBC3E3; ',
'  border-radius: 6px;',
'  font-weight: 600;',
'  font-family: ''Segoe UI'', sans-serif;',
'  display: inline-flex;',
'  align-items: center;',
'  gap: 6px;',
'  animation: fadeIn 0.5s ease-in-out;',
'}',
'',
'.pending-badge .clock-icon {',
'  color: #333333; ',
'  font-size: 1.4em; ',
'  animation: spin 1.2s linear infinite;',
'}',
'',
'/* Fade-in animation */',
'@keyframes fadeIn {',
'  from { opacity: 0; transform: translateY(-5px); }',
'  to   { opacity: 1; transform: translateY(0); }',
'}',
'',
'/* Spinning animation */',
'@keyframes spin {',
'  from { transform: rotate(0deg); }',
'  to   { transform: rotate(360deg); }',
'}',
'/*----------------------approved-badge------------------------------*/',
'.approved-badge {',
'  background-color: #d4edda; ',
'  color: #155724;           ',
'  padding: 6px 12px;',
'  border: 1px solid #c3e6cb;',
'  border-radius: 6px;',
'  font-weight: 600;',
'  font-family: ''Segoe UI'', sans-serif;',
'  display: inline-flex;',
'  align-items: center;',
'  gap: 6px;',
'  animation: fadeIn 0.5s ease-in-out;',
'}',
'',
'.approved-badge .check-icon {',
'  color: #28a745;',
'  font-size: 1.2em;',
'  animation: bounce 1.2s infinite;',
'}',
'/*-------------------rejected-badge--------------------------------*/',
'.rejected-badge {',
'  background-color: #ebc6c9; ',
'  color: #721c24;         ',
'  padding: 6px 12px;',
'  border: 1px solid #f5c6cb;',
'  border-radius: 6px;',
'  font-weight: 600;',
'  font-family: ''Segoe UI'', sans-serif;',
'  display: inline-flex;',
'  align-items: center;',
'  gap: 6px;',
'}',
'',
'.rejected-badge .cross-icon {',
'  color: #dc3545; /* red */',
'  font-size: 1.2em;',
'  animation: blink-animation 1s infinite;',
'}',
'',
'@keyframes blink-animation {',
'  0% { opacity: 1; }',
'  50% { opacity: 0; }',
'  100% { opacity: 1; }',
'}',
'',
'',
'',
'/* Header Heading */',
'',
'',
'.shipment-header-decent {',
'    position: relative;',
'    padding: 20px 24px 50px 24px;',
'    margin: 20px 0;',
'    border-radius: 14px;',
'    overflow: hidden;',
'',
'    /* Subtle, professional green gradient */',
'    background: linear-gradient(135deg, #0e5020, #137a2e, #0e5020);',
'',
'    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);',
'    border: 1px solid rgba(255,255,255,0.05);',
'}',
'',
'/* Heading */',
'.shipment-header-decent h3 {',
'    margin: 0;',
'    font-size: 22px;',
'    font-weight: 700;',
'    color: #e6f4ea; /* soft contrast */',
'    letter-spacing: 0.5px;',
'    position: relative;',
'    z-index: 5;',
'}',
'',
'/* Road */',
'.road-decent {',
'    position: absolute;',
'    bottom: 18px;',
'    left: 0;',
'    width: 100%;',
'    height: 4px;',
'    background: repeating-linear-gradient(',
'        to right,',
'        #2f7d3b 0px,',
'        #2f7d3b 20px,',
'        transparent 20px,',
'        transparent 40px',
'    );',
'    animation: roadMoveDecent 1s linear infinite;',
'    opacity: 0.7;',
'}',
'',
'/* Truck */',
'.truck-decent {',
'    position: absolute;',
'    bottom: 20px;',
'    font-size: 36px; /* bold but not overwhelming */',
'    z-index: 4;',
'    transform: scaleX(-1); /* faces right */',
'    animation: truckDriveDecent 9s linear infinite;',
'}',
'',
'/* Truck drive animation */',
'@keyframes truckDriveDecent {',
'    0%   { left: -80px; }',
'    100% { left: 100%; }',
'}',
'',
'/* Road motion animation */',
'@keyframes roadMoveDecent {',
'    from { background-position-x: 0; }',
'    to   { background-position-x: -40px; }',
'}',
'',
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
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13921660699126938)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--large'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>51
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13918795354126909)
,p_plug_name=>'Counter Sale Credit Recovery '
,p_region_name=>'AR'
,p_parent_plug_id=>wwv_flow_imp.id(13921660699126938)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>51
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COUNTER_SALE AS(',
'        SELECT ',
'           ',
'            PARTY_ID,',
'            CUSTOMER_NAME PARTY_NAME,',
'             SALE_POINT_ID,',
'            NVL(SUM(COUNTER_BAGS),0) COUNTER_BAGS,',
'            NVL(SUM(TOTAL_AMOUNT),0) TOTAL_AMOUNT',
'        FROM',
'            TABLE(AB_SALE_ORDER_PKG.COUNTER_SALE_REPORT(:GV_ORG_ID, :GV_USER_ID))',
'        WHERE',
'                APPROVAL_STATUS=''Approved'' ',
'            AND PAYMENT_TYPE = 597',
'        GROUP BY',
'            PARTY_ID,',
'            CUSTOMER_NAME,',
'             SALE_POINT_ID',
')',
',COUNTER_SALE_RECOVERY AS(',
'        SELECT',
'            SO.CUSTOMER_ID PARTY_ID,',
'            MAX(SOD_DATE)  RECOVERY_DATE,',
'            NVL(SUM(TOTAL_AMOUNT),0) COUNTER_RECOVERY',
'        FROM',
'                 AB_SO_ORDER_HEAD SO',
'            JOIN AB_SO_ORDER_DET SOD ON SOD.SO_ID=SO.SO_ID AND SOD.STATUS=''Y''',
'        WHERE',
'                SO.STATUS=''Y''',
'            AND SO_TYPE=''1007'' ',
'        GROUP BY',
'            SO.CUSTOMER_ID',
')',
'        SELECT',
'          ',
'            CS.PARTY_ID,',
'            PARTY_NAME,',
'            RECOVERY_DATE,',
'            NVL(TOTAL_AMOUNT,0) RECOVERY_AMOUNT,',
'            NVL(COUNTER_RECOVERY,0)  RECEIVED_AMOUNT,',
'            NVL(TOTAL_AMOUNT,0)  -  NVL(COUNTER_RECOVERY,0) REMAINING_AMOUNT,',
'            ''Add Amount'' AS ADD_AMOUNT',
'        FROM ',
'                  COUNTER_SALE CS ',
'        LEFT JOIN COUNTER_SALE_RECOVERY CSR ON CSR.PARTY_ID=CS.PARTY_ID ',
'',
'        WHERE PARTY_NAME IS NOT NULL',
'         AND SALE_POINT_ID= NVL(:P92_SALE_POINTS,SALE_POINT_ID)',
'     --    AND CS.PARTY_ID <> 7325'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P92_SALE_POINTS'
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
 p_id=>wwv_flow_imp.id(17632512294430836)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JAHANZAIB'
,p_internal_uid=>17632512294430836
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17633191610430842)
,p_db_column_name=>'ADD_AMOUNT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Add Recovery'
,p_column_link=>'f?p=&APP_ID.:135:&SESSION.::&DEBUG.:135:P135_PARTY_ID:#PARTY_ID#'
,p_column_linktext=>'#ADD_AMOUNT#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17633247387430843)
,p_db_column_name=>'PARTY_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Party Ledger'
,p_column_link=>'javascript:$s(''P92_CUSTOMER_ID'',''#PARTY_ID#'');apex.region(''CPS'').refresh();openModal(''CPS'');'
,p_column_linktext=>'#PARTY_ID#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18632553131426506)
,p_db_column_name=>'PARTY_NAME'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Party Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18632616233426507)
,p_db_column_name=>'RECOVERY_AMOUNT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Sale Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18632756725426508)
,p_db_column_name=>'RECEIVED_AMOUNT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Received Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18632881089426509)
,p_db_column_name=>'REMAINING_AMOUNT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Balance'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22047752563804414)
,p_db_column_name=>'RECOVERY_DATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Recovery Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18425493110733764)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'184255'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PARTY_ID:PARTY_NAME:RECOVERY_AMOUNT:RECEIVED_AMOUNT:REMAINING_AMOUNT:RECOVERY_DATE:ADD_AMOUNT:'
,p_sum_columns_on_break=>'RECOVERY_AMOUNT:RECEIVED_AMOUNT:REMAINING_AMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19708710998087747)
,p_plug_name=>'Counter Sale Party Balance'
,p_region_name=>'AM'
,p_parent_plug_id=>wwv_flow_imp.id(13921660699126938)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>61
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH REGISTRATION AS(',
'            SELECT',
'                        SR_ID ,',
'                        ',
'                        REG_NAME ,',
'                        ADDRESS,',
'                        CONTACT_NUMBER,',
'                        CNIC,',
'                        REG_TYPE',
'            FROM',
'                    AB_SETUP_REGISTRATION',
'            WHERE',
'                          REG_STATUS = ''Y''',
')',
',CUSTOMER_REG AS (',
'        SELECT',
'                CUSTOMER_ID,  ',
'                INITCAP(CUSTOMER_NAME) AS CUSTOMER_NAME,',
'                INITCAP(ADDRESS) AS ADDRESS,',
'                INITCAP(CONTACT_NUMBER) AS CONTACT_NUMBER,',
'                CNIC',
'        FROM (   ',
'                SELECT ',
'                        SR_ID AS CUSTOMER_ID,',
'                        REG_NAME AS CUSTOMER_NAME,',
'                        ADDRESS,',
'                        CONTACT_NUMBER,',
'                        CNIC',
'                FROM ',
'                            REGISTRATION',
'                WHERE ',
'                             REG_TYPE = ''CUSTOMER REGISTRATION''',
'        UNION ALL',
'                SELECT ',
'                            SR_ID AS CUSTOMER_ID,',
'                            REG_NAME AS CUSTOMER_NAME,',
'                            ADDRESS,',
'                            CONTACT_NUMBER,',
'                            CNIC',
'                FROM ',
'                            REGISTRATION',
'                WHERE ',
'                           REG_TYPE = ''COUNTER CUSTOMER'')',
')',
',USER_APPROVAL AS(',
'            SELECT',
'                    APP_IDS SOD_ID,',
'                    INITCAP(CREATED_BY)  ||'' (''|| TO_CHAR(CREATED_ON,''DD-MON-YYYY'')||'')'' APPROVAL_BY,',
'                    APPROVAL_STATUS',
'            FROM',
'                     AB_USER_ACTION_APPROVAL',
'            WHERE',
'                         APP_TYPE=''918''',
'                AND STATUS=''Y''',
')',
',COUNTER_SALE_CREDIT AS(',
'            SELECT ',
'                        PARTY_ID,',
'                        CUSTOMER_NAME PARTY_NAME,',
'                        NVL(COUNTER_BAGS,0) COUNTER_BAGS,',
'                        NVL(TOTAL_AMOUNT,0) TOTAL_AMOUNT,',
'                        ORDER_DATE AS ORDER_DATE,',
'                        SALE_POINT_ID',
'            FROM',
'                        TABLE(AB_SALE_ORDER_PKG.COUNTER_SALE_REPORT(:GV_ORG_ID, :GV_USER_ID))',
'            WHERE',
'                         APPROVAL_STATUS=''Approved'' ',
'                AND PAYMENT_TYPE = 597',
'              ---  AND PARTY_ID=7313',
')',
',COUNTER_SALE_RECOVERY AS (',
'            SELECT',
'                        SO.CUSTOMER_ID AS PARTY_ID,',
'                        SOD.SOD_DATE AS RECOVERY_DATE,',
'                        NVL(SOD.TOTAL_AMOUNT,0) AS RECEIVED_AMOUNT',
'            FROM',
'                          AB_SO_ORDER_HEAD SO',
'                JOIN AB_SO_ORDER_DET SOD ON SOD.SO_ID = SO.SO_ID AND SOD.STATUS = ''Y''',
'            WHERE',
'                         SO.STATUS = ''Y''',
'                AND SO.SO_TYPE = ''1007''',
')',
',ALL_TRANS AS(',
'            SELECT',
'                     PARTY_ID,',
'                     TRANSACTION_DATE,',
'                     CREDIT_AMOUNT,',
'                     RECEIVED_AMOUNT',
'            FROM(',
'            SELECT',
'                    PARTY_ID,',
'                    ORDER_DATE   TRANSACTION_DATE,',
'                    NVL(TOTAL_AMOUNT,0) CREDIT_AMOUNT,',
'                    0  RECEIVED_AMOUNT',
'            FROM',
'                        COUNTER_SALE_CREDIT',
'        UNION ALL',
'            SELECT',
'                     PARTY_ID,',
'                     RECOVERY_DATE TRANSACTION_DATE,',
'                     0 CREDIT_AMOUNT,',
'                     NVL(RECEIVED_AMOUNT,0) RECEIVED_AMOUNT',
'            FROM',
'                    COUNTER_SALE_RECOVERY CSR',
'))',
',OPENING_BAL AS(',
'            SELECT',
'                    PARTY_ID,',
'                    NVL(SUM(CREDIT_AMOUNT),0) -  NVL(SUM(RECEIVED_AMOUNT),0)  OPENING_BALANCE',
'            FROM',
'                    ALL_TRANS     ',
'            WHERE',
'                    TRANSACTION_DATE < TO_DATE(:P92_FROM_DATE, ''DD-MON-YYYY'')',
'            GROUP BY',
'                    PARTY_ID',
')',
',PERIOD_TRANS AS (',
'            SELECT',
'                    PARTY_ID,',
'                    NVL(SUM(CREDIT_AMOUNT),0) CREDIT_AMOUNT ,',
'                    NVL(SUM(RECEIVED_AMOUNT),0)  RECEIVED_AMOUNT',
'            FROM',
'                    ALL_TRANS     ',
'            WHERE',
'                    TRANSACTION_DATE BETWEEN TO_DATE(:P92_FROM_DATE, ''DD-MON-YYYY'') AND TO_DATE(:P92_TO_DATE, ''DD-MON-YYYY'')',
'            GROUP BY',
'                    PARTY_ID',
' )',
'            SELECT',
'                    CSR.PARTY_ID,',
'                    PT.REG_NAME PARTY_NAME,',
'                    CSR.SALE_POINT_ID,',
'                    NVL(OPENING_BALANCE,0)  OPENING_BALANCE,',
'                    NVL(CREDIT_AMOUNT,0)  COUNTER_SALE,',
'                    NVL(RECEIVED_AMOUNT,0) RECOVERY_AMOUNT,',
'                    NVL(OPENING_BALANCE,0) + NVL(CREDIT_AMOUNT,0) -  NVL(RECEIVED_AMOUNT,0) CLOSING_BALANCE',
'            FROM',
'                               COUNTER_SALE_CREDIT CSR ',
'                     JOIN REGISTRATION PT ON PT.SR_ID=CSR.PARTY_ID',
'            LEFT JOIN OPENING_BAL OB ON OB.PARTY_ID=CSR.PARTY_ID',
'            LEFT JOIN PERIOD_TRANS PT ON PT.PARTY_ID=CSR.PARTY_ID',
'           WHERE',
'                  CSR.PARTY_ID <> 7325',
'                  AND CSR.SALE_POINT_ID= NVL(:P92_SALE_POINTS,CSR.SALE_POINT_ID)',
'            GROUP BY',
'                    CSR.PARTY_ID,',
'                    PT.REG_NAME,',
'                     CSR.SALE_POINT_ID,',
'                    NVL(OPENING_BALANCE,0)  ,',
'                    NVL(CREDIT_AMOUNT,0)  ,',
'                    NVL(RECEIVED_AMOUNT,0) ',
'            ORDER BY',
'                    CSR.PARTY_ID ASC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P92_FROM_DATE,P92_TO_DATE,P92_SALE_POINTS'
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
 p_id=>wwv_flow_imp.id(19708860794087748)
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
,p_internal_uid=>19708860794087748
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19709058285087750)
,p_db_column_name=>'PARTY_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Party Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20311191217531501)
,p_db_column_name=>'PARTY_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Party Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22814999322357801)
,p_db_column_name=>'OPENING_BALANCE'
,p_display_order=>40
,p_column_identifier=>'L'
,p_column_label=>'Opening Balance'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22815065180357802)
,p_db_column_name=>'COUNTER_SALE'
,p_display_order=>50
,p_column_identifier=>'M'
,p_column_label=>'Counter Sale'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22815122891357803)
,p_db_column_name=>'RECOVERY_AMOUNT'
,p_display_order=>60
,p_column_identifier=>'N'
,p_column_label=>'Recovery Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22815229009357804)
,p_db_column_name=>'CLOSING_BALANCE'
,p_display_order=>70
,p_column_identifier=>'O'
,p_column_label=>'Closing Balance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28435654484658947)
,p_db_column_name=>'SALE_POINT_ID'
,p_display_order=>80
,p_column_identifier=>'P'
,p_column_label=>'Sale Point Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(20318430985532158)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'203185'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PARTY_NAME:OPENING_BALANCE:COUNTER_SALE:RECOVERY_AMOUNT:CLOSING_BALANCE:'
,p_sum_columns_on_break=>'COUNTER_SALE:RECOVERY_AMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20315627285531546)
,p_plug_name=>'Party Balance Test'
,p_parent_plug_id=>wwv_flow_imp.id(13921660699126938)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>81
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'',
'',
'',
'WITH DAY_WISE_AMOUNT AS (',
'    SELECT',
'        ASO.CUSTOMER_ID AS PARTY_ID,',
'        SUM(SCD.SCHD_AMOUNT) AS SCHEDULE_AMOUNT,',
'        SUM(CASE ',
'                -- Corrected: Checks if the due date is between today and 2 days ago',
'                WHEN TRUNC(SCD.RUN_DATE) BETWEEN TRUNC(SYSDATE)-2 AND TRUNC(SYSDATE)',
'                THEN SCD.SCHD_AMOUNT ',
'                ELSE 0 ',
'            END) AS AMOUNT_0_2_DAYS,',
'        SUM(CASE ',
'                -- Corrected: Checks if the due date is between 5 days ago and 3 days ago',
'                WHEN TRUNC(SCD.RUN_DATE) BETWEEN TRUNC(SYSDATE)-5 AND TRUNC(SYSDATE)-3',
'                THEN SCD.SCHD_AMOUNT ',
'                ELSE 0 ',
'            END) AS AMOUNT_3_5_DAYS,',
'        SUM(CASE ',
'                -- Corrected: Checks if the due date is between 15 days ago and 6 days ago',
'                WHEN TRUNC(SCD.RUN_DATE) BETWEEN TRUNC(SYSDATE)-15 AND TRUNC(SYSDATE)-6',
'                THEN SCD.SCHD_AMOUNT ',
'                ELSE 0 ',
'            END) AS AMOUNT_6_15_DAYS,',
'        SUM(CASE ',
'                -- Corrected: Checks if the due date is between 30 days ago and 16 days ago',
'                WHEN TRUNC(SCD.RUN_DATE) BETWEEN TRUNC(SYSDATE)-30 AND TRUNC(SYSDATE)-16',
'                THEN SCD.SCHD_AMOUNT ',
'                ELSE 0 ',
'            END) AS AMOUNT_16_30_DAYS,',
'        SUM(CASE ',
'                -- Corrected and Renamed: Checks if the due date is more than 30 days in the past (Overdue)',
'                WHEN TRUNC(SCD.RUN_DATE) < TRUNC(SYSDATE)-30',
'                THEN SCD.SCHD_AMOUNT ',
'                ELSE 0 ',
'            END) AS OVERDUE_AMOUNT ',
'    FROM',
'         AB_JOB_SCHEDULE SCH',
'    JOIN AB_JOB_SCHEDULE_DET SCD ',
'         ON SCD.SCH_ID = SCH.SCH_ID ',
'        AND SCD.STATUS = ''Y''',
'    LEFT JOIN AB_SO_ORDER_DET ASOD ',
'         ON ASOD.SOD_ID = SCH.SCH_IDS',
'    LEFT JOIN AB_SO_ORDER_HEAD ASO',
'         ON ASO.SO_ID = ASOD.SO_ID',
'    WHERE',
'          SCH.STATUS = ''Y''',
'      AND SCH.SCH_TYPE = 1008',
'    -- AND ASO.CUSTOMER_ID = 7325 -- For testing a single customer',
'    GROUP BY',
'        ASO.CUSTOMER_ID',
'),',
'COUNTER_SALE AS(',
'    SELECT ',
'        PARTY_ID,',
'        CUSTOMER_NAME PARTY_NAME,',
'        SALE_POINT_ID,',
'        NVL(SUM(COUNTER_BAGS),0) COUNTER_BAGS,',
'        NVL(SUM(TOTAL_AMOUNT),0) TOTAL_AMOUNT,',
'        CONTACT_NUMBER as CONTACT_NUMBER',
'    FROM',
'        TABLE(AB_SALE_ORDER_PKG.COUNTER_SALE_REPORT(:GV_ORG_ID, :GV_USER_ID))',
'    WHERE',
'            APPROVAL_STATUS=''Approved'' ',
'        AND PAYMENT_TYPE = 597',
'    GROUP BY',
'        PARTY_ID,',
'        CUSTOMER_NAME,',
'        SALE_POINT_ID,',
'        CONTACT_NUMBER',
'),',
'COUNTER_SALE_RECOVERY AS(',
'    SELECT',
'        SO.CUSTOMER_ID PARTY_ID,',
'        MAX(SOD_DATE)  RECOVERY_DATE,',
'        NVL(SUM(TOTAL_AMOUNT),0) COUNTER_RECOVERY',
'    FROM',
'             AB_SO_ORDER_HEAD SO',
'        JOIN AB_SO_ORDER_DET SOD ON SOD.SO_ID=SO.SO_ID AND SOD.STATUS=''Y''',
'    WHERE',
'            SO.STATUS=''Y''',
'        AND SO_TYPE=''1007'' ',
'    GROUP BY',
'        SO.CUSTOMER_ID',
')',
'SELECT',
'    CS.PARTY_ID,',
'    PARTY_NAME,',
'    CS.CONTACT_NUMBER,',
'    NVL(TOTAL_AMOUNT,0) RECOVERY_AMOUNT,',
'    NVL(COUNTER_RECOVERY,0) AS RECEIVED_AMOUNT,',
'    -- This is the Total Remaining Amount',
'    NVL(TOTAL_AMOUNT,0) - NVL(COUNTER_RECOVERY,0) AS REMAINING_AMOUNT,',
'    ',
'    -- -- Proportional calculation for each time period',
'    CASE ',
'        WHEN DWA.SCHEDULE_AMOUNT > 0 ',
'        THEN ROUND( ( (NVL(TOTAL_AMOUNT,0) - NVL(COUNTER_RECOVERY,0)) * (NVL(DWA.AMOUNT_0_2_DAYS, 0) / DWA.SCHEDULE_AMOUNT) ), 2 )',
'        ELSE 0 ',
'    END  AS AMOUNT_0_2_DAYS,',
'',
'    CASE ',
'        WHEN DWA.SCHEDULE_AMOUNT > 0 ',
'        THEN ROUND( ( (NVL(TOTAL_AMOUNT,0) - NVL(COUNTER_RECOVERY,0)) * (NVL(DWA.AMOUNT_3_5_DAYS, 0) / DWA.SCHEDULE_AMOUNT) ), 2 )',
'        ELSE 0 ',
'    END  AS AMOUNT_3_5_DAYS,',
'',
'    CASE ',
'        WHEN DWA.SCHEDULE_AMOUNT > 0 ',
'        THEN ROUND( ( (NVL(TOTAL_AMOUNT,0) - NVL(COUNTER_RECOVERY,0)) * (NVL(DWA.AMOUNT_6_15_DAYS, 0) / DWA.SCHEDULE_AMOUNT) ), 2 )',
'        ELSE 0 ',
'    END  AS AMOUNT_6_15_DAYS,',
'',
'    CASE ',
'        WHEN DWA.SCHEDULE_AMOUNT > 0 ',
'        THEN ROUND( ( (NVL(TOTAL_AMOUNT,0) - NVL(COUNTER_RECOVERY,0)) * (NVL(DWA.AMOUNT_16_30_DAYS, 0) / DWA.SCHEDULE_AMOUNT) ), 2 )',
'        ELSE 0 ',
'    END  AS AMOUNT_16_30_DAYS,',
'',
'    CASE ',
'        WHEN DWA.SCHEDULE_AMOUNT > 0 ',
'        THEN ROUND( ( (NVL(TOTAL_AMOUNT,0) - NVL(COUNTER_RECOVERY,0)) * (NVL(DWA.OVERDUE_AMOUNT, 0) / DWA.SCHEDULE_AMOUNT) ), 2 )',
'        ELSE 0 ',
'    END  AS OVERDUE_AMOUNT -- Updated to use the new column name',
'',
'FROM ',
'          COUNTER_SALE CS ',
'LEFT JOIN COUNTER_SALE_RECOVERY CSR ON CSR.PARTY_ID=CS.PARTY_ID ',
'LEFT JOIN DAY_WISE_AMOUNT DWA ON DWA.PARTY_ID = CS.PARTY_ID',
'WHERE ',
'    PARTY_NAME IS NOT NULL',
'AND  (NVL(TOTAL_AMOUNT,0) - NVL(COUNTER_RECOVERY,0)) <> 0;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P92_FROM_DATE,P92_TO_DATE'
,p_plug_required_role=>wwv_flow_imp.id(36704506721739483)
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
 p_id=>wwv_flow_imp.id(20315752886531547)
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
,p_internal_uid=>20315752886531547
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20315961320531549)
,p_db_column_name=>'PARTY_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Party Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20316059965531550)
,p_db_column_name=>'PARTY_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Party Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22046915590804406)
,p_db_column_name=>'CONTACT_NUMBER'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Contact Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26737585407938549)
,p_db_column_name=>'RECOVERY_AMOUNT'
,p_display_order=>100
,p_column_identifier=>'L'
,p_column_label=>'Recovery Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27346946515570301)
,p_db_column_name=>'REMAINING_AMOUNT'
,p_display_order=>120
,p_column_identifier=>'N'
,p_column_label=>'Remaining Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27347144025570303)
,p_db_column_name=>'AMOUNT_0_2_DAYS'
,p_display_order=>140
,p_column_identifier=>'P'
,p_column_label=>'Amount 0 2 Days'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27347298173570304)
,p_db_column_name=>'AMOUNT_3_5_DAYS'
,p_display_order=>150
,p_column_identifier=>'Q'
,p_column_label=>'Amount 3 5 Days'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27347303386570305)
,p_db_column_name=>'AMOUNT_6_15_DAYS'
,p_display_order=>160
,p_column_identifier=>'R'
,p_column_label=>'Amount 6 15 Days'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27347409372570306)
,p_db_column_name=>'AMOUNT_16_30_DAYS'
,p_display_order=>170
,p_column_identifier=>'S'
,p_column_label=>'Amount 16 30 Days'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27348126758570313)
,p_db_column_name=>'RECEIVED_AMOUNT'
,p_display_order=>200
,p_column_identifier=>'V'
,p_column_label=>'Received Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28745842761858111)
,p_db_column_name=>'OVERDUE_AMOUNT'
,p_display_order=>210
,p_column_identifier=>'X'
,p_column_label=>'Overdue Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(22055838770805361)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'220559'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CONTACT_NUMBER:PARTY_NAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23391528915835515)
,p_plug_name=>'Upcoming Sale Point Recoveries'
,p_region_name=>'DWR'
,p_parent_plug_id=>wwv_flow_imp.id(13921660699126938)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>61
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH DAY_WISE_AMOUNT AS (',
'    SELECT',
'        ASO.CUSTOMER_ID AS PARTY_ID,',
'        SUM(SCD.SCHD_AMOUNT) AS SCHEDULE_AMOUNT,',
'        SUM(CASE WHEN TRUNC(SCD.RUN_DATE) BETWEEN TRUNC(SYSDATE) AND TRUNC(SYSDATE)+2 THEN SCD.SCHD_AMOUNT ELSE 0 END) AS AMOUNT_0_2_DAYS,',
'        SUM(CASE WHEN TRUNC(SCD.RUN_DATE) BETWEEN TRUNC(SYSDATE)+3 AND TRUNC(SYSDATE)+5 THEN SCD.SCHD_AMOUNT ELSE 0 END) AS AMOUNT_3_5_DAYS, -- ADDED BACK',
'        SUM(CASE WHEN TRUNC(SCD.RUN_DATE) BETWEEN TRUNC(SYSDATE)+6 AND TRUNC(SYSDATE)+15 THEN SCD.SCHD_AMOUNT ELSE 0 END) AS AMOUNT_6_15_DAYS,',
'        SUM(CASE WHEN TRUNC(SCD.RUN_DATE) BETWEEN TRUNC(SYSDATE)+16 AND TRUNC(SYSDATE)+30 THEN SCD.SCHD_AMOUNT ELSE 0 END) AS AMOUNT_16_30_DAYS,',
'        SUM(CASE WHEN TRUNC(SCD.RUN_DATE) > TRUNC(SYSDATE)+30 THEN SCD.SCHD_AMOUNT ELSE 0 END) AS ABOVE_30_DAYS,',
'        SUM(CASE WHEN TRUNC(SCD.RUN_DATE) < TRUNC(SYSDATE) THEN SCD.SCHD_AMOUNT ELSE 0 END) AS OVER_DUE_AMOUNT',
'    FROM AB_JOB_SCHEDULE SCH',
'    JOIN AB_JOB_SCHEDULE_DET SCD ON SCD.SCH_ID = SCH.SCH_ID AND SCD.STATUS = ''Y''',
'    LEFT JOIN AB_SO_ORDER_DET ASOD ON ASOD.SOD_ID = SCH.SCH_IDS',
'    LEFT JOIN AB_SO_ORDER_HEAD ASO ON ASO.SO_ID = ASOD.SO_ID',
'    WHERE SCH.STATUS = ''Y'' AND SCH.SCH_TYPE = 1008',
'    GROUP BY ASO.CUSTOMER_ID',
'),',
'COUNTER_SALE AS(',
'    SELECT ',
'        PARTY_ID, CUSTOMER_NAME PARTY_NAME, SALE_POINT_ID,',
'        NVL(SUM(COUNTER_BAGS),0) COUNTER_BAGS,',
'        NVL(SUM(TOTAL_AMOUNT),0) TOTAL_AMOUNT,',
'        CONTACT_NUMBER',
'        ',
'    FROM TABLE(AB_SALE_ORDER_PKG.COUNTER_SALE_REPORT(:GV_ORG_ID, :GV_USER_ID))',
'    WHERE APPROVAL_STATUS=''Approved'' AND PAYMENT_TYPE = 597',
'    GROUP BY PARTY_ID, CUSTOMER_NAME, SALE_POINT_ID, CONTACT_NUMBER',
'),',
'COUNTER_SALE_RECOVERY AS(',
'    SELECT',
'        SO.CUSTOMER_ID PARTY_ID,',
'        MAX(SOD_DATE) RECOVERY_DATE,',
'        NVL(SUM(TOTAL_AMOUNT),0) COUNTER_RECOVERY',
'    FROM AB_SO_ORDER_HEAD SO',
'    JOIN AB_SO_ORDER_DET SOD ON SOD.SO_ID=SO.SO_ID AND SOD.STATUS=''Y''',
'    WHERE SO.STATUS=''Y'' AND SO_TYPE=''1007'' ',
'    GROUP BY SO.CUSTOMER_ID',
')',
'-- ===== START OF THE FINAL SELECT CLAUSE =====',
'SELECT',
'    CS.PARTY_ID,',
'    PARTY_NAME,',
'    CS.SALE_POINT_ID,',
'    CS.CONTACT_NUMBER,',
'    NVL(TOTAL_AMOUNT,0) RECOVERY_AMOUNT,',
'    NVL(COUNTER_RECOVERY,0) AS RECEIVED_AMOUNT,',
'    (NVL(TOTAL_AMOUNT,0) - NVL(COUNTER_RECOVERY,0)) AS REMAINING_AMOUNT,',
'',
'    ',
'    LEAST((NVL(TOTAL_AMOUNT,0) - NVL(COUNTER_RECOVERY,0)), NVL(DWA.ABOVE_30_DAYS,0)) AS "Above 30 Days",',
'',
'    -- 2. Amount for 16-30 Days',
'    LEAST(GREATEST((NVL(TOTAL_AMOUNT,0) - NVL(COUNTER_RECOVERY,0)) - NVL(DWA.ABOVE_30_DAYS,0), 0), NVL(DWA.AMOUNT_16_30_DAYS,0)) AS "16-30 Days",',
'',
'    -- 3. Amount for 6-15 Days',
'    LEAST(GREATEST((NVL(TOTAL_AMOUNT,0) - NVL(COUNTER_RECOVERY,0)) - NVL(DWA.ABOVE_30_DAYS,0) - NVL(DWA.AMOUNT_16_30_DAYS,0), 0), NVL(DWA.AMOUNT_6_15_DAYS,0)) AS "6-15 Days",',
'    ',
'    -- 4. Amount for 3-5 Days (IS COLUMN KO YAHAN ADD KIYA GAYA HAI)',
'    LEAST(GREATEST((NVL(TOTAL_AMOUNT,0) - NVL(COUNTER_RECOVERY,0)) - NVL(DWA.ABOVE_30_DAYS,0) - NVL(DWA.AMOUNT_16_30_DAYS,0) - NVL(DWA.AMOUNT_6_15_DAYS,0), 0), NVL(DWA.AMOUNT_3_5_DAYS,0)) AS "3-5 Days",',
'',
'    -- 5. Amount for 0-2 Days (AB IS COLUMN NEIN 3-5 DAYS KA HISAB KIYA GAYA HAI)',
'    LEAST(GREATEST((NVL(TOTAL_AMOUNT,0) - NVL(COUNTER_RECOVERY,0)) - NVL(DWA.ABOVE_30_DAYS,0) - NVL(DWA.AMOUNT_16_30_DAYS,0) - NVL(DWA.AMOUNT_6_15_DAYS,0) - NVL(DWA.AMOUNT_3_5_DAYS,0), 0), NVL(DWA.AMOUNT_0_2_DAYS,0)) AS "0-2 Days",',
'',
'    -- 6. Amount for Over Due (SAB SE Aakhir mein yeh)',
'    GREATEST((NVL(TOTAL_AMOUNT,0) - NVL(COUNTER_RECOVERY,0)) - NVL(DWA.ABOVE_30_DAYS,0) - NVL(DWA.AMOUNT_16_30_DAYS,0) - NVL(DWA.AMOUNT_6_15_DAYS,0) - NVL(DWA.AMOUNT_3_5_DAYS,0) - NVL(DWA.AMOUNT_0_2_DAYS,0), 0) AS "Over Due Amount"',
'',
'FROM ',
'          COUNTER_SALE CS ',
'LEFT JOIN COUNTER_SALE_RECOVERY CSR ON CSR.PARTY_ID=CS.PARTY_ID ',
'LEFT JOIN DAY_WISE_AMOUNT DWA ON DWA.PARTY_ID = CS.PARTY_ID',
'WHERE ',
'    PARTY_NAME IS NOT NULL',
'AND  (NVL(TOTAL_AMOUNT,0) - NVL(COUNTER_RECOVERY,0)) <> 0',
'AND CS.SALE_POINT_ID= NVL(:P92_SALE_POINTS,CS.SALE_POINT_ID)',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P92_SALE_POINTS'
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
 p_id=>wwv_flow_imp.id(23391738498835517)
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
,p_internal_uid=>23391738498835517
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23391896300835518)
,p_db_column_name=>'PARTY_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Party Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23391924505835519)
,p_db_column_name=>'PARTY_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Party Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26737143325938545)
,p_db_column_name=>'CONTACT_NUMBER'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Contact Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27348093510570312)
,p_db_column_name=>'RECEIVED_AMOUNT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Received Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28431214663658903)
,p_db_column_name=>'0-2 Days'
,p_display_order=>180
,p_column_identifier=>'AJ'
,p_column_label=>'0-2 Days'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28432164258658912)
,p_db_column_name=>'3-5 Days'
,p_display_order=>190
,p_column_identifier=>'AS'
,p_column_label=>'3-5 Days'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28431075604658901)
,p_db_column_name=>'6-15 Days'
,p_display_order=>200
,p_column_identifier=>'AH'
,p_column_label=>'6-15 Days'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27351869428570350)
,p_db_column_name=>'16-30 Days'
,p_display_order=>210
,p_column_identifier=>'AG'
,p_column_label=>'16-30 Days'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27351730012570349)
,p_db_column_name=>'Above 30 Days'
,p_display_order=>220
,p_column_identifier=>'AF'
,p_column_label=>'Above 30 Days'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28432467308658915)
,p_db_column_name=>'RECOVERY_AMOUNT'
,p_display_order=>230
,p_column_identifier=>'AV'
,p_column_label=>'Recovery Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28432585529658916)
,p_db_column_name=>'REMAINING_AMOUNT'
,p_display_order=>240
,p_column_identifier=>'AW'
,p_column_label=>'Remaining Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28432680698658917)
,p_db_column_name=>'Over Due Amount'
,p_display_order=>250
,p_column_identifier=>'AX'
,p_column_label=>'Over Due Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28435880001658949)
,p_db_column_name=>'SALE_POINT_ID'
,p_display_order=>260
,p_column_identifier=>'AY'
,p_column_label=>'Sale Point Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(24226283987972226)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'242263'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PARTY_NAME:CONTACT_NUMBER:REMAINING_AMOUNT:Over Due Amount:0-2 Days:3-5 Days:6-15 Days:16-30 Days:Above 30 Days:'
,p_sort_column_1=>'0'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28001331067872501)
,p_plug_name=>'Overdue Sale Point Recoveries'
,p_region_name=>'OVR'
,p_parent_plug_id=>wwv_flow_imp.id(13921660699126938)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>71
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH DAY_WISE_AMOUNT AS (',
'    SELECT',
'        ASO.CUSTOMER_ID AS PARTY_ID,',
'        SUM(SCD.SCHD_AMOUNT) AS SCHEDULE_AMOUNT,',
'        SUM(CASE WHEN TRUNC(SCD.RUN_DATE) BETWEEN TRUNC(SYSDATE)-2 AND TRUNC(SYSDATE) THEN SCD.SCHD_AMOUNT ELSE 0 END) AS AMOUNT_0_2_DAYS,',
'        SUM(CASE WHEN TRUNC(SCD.RUN_DATE) BETWEEN TRUNC(SYSDATE)-5 AND TRUNC(SYSDATE)-3 THEN SCD.SCHD_AMOUNT ELSE 0 END) AS AMOUNT_3_5_DAYS, ',
'        SUM(CASE WHEN TRUNC(SCD.RUN_DATE) BETWEEN TRUNC(SYSDATE)-15 AND TRUNC(SYSDATE)-6 THEN SCD.SCHD_AMOUNT ELSE 0 END) AS AMOUNT_6_15_DAYS,',
'        SUM(CASE WHEN TRUNC(SCD.RUN_DATE) BETWEEN TRUNC(SYSDATE)-30 AND TRUNC(SYSDATE)-16 THEN SCD.SCHD_AMOUNT ELSE 0 END) AS AMOUNT_16_30_DAYS,',
'        SUM(CASE WHEN TRUNC(SCD.RUN_DATE) < TRUNC(SYSDATE)-30 THEN SCD.SCHD_AMOUNT ELSE 0 END) AS ABOVE_30_DAYS,',
'        SUM(CASE WHEN TRUNC(SCD.RUN_DATE) < TRUNC(SYSDATE) THEN SCD.SCHD_AMOUNT ELSE 0 END) AS OVER_DUE_AMOUNT',
'    FROM AB_JOB_SCHEDULE SCH',
'    JOIN AB_JOB_SCHEDULE_DET SCD ON SCD.SCH_ID = SCH.SCH_ID AND SCD.STATUS = ''Y''',
'    LEFT JOIN AB_SO_ORDER_DET ASOD ON ASOD.SOD_ID = SCH.SCH_IDS',
'    LEFT JOIN AB_SO_ORDER_HEAD ASO ON ASO.SO_ID = ASOD.SO_ID',
'    WHERE SCH.STATUS = ''Y'' AND SCH.SCH_TYPE = 1008',
'    GROUP BY ASO.CUSTOMER_ID',
'),',
'COUNTER_SALE AS(',
'    SELECT ',
'        PARTY_ID, CUSTOMER_NAME PARTY_NAME, SALE_POINT_ID,',
'        NVL(SUM(COUNTER_BAGS),0) COUNTER_BAGS,',
'        NVL(SUM(TOTAL_AMOUNT),0) TOTAL_AMOUNT,',
'        CONTACT_NUMBER',
'        ',
'    FROM TABLE(AB_SALE_ORDER_PKG.COUNTER_SALE_REPORT(:GV_ORG_ID, :GV_USER_ID))',
'    WHERE APPROVAL_STATUS=''Approved'' AND PAYMENT_TYPE = 597',
'    GROUP BY PARTY_ID, CUSTOMER_NAME, SALE_POINT_ID, CONTACT_NUMBER',
'),',
'COUNTER_SALE_RECOVERY AS(',
'    SELECT',
'        SO.CUSTOMER_ID PARTY_ID,',
'        MAX(SOD_DATE) RECOVERY_DATE,',
'        NVL(SUM(TOTAL_AMOUNT),0) COUNTER_RECOVERY',
'    FROM AB_SO_ORDER_HEAD SO',
'    JOIN AB_SO_ORDER_DET SOD ON SOD.SO_ID=SO.SO_ID AND SOD.STATUS=''Y''',
'    WHERE SO.STATUS=''Y'' AND SO_TYPE=''1007'' ',
'    GROUP BY SO.CUSTOMER_ID',
')',
'-- ===== START OF THE FINAL SELECT CLAUSE =====',
'SELECT',
'    CS.PARTY_ID,',
'    PARTY_NAME,',
'    CS.SALE_POINT_ID,',
'    CS.CONTACT_NUMBER,',
'    NVL(TOTAL_AMOUNT,0) RECOVERY_AMOUNT,',
'    NVL(COUNTER_RECOVERY,0) AS RECEIVED_AMOUNT,',
'    (NVL(TOTAL_AMOUNT,0) - NVL(COUNTER_RECOVERY,0)) AS REMAINING_AMOUNT,',
'',
'    -- Using Pro-rata calculation based on the remaining amount',
'    CASE ',
'        WHEN DWA.SCHEDULE_AMOUNT > 0 ',
'        THEN ROUND( ( (NVL(TOTAL_AMOUNT,0) - NVL(COUNTER_RECOVERY,0)) * (NVL(DWA.ABOVE_30_DAYS, 0) / DWA.SCHEDULE_AMOUNT) ), 2 )',
'        ELSE 0 ',
'    END  AS "Above 30 Days",',
'',
'    CASE ',
'        WHEN DWA.SCHEDULE_AMOUNT > 0 ',
'        THEN ROUND( ( (NVL(TOTAL_AMOUNT,0) - NVL(COUNTER_RECOVERY,0)) * (NVL(DWA.AMOUNT_16_30_DAYS, 0) / DWA.SCHEDULE_AMOUNT) ), 2 )',
'        ELSE 0 ',
'    END  AS "16-30 Days",',
'',
'    CASE ',
'        WHEN DWA.SCHEDULE_AMOUNT > 0 ',
'        THEN ROUND( ( (NVL(TOTAL_AMOUNT,0) - NVL(COUNTER_RECOVERY,0)) * (NVL(DWA.AMOUNT_6_15_DAYS, 0) / DWA.SCHEDULE_AMOUNT) ), 2 )',
'        ELSE 0 ',
'    END  AS "6-15 Days",',
'',
'    CASE ',
'        WHEN DWA.SCHEDULE_AMOUNT > 0 ',
'        THEN ROUND( ( (NVL(TOTAL_AMOUNT,0) - NVL(COUNTER_RECOVERY,0)) * (NVL(DWA.AMOUNT_3_5_DAYS, 0) / DWA.SCHEDULE_AMOUNT) ), 2 )',
'        ELSE 0 ',
'    END  AS "3-5 Days",',
'',
'    CASE ',
'        WHEN DWA.SCHEDULE_AMOUNT > 0 ',
'        THEN ROUND( ( (NVL(TOTAL_AMOUNT,0) - NVL(COUNTER_RECOVERY,0)) * (NVL(DWA.AMOUNT_0_2_DAYS, 0) / DWA.SCHEDULE_AMOUNT) ), 2 )',
'        ELSE 0 ',
'    END  AS "0-2 Days",',
'',
'    -- Total Overdue Amount (sum of all overdue buckets)',
'    CASE ',
'        WHEN DWA.SCHEDULE_AMOUNT > 0 ',
'        THEN ROUND( ( (NVL(TOTAL_AMOUNT,0) - NVL(COUNTER_RECOVERY,0)) * (NVL(DWA.OVER_DUE_AMOUNT, 0) / DWA.SCHEDULE_AMOUNT) ), 2 )',
'        ELSE 0 ',
'    END  AS "Over Due Amount"',
'',
'FROM ',
'          COUNTER_SALE CS ',
'LEFT JOIN COUNTER_SALE_RECOVERY CSR ON CSR.PARTY_ID=CS.PARTY_ID ',
'LEFT JOIN DAY_WISE_AMOUNT DWA ON DWA.PARTY_ID = CS.PARTY_ID',
'WHERE ',
'    PARTY_NAME IS NOT NULL',
'AND  (NVL(TOTAL_AMOUNT,0) - NVL(COUNTER_RECOVERY,0)) <> 0',
'AND CS.SALE_POINT_ID= NVL(:P92_SALE_POINTS,CS.SALE_POINT_ID)',
'AND DWA.OVER_DUE_AMOUNT > 0  ',
'AND CS.SALE_POINT_ID= NVL(:P92_SALE_POINTS,CS.SALE_POINT_ID)',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(28001408985872502)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'KHURRAM'
,p_internal_uid=>28001408985872502
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28001546186872503)
,p_db_column_name=>'PARTY_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Party Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28001621136872504)
,p_db_column_name=>'PARTY_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Party Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28002267104872510)
,p_db_column_name=>'CONTACT_NUMBER'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Contact Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28002636777872514)
,p_db_column_name=>'RECEIVED_AMOUNT'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Received Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28744811866858101)
,p_db_column_name=>'SALE_POINT_ID'
,p_display_order=>200
,p_column_identifier=>'AW'
,p_column_label=>'Sale Point Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28744974119858102)
,p_db_column_name=>'RECOVERY_AMOUNT'
,p_display_order=>210
,p_column_identifier=>'AX'
,p_column_label=>'Recovery Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28745086545858103)
,p_db_column_name=>'REMAINING_AMOUNT'
,p_display_order=>220
,p_column_identifier=>'AY'
,p_column_label=>'Remaining Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28746047032858113)
,p_db_column_name=>'Above 30 Days'
,p_display_order=>230
,p_column_identifier=>'BG'
,p_column_label=>'Above 30 Days'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28746128848858114)
,p_db_column_name=>'16-30 Days'
,p_display_order=>240
,p_column_identifier=>'BH'
,p_column_label=>'16-30 Days'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28746249593858115)
,p_db_column_name=>'6-15 Days'
,p_display_order=>250
,p_column_identifier=>'BI'
,p_column_label=>'6-15 Days'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28746339847858116)
,p_db_column_name=>'3-5 Days'
,p_display_order=>260
,p_column_identifier=>'BJ'
,p_column_label=>'3-5 Days'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28746459906858117)
,p_db_column_name=>'0-2 Days'
,p_display_order=>270
,p_column_identifier=>'BK'
,p_column_label=>'0-2 Days'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28746589823858118)
,p_db_column_name=>'Over Due Amount'
,p_display_order=>280
,p_column_identifier=>'BL'
,p_column_label=>'Over Due Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(28012398393884481)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'280124'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PARTY_ID:PARTY_NAME:CONTACT_NUMBER:Over Due Amount:0-2 Days:3-5 Days:6-15 Days:16-30 Days:Above 30 Days'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(425387291261048234)
,p_plug_name=>'Counter Sale Order Detail'
,p_region_name=>'AA'
,p_parent_plug_id=>wwv_flow_imp.id(13921660699126938)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:margin-top-md'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>41
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH REGISTRATION AS(',
'            SELECT',
'                        SR_ID ,',
'                        REG_NAME ,',
'                        ADDRESS,',
'                        CONTACT_NUMBER,',
'                        CNIC,',
'                        REG_TYPE',
'            FROM',
'                    AB_SETUP_REGISTRATION         ',
')',
',SALE_OFFER AS(',
'        SELECT ',
'                    AU.U_NAME SALE_OFFER, ',
'                    AU.USER_ID SALE_OFFER_ID ',
'        FROM ',
'                    AB_UM_USERS_REG AU',
'        WHERE',
'                     STATUS=''Y''',
') ',
',CUSTOMER_REG AS (',
'        SELECT',
'                CUSTOMER_ID,  ',
'                INITCAP(CUSTOMER_NAME) AS CUSTOMER_NAME,',
'                INITCAP(ADDRESS) AS ADDRESS,',
'                INITCAP(CONTACT_NUMBER) AS CONTACT_NUMBER,',
'                CNIC',
'        FROM (   ',
'                SELECT ',
'                        SR_ID AS CUSTOMER_ID,',
'                        REG_NAME AS CUSTOMER_NAME,',
'                        ADDRESS,',
'                        CONTACT_NUMBER,',
'                        CNIC',
'                FROM ',
'                            REGISTRATION',
'                WHERE ',
'                             REG_TYPE = ''CUSTOMER REGISTRATION''',
'        UNION ALL',
'                SELECT ',
'                            SR_ID AS CUSTOMER_ID,',
'                            REG_NAME AS CUSTOMER_NAME,',
'                            ADDRESS,',
'                            CONTACT_NUMBER,',
'                            CNIC',
'                FROM ',
'                            REGISTRATION',
'                WHERE ',
'                           REG_TYPE = ''COUNTER CUSTOMER'')',
')',
',LOOKUP AS(',
'            SELECT',
'                      DET_ID,',
'                      LOOKUP_DET_NAME',
'            FROM',
'                AB_LOOKUP_DETAIL',
'            WHERE',
'                STATUS=''Y''',
')',
',USER_APPROVAL AS(',
'            SELECT',
'                       APP_IDS SOD_ID,',
'                       INITCAP(CREATED_BY)  ||'' (''|| TO_CHAR(CREATED_ON,''DD-MON-YYYY'')||'')'' APPROVAL_BY,',
'                       APPROVAL_STATUS',
'            FROM',
'                        AB_USER_ACTION_APPROVAL',
'            WHERE',
'                         APP_TYPE=''918''',
'                AND STATUS=''Y''',
')',
',SALE_POINT_ASSIGN AS (',
'    SELECT',
'            SALE_POINT_ID,',
'            SALE_OFFER_ID',
'    FROM',
'              AB_SETUP_REGISTRATION  ASP',
'    WHERE',
'                    ASP.ORG_ID=:GV_ORG_ID',
'            AND ASP.REG_STATUS=''Y''',
'            AND ASP.REG_TYPE=''ASSIGN SALE POINT''',
'             -- AND ( :GV_USER_ID = 42 OR SALE_OFFER_ID = :GV_USER_ID )',
'            AND SALE_OFFER_ID = :GV_USER_ID',
'),',
'SALE_POINT_NAME AS (',
'                ',
'            ',
'               SELECT',
'                 INITCAP(REG_NAME) SALE_POINT_NAME,',
'                 SR_ID ',
'        FROM',
'            AB_SETUP_REGISTRATION',
'        WHERE',
'              REG_TYPE = ''COUNTER SALE POINT''',
'        AND (',
'              (:GV_ORG_ID IN (1008,1004,1007,1006) AND ORG_ID IN (1008, 1006, 1001,1007))',
'           OR (ORG_ID = :GV_ORG_ID)',
'        )',
'        ORDER BY',
'                    SR_ID DESC',
')',
',SCHEDULE_OF_PAYMENT AS (',
'        SELECT',
'                AJS.SCH_ID SOP_ID,',
'                AJS.SCH_IDS SO_ID--,',
'              --  SCHD_AMOUNT',
'        FROM',
'                    AB_JOB_SCHEDULE AJS',
'',
'        JOIN       AB_JOB_SCHEDULE_DET AJSD ON AJSD.SCH_ID = AJS.SCH_ID   ',
'        WHERE',
'                   AJS.STATUS=''Y''',
'          AND AJS.SCH_TYPE = 1008',
')',
'        SELECT      distinct',
'                    CR.*,',
'                    CS.SO_ID,',
'                    CSD.SOD_ID,',
'                    GATE_PASS_NO,',
'                    TO_CHAR(CS.ORDER_DATE, ''DD-MON-YYYY'') AS ORDER_DATE,',
'                    CS.CUSTOMER_ID AS PARTY_ID,',
'                    LD.LOOKUP_DET_NAME   AS PAYMENT_NAME,',
'                    ASR.REG_NAME    AS WAREHOUSE,',
'                    PT.LOOKUP_DET_NAME AS PAYMENT_TERM,',
'                    CT.LOOKUP_DET_NAME AS CUSTOMER_TYPE,',
'                    ITM.ITEM_NAME || '' ('' || ITM.PACKING_SIZE || '' '' || ITM.UNIT || '' '' || ITM.PACKING || '')'' AS PRODUCT,',
'                    NVL(CSD.NO_BAGS, 0) AS COUNTER_BAGS,',
'                    CSD.BAG_RATE,',
'                    CSD.TOTAL_AMOUNT,',
'                    INITCAP(CS.CREATED_BY) || '' ('' || TO_CHAR(CS.CREATED_ON, ''DD-MON-YYYY'') || '')'' AS ADD_BY,',
'                    CS.REMARKS,',
'                    CASE ',
unistr('                            WHEN APP.SOD_ID  IS NULL THEN ''<div class="pending-badge"><span class="clock-icon">\23F3</span> Pending</div>'''),
'                            WHEN APP.SOD_ID IS NOT NULL AND  APP.APPROVAL_STATUS = ''APPROVED''  THEN  ''<div class="approved-badge"><span class="check-icon">&#10004;</span> Approved</div>''',
'                            WHEN APP.SOD_ID IS NOT NULL AND  APP.APPROVAL_STATUS = ''REJECTED''  THEN  ''<div class="rejected-badge"> <span class="cross-icon blinking">&#10006;</span> Rejected </div>''',
'                    END  APPROVAL_STATUS,',
'                    APPROVAL_BY,',
'                    CS.SALE_POINT_ID ,',
'                    CS.PAYMENT_TYPE,',
'                    PM.LOOKUP_DET_NAME AS PAYMENT_MODE_TYPE,',
'                    CASE WHEN  PM.LOOKUP_DET_NAME IS NULL THEN ''EDIT''   ELSE NULL END AS  EDIT,',
'                CASE ',
'                     WHEN SOP.SO_ID IS NULL  AND  CS.PAYMENT_TYPE=597  THEN   ''<span style="color:green;font-weight:bold;">Enter SOP</span>''',
'                     WHEN SOP.SO_ID IS NOT  NULL  AND  CS.PAYMENT_TYPE=597   THEN ''<span style="color:red;font-weight:bold;">SOP Added</span>'' ',
'                END SOP,',
'                SOP.SOP_ID,',
'                CS.CREATED_BY,',
'                SPN.SALE_POINT_NAME--,',
'             --  SOP.SCHD_AMOUNT',
'                 ',
'        FROM',
'                                AB_SO_ORDER_HEAD CS',
'                     JOIN  AB_SO_ORDER_DET CSD ON CSD.SO_ID = CS.SO_ID AND CSD.STATUS=''Y''',
'                     JOIN  AB_ITEMS_MASTER ITM ON ITM.ITEM_ID = CSD.ITEM_ID AND ITM.STATUS=''Y''',
'            LEFT JOIN  REGISTRATION ASR ON ASR.SR_ID = CSD.WAREHOUSE_ID ',
'            LEFT JOIN  LOOKUP LD ON   LD.DET_ID=CS.PAYMENT_ID',
'            LEFT JOIN  LOOKUP PT ON   PT.DET_ID=CS.PAYMENT_TERM',
'            LEFT JOIN  LOOKUP CT ON   CT.DET_ID=CS.CUSTOMER_TYPE_ID',
'            LEFT JOIN  CUSTOMER_REG CR ON CR.CUSTOMER_ID = CS.CUSTOMER_ID',
'            LEFT JOIN  USER_APPROVAL APP ON APP.SOD_ID=CSD.SOD_ID',
'                 JOIN  SALE_POINT_ASSIGN SPA ON SPA.SALE_POINT_ID = CS.SALE_POINT_ID ',
'            LEFT JOIN  LOOKUP PM  ON PM.DET_ID = CS.PAYMENT_TYPE',
'            LEFT JOIN SCHEDULE_OF_PAYMENT SOP ON SOP.SO_ID = CSD.SOD_ID',
'            LEFT JOIN SALE_POINT_NAME SPN ON SPN.SR_ID = SPA.SALE_POINT_ID ',
'         WHERE ',
'                       CS.ORG_ID = :GV_ORG_ID',
'             -- AND CS.STATUS = ''Y''',
'              AND CS.SO_TYPE = ''708''',
'            -- AND CS.CUSTOMER_ID <> 7325',
'       ',
'              AND TRUNC(CS.ORDER_DATE) BETWEEN NVL(TO_DATE(:P92_FROM_DATE, ''DD-MON-YYYY''), TRUNC(CS.ORDER_DATE))',
'             AND  NVL(TO_DATE(:P92_TO_DATE, ''DD-MON-YYYY''), TRUNC(CS.ORDER_DATE))',
'             AND CS.SALE_POINT_ID = NVL(:P92_SALE_POINTS,CS.SALE_POINT_ID)',
'        ORDER BY',
'             CS.SO_ID DESC ',
'                   ',
'                   ',
'          '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P92_FROM_DATE,P92_TO_DATE,P92_SALE_POINTS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Sale Order Report'
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
 p_id=>wwv_flow_imp.id(425387325532048234)
,p_name=>'Sale Order'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'UMAR'
,p_internal_uid=>425387325532048234
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(431131611284260301)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>67
,p_column_identifier=>'T'
,p_column_label=>'Customer'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(384890452282370492)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>97
,p_column_identifier=>'Z'
,p_column_label=>'Customer Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(384890473866370493)
,p_db_column_name=>'ADDRESS'
,p_display_order=>107
,p_column_identifier=>'AA'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(384890589467370494)
,p_db_column_name=>'CONTACT_NUMBER'
,p_display_order=>117
,p_column_identifier=>'AB'
,p_column_label=>'Contact #'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(384890724482370495)
,p_db_column_name=>'CNIC'
,p_display_order=>127
,p_column_identifier=>'AC'
,p_column_label=>'CNIC'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(384891175471370500)
,p_db_column_name=>'TOTAL_AMOUNT'
,p_display_order=>177
,p_column_identifier=>'AH'
,p_column_label=>'Total Amount'
,p_column_html_expression=>'<div class="data-box bg-opn">#TOTAL_AMOUNT#</div>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(384891290390370501)
,p_db_column_name=>'REMARKS'
,p_display_order=>187
,p_column_identifier=>'AI'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(430967081800010091)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>247
,p_column_identifier=>'AP'
,p_column_label=>'Order Date'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(265920102952633454)
,p_db_column_name=>'SO_ID'
,p_display_order=>257
,p_column_identifier=>'AQ'
,p_column_label=>'CSO#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(265920272354633456)
,p_db_column_name=>'PAYMENT_NAME'
,p_display_order=>277
,p_column_identifier=>'AS'
,p_column_label=>'Payment'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(265920429449633457)
,p_db_column_name=>'PAYMENT_TERM'
,p_display_order=>287
,p_column_identifier=>'AT'
,p_column_label=>'Payment Term'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(265920517127633458)
,p_db_column_name=>'CUSTOMER_TYPE'
,p_display_order=>297
,p_column_identifier=>'AU'
,p_column_label=>'Customer Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(265920750253633461)
,p_db_column_name=>'COUNTER_BAGS'
,p_display_order=>327
,p_column_identifier=>'AX'
,p_column_label=>'Counter Bags'
,p_column_html_expression=>'<div class="data-box bg-rate">#COUNTER_BAGS#</div>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(265920864174633462)
,p_db_column_name=>'BAG_RATE'
,p_display_order=>337
,p_column_identifier=>'AY'
,p_column_label=>'Bag Rate'
,p_column_html_expression=>'<div class="data-box bg-nett">#BAG_RATE#</div>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271135598062238263)
,p_db_column_name=>'PRODUCT'
,p_display_order=>347
,p_column_identifier=>'BA'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271529778991350321)
,p_db_column_name=>'APPROVAL_STATUS'
,p_display_order=>367
,p_column_identifier=>'BB'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(276655237969185826)
,p_db_column_name=>'WAREHOUSE'
,p_display_order=>377
,p_column_identifier=>'BD'
,p_column_label=>'Warehouse'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(329186928201991422)
,p_db_column_name=>'PARTY_ID'
,p_display_order=>387
,p_column_identifier=>'BE'
,p_column_label=>'Party Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(329541826841281446)
,p_db_column_name=>'ADD_BY'
,p_display_order=>397
,p_column_identifier=>'BF'
,p_column_label=>'Add By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182244508287236302)
,p_db_column_name=>'APPROVAL_BY'
,p_display_order=>407
,p_column_identifier=>'BG'
,p_column_label=>'Approval By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182753770692313143)
,p_db_column_name=>'SALE_POINT_ID'
,p_display_order=>417
,p_column_identifier=>'BH'
,p_column_label=>'Sale Point Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182987169322135912)
,p_db_column_name=>'GATE_PASS_NO'
,p_display_order=>427
,p_column_identifier=>'BI'
,p_column_label=>'Gate Pass No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13918539650126907)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>437
,p_column_identifier=>'BJ'
,p_column_label=>'Payment Type'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13918630714126908)
,p_db_column_name=>'PAYMENT_MODE_TYPE'
,p_display_order=>447
,p_column_identifier=>'BK'
,p_column_label=>'Payment Mode'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14437980175199504)
,p_db_column_name=>'EDIT'
,p_display_order=>457
,p_column_identifier=>'BL'
,p_column_label=>'Edit'
,p_column_link=>'javascript:$s(''P92_CSO_ID'',''#SO_ID#''); javascript:$s(''P92_ORDER_DATE'',''#ORDER_DATE#''); javascript:$s(''P92_CUSTOMER_NAME'',''#CUSTOMER_NAME#'');   javascript:$s(''P92_PRODUCT_NAME'',''#PRODUCT#'');  javascript:$s(''P92_BAGS'',''#COUNTER_BAGS#''); openModal(''PMT'''
||'); apex.region("PMT").refresh();'
,p_column_linktext=>'#EDIT#'
,p_column_link_attr=>'class="t-Button t-Button--icon t-Button--hot t-Button--success t-Button--simple t-Button--iconLeft"'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16122347512808101)
,p_db_column_name=>'SOP'
,p_display_order=>467
,p_column_identifier=>'BM'
,p_column_label=>'Sop'
,p_column_link=>'f?p=&APP_ID.:1063:&SESSION.::&DEBUG.:1063:P1063_SALE_ORDER,P1063_SOP_ID:#SOD_ID#,#SOP_ID#'
,p_column_linktext=>'#SOP#'
,p_column_link_attr=>'class="t-Button t-Button--primary t-Button--bold t-Button--fullWidth"'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16122491737808102)
,p_db_column_name=>'SOP_ID'
,p_display_order=>477
,p_column_identifier=>'BN'
,p_column_label=>'Sop Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16779441580392219)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>487
,p_column_identifier=>'BO'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22049736210804434)
,p_db_column_name=>'SALE_POINT_NAME'
,p_display_order=>497
,p_column_identifier=>'BP'
,p_column_label=>'Sale Point'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27348350646570315)
,p_db_column_name=>'SOD_ID'
,p_display_order=>507
,p_column_identifier=>'BQ'
,p_column_label=>'Sod Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(425395030252048679)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'404048'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>'SOP:SO_ID:SALE_POINT_NAME:ORDER_DATE:CUSTOMER_NAME:PAYMENT_MODE_TYPE:GATE_PASS_NO:PRODUCT:COUNTER_BAGS:BAG_RATE:TOTAL_AMOUNT:ADD_BY:APPROVAL_STATUS:APPROVAL_BY'
,p_sort_column_1=>'0'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_sum_columns_on_break=>'COUNTER_BAGS:TOTAL_AMOUNT:SCHD_AMOUNT'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(28031850073035702)
,p_report_id=>wwv_flow_imp.id(425395030252048679)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'SOP'
,p_operator=>'='
,p_expr=>'<span style="color:red;font-weight:bold;">SOP Added</span>'
,p_condition_sql=>'"SOP" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''<span style="color:red;font-weight:bold;">SOP Added</span>''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13922281285126944)
,p_plug_name=>'Add Amount'
,p_region_name=>'addamount'
,p_region_css_classes=>'js-dialog-size1000x600'
,p_region_template_options=>'#DEFAULT#:js-dialog-nosize'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>81
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14438046189199505)
,p_plug_name=>'UPDATE_PAYMENT_MODE'
,p_region_name=>'PMT'
,p_region_css_classes=>'js-dialog-size800x400'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>1000000060
,p_location=>null
,p_plug_required_role=>wwv_flow_imp.id(36704506721739483)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16122524435808103)
,p_plug_name=>'Detail Customer Report'
,p_region_name=>'arrear'
,p_region_css_classes=>'js-dialog-size1000x450'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>71
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH REGISTRATION AS(',
'            SELECT',
'                        SR_ID ,',
'                        REG_NAME ,',
'                        ADDRESS,',
'                        CONTACT_NUMBER,',
'                        CNIC,',
'                        REG_TYPE',
'            FROM',
'                    AB_SETUP_REGISTRATION',
'            WHERE',
'                          REG_STATUS = ''Y''',
'               --- AND ORG_ID = :GV_ORG_ID            ',
')',
',SALE_OFFER AS(',
'        SELECT ',
'                    AU.U_NAME SALE_OFFER, ',
'                    AU.USER_ID SALE_OFFER_ID ',
'        FROM ',
'                    AB_UM_USERS_REG AU',
'        WHERE',
'                     STATUS=''Y''',
') ',
',CUSTOMER_REG AS (',
'        SELECT',
'                CUSTOMER_ID,  ',
'                INITCAP(CUSTOMER_NAME) AS CUSTOMER_NAME,',
'                INITCAP(ADDRESS) AS ADDRESS,',
'                INITCAP(CONTACT_NUMBER) AS CONTACT_NUMBER,',
'                CNIC',
'        FROM (   ',
'                SELECT ',
'                        SR_ID AS CUSTOMER_ID,',
'                        REG_NAME AS CUSTOMER_NAME,',
'                        ADDRESS,',
'                        CONTACT_NUMBER,',
'                        CNIC',
'                FROM ',
'                            REGISTRATION',
'                WHERE ',
'                             REG_TYPE = ''CUSTOMER REGISTRATION''',
'        UNION ALL',
'                SELECT ',
'                            SR_ID AS CUSTOMER_ID,',
'                            REG_NAME AS CUSTOMER_NAME,',
'                            ADDRESS,',
'                            CONTACT_NUMBER,',
'                            CNIC',
'                FROM ',
'                            REGISTRATION',
'                WHERE ',
'                           REG_TYPE = ''COUNTER CUSTOMER'')',
')',
',LOOKUP AS(',
'            SELECT',
'                      DET_ID,',
'                      LOOKUP_DET_NAME',
'            FROM',
'                AB_LOOKUP_DETAIL',
'            WHERE',
'                STATUS=''Y''',
')',
',USER_APPROVAL AS(',
'            SELECT',
'                       APP_IDS SOD_ID,',
'                       INITCAP(CREATED_BY)  ||'' (''|| TO_CHAR(CREATED_ON,''DD-MON-YYYY'')||'')'' APPROVAL_BY,',
'                       APPROVAL_STATUS',
'            FROM',
'                        AB_USER_ACTION_APPROVAL',
'            WHERE',
'                         APP_TYPE=''918''',
'                AND STATUS=''Y''',
')',
',SALE_POINT_ASSIGN AS (',
'    SELECT',
'            SALE_POINT_ID,',
'            SALE_OFFER_ID',
'    FROM',
'              AB_SETUP_REGISTRATION  ASP',
'    WHERE',
'                    ASP.ORG_ID=:GV_ORG_ID',
'            AND ASP.REG_STATUS=''Y''',
'            AND ASP.REG_TYPE=''ASSIGN SALE POINT''',
'             -- AND ( :GV_USER_ID = 42 OR SALE_OFFER_ID = :GV_USER_ID )',
'            AND SALE_OFFER_ID = :GV_USER_ID',
')',
'',
',SCHEDULE_OF_PAYMENT AS (',
'        SELECT',
'                SCH_ID SOP_ID,',
'                SCH_IDS SO_ID',
'        FROM',
'                    AB_JOB_SCHEDULE',
'        WHERE',
'                   STATUS=''Y''',
'          AND SCH_TYPE=799',
')',
'        SELECT',
'                    CR.CUSTOMER_ID,',
'                    CR.CUSTOMER_NAME,',
'                    CS.SO_ID,',
'                    CSD.SOD_ID,',
'                    GATE_PASS_NO,',
'                    TO_CHAR(CS.ORDER_DATE, ''DD-MON-YYYY'') AS ORDER_DATE,',
'                    CS.CUSTOMER_ID AS PARTY_ID,',
'                    LD.LOOKUP_DET_NAME   AS PAYMENT_NAME,',
'                    ASR.REG_NAME    AS WAREHOUSE,',
'                    PT.LOOKUP_DET_NAME AS PAYMENT_TERM,',
'                    CT.LOOKUP_DET_NAME AS CUSTOMER_TYPE,',
'                    ITM.ITEM_NAME || '' ('' || ITM.PACKING_SIZE || '' '' || ITM.UNIT || '' '' || ITM.PACKING || '')'' AS PRODUCT,',
'                    NVL(CSD.NO_BAGS, 0) AS COUNTER_BAGS,',
'                    CSD.BAG_RATE,',
'                    CSD.TOTAL_AMOUNT,',
'                    INITCAP(CS.CREATED_BY) || '' ('' || TO_CHAR(CS.CREATED_ON, ''DD-MON-YYYY'') || '')'' AS ADD_BY,',
'                    CS.REMARKS,',
'                    CASE ',
unistr('                            WHEN APP.SOD_ID  IS NULL THEN ''<div class="pending-badge"><span class="clock-icon">\23F3</span> Pending</div>'''),
'                            WHEN APP.SOD_ID IS NOT NULL AND  APP.APPROVAL_STATUS = ''APPROVED''  THEN  ''<div class="approved-badge"><span class="check-icon">&#10004;</span> Approved</div>''',
'                            WHEN APP.SOD_ID IS NOT NULL AND  APP.APPROVAL_STATUS = ''REJECTED''  THEN  ''<div class="rejected-badge"> <span class="cross-icon blinking">&#10006;</span> Rejected </div>''',
'                    END  APPROVAL_STATUS,',
'                    APPROVAL_BY,',
'                    CS.SALE_POINT_ID ,',
'                    CS.PAYMENT_TYPE,',
'                    PM.LOOKUP_DET_NAME AS PAYMENT_MODE_TYPE,',
'                    CASE WHEN  PM.LOOKUP_DET_NAME IS NULL THEN ''EDIT''   ELSE NULL END AS  EDIT,',
'                CASE ',
'                     WHEN SOP.SO_ID IS NULL  AND  CS.PAYMENT_TYPE=597  THEN ''Enter SOP''',
'                     WHEN SOP.SO_ID IS NOT  NULL  AND  CS.PAYMENT_TYPE=597   THEN  ''SOP Added'' ',
'                END SOP,',
'                SOP.SOP_ID',
'                 ',
'        FROM',
'                                AB_SO_ORDER_HEAD CS',
'                     JOIN  AB_SO_ORDER_DET CSD ON CSD.SO_ID = CS.SO_ID AND CSD.STATUS=''Y''',
'                     JOIN  AB_ITEMS_MASTER ITM ON ITM.ITEM_ID = CSD.ITEM_ID AND ITM.STATUS=''Y''',
'            LEFT JOIN  REGISTRATION ASR ON ASR.SR_ID = CSD.WAREHOUSE_ID ',
'            LEFT JOIN  LOOKUP LD ON   LD.DET_ID=CS.PAYMENT_ID',
'            LEFT JOIN  LOOKUP PT ON   PT.DET_ID=CS.PAYMENT_TERM',
'            LEFT JOIN  LOOKUP CT ON   CT.DET_ID=CS.CUSTOMER_TYPE_ID',
'            LEFT JOIN  CUSTOMER_REG CR ON CR.CUSTOMER_ID = CS.CUSTOMER_ID',
'            LEFT JOIN  USER_APPROVAL APP ON APP.SOD_ID=CSD.SOD_ID',
'                 JOIN  SALE_POINT_ASSIGN SPA ON SPA.SALE_POINT_ID = CS.SALE_POINT_ID ',
'            LEFT JOIN  LOOKUP PM  ON PM.DET_ID = CS.PAYMENT_TYPE',
'            LEFT JOIN SCHEDULE_OF_PAYMENT SOP ON SOP.SO_ID = CSD.SOD_ID',
'         WHERE ',
'                       CS.ORG_ID = :GV_ORG_ID',
'              AND CS.STATUS = ''Y''',
'              AND CS.SO_TYPE = ''708''',
'                AND PM.DET_ID = 597',
'             AND APP.APPROVAL_STATUS <> ''REJECTED''',
'            --   AND TRUNC(CS.ORDER_DATE) BETWEEN NVL(TO_DATE(:P92_FROM_DATE, ''DD-MON-YYYY''), TRUNC(CS.ORDER_DATE))',
'            --  AND  NVL(TO_DATE(:P92_TO_DATE, ''DD-MON-YYYY''), TRUNC(CS.ORDER_DATE))',
'             AND   CR.CUSTOMER_ID = NVL(:P92_CUSTOMER_IDS,CR.CUSTOMER_ID)',
'        ORDER BY',
'             CS.SO_ID DESC ',
'                   ',
'                   ',
'          '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P92_CUSTOMER_IDS'
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
 p_id=>wwv_flow_imp.id(16122610232808104)
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
,p_internal_uid=>16122610232808104
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16122781999808105)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Customer Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16122836630808106)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16123295677808110)
,p_db_column_name=>'SO_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'So Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16123365073808111)
,p_db_column_name=>'SOD_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Sod Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16123415453808112)
,p_db_column_name=>'GATE_PASS_NO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Gate Pass No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16123502729808113)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Order Date'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16123655252808114)
,p_db_column_name=>'PARTY_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Party Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16123791579808115)
,p_db_column_name=>'PAYMENT_NAME'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Payment Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16123871117808116)
,p_db_column_name=>'WAREHOUSE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Warehouse'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16123968047808117)
,p_db_column_name=>'PAYMENT_TERM'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Payment Term'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16124066084808118)
,p_db_column_name=>'CUSTOMER_TYPE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Customer Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16124195637808119)
,p_db_column_name=>'PRODUCT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16124219811808120)
,p_db_column_name=>'COUNTER_BAGS'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Counter Bags'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16124367474808121)
,p_db_column_name=>'BAG_RATE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Bag Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16124411108808122)
,p_db_column_name=>'TOTAL_AMOUNT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Total Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16124544672808123)
,p_db_column_name=>'ADD_BY'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Add By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16124650557808124)
,p_db_column_name=>'REMARKS'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16124735426808125)
,p_db_column_name=>'APPROVAL_STATUS'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Approval Status'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16124829888808126)
,p_db_column_name=>'APPROVAL_BY'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Approval By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16124955304808127)
,p_db_column_name=>'SALE_POINT_ID'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Sale Point Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16125050810808128)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Payment Type'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16125114703808129)
,p_db_column_name=>'PAYMENT_MODE_TYPE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Payment Mode Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16125259197808130)
,p_db_column_name=>'EDIT'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Edit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16125338285808131)
,p_db_column_name=>'SOP'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Sop'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16125481576808132)
,p_db_column_name=>'SOP_ID'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Sop Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(16705332325335546)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'167054'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CUSTOMER_ID:CUSTOMER_NAME:PRODUCT:ORDER_DATE:COUNTER_BAGS:BAG_RATE:TOTAL_AMOUNT'
,p_sum_columns_on_break=>'TOTAL_AMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16125906994808137)
,p_plug_name=>'Customer Credit Ledger'
,p_region_name=>'CPS'
,p_region_css_classes=>'js-dialog-size1000x600'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>1000000080
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COUNTER_SALE AS (',
'    SELECT ',
'        PARTY_ID,',
'        CUSTOMER_NAME AS PARTY_NAME,',
'        NVL(SUM(TOTAL_AMOUNT),0) AS TOTAL_AMOUNT,',
'        MAX(ORDER_DATE) AS ORDER_DATE',
'    FROM',
'        TABLE(AB_SALE_ORDER_PKG.COUNTER_SALE_REPORT(:GV_ORG_ID, :GV_USER_ID))',
'    WHERE',
'           APPROVAL_STATUS = ''Approved'' ',
'       AND PAYMENT_TYPE = 597',
'    GROUP BY',
'        PARTY_ID,',
'        CUSTOMER_NAME',
'),',
'',
'COUNTER_SALE_RECOVERY AS (',
'    SELECT',
'        SO.CUSTOMER_ID AS PARTY_ID,',
'        SOD.SOD_DATE AS RECOVERY_DATE,',
'        NVL(SOD.TOTAL_AMOUNT,0) AS RECEIVED_AMOUNT',
'    FROM',
'        AB_SO_ORDER_HEAD SO',
'        JOIN AB_SO_ORDER_DET SOD ',
'            ON SOD.SO_ID = SO.SO_ID ',
'           AND SOD.STATUS = ''Y''',
'    WHERE',
'            SO.STATUS = ''Y''',
'        AND SO.SO_TYPE = ''1007''',
'      --  AND SO.CUSTOMER_ID = :P135_PARTY_ID',
')',
'',
'SELECT',
'    PARTY_ID,',
'    PARTY_NAME,',
'    TRANS_DATE,',
'    RECOVERY_AMOUNT,',
'    RECEIVED_AMOUNT,',
'    SUM(RECOVERY_AMOUNT - RECEIVED_AMOUNT)',
'        OVER (ORDER BY TRANS_DATE',
'              ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) RUNNING_BALANCE',
'FROM',
'(',
'    SELECT',
'        CS.PARTY_ID,',
'        CS.PARTY_NAME,',
'         CS.ORDER_DATE AS TRANS_DATE, ',
'        --TO_DATE(CS.ORDER_DATE,''DD-MON-YYYY'') AS TRANS_DATE,',
'        CS.TOTAL_AMOUNT AS RECOVERY_AMOUNT,',
'        0 AS RECEIVED_AMOUNT',
'    FROM COUNTER_SALE CS',
'',
'    UNION ALL',
'',
'    SELECT',
'        CSR.PARTY_ID,',
'        CS.PARTY_NAME,',
'        CSR.RECOVERY_DATE AS TRANS_DATE, ',
'      -- TO_DATE(TO_CHAR(CSR.RECOVERY_DATE,''DD-MON-YYYY''),''DD-MON-YYYY'') AS TRANS_DATE,',
'        0 AS RECOVERY_AMOUNT,',
'        CSR.RECEIVED_AMOUNT',
'    FROM COUNTER_SALE_RECOVERY CSR',
'    JOIN COUNTER_SALE CS ',
'        ON CS.PARTY_ID = CSR.PARTY_ID',
')',
'',
'WHERE PARTY_ID = :P92_CUSTOMER_ID',
'ORDER BY TRANS_DATE;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P92_CUSTOMER_ID'
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
'   Customer Credit Ledger',
'</h3>',
'<hr class="gradient-line-green">'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18626000915418924)
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
,p_internal_uid=>18626000915418924
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18626791654418931)
,p_db_column_name=>'PARTY_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Party Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18626843189418932)
,p_db_column_name=>'PARTY_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Party Name'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18626946112418933)
,p_db_column_name=>'TRANS_DATE'
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
 p_id=>wwv_flow_imp.id(18627083364418934)
,p_db_column_name=>'RECOVERY_AMOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Sale Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18627144897418935)
,p_db_column_name=>'RECEIVED_AMOUNT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Received'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18627274230418936)
,p_db_column_name=>'RUNNING_BALANCE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Balance'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(19140449632802022)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'191405'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PARTY_NAME:TRANS_DATE:RECOVERY_AMOUNT:RECEIVED_AMOUNT:RUNNING_BALANCE'
,p_sum_columns_on_break=>'RECEIVED_AMOUNT:RECOVERY_AMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17461360170346001)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>11
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(182753890847313144)
,p_plug_name=>'Sale Point Name Card'
,p_parent_plug_id=>wwv_flow_imp.id(17461360170346001)
,p_plug_display_sequence=>21
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="status-cards">',
'',
'  <!-- Sale Point Card -->',
'  <div class="status-card sale-point">',
'    <!-- Icon on top -->',
'    <img src="#APP_FILES#icons8-shop-94.png" class="status-icon" alt="Sale Point Icon">',
'    <!-- Sale Point name -->',
'    <div class="count"><span id="card_sale_point_name">--</span></div>',
'  </div>',
'',
'</div>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(182754098102313146)
,p_plug_name=>'Sales Information'
,p_parent_plug_id=>wwv_flow_imp.id(17461360170346001)
,p_plug_display_sequence=>41
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="status-cards">',
'',
'',
'  <!-- Total Sale Bags Card -->',
'  <div class="status-card sale-bags">',
'    <img src="#APP_FILES#icons8-sack-96.png" class="status-icon" alt="Sale Bags Icon">',
'    <div class="count"><span id="card_pending_count">0</span></div>',
'    <div class="label">Total Sale Bags</div>',
'  </div>',
'',
'  <!-- Total Amount Card -->',
'  <div class="status-card total-amount">',
'    <img src="#APP_FILES#icons8-money-48.png" class="status-icon" alt="Total Amount Icon">',
'    <div class="count"><span id="card_approved_count">0</span></div>',
'    <div class="label">Total Amount</div>',
'  </div>',
'',
'</div>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(431131869215260304)
,p_plug_name=>'SALE ITEMS '
,p_parent_plug_id=>wwv_flow_imp.id(17461360170346001)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_region_attributes=>'style="background-color:#ececec;"'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>31
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>7
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3 class="heading-green">Apply Filters</h3>',
'<hr class="gradient-line-green">'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17633604070430847)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:#ececec;"'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(2250630693184645)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="shipment-header-decent">',
'    <h3>Counter Sale Detail</h3>',
'    <div class="road-decent"></div>',
unistr('    <div class="truck-decent">\D83D\DED2\D83C\DFC3\D83C\DFFB\200D\2642\FE0F</div>'),
'</div>',
''))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(182751480452313120)
,p_plug_name=>'Pending&Approved Counter Detail'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:margin-top-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>91
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH REGISTRATION AS(',
'            SELECT',
'                        SR_ID ,',
'                        REG_NAME ,',
'                        ADDRESS,',
'                        CONTACT_NUMBER,',
'                        CNIC,',
'                        REG_TYPE',
'            FROM',
'                    AB_SETUP_REGISTRATION',
'            WHERE',
'                          REG_STATUS = ''Y''',
'               --- AND ORG_ID = :GV_ORG_ID            ',
')',
',CUSTOMER_REG AS (',
'        SELECT',
'                CUSTOMER_ID,  ',
'                INITCAP(CUSTOMER_NAME) AS CUSTOMER_NAME,',
'                INITCAP(ADDRESS) AS ADDRESS,',
'                INITCAP(CONTACT_NUMBER) AS CONTACT_NUMBER,',
'                CNIC',
'        FROM (   ',
'                SELECT ',
'                        SR_ID AS CUSTOMER_ID,',
'                        REG_NAME AS CUSTOMER_NAME,',
'                        ADDRESS,',
'                        CONTACT_NUMBER,',
'                        CNIC',
'                FROM ',
'                            REGISTRATION',
'                WHERE ',
'                             REG_TYPE = ''CUSTOMER REGISTRATION''',
'        UNION ALL',
'                SELECT ',
'                            SR_ID AS CUSTOMER_ID,',
'                            REG_NAME AS CUSTOMER_NAME,',
'                            ADDRESS,',
'                            CONTACT_NUMBER,',
'                            CNIC',
'                FROM ',
'                            REGISTRATION',
'                WHERE ',
'                           REG_TYPE = ''COUNTER CUSTOMER'')',
')',
',LOOKUP AS(',
'            SELECT',
'                      DET_ID,',
'                      LOOKUP_DET_NAME',
'            FROM',
'                AB_LOOKUP_DETAIL',
'            WHERE',
'                STATUS=''Y''',
')',
',USER_APPROVAL AS(',
'            SELECT',
'                       APP_IDS SOD_ID,',
'                       INITCAP(CREATED_BY)  ||'' (''|| TO_CHAR(CREATED_ON,''DD-MON-YYYY'')||'')'' APPROVAL_BY,',
'                       APPROVAL_STATUS',
'            FROM',
'                        AB_USER_ACTION_APPROVAL',
'            WHERE',
'                         APP_TYPE=''918''',
'                AND STATUS=''Y''',
')',
'        SELECT',
'                    CR.*,',
'                    CS.SO_ID,',
'                    CSD.SOD_ID,',
'                    TO_CHAR(CS.ORDER_DATE, ''DD-MON-YYYY'') AS ORDER_DATE,',
'                    CS.CUSTOMER_ID AS PARTY_ID,',
'                    LD.LOOKUP_DET_NAME   AS PAYMENT_NAME,',
'                    ASR.REG_NAME    AS WAREHOUSE,',
'                    PT.LOOKUP_DET_NAME AS PAYMENT_TERM,',
'                    CT.LOOKUP_DET_NAME AS CUSTOMER_TYPE,',
'                    ITM.ITEM_NAME || '' ('' || ITM.PACKING_SIZE || '' '' || ITM.UNIT || '' '' || ITM.PACKING || '')'' AS PRODUCT,',
'                    NVL(CSD.NO_BAGS, 0) AS COUNTER_BAGS,',
'                    CSD.BAG_RATE,',
'                    CSD.TOTAL_AMOUNT,',
'                    INITCAP(CS.CREATED_BY) || '' ('' || TO_CHAR(CS.CREATED_ON, ''DD-MON-YYYY'') || '')'' AS ADD_BY,',
'                    CS.REMARKS,',
'                    CASE ',
unistr('                            WHEN APP.SOD_ID  IS NULL THEN ''<div class="pending-badge"><span class="clock-icon">\23F3</span> Pending</div>'''),
'                            WHEN APP.SOD_ID IS NOT NULL AND  APP.APPROVAL_STATUS = ''APPROVED''  THEN  ''<div class="approved-badge"><span class="check-icon">&#10004;</span> Approved</div>''',
'                            WHEN APP.SOD_ID IS NOT NULL AND  APP.APPROVAL_STATUS = ''REJECTED''  THEN  ''<div class="approved-badge"><span class="check-icon">&#10004;</span> REJECTED</div>''',
'                    END  APPROVAL_STATUS,',
'                     APPROVAL_BY',
'        FROM',
'                       AB_SO_ORDER_HEAD CS',
'                 JOIN  AB_SO_ORDER_DET CSD ON CSD.SO_ID = CS.SO_ID AND CSD.STATUS=''Y''',
'                 JOIN  AB_ITEMS_MASTER ITM ON ITM.ITEM_ID = CSD.ITEM_ID AND ITM.STATUS=''Y''',
'            LEFT JOIN  REGISTRATION ASR ON ASR.SR_ID = CSD.WAREHOUSE_ID ',
'            LEFT JOIN  LOOKUP LD ON   LD.DET_ID=CS.PAYMENT_ID',
'            LEFT JOIN  LOOKUP PT ON   PT.DET_ID=CS.PAYMENT_TERM',
'            LEFT JOIN  LOOKUP CT ON   CT.DET_ID=CS.CUSTOMER_TYPE_ID',
'            LEFT JOIN  CUSTOMER_REG CR ON CR.CUSTOMER_ID = CS.CUSTOMER_ID',
'            LEFT JOIN  USER_APPROVAL APP ON APP.SOD_ID=CSD.SOD_ID',
'         WHERE ',
'                  CS.ORG_ID = :GV_ORG_ID',
'              AND CS.STATUS = ''Y''',
'              AND CS.SO_TYPE = ''708''',
'              AND TRUNC(CS.ORDER_DATE) BETWEEN NVL(TO_DATE(:P92_FROM_DATE, ''DD-MON-YYYY''), TRUNC(CS.ORDER_DATE))',
'             AND  NVL(TO_DATE(:P92_TO_DATE, ''DD-MON-YYYY''), TRUNC(CS.ORDER_DATE))',
'             AND  (:GV_USER_ID = CS.EMP_ID OR :GV_DEPT_ID IN (9,4))         ',
'        ORDER BY',
'             CS.SO_ID DESC ',
'                   ',
'                   ',
'          '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P92_FROM_DATE,P92_TO_DATE'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Sale Order Report'
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
'<h3 class="heading-green">Counter Sale Invoice Detail</h3>',
'<hr class="gradient-line-green">'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(182751537047313121)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JAHANZAIB'
,p_internal_uid=>182751537047313121
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182751615631313122)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Customer'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182751730683313123)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Customer Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182751827612313124)
,p_db_column_name=>'ADDRESS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182751925631313125)
,p_db_column_name=>'CONTACT_NUMBER'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Contact #'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182752046539313126)
,p_db_column_name=>'CNIC'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'CNIC'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182752146943313127)
,p_db_column_name=>'TOTAL_AMOUNT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Total Amount'
,p_column_html_expression=>'<div class="data-box bg-opn">#TOTAL_AMOUNT#</div>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182752285987313128)
,p_db_column_name=>'REMARKS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182752312829313129)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Order Date'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182752463490313130)
,p_db_column_name=>'SO_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'CSO#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182752540095313131)
,p_db_column_name=>'SOD_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Sod Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182752652624313132)
,p_db_column_name=>'PAYMENT_NAME'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Payment'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182752726328313133)
,p_db_column_name=>'PAYMENT_TERM'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Payment Term'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182752899292313134)
,p_db_column_name=>'CUSTOMER_TYPE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Customer Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182752920833313135)
,p_db_column_name=>'COUNTER_BAGS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Counter Bags'
,p_column_html_expression=>'<div class="data-box bg-rate">#COUNTER_BAGS#</div>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182753086830313136)
,p_db_column_name=>'BAG_RATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Bag Rate'
,p_column_html_expression=>'<div class="data-box bg-nett">#BAG_RATE#</div>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182753102018313137)
,p_db_column_name=>'PRODUCT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182753209959313138)
,p_db_column_name=>'APPROVAL_STATUS'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182753320229313139)
,p_db_column_name=>'WAREHOUSE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Warehouse'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182753485542313140)
,p_db_column_name=>'PARTY_ID'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Party Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182753549223313141)
,p_db_column_name=>'ADD_BY'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Add By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182753673134313142)
,p_db_column_name=>'APPROVAL_BY'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Approval By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14438733275199512)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(14438046189199505)
,p_button_name=>'UPDATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<B>Update</B>'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-edit'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13922579647126947)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(13922281285126944)
,p_button_name=>'Update'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Receiving'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-calendar-ban'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22049300193804430)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(425387291261048234)
,p_button_name=>'CS_MASTER_SHEET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'CS Master Sheet'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-calendar-ban'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20314331587531533)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(13918795354126909)
,p_button_name=>'Print_Credit_Sale'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Credit Sheet'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1078:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-wallet'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(180128647212386449)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(425387291261048234)
,p_button_name=>'PRINT_REPORT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print Report'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(180128233718386447)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(425387291261048234)
,p_button_name=>'ENTER_SALE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<b>Enter Counter Sale</b>'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:93:&SESSION.::&DEBUG.:93::'
,p_icon_css_classes=>'fa-edit'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13922432741126946)
,p_name=>'P92_PARTY_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(13922281285126944)
,p_prompt=>'<b>Customer #</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14438190272199506)
,p_name=>'P92_CSO_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14438046189199505)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<B>CSO #</B>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_security_scheme=>wwv_flow_imp.id(36704506721739483)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14438249255199507)
,p_name=>'P92_ORDER_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14438046189199505)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<B>Order Date</B>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_security_scheme=>wwv_flow_imp.id(36704506721739483)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14438344901199508)
,p_name=>'P92_CUSTOMER_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14438046189199505)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<B>Customer Name</B>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_security_scheme=>wwv_flow_imp.id(36704506721739483)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14438404354199509)
,p_name=>'P92_PRODUCT_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(14438046189199505)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<B>Product Name</B>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_security_scheme=>wwv_flow_imp.id(36704506721739483)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14438563054199510)
,p_name=>'P92_BAGS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(14438046189199505)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<B>Bags</B>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_security_scheme=>wwv_flow_imp.id(36704506721739483)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14438618399199511)
,p_name=>'P92_TRANSACTION_TYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(14438046189199505)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<B>Payment Mode Type</B>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'       INITCAP(LOOKUP_DET_NAME) AS D ,',
'        DET_ID AS R',
'    FROM AB_LOOKUP_DETAIL',
'        WHERE ',
'                 MAST_ID = 30',
'        AND DET_ID IN (579,597)',
'        AND STATUS=''Y'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- SELECT PAYMENT MODE TYPE --'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-bullseye'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_security_scheme=>wwv_flow_imp.id(36704506721739483)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15500690213760014)
,p_name=>'P92_RECOVERY_AMOUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(13922281285126944)
,p_prompt=>'<b>Total Amount</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16125589487808133)
,p_name=>'P92_CUSTOMER_IDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13918795354126909)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17633363505430844)
,p_name=>'P92_SALE_BAGS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(13922281285126944)
,p_prompt=>'Sale Bags'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17633497518430845)
,p_name=>'P92_RECEIVED_AMOUNT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(13922281285126944)
,p_prompt=>'Received Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17633561451430846)
,p_name=>'P92_REMAINING_RECOVERY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(13922281285126944)
,p_prompt=>'Remaining Recovery'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18627389888418937)
,p_name=>'P92_CUSTOMER_ID'
,p_item_sequence=>1000000070
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22048282003804419)
,p_name=>'P92_SALE_POINTS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(431131869215260304)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<B>Sale Points</B>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'        SELECT',
'                 INITCAP(REG_NAME) D,',
'                 SR_ID R',
'        FROM',
'            AB_SETUP_REGISTRATION',
'        WHERE',
'              REG_TYPE = ''COUNTER SALE POINT''',
'        AND (',
'              (:GV_ORG_ID IN (1008,1004,1007,1006) AND ORG_ID IN (1008, 1006, 1001,1007))',
'           OR (ORG_ID = :GV_ORG_ID)',
'        )',
'        ORDER BY',
'                    SR_ID DESC'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_css_classes=>'large-input'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182754130407313147)
,p_name=>'P92_SALE_POINT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(182753890847313144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182754378146313149)
,p_name=>'P92_TOTAL_BAGS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(182754098102313146)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182754486494313150)
,p_name=>'P92_TOTAL_AMOUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(182754098102313146)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(431134640274260311)
,p_name=>'P92_FROM_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(431131869215260304)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- SELECT TO_CHAR(TO_DATE(''30-JUN-'' || (TO_CHAR(SYSDATE, ''YYYY'') - 1),''DD-MON-YYYY''),''DD-MON-YYYY'') AS START_DATE FROM DUAL;',
'',
'SELECT TO_CHAR(SYSDATE , ''DD-MON-YYYY'') FROM DUAL;'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'<b>From Date</b>'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_css_classes=>'large-input'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(431134726094260312)
,p_name=>'P92_TO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(431131869215260304)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SELECT TO_CHAR(SYSDATE , ''DD-MON-YYYY'') FROM DUAL;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'<B>To Date</B>'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_css_classes=>'large-input'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180147427116386466)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_SALE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180147959916386466)
,p_event_id=>wwv_flow_imp.id(180147427116386466)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'GV_SALE_ID'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'apex_util.set_session_state(''GV_SALE_ID'',:P92_SALE_ID);',
'return (103);',
'end;'))
,p_attribute_07=>'P92_SALE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180148450128386466)
,p_event_id=>wwv_flow_imp.id(180147427116386466)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:window.open("f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=SALE_ORDER","_blank");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180148866137386466)
,p_name=>'Refresh the Sale Order'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_FROM_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180149840942386467)
,p_event_id=>wwv_flow_imp.id(180148866137386466)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(425387291261048234)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15500467531760012)
,p_event_id=>wwv_flow_imp.id(180148866137386466)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13918795354126909)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20313956431531529)
,p_event_id=>wwv_flow_imp.id(180148866137386466)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19708710998087747)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22047179057804408)
,p_event_id=>wwv_flow_imp.id(180148866137386466)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20315627285531546)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180150232961386467)
,p_name=>'refresh the report'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_TO_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180151296681386467)
,p_event_id=>wwv_flow_imp.id(180150232961386467)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(425387291261048234)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15500559598760013)
,p_event_id=>wwv_flow_imp.id(180150232961386467)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13918795354126909)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20314073766531530)
,p_event_id=>wwv_flow_imp.id(180150232961386467)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19708710998087747)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22047228096804409)
,p_event_id=>wwv_flow_imp.id(180150232961386467)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20315627285531546)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180151669318386467)
,p_name=>'Refresh the sale order report'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_FREIGHT_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180152139217386467)
,p_event_id=>wwv_flow_imp.id(180151669318386467)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(425387291261048234)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180139573255386462)
,p_name=>'New_2'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_APPROVAL_STATUS'
,p_condition_element=>'P92_APPROVAL_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180140000285386462)
,p_event_id=>wwv_flow_imp.id(180139573255386462)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(425387291261048234)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180140904149386463)
,p_name=>'New_3'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_APPROVAL_STATUS'
,p_condition_element=>'P92_APPROVAL_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180141933151386463)
,p_event_id=>wwv_flow_imp.id(180140904149386463)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(425387291261048234)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180144285989386464)
,p_name=>'New_1'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_APPROVAL_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180144732144386465)
,p_event_id=>wwv_flow_imp.id(180144285989386464)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(425387291261048234)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180145609596386465)
,p_name=>'Fetch Data User Wise  and Sale Point Wise'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180146121303386465)
,p_event_id=>wwv_flow_imp.id(180145609596386465)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'        CSP.SR_IDS',
'    INTO ',
'        :GV_WAREHOUSE_ID',
'    FROM',
'             AB_SETUP_REGISTRATION ASP',
'        JOIN AB_SETUP_REGISTRATION CSP ON CSP.SR_ID = ASP.SALE_POINT_ID AND CSP.REG_TYPE = ''COUNTER SALE POINT''',
'    WHERE',
'            ASP.REG_TYPE = ''ASSIGN SALE POINT''',
'        AND ASP.ORG_ID = :GV_ORG_ID',
'        AND ASP.REG_STATUS = ''Y''',
'        AND ASP.SALE_OFFER_ID = :GV_USER_ID;',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        :GV_WAREHOUSE_ID := NULL; -- Or any default value or message',
'    WHEN TOO_MANY_ROWS THEN',
'        -- Handle if multiple rows returned',
'        RAISE_APPLICATION_ERROR(-20001, ''More than one WAREHOUSE_ID found.'');',
'    WHEN OTHERS THEN',
'        -- Handle any other unexpected errors',
'        RAISE_APPLICATION_ERROR(-20002, ''An unexpected error occurred: '' || SQLERRM);',
'END;',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180146529096386465)
,p_name=>'New_6'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(180128647212386449)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180147031528386465)
,p_event_id=>wwv_flow_imp.id(180146529096386465)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:window.open("f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=COUNTER_SALES","_blank");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(182986002533135901)
,p_name=>'fetch the record from bag aamount'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_FROM_DATE,P92_TO_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(182986183581135902)
,p_event_id=>wwv_flow_imp.id(182986002533135901)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TOTAL_BAGS  NUMBER := 0;',
'    V_TOTAL_AMOUNT NUMBER := 0;',
'BEGIN',
'',
'WITH SALE_POINT_ASSIGN AS (',
'    SELECT',
'        SALE_POINT_ID,',
'        SALE_OFFER_ID',
'    FROM',
'        AB_SETUP_REGISTRATION  ASP',
'    WHERE',
'           ASP.ORG_ID=:GV_ORG_ID',
'       AND ASP.REG_STATUS=''Y''',
'       AND ASP.REG_TYPE=''ASSIGN SALE POINT''',
'       AND SALE_OFFER_ID = :GV_USER_ID',
')',
'        SELECT',
'             NVL(SUM(NO_BAGS),0) NO_BAGS,',
'             NVL(SUM(TOTAL_AMOUNT),0) TOTAL_AMOUNT',
'        INTO V_TOTAL_BAGS,V_TOTAL_AMOUNT',
'        FROM',
'                 AB_SO_ORDER_HEAD CS',
'            JOIN AB_SO_ORDER_DET CSD ON CSD.SO_ID = CS.SO_ID AND CSD.STATUS=''Y''',
'            JOIN AB_ITEMS_MASTER ITM ON ITM.ITEM_ID = CSD.ITEM_ID AND ITM.STATUS=''Y''',
'            JOIN SALE_POINT_ASSIGN SPA ON SPA.SALE_POINT_ID = CS.SALE_POINT_ID ',
'         WHERE ',
'                       CS.ORG_ID = :GV_ORG_ID',
'              AND CS.STATUS = ''Y''',
'              AND CS.SO_TYPE = ''708''',
'            AND TRUNC(CS.ORDER_DATE) BETWEEN NVL(TO_DATE(:P92_FROM_DATE, ''DD-MON-YYYY''), TRUNC(CS.ORDER_DATE))',
'              AND NVL(TO_DATE(:P92_TO_DATE, ''DD-MON-YYYY''), TRUNC(CS.ORDER_DATE));',
'',
'    -- ASSIGN TO PAGE ITEMS',
'    :P92_TOTAL_BAGS  := V_TOTAL_BAGS;',
'    :P92_TOTAL_AMOUNT := V_TOTAL_AMOUNT;',
'END;',
''))
,p_attribute_02=>'P92_FROM_DATE,P92_TO_DATE'
,p_attribute_03=>'P92_TOTAL_BAGS,P92_RECOVERY_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(182986240618135903)
,p_event_id=>wwv_flow_imp.id(182986002533135901)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function () {',
'',
'  function formatNumber(value, decimals) {',
'    value = Number(value || 0);',
'    return value.toLocaleString(undefined, {',
'      minimumFractionDigits: decimals,',
'      maximumFractionDigits: decimals',
'    });',
'  }',
'',
'  var pending  = formatNumber(apex.item(''P92_TOTAL_BAGS'').getValue(), 0); ',
'  var approved = formatNumber(apex.item(''P92_TOTAL_AMOUNT'').getValue(), 2); ',
'',
'  var el;',
'  el = document.getElementById(''card_pending_count'');',
'  if (el) el.textContent = pending;',
'',
'  el = document.getElementById(''card_approved_count'');',
'  if (el) el.textContent = approved;',
'',
'})();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14438846991199513)
,p_name=>'New_4'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14438733275199512)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14438924559199514)
,p_event_id=>wwv_flow_imp.id(14438846991199513)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE ',
'           AB_SO_ORDER_HEAD',
'    SET PAYMENT_TYPE = :P92_TRANSACTION_TYPE',
'    WHERE ',
'                  SO_ID = :P92_CSO_ID;',
'',
'    COMMIT;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        ROLLBACK;',
'        -- Optional: show message in APEX',
'        RAISE_APPLICATION_ERROR(-20001, ''No record found for the given PO ID.'');',
'',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        RAISE_APPLICATION_ERROR(',
'            -20002,',
'            ''Error occurred while updating Instrument No: '' || SQLERRM',
'        );',
'',
'END;',
'',
'',
''))
,p_attribute_02=>'P92_CSO_ID,P92_TRANSACTION_TYPE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14439096347199515)
,p_event_id=>wwv_flow_imp.id(14438846991199513)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14438046189199505)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13922631415126948)
,p_name=>'Update & Add Amount'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13922579647126947)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15500246545760010)
,p_event_id=>wwv_flow_imp.id(13922631415126948)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Not Add Value without Total Received'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var itemValue = apex.item("P92_ADD_AMOUNT").getValue();',
'if (itemValue == null || itemValue.trim() === '''') {',
'    apex.message.alert("Select Add Amount First!");    ',
'    return false;',
'} else {',
'    return true;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13922729933126949)
,p_event_id=>wwv_flow_imp.id(13922631415126948)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure to this amount is add in this report!'
,p_attribute_02=>'Add Amount?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16779268080392217)
,p_event_id=>wwv_flow_imp.id(13922631415126948)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_SO_ID       NUMBER;',
'    V_NEW_SOD_ID  NUMBER;',
'    V_SOD_ID      NUMBER;',
'    ',
'BEGIN   ',
'       ',
'    SELECT SOD_ID    ',
'    INTO V_SOD_ID ',
'    FROM AB_SO_ORDER_dET',
'    WHERE SOD_ID = :P92_SOD_ID;',
'',
'    INSERT INTO AB_SO_ORDER_HEAD (',
'        SO_TYPE, CUSTOMER_ID, STATUS, ORDER_DATE',
'    )',
'    VALUES (',
'        ''1007'', :P92_CUSTOMER_ID, ''Y'', :P92_RECEIVING_DATE',
'    )',
'    RETURNING SO_ID INTO V_SO_ID;',
'',
'   ',
'    INSERT INTO AB_SO_ORDER_DET (',
'        SOD_ID,',
'        SOD_TYPE,',
'        TOTAL_AMOUNT,',
'        STATUS,',
'        SO_ID,',
'        SOD_IDS',
'    )',
'    VALUES (',
'        AB_SO_ORDER_DET_SEQ.NEXTVAL, ',
'        ''1007'',',
'        :P92_ADD_TOTAL_AMOUNT,             ',
'        ''Y'',',
'        V_SO_ID,',
'        V_SOD_ID',
'    )',
'    RETURNING SOD_ID INTO V_NEW_SOD_ID;',
'',
'END;',
''))
,p_attribute_02=>'P92_CUSTOMER_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15499440275760002)
,p_event_id=>wwv_flow_imp.id(13922631415126948)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13918795354126909)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15500328057760011)
,p_event_id=>wwv_flow_imp.id(13922631415126948)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13922281285126944)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15499932494760007)
,p_name=>'Set Value (add amount in other amount)'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_PREVIOUSE_ADD_AMOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15500064515760008)
,p_event_id=>wwv_flow_imp.id(15499932494760007)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P92_ADD_TOTAL_AMOUNT'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'NVL(:P92_ADD_AMOUNT,0) + NVL(to_number(replace(:P92_PREVIOUSE_ADD_AMOUNT, '','', '''')),0)'
,p_attribute_07=>'P92_ADD_AMOUNT,P92_PREVIOUSE_ADD_AMOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16125659077808134)
,p_name=>'New_5'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_CUSTOMER_IDS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16125733230808135)
,p_event_id=>wwv_flow_imp.id(16125659077808134)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16122524435808103)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16780081137392225)
,p_name=>'New_7'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_ADD_AMOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16780150160392226)
,p_event_id=>wwv_flow_imp.id(16780081137392225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P92_ADD_TOTAL_AMOUNT'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'NVL(:P92_ADD_AMOUNT,0) + NVL(to_number(replace(:P92_PREVIOUSE_ADD_AMOUNT, '','', '''')),0)'
,p_attribute_07=>'P92_ADD_AMOUNT,P92_PREVIOUSE_ADD_AMOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18632321924426504)
,p_name=>'New_8'
,p_event_sequence=>190
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(13921660699126938)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18632416223426505)
,p_event_id=>wwv_flow_imp.id(18632321924426504)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(182754098102313146)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18627480885418938)
,p_name=>'New_9'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_CUSTOMER_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18627531636418939)
,p_event_id=>wwv_flow_imp.id(18627480885418938)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16125906994808137)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22048367776804420)
,p_name=>'New_10'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_SALE_POINTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22049612284804433)
,p_event_id=>wwv_flow_imp.id(22048367776804420)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(425387291261048234)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22048463710804421)
,p_event_id=>wwv_flow_imp.id(22048367776804420)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13918795354126909)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28435791096658948)
,p_event_id=>wwv_flow_imp.id(22048367776804420)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19708710998087747)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28435949278658950)
,p_event_id=>wwv_flow_imp.id(22048367776804420)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(23391528915835515)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28746846978858121)
,p_event_id=>wwv_flow_imp.id(22048367776804420)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28001331067872501)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22049406074804431)
,p_name=>'New_11'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22049300193804430)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22049563583804432)
,p_event_id=>wwv_flow_imp.id(22049406074804431)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:window.open("f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=CS_MASTER_SHEET","_blank");'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(182753912435313145)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch the Sale point'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'WITH COUNTER_POINT AS (',
'    SELECT',
'        REG_NAME SALE_POINT,',
'        SR_ID SALE_POINT_ID',
'    FROM',
'        AB_SETUP_REGISTRATION',
'    WHERE',
'         REG_TYPE =''COUNTER SALE POINT''',
'     AND (:GV_ORG_ID  IN (1001, 1006, 1007)OR ORG_ID =:GV_ORG_ID)',
')',
',SALE_OFFER AS(',
'    SELECT ',
'        AU.U_NAME SALE_OFFER, ',
'        AU.USER_ID SALE_OFFER_ID ',
'    FROM ',
'        AB_UM_USERS_REG AU',
'    WHERE',
'         STATUS=''Y''',
') ',
'    SELECT',
'        INITCAP(SALE_POINT)  INTO :P92_SALE_POINT',
'    FROM',
'           AB_SETUP_REGISTRATION  ASP',
'      JOIN COUNTER_POINT CP ON CP.SALE_POINT_ID=ASP.SALE_POINT_ID',
'      JOIN SALE_OFFER SP ON SP.SALE_OFFER_ID=ASP.SALE_OFFER_ID',
'    WHERE',
'          ASP.ORG_ID=:GV_ORG_ID',
'      AND SP.SALE_OFFER_ID=:GV_USER_ID',
'      AND ASP.REG_STATUS=''Y'';',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        :GV_SALE_POINT := NULL;  ',
'    WHEN TOO_MANY_ROWS THEN',
'        :GV_SALE_POINT := NULL;',
'    WHEN OTHERS THEN',
'        :GV_SALE_POINT := NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>182753912435313145
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(182754260773313148)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch total amount and bags'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TOTAL_BAGS  NUMBER := 0;',
'    V_TOTAL_AMOUNT NUMBER := 0;',
'BEGIN',
'',
'WITH SALE_POINT_ASSIGN AS (',
'    SELECT',
'        SALE_POINT_ID,',
'        SALE_OFFER_ID',
'    FROM',
'        AB_SETUP_REGISTRATION  ASP',
'    WHERE',
'           ASP.ORG_ID=:GV_ORG_ID',
'       AND ASP.REG_STATUS=''Y''',
'       AND ASP.REG_TYPE=''ASSIGN SALE POINT''',
'       AND SALE_OFFER_ID = :GV_USER_ID',
')',
'        SELECT',
'             NVL(SUM(NO_BAGS),0) NO_BAGS,',
'             NVL(SUM(TOTAL_AMOUNT),0) TOTAL_AMOUNT',
'        INTO V_TOTAL_BAGS,V_TOTAL_AMOUNT',
'        FROM',
'                 AB_SO_ORDER_HEAD CS',
'            JOIN AB_SO_ORDER_DET CSD ON CSD.SO_ID = CS.SO_ID AND CSD.STATUS=''Y''',
'            JOIN AB_ITEMS_MASTER ITM ON ITM.ITEM_ID = CSD.ITEM_ID AND ITM.STATUS=''Y''',
'            JOIN SALE_POINT_ASSIGN SPA ON SPA.SALE_POINT_ID = CS.SALE_POINT_ID ',
'         WHERE ',
'                       CS.ORG_ID = :GV_ORG_ID',
'            AND CS.STATUS = ''Y''',
'            AND CS.SO_TYPE = ''708''',
'            AND TRUNC(CS.ORDER_DATE) BETWEEN NVL(TO_DATE(:P92_FROM_DATE, ''DD-MON-YYYY''), TRUNC(CS.ORDER_DATE))',
'            AND NVL(TO_DATE(:P92_TO_DATE, ''DD-MON-YYYY''), TRUNC(CS.ORDER_DATE));',
'',
'    -- ASSIGN TO PAGE ITEMS',
'    :P92_TOTAL_BAGS  := V_TOTAL_BAGS;',
'    :P92_TOTAL_AMOUNT := V_TOTAL_AMOUNT;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>182754260773313148
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22048101482804418)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch the record aginst the user id'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' WITH ACCOUNT_FLAG AS(',
'        SELECT',
'                 REG_NAME SALE_POINT,',
'                 SR_ID SALE_POINT_ID',
'        FROM',
'                 AB_SETUP_REGISTRATION',
'        WHERE',
'                      REG_TYPE = ''ACCOUNT TYPE''',
'             AND REG_STATUS=''Y''',
'             AND SR_ID=5695',
')',
',CHART_OF_ACCOUNT AS(',
'           SELECT',
'                      COA_ID,',
'                      SUB_ACCOUNT_TYPE,',
'                      ACCOUNT_TITLE',
'            FROM',
'                           AB_FIN_COA COA',
'                 JOIN  ACCOUNT_FLAG  AF ON AF.SALE_POINT_ID=COA.ACCOUNT_TYPE',
'            WHERE',
'                         STATUS=''Y''',
')',
'     SELECT',
'                LISTAGG(CSP.SR_IDS, '','') WITHIN GROUP (ORDER BY CSP.SR_IDS) AS SR_IDS,',
'                MAX(ASP.SALE_POINT_ID),',
'                MAX(COA_ID) COA_ID',
'         INTO ',
'            :GV_WAREHOUSE_ID,:GV_SALE_POINT_ID,:GV_COA_ID',
'    FROM',
'                   AB_SETUP_REGISTRATION ASP',
'        JOIN AB_SETUP_REGISTRATION CSP ON CSP.SR_ID = ASP.SALE_POINT_ID AND CSP.REG_TYPE = ''COUNTER SALE POINT''',
'        JOIN CHART_OF_ACCOUNT COA ON COA.SUB_ACCOUNT_TYPE=ASP.SALE_POINT_ID',
'    WHERE',
'            ASP.REG_TYPE = ''ASSIGN SALE POINT''',
'        AND ASP.ORG_ID = :GV_ORG_ID',
'        AND ASP.REG_STATUS = ''Y''',
'        AND ASP.SALE_OFFER_ID = :GV_USER_ID;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        :GV_WAREHOUSE_ID := NULL; ',
'    WHEN TOO_MANY_ROWS THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''More than one WAREHOUSE_ID found.'');',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20002, ''An unexpected error occurred: '' || SQLERRM);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>22048101482804418
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
