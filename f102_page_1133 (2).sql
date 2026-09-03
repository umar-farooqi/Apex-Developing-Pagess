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
--     PAGE: 1133
--   Manifest End
--   Version:         24.2.12
--   Instance ID:     706401905951048
--

begin
null;
end;
/
prompt --application/pages/delete_01133
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>1133);
end;
/
prompt --application/pages/page_01133
begin
wwv_flow_imp_page.create_page(
 p_id=>1133
,p_name=>'Counter Sale Credit Recovery'
,p_alias=>'COUNTER-SALE-CREDIT-RECOVERYS'
,p_step_title=>'Counter Sale Credit Recovery'
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
'',
'.t-Button.t-Button--secondary.t-Button--hot.t-Button--stretch {',
'    background: linear-gradient(35deg, #B88746, #FDF5A6);',
'    color: #191919;',
'    border: none;',
'    font-weight: normal;',
'}',
'',
'.t-Button.t-Button--secondary.t-Button--hot.t-Button--stretch::after {',
unistr('    content: "\D83D\DCF7";'),
'    margin-left: 5px;',
'   font-size: 1.5em;',
'    animation: blinkEffect 2s infinite;',
'} ',
'',
'@keyframes blinkEffect {',
'    0% { opacity: 1; }',
'    50% { opacity: 0.3; }',
'    100% { opacity: 1; }',
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
 p_id=>wwv_flow_imp.id(56140818785788488)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--large'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>51
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56137953440788459)
,p_plug_name=>'Counter Sale Credit Recovery Above 0 Balance'
,p_region_name=>'AR'
,p_parent_plug_id=>wwv_flow_imp.id(56140818785788488)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COUNTER_SALE AS(',
'    SELECT ',
'        PARTY_ID,',
'        CUSTOMER_NAME PARTY_NAME,',
'        SALE_POINT_ID,',
'        CONTACT_NUMBER,',
'        ADDRESS,',
'        SUM(COUNTER_BAGS) AS TOTAL_BAGS,',
'        MAX(ORDER_DATE) AS ORDER_DATE,',
'        NVL(SUM(COUNTER_BAGS),0) COUNTER_BAGS,',
'        NVL(SUM(TOTAL_AMOUNT),0) TOTAL_AMOUNT',
'    FROM',
'        TABLE(AB_SALE_ORDER_PKG.COUNTER_SALE_REPORT(:GV_ORG_ID, :GV_USER_ID))',
'    WHERE',
'        APPROVAL_STATUS=''Approved'' ',
'        AND PAYMENT_TYPE = 597',
'    GROUP BY',
'        PARTY_ID,',
'        CUSTOMER_NAME,',
'        SALE_POINT_ID,',
'        CONTACT_NUMBER,',
'         ADDRESS',
'),',
'',
'COUNTER_SALE_RECOVERY AS(',
'    SELECT',
'        SO.CUSTOMER_ID PARTY_ID,',
'        MAX(SOD_DATE)  RECOVERY_DATE,',
'        NVL(SUM(TOTAL_AMOUNT),0) COUNTER_RECOVERY',
'    FROM',
'        AB_SO_ORDER_HEAD SO',
'        JOIN AB_SO_ORDER_DET SOD ',
'            ON SOD.SO_ID=SO.SO_ID ',
'           AND SOD.STATUS=''Y''',
'    WHERE',
'        SO.STATUS=''Y''',
'        AND SO_TYPE=''1007'' ',
'    GROUP BY',
'        SO.CUSTOMER_ID',
'),',
'',
'VOUCHER_NAME AS (',
'    SELECT  ',
'        LOOKUP_DET_NAME ,',
'        DET_ID ',
'    FROM AB_LOOKUP_DETAIL',
'    WHERE ',
'        STATUS =''Y''',
'        AND LOOKUP_ID=''039''',
'        AND DET_ID =1049',
'),',
'',
'SALE_POINT AS (',
'    SELECT',
'        SR_ID||'' - ''||INITCAP(REG_NAME) D ,',
'        SR_ID ,',
'        INITCAP(REG_NAME) SALE_POINT',
'    FROM AB_SETUP_REGISTRATION',
'    WHERE',
'        REG_TYPE = ''COUNTER SALE POINT''',
'        AND (',
'              (:GV_ORG_ID IN (1008) AND ORG_ID IN (1008))',
'           OR (ORG_ID = :GV_ORG_ID)',
'        )',
'),',
'',
'COUNTER_PARTY_NAME AS (',
'    SELECT',
'        SR_ID AS PARTY_ID,',
'        CONTACT_NUMBER as sale_number,',
'        REG_NAME AS PARTY_NAME,',
'        SALE_POINT_ID',
'    FROM AB_SETUP_REGISTRATION',
'    WHERE',
'        REG_TYPE = ''COUNTER CUSTOMER''',
'        AND REG_STATUS=''Y''',
'        AND ORG_ID=:GV_ORG_ID',
'),',
'',
'COUNTER_SALE_POINT_BALANCE AS (',
'    SELECT ',
'        ASOD.CUSTOMER_ID PARTY_ID,',
'        NVL(ASOD.DR_AMOUNT,0) DR_AMOUNT,',
'        NVL(ASOD.CR_AMOUNT,0) CR_AMOUNT',
'    FROM AB_SO_ORDER_HEAD ASO',
'    JOIN AB_SO_ORDER_DET ASOD ',
'        ON ASOD.SO_ID = ASO.SO_ID',
'    WHERE ',
'        ASO.SO_TYPE = ''1049''',
'        AND ASO.ORG_ID = :GV_ORG_ID',
'),',
'',
unistr('/* \D83D\DD25 AGGREGATION */'),
'COUNTER_SALE_POINT_BAL_SUM AS (',
'    SELECT',
'        PARTY_ID,',
'',
'        SUM(DR_AMOUNT) DR_AMOUNT,',
'        SUM(CR_AMOUNT) CR_AMOUNT',
'    FROM COUNTER_SALE_POINT_BALANCE',
'    GROUP BY PARTY_ID',
')',
',',
'',
' REGISTRATION AS (',
'            SELECT ',
'                        SR_ID, ',
'                        REG_NAME, ',
'                        ADDRESS, ',
'                        CONTACT_NUMBER,',
'                        CNIC, ',
'                        REG_TYPE',
'            FROM ',
'                        AB_SETUP_REGISTRATION',
'            WHERE ',
'                    REG_STATUS = ''Y''',
'),CUSTOMER_REG AS (',
'                SELECT ',
'                           SR_ID CUSTOMER_ID,',
'                           INITCAP(REG_NAME) CUSTOMER_NAME,',
'                           INITCAP(ADDRESS) ADDRESS,',
'                           INITCAP(CONTACT_NUMBER) CONTACT_NUMBER,',
'                           CNIC',
'                FROM ',
'                          REGISTRATION',
'                WHERE ',
'                          REG_TYPE IN (''CUSTOMER REGISTRATION'',''COUNTER CUSTOMER'')',
'),',
'LOOKUP AS (',
'            SELECT ',
'                        DET_ID,',
'                         LOOKUP_DET_NAME',
'            FROM',
'                        AB_LOOKUP_DETAIL',
'            WHERE ',
'                        STATUS=''Y''',
'),',
'USER_APPROVAL AS (',
'            SELECT ',
'                   APP_IDS SOD_ID,',
'                   INITCAP(CREATED_BY)||'' (''||TO_CHAR(CREATED_ON,''DD-MON-YYYY'')||'')'' APPROVAL_BY,',
'                   APPROVAL_STATUS',
'            FROM ',
'                      AB_USER_ACTION_APPROVAL',
'            WHERE ',
'                      APP_TYPE=''918'' AND STATUS=''Y''',
')',
',',
'TOTAL_BAGS AS (',
'SELECT',
'                   CS.CUSTOMER_ID PARTY_ID,',
'                    CR.CUSTOMER_NAME PARTY_NAME ,',
'                    NVL(SUM(CSD.NO_BAGS),0) COUNTER_BAGS,',
'                    NVL(SUM(CSD.TOTAL_AMOUNT),0) TOTAL_AMOUNT',
'                   ',
'        FROM',
'                             AB_SO_ORDER_HEAD CS',
'                    JOIN AB_SO_ORDER_DET CSD ON CSD.SO_ID=CS.SO_ID AND CSD.STATUS=''Y''',
'                    JOIN AB_ITEMS_MASTER ITM ON ITM.ITEM_ID=CSD.ITEM_ID AND ITM.STATUS=''Y''',
'            LEFT JOIN REGISTRATION ASR ON ASR.SR_ID=CSD.WAREHOUSE_ID',
'            LEFT JOIN LOOKUP LD ON LD.DET_ID=CS.PAYMENT_ID',
'            LEFT JOIN LOOKUP PT ON PT.DET_ID=CS.PAYMENT_TERM',
'            LEFT JOIN LOOKUP CT ON CT.DET_ID=CS.CUSTOMER_TYPE_ID',
'            LEFT JOIN CUSTOMER_REG CR ON CR.CUSTOMER_ID=CS.CUSTOMER_ID',
'            LEFT JOIN USER_APPROVAL APP ON APP.SOD_ID=CSD.SOD_ID',
'            ',
'            LEFT JOIN LOOKUP PM ON PM.DET_ID=CS.PAYMENT_TYPE',
'        WHERE ',
'                        CS.ORG_ID= :GV_ORG_ID',
'              AND CS.STATUS=''Y''',
'              AND CS.SO_TYPE = ''708''',
'        Group by    CS.CUSTOMER_ID ,',
'                    CR.CUSTOMER_NAME',
')',
',',
'ALL_PARTIES AS (',
'    SELECT PARTY_ID FROM COUNTER_SALE',
'    UNION',
'    SELECT PARTY_ID FROM COUNTER_SALE_POINT_BAL_SUM',
')',
'SELECT',
'    NVL(CS.PARTY_ID, AP.PARTY_ID) PARTY_ID,',
'    NVL(CS.PARTY_NAME, CPN.PARTY_NAME) PARTY_NAME,',
'    nvl(CS.CONTACT_NUMBER,CPN.SALE_NUMBER) AS CONTACT_NUMBER,',
'',
'    CSR.RECOVERY_DATE,',
'    CS.ORDER_DATE,',
'    --TOTAL_BAGS,',
'    TB.COUNTER_BAGS,',
'    TB.TOTAL_AMOUNT,',
'    CS.ADDRESS,',
'',
'    /* DR ADD */',
'    NVL(CS.TOTAL_AMOUNT,0) + NVL(CSPB.DR_AMOUNT,0) AS RECOVERY_AMOUNT,',
'',
'    /* CR ADD */',
'    NVL(CSR.COUNTER_RECOVERY,0) + NVL(CSPB.CR_AMOUNT,0) AS RECEIVED_AMOUNT,',
'',
'    /* REMAINING */',
'    (NVL(CS.TOTAL_AMOUNT,0) + NVL(CSPB.DR_AMOUNT,0))',
'    -',
'    (NVL(CSR.COUNTER_RECOVERY,0) + NVL(CSPB.CR_AMOUNT,0)) AS REMAINING_AMOUNT,',
'',
'    ''Add Amount'' AS ADD_AMOUNT,',
'    ''SHOW IMAGE'' AS VIEW_IMAGE',
'FROM ALL_PARTIES AP',
'LEFT JOIN COUNTER_SALE CS ON CS.PARTY_ID = AP.PARTY_ID',
'LEFT JOIN COUNTER_SALE_POINT_BAL_SUM CSPB ON CSPB.PARTY_ID = AP.PARTY_ID',
'LEFT JOIN COUNTER_SALE_RECOVERY CSR ON CSR.PARTY_ID = AP.PARTY_ID',
'LEFT JOIN COUNTER_PARTY_NAME CPN ON CPN.PARTY_ID = AP.PARTY_ID',
'LEFT JOIN TOTAL_BAGS TB ON TB.PARTY_ID = AP.PARTY_ID',
'WHERE',
'   -- CS.SALE_POINT_ID = NVL(:P1133_SALE_POINTS,CS.SALE_POINT_ID)',
'--  NVL(CS.SALE_POINT_ID, CPN.SALE_POINT_ID) = NVL(:GV_SALE_POINT_ID, NVL(CS.SALE_POINT_ID, CPN.SALE_POINT_ID))',
'',
'-- (',
'--     :GV_SALE_POINT_ID IS NULL',
'--     OR INSTR('',''||:GV_SALE_POINT_ID||'','', '',''||NVL(CS.SALE_POINT_ID, CPN.SALE_POINT_ID)||'','') > 0',
'-- )',
'',
'  (',
'    :GV_SALE_POINT_ID IS NULL',
'    OR INSTR(',
'        '','' || :GV_SALE_POINT_ID || '','',',
'        '','' || TO_CHAR(NVL(CS.SALE_POINT_ID, CPN.SALE_POINT_ID)) || '',''',
'    ) > 0',
')',
'',
'AND (',
'    :P1133_SALE_POINTS IS NULL',
'    OR INSTR(',
'        '','' || :P1133_SALE_POINTS || '','',',
'        '','' || TO_CHAR(NVL(CS.SALE_POINT_ID, CPN.SALE_POINT_ID)) || '',''',
'    ) > 0',
')',
' ',
'    AND NVL(CS.PARTY_NAME, CPN.PARTY_NAME) IS NOT NULL',
'    AND (NVL(CS.TOTAL_AMOUNT,0) + NVL(CSPB.DR_AMOUNT,0)) - (NVL(CSR.COUNTER_RECOVERY,0) + NVL(CSPB.CR_AMOUNT,0)) <> 0',
'',
'      ORDER BY   (NVL(CS.TOTAL_AMOUNT,0) + NVL(CSPB.DR_AMOUNT,0))',
'    -',
'    (NVL(CSR.COUNTER_RECOVERY,0) + NVL(CSPB.CR_AMOUNT,0)) DESC',
'',
'-- FROM COUNTER_SALE CS',
'',
'',
'-- LEFT JOIN  COUNTER_SALE_POINT_BAL_SUM CSPB',
'--     ON CSPB.PARTY_ID = CS.PARTY_ID',
'-- LEFT JOIN COUNTER_SALE_RECOVERY CSR',
'-- ON CSR.PARTY_ID = NVL(CS.PARTY_ID,CSPB.PARTY_ID)',
'',
'-- LEFT JOIN COUNTER_PARTY_NAME CPN',
'-- ON CPN.PARTY_ID = NVL(CS.PARTY_ID,CSPB.PARTY_ID)',
'',
'-- LEFT JOIN TOTAL_BAGS TB',
'-- ON TB.PARTY_ID = NVL(CS.PARTY_ID,CSPB.PARTY_ID)',
'',
'-- WHERE',
'--     -- (:P1273_SALE_POINTS IS NULL ',
'--     --  OR CS.SALE_POINT_ID = :P1273_SALE_POINTS',
'--     --  OR CS.SALE_POINT_ID IS NULL)',
'',
'--      CS.SALE_POINT_ID = NVL(:P1273_SALE_POINTS,CS.SALE_POINT_ID)',
'',
'--     AND NVL(CS.PARTY_NAME, CPN.PARTY_NAME) IS NOT NULL',
'',
'--     AND (NVL(CS.TOTAL_AMOUNT,0) + NVL(CSPB.DR_AMOUNT,0))',
'--         -',
'--         (NVL(CSR.COUNTER_RECOVERY,0) + NVL(CSPB.CR_AMOUNT,0)) <> 0',
'     ',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'GV_SALE_POINT_ID,P1133_SALE_POINTS'
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
 p_id=>wwv_flow_imp.id(59851670381092386)
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
,p_internal_uid=>59851670381092386
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59852349697092392)
,p_db_column_name=>'ADD_AMOUNT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Add Recovery'
,p_column_link=>'f?p=&APP_ID.:135:&SESSION.::&DEBUG.:135:P135_PARTY_ID,P135_IDS:#PARTY_ID#,#PARTY_ID#'
,p_column_linktext=>'#ADD_AMOUNT#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59852405474092393)
,p_db_column_name=>'PARTY_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Party Ledger'
,p_column_link=>'javascript:$s(''P1133_CUSTOMER_ID'',''#PARTY_ID#'');apex.region(''CPS'').refresh();openModal(''CPS'');'
,p_column_linktext=>'#PARTY_ID#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60851711218088056)
,p_db_column_name=>'PARTY_NAME'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Party Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60851774320088057)
,p_db_column_name=>'RECOVERY_AMOUNT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Debit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60851914812088058)
,p_db_column_name=>'RECEIVED_AMOUNT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Credit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60852039176088059)
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
 p_id=>wwv_flow_imp.id(64266910650465964)
,p_db_column_name=>'RECOVERY_DATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Last Recovery Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70966214809519673)
,p_db_column_name=>'CONTACT_NUMBER'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Contact Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73213484946855583)
,p_db_column_name=>'VIEW_IMAGE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'View Image'
,p_column_link=>'javascript:$s(''P1133_PARTY_IDS'',''#PARTY_ID#'');openModal(''IMAGE'');'
,p_column_linktext=>'<span role="img" aria-label="Edit" class="print-image" title="Edit"></span>'
,p_column_link_attr=>'class="t-Button t-Button--secondary t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50839511483591014)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Last Sale Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50839765738591016)
,p_db_column_name=>'COUNTER_BAGS'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Total Sale Bags'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50839892026591017)
,p_db_column_name=>'TOTAL_AMOUNT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Total Business Value'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74114925264456208)
,p_db_column_name=>'ADDRESS'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(60644651197395314)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'184255'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PARTY_ID:PARTY_NAME:CONTACT_NUMBER:ADDRESS:RECOVERY_AMOUNT:RECEIVED_AMOUNT:REMAINING_AMOUNT:COUNTER_BAGS:TOTAL_AMOUNT:ORDER_DATE:RECOVERY_DATE:ADD_AMOUNT:VIEW_IMAGE:'
,p_sum_columns_on_break=>'RECOVERY_AMOUNT:RECEIVED_AMOUNT:REMAINING_AMOUNT:COUNTER_BAGS:TOTAL_AMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61927869084749297)
,p_plug_name=>'Counter Sale Credit Recovery Above 0 Balance old query original'
,p_region_name=>'AM'
,p_parent_plug_id=>wwv_flow_imp.id(56140818785788488)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COUNTER_SALE AS(',
'    SELECT ',
'        PARTY_ID,',
'        CUSTOMER_NAME PARTY_NAME,',
'        SALE_POINT_ID,',
'        CONTACT_NUMBER,',
'        ADDRESS,',
'        SUM(COUNTER_BAGS) AS TOTAL_BAGS,',
'        MAX(ORDER_DATE) AS ORDER_DATE,',
'        NVL(SUM(COUNTER_BAGS),0) COUNTER_BAGS,',
'        NVL(SUM(TOTAL_AMOUNT),0) TOTAL_AMOUNT',
'    FROM',
'        TABLE(AB_SALE_ORDER_PKG.COUNTER_SALE_REPORT(:GV_ORG_ID, :GV_USER_ID))',
'    WHERE',
'        APPROVAL_STATUS=''Approved'' ',
'        AND PAYMENT_TYPE = 597',
'    GROUP BY',
'        PARTY_ID,',
'        CUSTOMER_NAME,',
'        SALE_POINT_ID,',
'        CONTACT_NUMBER,',
'         ADDRESS',
'),',
'',
'COUNTER_SALE_RECOVERY AS(',
'    SELECT',
'        SO.CUSTOMER_ID PARTY_ID,',
'        MAX(SOD_DATE)  RECOVERY_DATE,',
'        NVL(SUM(TOTAL_AMOUNT),0) COUNTER_RECOVERY',
'    FROM',
'        AB_SO_ORDER_HEAD SO',
'        JOIN AB_SO_ORDER_DET SOD ',
'            ON SOD.SO_ID=SO.SO_ID ',
'           AND SOD.STATUS=''Y''',
'    WHERE',
'        SO.STATUS=''Y''',
'        AND SO_TYPE=''1007'' ',
'    GROUP BY',
'        SO.CUSTOMER_ID',
'),',
'',
'VOUCHER_NAME AS (',
'    SELECT  ',
'        LOOKUP_DET_NAME ,',
'        DET_ID ',
'    FROM AB_LOOKUP_DETAIL',
'    WHERE ',
'        STATUS =''Y''',
'        AND LOOKUP_ID=''039''',
'        AND DET_ID =1049',
'),',
'',
'SALE_POINT AS (',
'    SELECT',
'        SR_ID||'' - ''||INITCAP(REG_NAME) D ,',
'        SR_ID ,',
'        INITCAP(REG_NAME) SALE_POINT',
'    FROM AB_SETUP_REGISTRATION',
'    WHERE',
'        REG_TYPE = ''COUNTER SALE POINT''',
'        AND (',
'              (:GV_ORG_ID IN (1008) AND ORG_ID IN (1008))',
'           OR (ORG_ID = :GV_ORG_ID)',
'        )',
'),',
'',
'COUNTER_PARTY_NAME AS (',
'    SELECT',
'        SR_ID AS PARTY_ID,',
'        CONTACT_NUMBER as sale_number,',
'        REG_NAME AS PARTY_NAME',
'    FROM AB_SETUP_REGISTRATION',
'    WHERE',
'        REG_TYPE = ''COUNTER CUSTOMER''',
'        AND REG_STATUS=''Y''',
'        AND ORG_ID=:GV_ORG_ID',
'),',
'',
'COUNTER_SALE_POINT_BALANCE AS (',
'    SELECT ',
'        ASOD.CUSTOMER_ID PARTY_ID,',
'        NVL(ASOD.DR_AMOUNT,0) DR_AMOUNT,',
'        NVL(ASOD.CR_AMOUNT,0) CR_AMOUNT',
'    FROM AB_SO_ORDER_HEAD ASO',
'    JOIN AB_SO_ORDER_DET ASOD ',
'        ON ASOD.SO_ID = ASO.SO_ID',
'    WHERE ',
'        ASO.SO_TYPE = ''1049''',
'        AND ASO.ORG_ID = :GV_ORG_ID',
'),',
'',
unistr('/* \D83D\DD25 AGGREGATION */'),
'COUNTER_SALE_POINT_BAL_SUM AS (',
'    SELECT',
'        PARTY_ID,',
'',
'        SUM(DR_AMOUNT) DR_AMOUNT,',
'        SUM(CR_AMOUNT) CR_AMOUNT',
'    FROM COUNTER_SALE_POINT_BALANCE',
'    GROUP BY PARTY_ID',
')',
',',
'',
' REGISTRATION AS (',
'            SELECT ',
'                        SR_ID, ',
'                        REG_NAME, ',
'                        ADDRESS, ',
'                        CONTACT_NUMBER,',
'                        CNIC, ',
'                        REG_TYPE',
'            FROM ',
'                        AB_SETUP_REGISTRATION',
'            WHERE ',
'                    REG_STATUS = ''Y''',
'),CUSTOMER_REG AS (',
'                SELECT ',
'                           SR_ID CUSTOMER_ID,',
'                           INITCAP(REG_NAME) CUSTOMER_NAME,',
'                           INITCAP(ADDRESS) ADDRESS,',
'                           INITCAP(CONTACT_NUMBER) CONTACT_NUMBER,',
'                           CNIC',
'                FROM ',
'                          REGISTRATION',
'                WHERE ',
'                          REG_TYPE IN (''CUSTOMER REGISTRATION'',''COUNTER CUSTOMER'')',
'),',
'LOOKUP AS (',
'            SELECT ',
'                        DET_ID,',
'                         LOOKUP_DET_NAME',
'            FROM',
'                        AB_LOOKUP_DETAIL',
'            WHERE ',
'                        STATUS=''Y''',
'),',
'USER_APPROVAL AS (',
'            SELECT ',
'                   APP_IDS SOD_ID,',
'                   INITCAP(CREATED_BY)||'' (''||TO_CHAR(CREATED_ON,''DD-MON-YYYY'')||'')'' APPROVAL_BY,',
'                   APPROVAL_STATUS',
'            FROM ',
'                      AB_USER_ACTION_APPROVAL',
'            WHERE ',
'                      APP_TYPE=''918'' AND STATUS=''Y''',
')',
',',
'TOTAL_BAGS AS (',
'SELECT',
'                   CS.CUSTOMER_ID PARTY_ID,',
'                    CR.CUSTOMER_NAME PARTY_NAME ,',
'                    NVL(SUM(CSD.NO_BAGS),0) COUNTER_BAGS,',
'                    NVL(SUM(CSD.TOTAL_AMOUNT),0) TOTAL_AMOUNT',
'                   ',
'        FROM',
'                             AB_SO_ORDER_HEAD CS',
'                    JOIN AB_SO_ORDER_DET CSD ON CSD.SO_ID=CS.SO_ID AND CSD.STATUS=''Y''',
'                    JOIN AB_ITEMS_MASTER ITM ON ITM.ITEM_ID=CSD.ITEM_ID AND ITM.STATUS=''Y''',
'            LEFT JOIN REGISTRATION ASR ON ASR.SR_ID=CSD.WAREHOUSE_ID',
'            LEFT JOIN LOOKUP LD ON LD.DET_ID=CS.PAYMENT_ID',
'            LEFT JOIN LOOKUP PT ON PT.DET_ID=CS.PAYMENT_TERM',
'            LEFT JOIN LOOKUP CT ON CT.DET_ID=CS.CUSTOMER_TYPE_ID',
'            LEFT JOIN CUSTOMER_REG CR ON CR.CUSTOMER_ID=CS.CUSTOMER_ID',
'            LEFT JOIN USER_APPROVAL APP ON APP.SOD_ID=CSD.SOD_ID',
'            ',
'            LEFT JOIN LOOKUP PM ON PM.DET_ID=CS.PAYMENT_TYPE',
'        WHERE ',
'                        CS.ORG_ID= :GV_ORG_ID',
'              AND CS.STATUS=''Y''',
'              AND CS.SO_TYPE = ''708''',
'        Group by    CS.CUSTOMER_ID ,',
'                    CR.CUSTOMER_NAME',
')',
',',
'ALL_PARTIES AS (',
'    SELECT PARTY_ID FROM COUNTER_SALE',
'    UNION',
'    SELECT PARTY_ID FROM COUNTER_SALE_POINT_BAL_SUM',
')',
'SELECT',
'    NVL(CS.PARTY_ID, AP.PARTY_ID) PARTY_ID,',
'    NVL(CS.PARTY_NAME, CPN.PARTY_NAME) PARTY_NAME,',
'    nvl(CS.CONTACT_NUMBER,CPN.SALE_NUMBER) AS CONTACT_NUMBER,',
'',
'    CSR.RECOVERY_DATE,',
'    CS.ORDER_DATE,',
'    --TOTAL_BAGS,',
'    TB.COUNTER_BAGS,',
'    TB.TOTAL_AMOUNT,',
'    CS.ADDRESS,',
'',
'    /* DR ADD */',
'    NVL(CS.TOTAL_AMOUNT,0) + NVL(CSPB.DR_AMOUNT,0) AS RECOVERY_AMOUNT,',
'',
'    /* CR ADD */',
'    NVL(CSR.COUNTER_RECOVERY,0) + NVL(CSPB.CR_AMOUNT,0) AS RECEIVED_AMOUNT,',
'',
'    /* REMAINING */',
'    (NVL(CS.TOTAL_AMOUNT,0) + NVL(CSPB.DR_AMOUNT,0))',
'    -',
'    (NVL(CSR.COUNTER_RECOVERY,0) + NVL(CSPB.CR_AMOUNT,0)) AS REMAINING_AMOUNT,',
'',
'    ''Add Amount'' AS ADD_AMOUNT,',
'    ''SHOW IMAGE'' AS VIEW_IMAGE',
'FROM ALL_PARTIES AP',
'LEFT JOIN COUNTER_SALE CS ON CS.PARTY_ID = AP.PARTY_ID',
'LEFT JOIN COUNTER_SALE_POINT_BAL_SUM CSPB ON CSPB.PARTY_ID = AP.PARTY_ID',
'LEFT JOIN COUNTER_SALE_RECOVERY CSR ON CSR.PARTY_ID = AP.PARTY_ID',
'LEFT JOIN COUNTER_PARTY_NAME CPN ON CPN.PARTY_ID = AP.PARTY_ID',
'LEFT JOIN TOTAL_BAGS TB ON TB.PARTY_ID = AP.PARTY_ID',
'WHERE',
'    (CS.SALE_POINT_ID = NVL(:P1273_SALE_POINTS, CS.SALE_POINT_ID) OR CS.SALE_POINT_ID IS NULL)',
'    AND NVL(CS.PARTY_NAME, CPN.PARTY_NAME) IS NOT NULL',
'    AND (NVL(CS.TOTAL_AMOUNT,0) + NVL(CSPB.DR_AMOUNT,0)) - (NVL(CSR.COUNTER_RECOVERY,0) + NVL(CSPB.CR_AMOUNT,0)) <> 0',
'-- SELECT',
'--     NVL(CS.PARTY_ID, CSPB.PARTY_ID) PARTY_ID,',
'--     NVL(CS.PARTY_NAME, CSPB.PARTY_NAME) PARTY_NAME,',
'--     nvl(CS.CONTACT_NUMBER,CPN.SALE_NUMBER) AS CONTACT_NUMBER,',
'',
'--     CSR.RECOVERY_DATE,',
'--     CS.ORDER_DATE,',
'--     --TOTAL_BAGS,',
'--     TB.COUNTER_BAGS,',
'--     TB.TOTAL_AMOUNT,',
'--     CS.ADDRESS,',
'',
'--     /* DR ADD */',
'--     NVL(CS.TOTAL_AMOUNT,0) + NVL(CSPB.DR_AMOUNT,0) AS RECOVERY_AMOUNT,',
'',
'--     /* CR ADD */',
'--     NVL(CSR.COUNTER_RECOVERY,0) + NVL(CSPB.CR_AMOUNT,0) AS RECEIVED_AMOUNT,',
'',
'--     /* REMAINING */',
'--     (NVL(CS.TOTAL_AMOUNT,0) + NVL(CSPB.DR_AMOUNT,0))',
'--     -',
'--     (NVL(CSR.COUNTER_RECOVERY,0) + NVL(CSPB.CR_AMOUNT,0)) AS REMAINING_AMOUNT,',
'',
'--     ''Add Amount'' AS ADD_AMOUNT,',
'--     ''SHOW IMAGE'' AS VIEW_IMAGE',
'',
'-- FROM COUNTER_SALE CS',
'',
'',
'-- LEFT JOIN  COUNTER_SALE_POINT_BAL_SUM CSPB',
'--     ON CSPB.PARTY_ID = CS.PARTY_ID',
'-- LEFT JOIN COUNTER_SALE_RECOVERY CSR',
'-- ON CSR.PARTY_ID = NVL(CS.PARTY_ID,CSPB.PARTY_ID)',
'',
'-- LEFT JOIN COUNTER_PARTY_NAME CPN',
'-- ON CPN.PARTY_ID = NVL(CS.PARTY_ID,CSPB.PARTY_ID)',
'',
'-- LEFT JOIN TOTAL_BAGS TB',
'-- ON TB.PARTY_ID = NVL(CS.PARTY_ID,CSPB.PARTY_ID)',
'',
'-- WHERE',
'--     -- (:P1273_SALE_POINTS IS NULL ',
'--     --  OR CS.SALE_POINT_ID = :P1273_SALE_POINTS',
'--     --  OR CS.SALE_POINT_ID IS NULL)',
'',
'--      CS.SALE_POINT_ID = NVL(:P1273_SALE_POINTS,CS.SALE_POINT_ID)',
'',
'--     AND NVL(CS.PARTY_NAME, CPN.PARTY_NAME) IS NOT NULL',
'',
'--     AND (NVL(CS.TOTAL_AMOUNT,0) + NVL(CSPB.DR_AMOUNT,0))',
'--         -',
'--         (NVL(CSR.COUNTER_RECOVERY,0) + NVL(CSPB.CR_AMOUNT,0)) <> 0',
'     ',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1133_FROM_DATE,P1133_TO_DATE,P1133_SALE_POINTS'
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
 p_id=>wwv_flow_imp.id(61928018880749298)
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
,p_internal_uid=>61928018880749298
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61928216371749300)
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
 p_id=>wwv_flow_imp.id(62530349304193051)
,p_db_column_name=>'PARTY_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Party Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65034280978019353)
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
 p_id=>wwv_flow_imp.id(65405686487448405)
,p_db_column_name=>'CONTACT_NUMBER'
,p_display_order=>70
,p_column_identifier=>'Q'
,p_column_label=>'Contact Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65405764920448406)
,p_db_column_name=>'RECOVERY_DATE'
,p_display_order=>80
,p_column_identifier=>'R'
,p_column_label=>'Recovery Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65405831947448407)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>90
,p_column_identifier=>'S'
,p_column_label=>'Order Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65405936847448408)
,p_db_column_name=>'COUNTER_BAGS'
,p_display_order=>100
,p_column_identifier=>'T'
,p_column_label=>'Counter Bags'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65406007767448409)
,p_db_column_name=>'TOTAL_AMOUNT'
,p_display_order=>110
,p_column_identifier=>'U'
,p_column_label=>'Total Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65406174968448410)
,p_db_column_name=>'RECEIVED_AMOUNT'
,p_display_order=>120
,p_column_identifier=>'V'
,p_column_label=>'Received Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65406285182448411)
,p_db_column_name=>'REMAINING_AMOUNT'
,p_display_order=>130
,p_column_identifier=>'W'
,p_column_label=>'Remaining Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65406321548448412)
,p_db_column_name=>'ADD_AMOUNT'
,p_display_order=>140
,p_column_identifier=>'X'
,p_column_label=>'Add Amount'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65406448712448413)
,p_db_column_name=>'VIEW_IMAGE'
,p_display_order=>150
,p_column_identifier=>'Y'
,p_column_label=>'View Image'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75605734792131413)
,p_db_column_name=>'ADDRESS'
,p_display_order=>160
,p_column_identifier=>'Z'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(62537589072193708)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'203185'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PARTY_NAME:RECOVERY_AMOUNT'
,p_sum_columns_on_break=>'COUNTER_SALE:RECOVERY_AMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66010826410511802)
,p_plug_name=>'Counter Sale Credit Recovery Only 0 Balance'
,p_region_name=>'DWR'
,p_parent_plug_id=>wwv_flow_imp.id(56140818785788488)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COUNTER_SALE AS(',
'    SELECT ',
'        PARTY_ID,',
'        CUSTOMER_NAME PARTY_NAME,',
'        SALE_POINT_ID,',
'        CONTACT_NUMBER,',
'        ADDRESS,',
'        SUM(COUNTER_BAGS) AS TOTAL_BAGS,',
'        MAX(ORDER_DATE) AS ORDER_DATE,',
'        NVL(SUM(COUNTER_BAGS),0) COUNTER_BAGS,',
'        NVL(SUM(TOTAL_AMOUNT),0) TOTAL_AMOUNT',
'    FROM',
'        TABLE(AB_SALE_ORDER_PKG.COUNTER_SALE_REPORT(:GV_ORG_ID, :GV_USER_ID))',
'    WHERE',
'        APPROVAL_STATUS=''Approved'' ',
'        AND PAYMENT_TYPE = 597',
'    GROUP BY',
'        PARTY_ID,',
'        CUSTOMER_NAME,',
'        SALE_POINT_ID,',
'        CONTACT_NUMBER,',
'         ADDRESS',
'),',
'',
'COUNTER_SALE_RECOVERY AS(',
'    SELECT',
'        SO.CUSTOMER_ID PARTY_ID,',
'        MAX(SOD_DATE)  RECOVERY_DATE,',
'        NVL(SUM(TOTAL_AMOUNT),0) COUNTER_RECOVERY',
'    FROM',
'        AB_SO_ORDER_HEAD SO',
'        JOIN AB_SO_ORDER_DET SOD ',
'            ON SOD.SO_ID=SO.SO_ID ',
'           AND SOD.STATUS=''Y''',
'    WHERE',
'        SO.STATUS=''Y''',
'        AND SO_TYPE=''1007'' ',
'    GROUP BY',
'        SO.CUSTOMER_ID',
'),',
'',
'VOUCHER_NAME AS (',
'    SELECT  ',
'        LOOKUP_DET_NAME ,',
'        DET_ID ',
'    FROM AB_LOOKUP_DETAIL',
'    WHERE ',
'        STATUS =''Y''',
'        AND LOOKUP_ID=''039''',
'        AND DET_ID =1049',
'),',
'',
'SALE_POINT AS (',
'    SELECT',
'        SR_ID||'' - ''||INITCAP(REG_NAME) D ,',
'        SR_ID ,',
'        INITCAP(REG_NAME) SALE_POINT',
'    FROM AB_SETUP_REGISTRATION',
'    WHERE',
'        REG_TYPE = ''COUNTER SALE POINT''',
'        AND (',
'              (:GV_ORG_ID IN (1008) AND ORG_ID IN (1008))',
'           OR (ORG_ID = :GV_ORG_ID)',
'        )',
'),',
'',
'COUNTER_PARTY_NAME AS (',
'    SELECT',
'        SR_ID AS PARTY_ID,',
'        CONTACT_NUMBER as sale_number,',
'        REG_NAME AS PARTY_NAME,',
'        SALE_POINT_ID',
'    FROM AB_SETUP_REGISTRATION',
'    WHERE',
'        REG_TYPE = ''COUNTER CUSTOMER''',
'        AND REG_STATUS=''Y''',
'        AND ORG_ID=:GV_ORG_ID',
'),',
'',
'COUNTER_SALE_POINT_BALANCE AS (',
'    SELECT ',
'        ASOD.CUSTOMER_ID PARTY_ID,',
'        NVL(ASOD.DR_AMOUNT,0) DR_AMOUNT,',
'        NVL(ASOD.CR_AMOUNT,0) CR_AMOUNT',
'    FROM AB_SO_ORDER_HEAD ASO',
'    JOIN AB_SO_ORDER_DET ASOD ',
'        ON ASOD.SO_ID = ASO.SO_ID',
'    WHERE ',
'        ASO.SO_TYPE = ''1049''',
'        AND ASO.ORG_ID = :GV_ORG_ID',
'),',
'',
unistr('/* \D83D\DD25 AGGREGATION */'),
'COUNTER_SALE_POINT_BAL_SUM AS (',
'    SELECT',
'        PARTY_ID,',
'',
'        SUM(DR_AMOUNT) DR_AMOUNT,',
'        SUM(CR_AMOUNT) CR_AMOUNT',
'    FROM COUNTER_SALE_POINT_BALANCE',
'    GROUP BY PARTY_ID',
')',
',',
'',
' REGISTRATION AS (',
'            SELECT ',
'                        SR_ID, ',
'                        REG_NAME, ',
'                        ADDRESS, ',
'                        CONTACT_NUMBER,',
'                        CNIC, ',
'                        REG_TYPE',
'            FROM ',
'                        AB_SETUP_REGISTRATION',
'            WHERE ',
'                    REG_STATUS = ''Y''',
'),CUSTOMER_REG AS (',
'                SELECT ',
'                           SR_ID CUSTOMER_ID,',
'                           INITCAP(REG_NAME) CUSTOMER_NAME,',
'                           INITCAP(ADDRESS) ADDRESS,',
'                           INITCAP(CONTACT_NUMBER) CONTACT_NUMBER,',
'                           CNIC',
'                FROM ',
'                          REGISTRATION',
'                WHERE ',
'                          REG_TYPE IN (''CUSTOMER REGISTRATION'',''COUNTER CUSTOMER'')',
'),',
'LOOKUP AS (',
'            SELECT ',
'                        DET_ID,',
'                         LOOKUP_DET_NAME',
'            FROM',
'                        AB_LOOKUP_DETAIL',
'            WHERE ',
'                        STATUS=''Y''',
'),',
'USER_APPROVAL AS (',
'            SELECT ',
'                   APP_IDS SOD_ID,',
'                   INITCAP(CREATED_BY)||'' (''||TO_CHAR(CREATED_ON,''DD-MON-YYYY'')||'')'' APPROVAL_BY,',
'                   APPROVAL_STATUS',
'            FROM ',
'                      AB_USER_ACTION_APPROVAL',
'            WHERE ',
'                      APP_TYPE=''918'' AND STATUS=''Y''',
')',
',',
'TOTAL_BAGS AS (',
'SELECT',
'                   CS.CUSTOMER_ID PARTY_ID,',
'                    CR.CUSTOMER_NAME PARTY_NAME ,',
'                    NVL(SUM(CSD.NO_BAGS),0) COUNTER_BAGS,',
'                    NVL(SUM(CSD.TOTAL_AMOUNT),0) TOTAL_AMOUNT',
'                   ',
'        FROM',
'                             AB_SO_ORDER_HEAD CS',
'                    JOIN AB_SO_ORDER_DET CSD ON CSD.SO_ID=CS.SO_ID AND CSD.STATUS=''Y''',
'                    JOIN AB_ITEMS_MASTER ITM ON ITM.ITEM_ID=CSD.ITEM_ID AND ITM.STATUS=''Y''',
'            LEFT JOIN REGISTRATION ASR ON ASR.SR_ID=CSD.WAREHOUSE_ID',
'            LEFT JOIN LOOKUP LD ON LD.DET_ID=CS.PAYMENT_ID',
'            LEFT JOIN LOOKUP PT ON PT.DET_ID=CS.PAYMENT_TERM',
'            LEFT JOIN LOOKUP CT ON CT.DET_ID=CS.CUSTOMER_TYPE_ID',
'            LEFT JOIN CUSTOMER_REG CR ON CR.CUSTOMER_ID=CS.CUSTOMER_ID',
'            LEFT JOIN USER_APPROVAL APP ON APP.SOD_ID=CSD.SOD_ID',
'            ',
'            LEFT JOIN LOOKUP PM ON PM.DET_ID=CS.PAYMENT_TYPE',
'        WHERE ',
'                        CS.ORG_ID= :GV_ORG_ID',
'              AND CS.STATUS=''Y''',
'              AND CS.SO_TYPE = ''708''',
'        Group by    CS.CUSTOMER_ID ,',
'                    CR.CUSTOMER_NAME',
')',
',',
'ALL_PARTIES AS (',
'    SELECT PARTY_ID FROM COUNTER_SALE',
'    UNION',
'    SELECT PARTY_ID FROM COUNTER_SALE_POINT_BAL_SUM',
')',
'SELECT',
'    NVL(CS.PARTY_ID, AP.PARTY_ID) PARTY_ID,',
'    NVL(CS.PARTY_NAME, CPN.PARTY_NAME) PARTY_NAME,',
'    nvl(CS.CONTACT_NUMBER,CPN.SALE_NUMBER) AS CONTACT_NUMBER,',
'',
'    CSR.RECOVERY_DATE,',
'    CS.ORDER_DATE,',
'    --TOTAL_BAGS,',
'    TB.COUNTER_BAGS,',
'    TB.TOTAL_AMOUNT,',
'    CS.ADDRESS,',
'',
'    /* DR ADD */',
'    NVL(CS.TOTAL_AMOUNT,0) + NVL(CSPB.DR_AMOUNT,0) AS RECOVERY_AMOUNT,',
'',
'    /* CR ADD */',
'    NVL(CSR.COUNTER_RECOVERY,0) + NVL(CSPB.CR_AMOUNT,0) AS RECEIVED_AMOUNT,',
'',
'    /* REMAINING */',
'    (NVL(CS.TOTAL_AMOUNT,0) + NVL(CSPB.DR_AMOUNT,0))',
'    -',
'    (NVL(CSR.COUNTER_RECOVERY,0) + NVL(CSPB.CR_AMOUNT,0)) AS REMAINING_AMOUNT,',
'',
'    ''Add Amount'' AS ADD_AMOUNT,',
'    ''SHOW IMAGE'' AS VIEW_IMAGE',
'FROM ALL_PARTIES AP',
'LEFT JOIN COUNTER_SALE CS ON CS.PARTY_ID = AP.PARTY_ID',
'LEFT JOIN COUNTER_SALE_POINT_BAL_SUM CSPB ON CSPB.PARTY_ID = AP.PARTY_ID',
'LEFT JOIN COUNTER_SALE_RECOVERY CSR ON CSR.PARTY_ID = AP.PARTY_ID',
'LEFT JOIN COUNTER_PARTY_NAME CPN ON CPN.PARTY_ID = AP.PARTY_ID',
'LEFT JOIN TOTAL_BAGS TB ON TB.PARTY_ID = AP.PARTY_ID',
'WHERE',
'   -- CS.SALE_POINT_ID = NVL(:P1133_SALE_POINTS,CS.SALE_POINT_ID)',
'  --NVL(CS.SALE_POINT_ID, CPN.SALE_POINT_ID) = NVL(:GV_SALE_POINT_ID, NVL(CS.SALE_POINT_ID, CPN.SALE_POINT_ID))',
'',
'',
'  ',
'  (',
'    :GV_SALE_POINT_ID IS NULL',
'    OR INSTR(',
'        '','' || :GV_SALE_POINT_ID || '','',',
'        '','' || TO_CHAR(NVL(CS.SALE_POINT_ID, CPN.SALE_POINT_ID)) || '',''',
'    ) > 0',
')',
'',
'AND (',
'    :P1133_SALE_POINTS IS NULL',
'    OR INSTR(',
'        '','' || :P1133_SALE_POINTS || '','',',
'        '','' || TO_CHAR(NVL(CS.SALE_POINT_ID, CPN.SALE_POINT_ID)) || '',''',
'    ) > 0',
')',
'    AND NVL(CS.PARTY_NAME, CPN.PARTY_NAME) IS NOT NULL',
'    AND (NVL(CS.TOTAL_AMOUNT,0) + NVL(CSPB.DR_AMOUNT,0)) - (NVL(CSR.COUNTER_RECOVERY,0) + NVL(CSPB.CR_AMOUNT,0)) = 0',
'',
'-- WITH COUNTER_SALE AS(',
'--         SELECT ',
'--             --MAX(SO_ID) AS SO_ID,',
'--             PARTY_ID,',
'--             CUSTOMER_NAME PARTY_NAME,',
'--             SALE_POINT_ID,',
'--             CONTACT_NUMBER,',
'--             NVL(SUM(COUNTER_BAGS),0) COUNTER_BAGS,',
'--             NVL(SUM(TOTAL_AMOUNT),0) TOTAL_AMOUNT',
'--         FROM',
'--             TABLE(AB_SALE_ORDER_PKG.COUNTER_SALE_REPORT(:GV_ORG_ID, :GV_USER_ID))',
'--         WHERE',
'--                 APPROVAL_STATUS=''Approved'' ',
'--             AND PAYMENT_TYPE = 597',
'--         GROUP BY',
'--             PARTY_ID,',
'--             CUSTOMER_NAME,',
'--             SALE_POINT_ID,',
'--             CONTACT_NUMBER',
'-- )',
'-- ,COUNTER_SALE_RECOVERY AS(',
'--         SELECT',
'--             SO.CUSTOMER_ID PARTY_ID,',
'--             MAX(SOD_DATE)  RECOVERY_DATE,',
'--             NVL(SUM(TOTAL_AMOUNT),0) COUNTER_RECOVERY',
'--         FROM',
'--                  AB_SO_ORDER_HEAD SO',
'--             JOIN AB_SO_ORDER_DET SOD ON SOD.SO_ID=SO.SO_ID AND SOD.STATUS=''Y''',
'--         WHERE',
'--                 SO.STATUS=''Y''',
'--             AND SO_TYPE=''1007'' ',
'--         GROUP BY',
'--             SO.CUSTOMER_ID',
'-- )',
'--         SELECT',
'--            --CS.SO_ID,',
'--             CS.PARTY_ID,',
'--             PARTY_NAME,',
'--             CS. CONTACT_NUMBER,',
'--             RECOVERY_DATE,',
'--             NVL(TOTAL_AMOUNT,0) RECOVERY_AMOUNT,',
'--             NVL(COUNTER_RECOVERY,0)  RECEIVED_AMOUNT,',
'--             NVL(TOTAL_AMOUNT,0)  -  NVL(COUNTER_RECOVERY,0) REMAINING_AMOUNT,',
'--             ''Add Amount'' AS ADD_AMOUNT,',
'--             ''SHOW IMAGE'' AS VIEW_IMAGE',
'--         FROM ',
'--                   COUNTER_SALE CS ',
'--         LEFT JOIN COUNTER_SALE_RECOVERY CSR ON CSR.PARTY_ID=CS.PARTY_ID ',
'',
'--         WHERE PARTY_NAME IS NOT NULL',
'--          AND SALE_POINT_ID= NVL(:P1133_SALE_POINTS,SALE_POINT_ID)',
'--      --    AND CS.PARTY_ID <> 7325'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'GV_SALE_POINT_ID,P1133_SALE_POINTS'
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
 p_id=>wwv_flow_imp.id(66010917669511803)
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
,p_internal_uid=>66010917669511803
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66011002580511804)
,p_db_column_name=>'ADD_AMOUNT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Add Recovery'
,p_column_link=>'f?p=&APP_ID.:135:&SESSION.::&DEBUG.:135:P135_PARTY_ID,P135_IDS:#PARTY_ID#,#PARTY_ID#'
,p_column_linktext=>'#ADD_AMOUNT#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66011189005511805)
,p_db_column_name=>'PARTY_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Party Ledger'
,p_column_link=>'javascript:$s(''P1133_CUSTOMER_ID'',''#PARTY_ID#'');apex.region(''CPS'').refresh();openModal(''CPS'');'
,p_column_linktext=>'#PARTY_ID#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66011285376511806)
,p_db_column_name=>'PARTY_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Party Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66011333920511807)
,p_db_column_name=>'RECOVERY_AMOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Debit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66011412464511808)
,p_db_column_name=>'RECEIVED_AMOUNT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Credit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66011526519511809)
,p_db_column_name=>'REMAINING_AMOUNT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Balance'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66011679177511810)
,p_db_column_name=>'RECOVERY_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Last Recovery Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66011735287511811)
,p_db_column_name=>'CONTACT_NUMBER'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Contact Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66011859372511812)
,p_db_column_name=>'VIEW_IMAGE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'View Image'
,p_column_link=>'javascript:$s(''P1133_PARTY_IDS'',''#PARTY_ID#'');openModal(''IMAGE'');'
,p_column_linktext=>'<span role="img" aria-label="Edit" class="print-image" title="Edit"></span>'
,p_column_link_attr=>'class="t-Button t-Button--secondary t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66011959096511813)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Last Sale Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66012016269511814)
,p_db_column_name=>'COUNTER_BAGS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Total Sale Bags'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66012117589511815)
,p_db_column_name=>'TOTAL_AMOUNT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Total Business Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74115019223456209)
,p_db_column_name=>'ADDRESS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66228060698928594)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'662281'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PARTY_ID:PARTY_NAME:CONTACT_NUMBER:ADDRESS:RECOVERY_AMOUNT:RECEIVED_AMOUNT:REMAINING_AMOUNT:COUNTER_BAGS:TOTAL_AMOUNT:ORDER_DATE:RECOVERY_DATE:ADD_AMOUNT:VIEW_IMAGE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75608628000131442)
,p_plug_name=>'Counter Sale Credit Recovery Pending'
,p_region_name=>'AA'
,p_parent_plug_id=>wwv_flow_imp.id(56140818785788488)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COUNTER_SALE AS(',
'    SELECT ',
'        PARTY_ID,',
'        CUSTOMER_NAME PARTY_NAME,',
'        SALE_POINT_ID,',
'        CONTACT_NUMBER,',
'        ADDRESS,',
'        SUM(COUNTER_BAGS) AS TOTAL_BAGS,',
'        MAX(ORDER_DATE) AS ORDER_DATE,',
'        NVL(SUM(COUNTER_BAGS),0) COUNTER_BAGS,',
'        NVL(SUM(TOTAL_AMOUNT),0) TOTAL_AMOUNT',
'    FROM',
'        TABLE(COUNTER_SALE_REPORT_PENDING(:GV_ORG_ID, :GV_USER_ID))',
'    WHERE',
'         PAYMENT_TYPE = 597',
'    GROUP BY',
'        PARTY_ID,',
'        CUSTOMER_NAME,',
'        SALE_POINT_ID,',
'        CONTACT_NUMBER,',
'         ADDRESS',
'),',
'',
'COUNTER_SALE_RECOVERY AS(',
'    SELECT',
'        SO.CUSTOMER_ID PARTY_ID,',
'        MAX(SOD_DATE)  RECOVERY_DATE,',
'        NVL(SUM(TOTAL_AMOUNT),0) COUNTER_RECOVERY',
'    FROM',
'        AB_SO_ORDER_HEAD SO',
'        JOIN AB_SO_ORDER_DET SOD ',
'            ON SOD.SO_ID=SO.SO_ID ',
'           AND SOD.STATUS=''Y''',
'    WHERE',
'        SO.STATUS=''Y''',
'        AND SO_TYPE=''1007'' ',
'    GROUP BY',
'        SO.CUSTOMER_ID',
'),',
'',
'VOUCHER_NAME AS (',
'    SELECT  ',
'        LOOKUP_DET_NAME ,',
'        DET_ID ',
'    FROM AB_LOOKUP_DETAIL',
'    WHERE ',
'        STATUS =''Y''',
'        AND LOOKUP_ID=''039''',
'        AND DET_ID =1049',
'),',
'',
'SALE_POINT AS (',
'    SELECT',
'        SR_ID||'' - ''||INITCAP(REG_NAME) D ,',
'        SR_ID ,',
'        INITCAP(REG_NAME) SALE_POINT',
'    FROM AB_SETUP_REGISTRATION',
'    WHERE',
'        REG_TYPE = ''COUNTER SALE POINT''',
'        AND (',
'              (:GV_ORG_ID IN (1008) AND ORG_ID IN (1008))',
'           OR (ORG_ID = :GV_ORG_ID)',
'        )',
'),',
'',
'COUNTER_PARTY_NAME AS (',
'    SELECT',
'        SR_ID AS PARTY_ID,',
'        CONTACT_NUMBER as sale_number,',
'        REG_NAME AS PARTY_NAME,',
'        SALE_POINT_ID',
'    FROM AB_SETUP_REGISTRATION',
'    WHERE',
'        REG_TYPE = ''COUNTER CUSTOMER''',
'        AND REG_STATUS=''Y''',
'        AND ORG_ID=:GV_ORG_ID',
'),',
'',
'COUNTER_SALE_POINT_BALANCE AS (',
'    SELECT ',
'        ASOD.CUSTOMER_ID PARTY_ID,',
'        NVL(ASOD.DR_AMOUNT,0) DR_AMOUNT,',
'        NVL(ASOD.CR_AMOUNT,0) CR_AMOUNT',
'    FROM AB_SO_ORDER_HEAD ASO',
'    JOIN AB_SO_ORDER_DET ASOD ',
'        ON ASOD.SO_ID = ASO.SO_ID',
'    WHERE ',
'        ASO.SO_TYPE = ''1049''',
'        AND ASO.ORG_ID = :GV_ORG_ID',
'),',
'',
unistr('/* \D83D\DD25 AGGREGATION */'),
'COUNTER_SALE_POINT_BAL_SUM AS (',
'    SELECT',
'        PARTY_ID,',
'',
'        SUM(DR_AMOUNT) DR_AMOUNT,',
'        SUM(CR_AMOUNT) CR_AMOUNT',
'    FROM COUNTER_SALE_POINT_BALANCE',
'    GROUP BY PARTY_ID',
')',
',',
'',
' REGISTRATION AS (',
'            SELECT ',
'                        SR_ID, ',
'                        REG_NAME, ',
'                        ADDRESS, ',
'                        CONTACT_NUMBER,',
'                        CNIC, ',
'                        REG_TYPE',
'            FROM ',
'                        AB_SETUP_REGISTRATION',
'            WHERE ',
'                    REG_STATUS = ''Y''',
'),CUSTOMER_REG AS (',
'                SELECT ',
'                           SR_ID CUSTOMER_ID,',
'                           INITCAP(REG_NAME) CUSTOMER_NAME,',
'                           INITCAP(ADDRESS) ADDRESS,',
'                           INITCAP(CONTACT_NUMBER) CONTACT_NUMBER,',
'                           CNIC',
'                FROM ',
'                          REGISTRATION',
'                WHERE ',
'                          REG_TYPE IN (''CUSTOMER REGISTRATION'',''COUNTER CUSTOMER'')',
'),',
'LOOKUP AS (',
'            SELECT ',
'                        DET_ID,',
'                         LOOKUP_DET_NAME',
'            FROM',
'                        AB_LOOKUP_DETAIL',
'            WHERE ',
'                        STATUS=''Y''',
'),',
'USER_APPROVAL AS (',
'            SELECT ',
'                   APP_IDS SOD_ID,',
'                   INITCAP(CREATED_BY)||'' (''||TO_CHAR(CREATED_ON,''DD-MON-YYYY'')||'')'' APPROVAL_BY,',
'                   APPROVAL_STATUS',
'            FROM ',
'                      AB_USER_ACTION_APPROVAL',
'            WHERE ',
'                      APP_TYPE=''918'' AND STATUS=''Y''',
')',
',',
'TOTAL_BAGS AS (',
'SELECT',
'                   CS.CUSTOMER_ID PARTY_ID,',
'                    CR.CUSTOMER_NAME PARTY_NAME ,',
'                    NVL(SUM(CSD.NO_BAGS),0) COUNTER_BAGS,',
'                    NVL(SUM(CSD.TOTAL_AMOUNT),0) TOTAL_AMOUNT',
'                   ',
'        FROM',
'                             AB_SO_ORDER_HEAD CS',
'                    JOIN AB_SO_ORDER_DET CSD ON CSD.SO_ID=CS.SO_ID AND CSD.STATUS=''Y''',
'                    JOIN AB_ITEMS_MASTER ITM ON ITM.ITEM_ID=CSD.ITEM_ID AND ITM.STATUS=''Y''',
'            LEFT JOIN REGISTRATION ASR ON ASR.SR_ID=CSD.WAREHOUSE_ID',
'            LEFT JOIN LOOKUP LD ON LD.DET_ID=CS.PAYMENT_ID',
'            LEFT JOIN LOOKUP PT ON PT.DET_ID=CS.PAYMENT_TERM',
'            LEFT JOIN LOOKUP CT ON CT.DET_ID=CS.CUSTOMER_TYPE_ID',
'            LEFT JOIN CUSTOMER_REG CR ON CR.CUSTOMER_ID=CS.CUSTOMER_ID',
'            LEFT JOIN USER_APPROVAL APP ON APP.SOD_ID=CSD.SOD_ID',
'            ',
'            LEFT JOIN LOOKUP PM ON PM.DET_ID=CS.PAYMENT_TYPE',
'        WHERE ',
'                        CS.ORG_ID= :GV_ORG_ID',
'              AND CS.STATUS=''Y''',
'              AND CS.SO_TYPE = ''708''',
'        Group by    CS.CUSTOMER_ID ,',
'                    CR.CUSTOMER_NAME',
')',
',',
'ALL_PARTIES AS (',
'    SELECT PARTY_ID FROM COUNTER_SALE',
'    -- UNION',
'    -- SELECT PARTY_ID FROM COUNTER_SALE_POINT_BAL_SUM',
')',
'SELECT',
'    NVL(CS.PARTY_ID, AP.PARTY_ID) PARTY_ID,',
'    NVL(CS.PARTY_NAME, CPN.PARTY_NAME) PARTY_NAME,',
'    nvl(CS.CONTACT_NUMBER,CPN.SALE_NUMBER) AS CONTACT_NUMBER,',
'',
'    CSR.RECOVERY_DATE,',
'    CS.ORDER_DATE,',
'    CS.TOTAL_BAGS,',
'    CS.TOTAL_AMOUNT,',
'  --  TB.COUNTER_BAGS,',
'  --  TB.TOTAL_AMOUNT,',
'    CS.ADDRESS,',
'',
'    /* DR ADD */',
'    NVL(CS.TOTAL_AMOUNT,0)  AS RECOVERY_AMOUNT,',
'',
'    /* CR ADD */',
'    NVL(CSR.COUNTER_RECOVERY,0)  AS RECEIVED_AMOUNT,',
'',
'    /* REMAINING */',
'    NVL(CS.TOTAL_AMOUNT,0) ',
'    -',
'    NVL(CSR.COUNTER_RECOVERY,0)  AS REMAINING_AMOUNT,',
'',
'    ''Add Amount'' AS ADD_AMOUNT,',
'    ''SHOW IMAGE'' AS VIEW_IMAGE',
'FROM ALL_PARTIES AP',
'LEFT JOIN COUNTER_SALE CS ON CS.PARTY_ID = AP.PARTY_ID',
'--LEFT JOIN COUNTER_SALE_POINT_BAL_SUM CSPB ON CSPB.PARTY_ID = AP.PARTY_ID',
'LEFT JOIN COUNTER_SALE_RECOVERY CSR ON CSR.PARTY_ID = AP.PARTY_ID',
'LEFT JOIN COUNTER_PARTY_NAME CPN ON CPN.PARTY_ID = AP.PARTY_ID',
'LEFT JOIN TOTAL_BAGS TB ON TB.PARTY_ID = AP.PARTY_ID',
'WHERE',
'   -- CS.SALE_POINT_ID = NVL(:P1292_SALE_POINTS,CS.SALE_POINT_ID)',
' -- NVL(CS.SALE_POINT_ID, CPN.SALE_POINT_ID) = NVL(:GV_SALE_POINT_ID, NVL(CS.SALE_POINT_ID, CPN.SALE_POINT_ID))',
'',
'  (',
'    :GV_SALE_POINT_ID IS NULL',
'    OR INSTR(',
'        '','' || :GV_SALE_POINT_ID || '','',',
'        '','' || TO_CHAR(NVL(CS.SALE_POINT_ID, CPN.SALE_POINT_ID)) || '',''',
'    ) > 0',
')',
'',
'AND (',
'    :P1133_SALE_POINTS IS NULL',
'    OR INSTR(',
'        '','' || :P1133_SALE_POINTS || '','',',
'        '','' || TO_CHAR(NVL(CS.SALE_POINT_ID, CPN.SALE_POINT_ID)) || '',''',
'    ) > 0',
')',
'    AND NVL(CS.PARTY_NAME, CPN.PARTY_NAME) IS NOT NULL',
'    AND NVL(CS.TOTAL_AMOUNT,0)  - NVL(CSR.COUNTER_RECOVERY,0)  <> 0',
'',
'-- FROM COUNTER_SALE CS',
'',
'',
'-- LEFT JOIN  COUNTER_SALE_POINT_BAL_SUM CSPB',
'--     ON CSPB.PARTY_ID = CS.PARTY_ID',
'-- LEFT JOIN COUNTER_SALE_RECOVERY CSR',
'-- ON CSR.PARTY_ID = NVL(CS.PARTY_ID,CSPB.PARTY_ID)',
'',
'-- LEFT JOIN COUNTER_PARTY_NAME CPN',
'-- ON CPN.PARTY_ID = NVL(CS.PARTY_ID,CSPB.PARTY_ID)',
'',
'-- LEFT JOIN TOTAL_BAGS TB',
'-- ON TB.PARTY_ID = NVL(CS.PARTY_ID,CSPB.PARTY_ID)',
'',
'-- WHERE',
'--     -- (:P1273_SALE_POINTS IS NULL ',
'--     --  OR CS.SALE_POINT_ID = :P1273_SALE_POINTS',
'--     --  OR CS.SALE_POINT_ID IS NULL)',
'',
'--      CS.SALE_POINT_ID = NVL(:P1273_SALE_POINTS,CS.SALE_POINT_ID)',
'',
'--     AND NVL(CS.PARTY_NAME, CPN.PARTY_NAME) IS NOT NULL',
'',
'--     AND (NVL(CS.TOTAL_AMOUNT,0) + NVL(CSPB.DR_AMOUNT,0))',
'--         -',
'--         (NVL(CSR.COUNTER_RECOVERY,0) + NVL(CSPB.CR_AMOUNT,0)) <> 0',
'     ',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'GV_SALE_POINT_ID,P1133_SALE_POINTS'
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
 p_id=>wwv_flow_imp.id(75608771416131443)
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
,p_internal_uid=>75608771416131443
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75608869924131444)
,p_db_column_name=>'ADD_AMOUNT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Add Recovery'
,p_column_link=>'f?p=&APP_ID.:135:&SESSION.::&DEBUG.:135:P135_PARTY_ID,P135_IDS:#PARTY_ID#,#PARTY_ID#'
,p_column_linktext=>'#ADD_AMOUNT#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
,p_display_condition_type=>'NEVER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75608998150131445)
,p_db_column_name=>'PARTY_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Party Ledger'
,p_column_link=>'javascript:$s(''P1133_CUSTOMER_ID'',''#PARTY_ID#'');apex.region(''CPS'').refresh();openModal(''CPS'');'
,p_column_linktext=>'#PARTY_ID#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75609010200131446)
,p_db_column_name=>'PARTY_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Party Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75609105987131447)
,p_db_column_name=>'RECOVERY_AMOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Debit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75609213770131448)
,p_db_column_name=>'RECEIVED_AMOUNT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Credit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75609330972131449)
,p_db_column_name=>'REMAINING_AMOUNT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Balance'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75609480458131450)
,p_db_column_name=>'RECOVERY_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Last Recovery Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78555518798890601)
,p_db_column_name=>'CONTACT_NUMBER'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Contact Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78555659655890602)
,p_db_column_name=>'VIEW_IMAGE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'View Image'
,p_column_link=>'javascript:$s(''P1133_PARTY_IDS'',''#PARTY_ID#'');openModal(''IMAGE'');'
,p_column_linktext=>'<span role="img" aria-label="Edit" class="print-image" title="Edit"></span>'
,p_column_link_attr=>'class="t-Button t-Button--secondary t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'NEVER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78555738403890603)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Last Sale Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78555985287890605)
,p_db_column_name=>'TOTAL_AMOUNT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Total Business Value'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78556024225890606)
,p_db_column_name=>'ADDRESS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78556183836890607)
,p_db_column_name=>'TOTAL_BAGS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Total Bags'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(78565737959891453)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'785658'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PARTY_ID:PARTY_NAME:CONTACT_NUMBER:ADDRESS:TOTAL_BAGS:TOTAL_AMOUNT:ORDER_DATE:RECOVERY_DATE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(467606449347709784)
,p_plug_name=>'Counter Sale Order Detail'
,p_region_name=>'AA'
,p_parent_plug_id=>wwv_flow_imp.id(56140818785788488)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:margin-top-md'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
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
'                    ITM.ITEM_NAME||'' (''|| ITM.PACKING_SIZE || '' ''|| ITM.UNIT || '' ''|| ITM.PACKING || '')'' AS PRODUCT,',
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
'              AND TRUNC(CS.ORDER_DATE) BETWEEN NVL(TO_DATE(:P1133_FROM_DATE, ''DD-MON-YYYY''), TRUNC(CS.ORDER_DATE))',
'             AND  NVL(TO_DATE(:P1133_TO_DATE, ''DD-MON-YYYY''), TRUNC(CS.ORDER_DATE))',
'             AND CS.SALE_POINT_ID = NVL(:P1133_SALE_POINTS,CS.SALE_POINT_ID)',
'        ORDER BY',
'             CS.SO_ID DESC ',
'                   ',
'                   ',
'          '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1133_FROM_DATE,P1133_TO_DATE,P1133_SALE_POINTS'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(467606483618709784)
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
,p_internal_uid=>467606483618709784
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(473350769370921851)
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
 p_id=>wwv_flow_imp.id(427109610369032042)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>97
,p_column_identifier=>'Z'
,p_column_label=>'Customer Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(427109631953032043)
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
 p_id=>wwv_flow_imp.id(427109747554032044)
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
 p_id=>wwv_flow_imp.id(427109882569032045)
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
 p_id=>wwv_flow_imp.id(427110333558032050)
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
 p_id=>wwv_flow_imp.id(427110448477032051)
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
 p_id=>wwv_flow_imp.id(473186239886671641)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>247
,p_column_identifier=>'AP'
,p_column_label=>'Order Date'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(308139261039295004)
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
 p_id=>wwv_flow_imp.id(308139430441295006)
,p_db_column_name=>'PAYMENT_NAME'
,p_display_order=>277
,p_column_identifier=>'AS'
,p_column_label=>'Payment'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(308139587536295007)
,p_db_column_name=>'PAYMENT_TERM'
,p_display_order=>287
,p_column_identifier=>'AT'
,p_column_label=>'Payment Term'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(308139675214295008)
,p_db_column_name=>'CUSTOMER_TYPE'
,p_display_order=>297
,p_column_identifier=>'AU'
,p_column_label=>'Customer Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(308139908340295011)
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
 p_id=>wwv_flow_imp.id(308140022261295012)
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
 p_id=>wwv_flow_imp.id(313354756148899813)
,p_db_column_name=>'PRODUCT'
,p_display_order=>347
,p_column_identifier=>'BA'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(313748937078011871)
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
 p_id=>wwv_flow_imp.id(318874396055847376)
,p_db_column_name=>'WAREHOUSE'
,p_display_order=>377
,p_column_identifier=>'BD'
,p_column_label=>'Warehouse'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(371406086288652972)
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
 p_id=>wwv_flow_imp.id(371760984927942996)
,p_db_column_name=>'ADD_BY'
,p_display_order=>397
,p_column_identifier=>'BF'
,p_column_label=>'Add By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(224463666373897852)
,p_db_column_name=>'APPROVAL_BY'
,p_display_order=>407
,p_column_identifier=>'BG'
,p_column_label=>'Approval By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(224972928778974693)
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
 p_id=>wwv_flow_imp.id(225206327408797462)
,p_db_column_name=>'GATE_PASS_NO'
,p_display_order=>427
,p_column_identifier=>'BI'
,p_column_label=>'Gate Pass No'
,p_column_link=>'javascript:$s(''P92_COUNTER_GATE_PASS'',''#SO_ID#'');'
,p_column_linktext=>'#GATE_PASS_NO#'
,p_column_link_attr=>'class="t-Button  t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56137697736788457)
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
 p_id=>wwv_flow_imp.id(56137788800788458)
,p_db_column_name=>'PAYMENT_MODE_TYPE'
,p_display_order=>447
,p_column_identifier=>'BK'
,p_column_label=>'Payment Mode'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56657138261861054)
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
 p_id=>wwv_flow_imp.id(58341505599469651)
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
 p_id=>wwv_flow_imp.id(58341649824469652)
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
 p_id=>wwv_flow_imp.id(58998599667053769)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>487
,p_column_identifier=>'BO'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64268894297465984)
,p_db_column_name=>'SALE_POINT_NAME'
,p_display_order=>497
,p_column_identifier=>'BP'
,p_column_label=>'Sale Point'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69567508733231865)
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
 p_id=>wwv_flow_imp.id(467614188338710229)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'404048'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'SOP:SO_ID:SALE_POINT_NAME:ORDER_DATE:PARTY_ID:CUSTOMER_NAME:CONTACT_NUMBER:PAYMENT_MODE_TYPE:GATE_PASS_NO:PRODUCT:COUNTER_BAGS:BAG_RATE:TOTAL_AMOUNT:ADD_BY:APPROVAL_STATUS:APPROVAL_BY:'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56141439371788494)
,p_plug_name=>'Add Amount'
,p_region_name=>'addamount'
,p_region_css_classes=>'js-dialog-size1000x600'
,p_region_template_options=>'#DEFAULT#:js-dialog-nosize'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>81
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56657204275861055)
,p_plug_name=>'UPDATE_PAYMENT_MODE'
,p_region_name=>'PMT'
,p_region_css_classes=>'js-dialog-size800x400'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>1000000060
,p_location=>null
,p_plug_required_role=>wwv_flow_imp.id(36704506721739483)
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58341682522469653)
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
'            --   AND TRUNC(CS.ORDER_DATE) BETWEEN NVL(TO_DATE(:P1133_FROM_DATE, ''DD-MON-YYYY''), TRUNC(CS.ORDER_DATE))',
'            --  AND  NVL(TO_DATE(:P1133_TO_DATE, ''DD-MON-YYYY''), TRUNC(CS.ORDER_DATE))',
'             AND   CR.CUSTOMER_ID = NVL(:P1133_CUSTOMER_IDS,CR.CUSTOMER_ID)',
'        ORDER BY',
'             CS.SO_ID DESC ',
'                   ',
'                   ',
'          '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1133_CUSTOMER_IDS'
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
 p_id=>wwv_flow_imp.id(58341768319469654)
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
,p_internal_uid=>58341768319469654
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58341940086469655)
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
 p_id=>wwv_flow_imp.id(58341994717469656)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58342453764469660)
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
 p_id=>wwv_flow_imp.id(58342523160469661)
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
 p_id=>wwv_flow_imp.id(58342573540469662)
,p_db_column_name=>'GATE_PASS_NO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Gate Pass No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58342660816469663)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Order Date'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58342813339469664)
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
 p_id=>wwv_flow_imp.id(58342949666469665)
,p_db_column_name=>'PAYMENT_NAME'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Payment Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58343029204469666)
,p_db_column_name=>'WAREHOUSE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Warehouse'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58343126134469667)
,p_db_column_name=>'PAYMENT_TERM'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Payment Term'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58343224171469668)
,p_db_column_name=>'CUSTOMER_TYPE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Customer Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58343353724469669)
,p_db_column_name=>'PRODUCT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58343377898469670)
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
 p_id=>wwv_flow_imp.id(58343525561469671)
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
 p_id=>wwv_flow_imp.id(58343569195469672)
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
 p_id=>wwv_flow_imp.id(58343702759469673)
,p_db_column_name=>'ADD_BY'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Add By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58343808644469674)
,p_db_column_name=>'REMARKS'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58343893513469675)
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
 p_id=>wwv_flow_imp.id(58343987975469676)
,p_db_column_name=>'APPROVAL_BY'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Approval By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58344113391469677)
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
 p_id=>wwv_flow_imp.id(58344208897469678)
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
 p_id=>wwv_flow_imp.id(58344272790469679)
,p_db_column_name=>'PAYMENT_MODE_TYPE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Payment Mode Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58344417284469680)
,p_db_column_name=>'EDIT'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Edit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58344496372469681)
,p_db_column_name=>'SOP'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Sop'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58344639663469682)
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
 p_id=>wwv_flow_imp.id(58924490411997096)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'167054'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CUSTOMER_ID:CUSTOMER_NAME:PRODUCT:ORDER_DATE:COUNTER_BAGS:BAG_RATE:TOTAL_AMOUNT'
,p_sum_columns_on_break=>'TOTAL_AMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58345065081469687)
,p_plug_name=>'Customer Credit Ledger'
,p_region_name=>'CPS'
,p_region_css_classes=>'js-dialog-size1200x600'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>1000000090
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COUNTER_SALE AS (',
'   SELECT ',
'        PARTY_ID,',
'        SO_ID Transaction_id,',
'        CUSTOMER_NAME AS PARTY_NAME,',
'        ORDER_DATE,',
'        SUM(NVL(TOTAL_AMOUNT,0)) AS TOTAL_AMOUNT ,',
'        PRODUCT,',
'        COUNTER_BAGS||''@''||BAG_RATE||'' - ''||REMARKS as REMARKS',
'    FROM',
'        TABLE(AB_SALE_ORDER_PKG.COUNTER_SALE_REPORT(:GV_ORG_ID, :GV_USER_ID))',
'    WHERE',
'           APPROVAL_STATUS = ''Approved'' ',
'       AND PAYMENT_TYPE = 597',
'    GROUP BY',
'        PARTY_ID,',
'        CUSTOMER_NAME,',
'        ORDER_DATE ,',
'        PRODUCT,',
'        REMARKS,',
'        COUNTER_BAGS,',
'        BAG_RATE,',
'        SO_ID',
'),',
'',
'COUNTER_SALE_RECOVERY AS (',
'    SELECT',
'        SOD_ID,',
'        SO.CUSTOMER_ID AS PARTY_ID,',
'        SOD.SOD_DATE AS TRANS_DATE,',
'        0 AS RECOVERY_AMOUNT,',
'        SUM(NVL(SOD.TOTAL_AMOUNT,0)) AS RECEIVED_AMOUNT,',
'        ''Received Amount ''||SUM(NVL(SOD.TOTAL_AMOUNT,0))||'' - Remarks: ''||SOD.REMARKS as REMARKS',
'    FROM',
'        AB_SO_ORDER_HEAD SO',
'        JOIN AB_SO_ORDER_DET SOD ',
'            ON SOD.SO_ID = SO.SO_ID ',
'           AND SOD.STATUS = ''Y''',
'    WHERE',
'        SO.STATUS = ''Y''',
'        AND SO.SO_TYPE = ''1007''',
'    GROUP BY',
'        SO.CUSTOMER_ID,',
'        SOD.SOD_DATE,',
'        SOD.REMARKS,',
'        SOD_ID',
'),',
'',
'',
'     PARTY_NAME_BALANCE AS (',
'        SELECT',
'            PARTY_NAME,',
'            SR_ID',
'FROM(   ',
'',
'         SELECT ',
'               ',
'                REG_NAME AS PARTY_NAME,',
'                 SR_ID ',
'    FROM ',
'                AB_SETUP_REGISTRATION',
'    WHERE',
'                 REG_TYPE = ''COUNTER CUSTOMER''',
'        AND REG_STATUS=''Y''',
'        AND ORG_ID=:GV_ORG_ID',
'      -- AND SALE_POINT_ID = :P1133_SALE_POINTS',
' ',
'        )',
'     ',
'     ),',
'',
unistr('/* \D83D\DD25 BALANCE ENTRY ADD */'),
'COUNTER_SALE_POINT_BALANCE AS (',
'    SELECT ',
'        ASOD.CUSTOMER_ID PARTY_ID,',
'        ASO.ORDER_DATE AS TRANS_DATE,',
'        NVL(ASOD.DR_AMOUNT,0) AS RECOVERY_AMOUNT,',
'        NVL(ASOD.CR_AMOUNT,0) AS RECEIVED_AMOUNT,',
'        ASOD.REMARKS AS REMARKS,',
'        ASOD.SOD_ID,',
'        PNB.PARTY_NAME AS  PARTY_NAME',
'    FROM AB_SO_ORDER_HEAD ASO',
'    JOIN AB_SO_ORDER_DET ASOD ',
'        ON ASOD.SO_ID = ASO.SO_ID',
'    JOIN PARTY_NAME_BALANCE PNB ON PNB.SR_ID = ASOD.CUSTOMER_ID',
'    WHERE ',
'        ASO.SO_TYPE = ''1049''',
'        AND ASO.ORG_ID = :GV_ORG_ID',
'),',
'',
'',
unistr('/* \D83D\DD25 UNION ALL (ALL DATA) */'),
'ALL_TRANSACTIONS AS (',
'    ',
'    /* SALE */',
'    SELECT',
'        PARTY_ID,',
'        PARTY_NAME,',
'        ORDER_DATE AS TRANS_DATE,',
'        TOTAL_AMOUNT AS RECOVERY_AMOUNT,',
'        0 AS RECEIVED_AMOUNT,',
'        PRODUCT,',
'        REMARKS,',
'        Transaction_id,',
'        NULL AS SOD_ID',
'    FROM COUNTER_SALE',
'',
'    UNION ALL',
'',
'    /* RECOVERY */',
'    SELECT',
'        PARTY_ID,',
'        NULL,',
'        TRANS_DATE,',
'        RECOVERY_AMOUNT,',
'        RECEIVED_AMOUNT,',
'        NULL,',
'        REMARKS,',
'        NULL,',
'        SOD_ID',
'    FROM COUNTER_SALE_RECOVERY',
'',
'    UNION ALL',
'',
unistr('    /* \D83D\DD25 BALANCE (NEW ADD) */'),
'    SELECT',
'        PARTY_ID,',
'        PARTY_NAME,',
'        TRANS_DATE,',
'        RECOVERY_AMOUNT,',
'        RECEIVED_AMOUNT,',
'        NULL,',
'        REMARKS,',
'        NULL,',
'        SOD_ID',
'    FROM COUNTER_SALE_POINT_BALANCE',
')',
'',
'SELECT',
'    PARTY_ID,',
'    PRODUCT,',
'    NVL(Transaction_id, SOD_ID) AS TRANSACTION_ID,',
'    REMARKS,',
'    MAX(PARTY_NAME) OVER (PARTITION BY PARTY_ID) AS PARTY_NAME,',
'    TRANS_DATE,',
'    RECOVERY_AMOUNT,',
'    RECEIVED_AMOUNT,',
'',
unistr('    /* \D83D\DD25 RUNNING BALANCE FIXED (PARTITION BY PARTY) */'),
'    SUM(RECOVERY_AMOUNT - RECEIVED_AMOUNT) ',
'        OVER (',
'            PARTITION BY PARTY_ID ',
'            ORDER BY TRANS_DATE',
'            ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW',
'        ) AS RUNNING_BALANCE',
'',
'FROM ALL_TRANSACTIONS',
'',
'WHERE ',
'    PARTY_ID = :P1133_CUSTOMER_ID',
'',
'ORDER BY ',
'    TRANS_DATE',
'',
'--- original query ',
'',
'-- WITH COUNTER_SALE AS (',
'--    SELECT ',
'--         PARTY_ID,',
'--         SO_ID Transaction_id,',
'--         CUSTOMER_NAME AS PARTY_NAME,',
'--         ORDER_DATE,',
'--         SUM(NVL(TOTAL_AMOUNT,0)) AS TOTAL_AMOUNT ,',
'--         PRODUCT,',
'--         COUNTER_BAGS||''@''||BAG_RATE||'' - ''||REMARKS as REMARKS',
'--     FROM',
'--         TABLE(AB_SALE_ORDER_PKG.COUNTER_SALE_REPORT(:GV_ORG_ID, :GV_USER_ID))',
'--     WHERE',
'--            APPROVAL_STATUS = ''Approved'' ',
'--        AND PAYMENT_TYPE = 597',
'--     GROUP BY',
'--         PARTY_ID,',
'--         CUSTOMER_NAME,',
'--         ORDER_DATE ,',
'--          PRODUCT,',
'--         REMARKS,',
'--           COUNTER_BAGS,',
'--         BAG_RATE,',
'--         SO_ID',
'-- ),',
'',
'',
'-- COUNTER_SALE_RECOVERY AS (',
'--     SELECT',
'--          SOD_ID,',
'--         SO.CUSTOMER_ID AS PARTY_ID,',
'--         SOD.SOD_DATE AS RECOVERY_DATE,',
'--         SUM(NVL(SOD.TOTAL_AMOUNT,0)) AS RECEIVED_AMOUNT ,',
'--         ''Received Amount''||'' ''||SUM(NVL(SOD.TOTAL_AMOUNT,0))||'' -Remarks: ''||SOD.REMARKS as Remarks',
'--     FROM',
'--         AB_SO_ORDER_HEAD SO',
'--         JOIN AB_SO_ORDER_DET SOD ',
'--             ON SOD.SO_ID = SO.SO_ID ',
'--            AND SOD.STATUS = ''Y''',
'--     WHERE',
'--             SO.STATUS = ''Y''',
'--         AND SO.SO_TYPE = ''1007''',
'--     GROUP BY',
'--         SO.CUSTOMER_ID,',
'--         SOD.SOD_DATE ,',
'--         SOD.REMARKS,',
'--         SOD_ID',
'-- ),',
'',
'',
'-- ALL_TRANSACTIONS AS (',
'   ',
'--     SELECT',
'--         PARTY_ID,',
'--         PARTY_NAME,',
'--         ORDER_DATE AS TRANS_DATE, ',
'--         TOTAL_AMOUNT AS RECOVERY_AMOUNT,',
'--         0 AS RECEIVED_AMOUNT,',
'--         PRODUCT,',
'--         REMARKS,',
'--         Transaction_id,',
'--         NULL SOD_ID',
'--     FROM COUNTER_SALE',
'',
'--     UNION ALL',
'',
' ',
'--     SELECT',
'--         PARTY_ID,',
'--         NULL AS PARTY_NAME, ',
'--         --(select PARTY_NAME FROM COUNTER_SALE) AS  PARTY_NAME,',
'--         RECOVERY_DATE AS TRANS_DATE, ',
'--         0 AS RECOVERY_AMOUNT,',
'--         RECEIVED_AMOUNT,',
'--         NULL AS PRODUCT,',
'--         REMARKS AS  REMARKS,',
'--         null as Transaction_ID,',
'--         SOD_ID',
'--     FROM COUNTER_SALE_RECOVERY',
'-- )',
'',
'',
'-- SELECT',
'--     PARTY_ID,',
'--     PRODUCT,',
'--     NVL(Transaction_id, SOD_ID) AS TRANSACTION_ID,',
'--     REMARKS,',
'--     MAX(PARTY_NAME) OVER (PARTITION BY PARTY_ID) AS PARTY_NAME, ',
'--     TRANS_DATE,',
'--     RECOVERY_AMOUNT,',
'--     RECEIVED_AMOUNT,',
'--     SUM(RECOVERY_AMOUNT - RECEIVED_AMOUNT) ',
'--         OVER (ORDER BY TRANS_DATE',
'--               ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS RUNNING_BALANCE',
'-- FROM',
'--     ALL_TRANSACTIONS',
'-- WHERE ',
'--     PARTY_ID = :P1133_CUSTOMER_ID',
'--     --  AND TRUNC(TRANS_DATE) BETWEEN NVL(TO_DATE(:P1133_FROM_DATE, ''DD-MON-YYYY''), TRUNC(TRANS_DATE))',
'--     --          AND  NVL(TO_DATE(:P1133_TO_DATE, ''DD-MON-YYYY''), TRUNC(TRANS_DATE))',
'-- ORDER BY ',
'--     TRANS_DATE'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1133_CUSTOMER_ID'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(60845159002080474)
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
,p_internal_uid=>60845159002080474
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60845949741080481)
,p_db_column_name=>'PARTY_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Party Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60846001276080482)
,p_db_column_name=>'PARTY_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Party Name'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60846104199080483)
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
 p_id=>wwv_flow_imp.id(60846432317080486)
,p_db_column_name=>'RUNNING_BALANCE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Balance'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70966970775519681)
,p_db_column_name=>'PRODUCT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70967101261519682)
,p_db_column_name=>'REMARKS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76662271314527889)
,p_db_column_name=>'TRANSACTION_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Transaction Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79891222250502162)
,p_db_column_name=>'RECOVERY_AMOUNT'
,p_display_order=>100
,p_column_identifier=>'M'
,p_column_label=>'Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79891358071502163)
,p_db_column_name=>'RECEIVED_AMOUNT'
,p_display_order=>110
,p_column_identifier=>'N'
,p_column_label=>'Credit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(61359607719463572)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'191405'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TRANSACTION_ID:PARTY_NAME:TRANS_DATE:PRODUCT:RECOVERY_AMOUNT:RECEIVED_AMOUNT:RUNNING_BALANCE:REMARKS:'
,p_sort_column_1=>'0'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'TRANS_DATE'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'DESC'
,p_break_on=>'PARTY_NAME'
,p_break_enabled_on=>'PARTY_NAME'
,p_sum_columns_on_break=>'RECEIVED_AMOUNT:RECOVERY_AMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79891438562502164)
,p_plug_name=>'Customer Credit Ledger Pending'
,p_parent_plug_id=>wwv_flow_imp.id(58345065081469687)
,p_region_css_classes=>'js-dialog-size1200x600'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>1000000110
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
'                    LD.DET_ID as PAYMENT_IDS,',
'                    LD.LOOKUP_DET_NAME   AS PAYMENT_NAME,',
'                    ASR.REG_NAME    AS WAREHOUSE,',
'                    PT.LOOKUP_DET_NAME AS PAYMENT_TERM,',
'                    CT.DET_ID CUSTOMER_TYPE_ID,',
'                    CT.LOOKUP_DET_NAME AS CUSTOMER_TYPE,',
'                    ITM.ITEM_NAME||'' (''|| ITM.PACKING_SIZE || '' ''|| ITM.UNIT || '' ''|| ITM.PACKING || '')'' AS PRODUCT,',
'                    NVL(CSD.NO_BAGS, 0) AS COUNTER_BAGS,',
'                    CSD.BAG_RATE,',
'                    CSD.TOTAL_AMOUNT,',
'                    INITCAP(CS.CREATED_BY) || '' ('' || TO_CHAR(CS.CREATED_ON, ''DD-MON-YYYY'') || '')'' AS ADD_BY,',
'                    CS.REMARKS,',
'                     CASE ',
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
'              SPN.SALE_POINT_NAME,',
'                CASE ',
'                    WHEN APP.SOD_ID IS NULL THEN ''Update Entry''',
'                    ELSE NULL',
'                END AS Eids_bags',
'',
'',
'               ',
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
'            --   AND TRUNC(CS.ORDER_DATE) BETWEEN NVL(TO_DATE(:P92_FROM_DATE, ''DD-MON-YYYY''), TRUNC(CS.ORDER_DATE))',
'            --  AND  NVL(TO_DATE(:P92_TO_DATE, ''DD-MON-YYYY''), TRUNC(CS.ORDER_DATE))',
'             AND CS.SALE_POINT_ID = NVL(:P92_SALE_POINTS,CS.SALE_POINT_ID)',
'',
'            -- AND (',
'            --     :P92_PRODUCT_NAMES IS NULL',
'            --     OR CSD.ITEM_ID IN (',
'            --         SELECT TRIM(REGEXP_SUBSTR(:P92_PRODUCT_NAMES, ''[^:]+'', 1, LEVEL))',
'            --         FROM dual',
'            --         CONNECT BY REGEXP_SUBSTR(:P92_PRODUCT_NAMES, ''[^:]+'', 1, LEVEL) IS NOT NULL',
'            --     )',
'            -- )',
'                AND  CS.PAYMENT_TYPE =597 ',
'                AND CS.CUSTOMER_ID  = :P1133_CUSTOMER_ID',
'                 AND APP.SOD_ID IS NULL',
'            ',
'        ORDER BY',
'             CS.SO_ID DESC ',
'                   ',
'                   ',
'          '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1133_CUSTOMER_ID'
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
'   Customer Credit Ledger Pending',
'</h3>',
'<hr class="gradient-line-green">'))
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(79891525638502165)
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
,p_internal_uid=>79891525638502165
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79891613090502166)
,p_db_column_name=>'PARTY_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Party Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79891960462502170)
,p_db_column_name=>'PRODUCT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79892109397502171)
,p_db_column_name=>'REMARKS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73764102083926724)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>70
,p_column_identifier=>'J'
,p_column_label=>'Customer Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73764235974926725)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>80
,p_column_identifier=>'K'
,p_column_label=>'Party Name'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73764365890926726)
,p_db_column_name=>'ADDRESS'
,p_display_order=>90
,p_column_identifier=>'L'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73764400803926727)
,p_db_column_name=>'CONTACT_NUMBER'
,p_display_order=>100
,p_column_identifier=>'M'
,p_column_label=>'Contact Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73764507460926728)
,p_db_column_name=>'CNIC'
,p_display_order=>110
,p_column_identifier=>'N'
,p_column_label=>'Cnic'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73764611364926729)
,p_db_column_name=>'SO_ID'
,p_display_order=>120
,p_column_identifier=>'O'
,p_column_label=>'So Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73764760780926730)
,p_db_column_name=>'SOD_ID'
,p_display_order=>130
,p_column_identifier=>'P'
,p_column_label=>'Sod Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73764856685926731)
,p_db_column_name=>'GATE_PASS_NO'
,p_display_order=>140
,p_column_identifier=>'Q'
,p_column_label=>'Gate Pass No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73764909560926732)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>150
,p_column_identifier=>'R'
,p_column_label=>'Order Date'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73765043066926733)
,p_db_column_name=>'PAYMENT_IDS'
,p_display_order=>160
,p_column_identifier=>'S'
,p_column_label=>'Payment Ids'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73765104601926734)
,p_db_column_name=>'PAYMENT_NAME'
,p_display_order=>170
,p_column_identifier=>'T'
,p_column_label=>'Payment Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73765276586926735)
,p_db_column_name=>'WAREHOUSE'
,p_display_order=>180
,p_column_identifier=>'U'
,p_column_label=>'Warehouse'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73765345863926736)
,p_db_column_name=>'PAYMENT_TERM'
,p_display_order=>190
,p_column_identifier=>'V'
,p_column_label=>'Payment Term'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73765466304926737)
,p_db_column_name=>'CUSTOMER_TYPE_ID'
,p_display_order=>200
,p_column_identifier=>'W'
,p_column_label=>'Customer Type Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73765551414926738)
,p_db_column_name=>'CUSTOMER_TYPE'
,p_display_order=>210
,p_column_identifier=>'X'
,p_column_label=>'Customer Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73765666716926739)
,p_db_column_name=>'COUNTER_BAGS'
,p_display_order=>220
,p_column_identifier=>'Y'
,p_column_label=>'Counter Bags'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73765743652926740)
,p_db_column_name=>'BAG_RATE'
,p_display_order=>230
,p_column_identifier=>'Z'
,p_column_label=>'Bag Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73765809417926741)
,p_db_column_name=>'TOTAL_AMOUNT'
,p_display_order=>240
,p_column_identifier=>'AA'
,p_column_label=>'Total Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73765954373926742)
,p_db_column_name=>'ADD_BY'
,p_display_order=>250
,p_column_identifier=>'AB'
,p_column_label=>'Add By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73766068936926743)
,p_db_column_name=>'APPROVAL_STATUS'
,p_display_order=>260
,p_column_identifier=>'AC'
,p_column_label=>'Approval Status'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73766109656926744)
,p_db_column_name=>'APPROVAL_BY'
,p_display_order=>270
,p_column_identifier=>'AD'
,p_column_label=>'Approval By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73766293491926745)
,p_db_column_name=>'SALE_POINT_ID'
,p_display_order=>280
,p_column_identifier=>'AE'
,p_column_label=>'Sale Point Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73766367272926746)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>290
,p_column_identifier=>'AF'
,p_column_label=>'Payment Type'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73766430870926747)
,p_db_column_name=>'PAYMENT_MODE_TYPE'
,p_display_order=>300
,p_column_identifier=>'AG'
,p_column_label=>'Payment Mode Type'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73766575956926748)
,p_db_column_name=>'EDIT'
,p_display_order=>310
,p_column_identifier=>'AH'
,p_column_label=>'Edit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73766602351926749)
,p_db_column_name=>'SOP'
,p_display_order=>320
,p_column_identifier=>'AI'
,p_column_label=>'Sop'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73766772212926750)
,p_db_column_name=>'SOP_ID'
,p_display_order=>330
,p_column_identifier=>'AJ'
,p_column_label=>'Sop Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74114241625456201)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>340
,p_column_identifier=>'AK'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74114330982456202)
,p_db_column_name=>'SALE_POINT_NAME'
,p_display_order=>350
,p_column_identifier=>'AL'
,p_column_label=>'Sale Point Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74114485160456203)
,p_db_column_name=>'EIDS_BAGS'
,p_display_order=>360
,p_column_identifier=>'AM'
,p_column_label=>'Eids Bags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(74136363048485300)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'741364'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCT:CUSTOMER_NAME:ORDER_DATE:PAYMENT_MODE_TYPE:COUNTER_BAGS:BAG_RATE:TOTAL_AMOUNT:APPROVAL_STATUS:'
,p_break_on=>'CUSTOMER_NAME'
,p_break_enabled_on=>'CUSTOMER_NAME'
,p_sum_columns_on_break=>'COUNTER_BAGS:TOTAL_AMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59680518257007551)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>11
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(224973048933974694)
,p_plug_name=>'Sale Point Name Card'
,p_parent_plug_id=>wwv_flow_imp.id(59680518257007551)
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
,p_plug_display_condition_type=>'NEVER'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(224973256188974696)
,p_plug_name=>'Sales Information'
,p_parent_plug_id=>wwv_flow_imp.id(59680518257007551)
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
,p_plug_display_condition_type=>'NEVER'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70968341733519694)
,p_plug_name=>'Customer Credit Ledger test'
,p_region_css_classes=>'js-dialog-size1000x600'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>1000000110
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COUNTER_SALE AS (',
'   SELECT ',
'        PARTY_ID,',
'        CUSTOMER_NAME AS PARTY_NAME,',
'        ORDER_DATE,',
'        SUM(NVL(TOTAL_AMOUNT,0)) AS TOTAL_AMOUNT ,',
'        PRODUCT,',
'        COUNTER_BAGS||''@''||BAG_RATE||'' - ''||REMARKS as REMARKS',
'    FROM',
'        TABLE(AB_SALE_ORDER_PKG.COUNTER_SALE_REPORT(:GV_ORG_ID, :GV_USER_ID))',
'    WHERE',
'           APPROVAL_STATUS = ''Approved'' ',
'       AND PAYMENT_TYPE = 597',
'    GROUP BY',
'        PARTY_ID,',
'        CUSTOMER_NAME,',
'        ORDER_DATE ,',
'         PRODUCT,',
'        REMARKS,',
'          COUNTER_BAGS,',
'        BAG_RATE',
'),',
'',
'',
'COUNTER_SALE_RECOVERY AS (',
'    SELECT',
'        SO.CUSTOMER_ID AS PARTY_ID,',
'        SOD.SOD_DATE AS RECOVERY_DATE,',
'        SUM(NVL(SOD.TOTAL_AMOUNT,0)) AS RECEIVED_AMOUNT ',
'    FROM',
'        AB_SO_ORDER_HEAD SO',
'        JOIN AB_SO_ORDER_DET SOD ',
'            ON SOD.SO_ID = SO.SO_ID ',
'           AND SOD.STATUS = ''Y''',
'    WHERE',
'            SO.STATUS = ''Y''',
'        AND SO.SO_TYPE = ''1007''',
'    GROUP BY',
'        SO.CUSTOMER_ID,',
'        SOD.SOD_DATE ',
'),',
'',
'',
'ALL_TRANSACTIONS AS (',
'   ',
'    SELECT',
'        PARTY_ID,',
'        PARTY_NAME,',
'        ORDER_DATE AS TRANS_DATE, ',
'        TOTAL_AMOUNT AS RECOVERY_AMOUNT,',
'        0 AS RECEIVED_AMOUNT,',
'        PRODUCT,',
'        REMARKS',
'    FROM COUNTER_SALE',
'',
'    UNION ALL',
'',
' ',
'    SELECT',
'        PARTY_ID,',
'        NULL AS PARTY_NAME, ',
'        --(select PARTY_NAME FROM COUNTER_SALE) AS  PARTY_NAME,',
'        RECOVERY_DATE AS TRANS_DATE, ',
'        0 AS RECOVERY_AMOUNT,',
'        RECEIVED_AMOUNT,',
'        NULL AS PRODUCT,',
'        NULL AS  REMARKS',
'    FROM COUNTER_SALE_RECOVERY',
')',
'',
'',
'SELECT',
'    PARTY_ID,',
'    PRODUCT,',
'    REMARKS,',
'    MAX(PARTY_NAME) OVER (PARTITION BY PARTY_ID) AS PARTY_NAME, ',
'    TRANS_DATE,',
'    RECOVERY_AMOUNT,',
'    RECEIVED_AMOUNT,',
'    SUM(RECOVERY_AMOUNT - RECEIVED_AMOUNT) ',
'        OVER (ORDER BY TRANS_DATE',
'              ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS RUNNING_BALANCE',
'FROM',
'    ALL_TRANSACTIONS',
'WHERE ',
'    PARTY_ID = :P1133_CUSTOMER_ID',
'     AND TRUNC(TRANS_DATE) BETWEEN NVL(TO_DATE(:P1133_FROM_DATE, ''DD-MON-YYYY''), TRUNC(TRANS_DATE))',
'             AND  NVL(TO_DATE(:P1133_TO_DATE, ''DD-MON-YYYY''), TRUNC(TRANS_DATE))',
'ORDER BY ',
'    TRANS_DATE',
'',
'',
'-- WITH COUNTER_SALE AS (',
'--     SELECT ',
'--         PARTY_ID,',
'--         CUSTOMER_NAME AS PARTY_NAME,',
'--         NVL(TOTAL_AMOUNT,0) AS TOTAL_AMOUNT,',
'--         ORDER_DATE AS ORDER_DATE',
'--     FROM',
'--         TABLE(AB_SALE_ORDER_PKG.COUNTER_SALE_REPORT(:GV_ORG_ID, :GV_USER_ID))',
'--     WHERE',
'--            APPROVAL_STATUS = ''Approved'' ',
'--        AND PAYMENT_TYPE = 597',
'--     -- GROUP BY',
'--     --     PARTY_ID,',
'--     --     CUSTOMER_NAME, NVL(TOTAL_AMOUNT,0)',
'-- ),',
'',
'-- COUNTER_SALE_RECOVERY AS (',
'--     SELECT',
'--         SO.CUSTOMER_ID AS PARTY_ID,',
'--         SOD.SOD_DATE AS RECOVERY_DATE,',
'--         NVL(SOD.TOTAL_AMOUNT,0) AS RECEIVED_AMOUNT',
'--     FROM',
'--         AB_SO_ORDER_HEAD SO',
'--         JOIN AB_SO_ORDER_DET SOD ',
'--             ON SOD.SO_ID = SO.SO_ID ',
'--            AND SOD.STATUS = ''Y''',
'--     WHERE',
'--             SO.STATUS = ''Y''',
'--         AND SO.SO_TYPE = ''1007''',
'--       --  AND SO.CUSTOMER_ID = :P135_PARTY_ID',
'-- )',
'',
'-- SELECT',
'-- DISTINCT',
'--     PARTY_ID,',
'--     PARTY_NAME,',
'--     TRANS_DATE,',
'--     RECOVERY_AMOUNT,',
'--     RECEIVED_AMOUNT,',
'--     SUM(RECOVERY_AMOUNT - RECEIVED_AMOUNT)',
'--         OVER (ORDER BY TRANS_DATE',
'--               ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) RUNNING_BALANCE',
'-- FROM',
'-- (',
'--     SELECT',
'--         CS.PARTY_ID,',
'--         CS.PARTY_NAME,',
'--          CS.ORDER_DATE AS TRANS_DATE, ',
'--         --TO_DATE(CS.ORDER_DATE,''DD-MON-YYYY'') AS TRANS_DATE,',
'--         CS.TOTAL_AMOUNT AS RECOVERY_AMOUNT,',
'--         0 AS RECEIVED_AMOUNT',
'--     FROM COUNTER_SALE CS',
'',
'--     UNION ALL',
'',
'--     SELECT',
'--         CSR.PARTY_ID,',
'--         CS.PARTY_NAME,',
'--         CSR.RECOVERY_DATE AS TRANS_DATE, ',
'--       -- TO_DATE(TO_CHAR(CSR.RECOVERY_DATE,''DD-MON-YYYY''),''DD-MON-YYYY'') AS TRANS_DATE,',
'--         0 AS RECOVERY_AMOUNT,',
'--         CSR.RECEIVED_AMOUNT',
'--     FROM COUNTER_SALE_RECOVERY CSR',
'--     JOIN COUNTER_SALE CS ',
'--         ON CS.PARTY_ID = CSR.PARTY_ID',
'-- )',
'',
'-- WHERE PARTY_ID = :P1133_CUSTOMER_ID',
'-- ORDER BY TRANS_DATE;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1133_CUSTOMER_ID,P1133_FROM_DATE,P1133_TO_DATE'
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
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3 class="heading-green">',
'   Customer Credit Ledger',
'</h3>',
'<hr class="gradient-line-green">'))
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(70968416060519695)
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
,p_internal_uid=>70968416060519695
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70968469022519696)
,p_db_column_name=>'PARTY_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Party Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70968599295519697)
,p_db_column_name=>'PARTY_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Party Name'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70968709202519698)
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
 p_id=>wwv_flow_imp.id(70968767994519699)
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
 p_id=>wwv_flow_imp.id(70968932135519700)
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
 p_id=>wwv_flow_imp.id(73210264399855551)
,p_db_column_name=>'RUNNING_BALANCE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Balance'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73210364795855552)
,p_db_column_name=>'PRODUCT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73210519849855553)
,p_db_column_name=>'REMARKS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(73213752019855585)
,p_name=>'IMAGE'
,p_region_name=>'IMAGE'
,p_template=>1660973136434625155
,p_display_sequence=>1000000100
,p_region_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'       --DOC_ID,',
'        DOC_TYPE,',
'    CASE',
'        WHEN DOCUMENTS_TYPE IN (''xlsx'', ''docx'') THEN',
'    ''<a href="f?p='' || :APP_ID || '':999:'' || :APP_SESSION || ',
'    ''::::P999_DOC_ID,P999_DOC_TYPE:'' || DOC_ID || '','' ||  DOCUMENTS_TYPE || ',
'    ''">Download</a>''',
'    ELSE',
'    ''<a href="https://AKB.FAISALMOVERS.CO:8080/i/AKB/'' || DOC_ID || DOCUMENTS_TYPE || ''" target="_blank">Download</a>''',
'    END AS DOWNLOAD_LINK,',
'    ''<img src="https://AKB.FAISALMOVERS.CO:8080/i/AKB/'' || DOC_ID || DOCUMENTS_TYPE || ''" width="100px" height="100px" />'' AS IMAGE,',
'    To_char(Created_on,''DD-MON-YYYY'')  as Img_Upload_Date',
'FROM',
'       AB_DOCUMENT_RECORDS',
'WHERE ',
'    DOC_TYPE_ID=:P1133_PARTY_IDS',
'    AND STATUS = ''Y''',
'    AND DOC_TYPE = ''COUNTER SALE ADD AMOUNT''',
'    AND DOC_ID NOT IN (23098, 23099)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1133_PARTY_IDS'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
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
 p_id=>wwv_flow_imp.id(42238662141661569)
,p_query_column_id=>1
,p_column_alias=>'DOC_TYPE'
,p_column_display_sequence=>20
,p_column_heading=>'Doc Type'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(42239028336661569)
,p_query_column_id=>2
,p_column_alias=>'DOWNLOAD_LINK'
,p_column_display_sequence=>10
,p_column_heading=>'Download Link'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(42239423626661569)
,p_query_column_id=>3
,p_column_alias=>'IMAGE'
,p_column_display_sequence=>40
,p_column_heading=>'Image'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(57267704993080011)
,p_query_column_id=>4
,p_column_alias=>'IMG_UPLOAD_DATE'
,p_column_display_sequence=>50
,p_column_heading=>'Img Upload Date'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(224970638538974670)
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
'              AND TRUNC(CS.ORDER_DATE) BETWEEN NVL(TO_DATE(:P1133_FROM_DATE, ''DD-MON-YYYY''), TRUNC(CS.ORDER_DATE))',
'             AND  NVL(TO_DATE(:P1133_TO_DATE, ''DD-MON-YYYY''), TRUNC(CS.ORDER_DATE))',
'             AND  (:GV_USER_ID = CS.EMP_ID OR :GV_DEPT_ID IN (9,4))         ',
'        ORDER BY',
'             CS.SO_ID DESC ',
'                   ',
'                   ',
'          '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1133_FROM_DATE,P1133_TO_DATE'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(224970695133974671)
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
,p_internal_uid=>224970695133974671
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(224970773717974672)
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
 p_id=>wwv_flow_imp.id(224970888769974673)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Customer Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(224970985698974674)
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
 p_id=>wwv_flow_imp.id(224971083717974675)
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
 p_id=>wwv_flow_imp.id(224971204625974676)
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
 p_id=>wwv_flow_imp.id(224971305029974677)
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
 p_id=>wwv_flow_imp.id(224971444073974678)
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
 p_id=>wwv_flow_imp.id(224971470915974679)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Order Date'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(224971621576974680)
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
 p_id=>wwv_flow_imp.id(224971698181974681)
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
 p_id=>wwv_flow_imp.id(224971810710974682)
,p_db_column_name=>'PAYMENT_NAME'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Payment'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(224971884414974683)
,p_db_column_name=>'PAYMENT_TERM'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Payment Term'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(224972057378974684)
,p_db_column_name=>'CUSTOMER_TYPE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Customer Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(224972078919974685)
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
 p_id=>wwv_flow_imp.id(224972244916974686)
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
 p_id=>wwv_flow_imp.id(224972260104974687)
,p_db_column_name=>'PRODUCT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(224972368045974688)
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
 p_id=>wwv_flow_imp.id(224972478315974689)
,p_db_column_name=>'WAREHOUSE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Warehouse'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(224972643628974690)
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
 p_id=>wwv_flow_imp.id(224972707309974691)
,p_db_column_name=>'ADD_BY'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Add By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(224972831220974692)
,p_db_column_name=>'APPROVAL_BY'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Approval By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(473351027301921854)
,p_plug_name=>'SALE ITEMS '
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_region_attributes=>'style="background-color:#ececec;"'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>31
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3 class="heading-green">Counter Sale Credit Recovery</h3>',
'<hr class="gradient-line-green">'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42244312719661573)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(56657204275861055)
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
 p_id=>wwv_flow_imp.id(42281491548661603)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(56141439371788494)
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
 p_id=>wwv_flow_imp.id(42243523682661572)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(58345065081469687)
,p_button_name=>'Print_ledger'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print Ledger'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-wallet'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42258098885661584)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(467606449347709784)
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
 p_id=>wwv_flow_imp.id(42266732472661591)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61927869084749297)
,p_button_name=>'PRINT_COUNTER_PARTY_BALANCE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print Counter Party Balance'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42257231628661584)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(467606449347709784)
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
 p_id=>wwv_flow_imp.id(42270801881661595)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(56137953440788459)
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
 p_id=>wwv_flow_imp.id(42257685448661584)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(467606449347709784)
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
 p_id=>wwv_flow_imp.id(56204294132788549)
,p_name=>'P1133_PARTY_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(56141439371788494)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56682893236861079)
,p_name=>'P1133_CSO_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(56657204275861055)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56682952219861080)
,p_name=>'P1133_ORDER_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(56657204275861055)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56683047865861081)
,p_name=>'P1133_CUSTOMER_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(56657204275861055)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56683107318861082)
,p_name=>'P1133_PRODUCT_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(56657204275861055)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56683266018861083)
,p_name=>'P1133_BAGS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(56657204275861055)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56683321363861084)
,p_name=>'P1133_TRANSACTION_TYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(56657204275861055)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57782551605421617)
,p_name=>'P1133_RECOVERY_AMOUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(56141439371788494)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58396866672469728)
,p_name=>'P1133_CUSTOMER_IDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(56137953440788459)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59915224897092447)
,p_name=>'P1133_SALE_BAGS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(56141439371788494)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59915358910092448)
,p_name=>'P1133_RECEIVED_AMOUNT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(56141439371788494)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59915422843092449)
,p_name=>'P1133_REMAINING_RECOVERY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(56141439371788494)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60917606691080547)
,p_name=>'P1133_CUSTOMER_ID'
,p_item_sequence=>1000000070
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64335557653466026)
,p_name=>'P1133_SALE_POINTS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(473351027301921854)
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
'        AND  ORG_ID = :GV_ORG_ID',
'     ',
'       ',
'        ORDER BY',
'                    SR_ID DESC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Sale Points--'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>1609121967514267634
,p_item_css_classes=>'large-input'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_imp.id(73265776372855629)
,p_name=>'P1133_PARTY_IDS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(56137953440788459)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74114766972456206)
,p_name=>'P1133_CUSTOMER_IID_PENDING'
,p_item_sequence=>1000000080
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76701880881527925)
,p_name=>'P1133_COUNTER_GATE_PASS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(467606449347709784)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(225042716423974756)
,p_name=>'P1133_SALE_POINT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(224973048933974694)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(225043630157974758)
,p_name=>'P1133_TOTAL_BAGS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(224973256188974696)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(225043738505974759)
,p_name=>'P1133_TOTAL_AMOUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(224973256188974696)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(473421915923921918)
,p_name=>'P1133_FROM_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(473351027301921854)
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
,p_display_when_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(473422001743921919)
,p_name=>'P1133_TO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(473351027301921854)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SELECT TO_CHAR(SYSDATE , ''DD-MON-YYYY'') FROM DUAL;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'<B>To Date</B>'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(42303430247661615)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1133_SALE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42303911285661615)
,p_event_id=>wwv_flow_imp.id(42303430247661615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'GV_SALE_ID'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'apex_util.set_session_state(''GV_SALE_ID'',:P1133_SALE_ID);',
'return (103);',
'end;'))
,p_attribute_07=>'P1133_SALE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42304477941661615)
,p_event_id=>wwv_flow_imp.id(42303430247661615)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:window.open("f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=SALE_ORDER","_blank");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42296815606661613)
,p_name=>'Refresh the Sale Order'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1133_FROM_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42297396179661613)
,p_event_id=>wwv_flow_imp.id(42296815606661613)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(467606449347709784)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42297893035661613)
,p_event_id=>wwv_flow_imp.id(42296815606661613)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56137953440788459)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42298362037661614)
,p_event_id=>wwv_flow_imp.id(42296815606661613)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(61927869084749297)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42299230023661614)
,p_name=>'refresh the report'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1133_TO_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42299772533661614)
,p_event_id=>wwv_flow_imp.id(42299230023661614)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(467606449347709784)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42300299291661614)
,p_event_id=>wwv_flow_imp.id(42299230023661614)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56137953440788459)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42300710667661614)
,p_event_id=>wwv_flow_imp.id(42299230023661614)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(61927869084749297)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42301627996661614)
,p_name=>'Refresh the sale order report'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1133_FREIGHT_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42302168287661615)
,p_event_id=>wwv_flow_imp.id(42301627996661614)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(467606449347709784)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42302569789661615)
,p_name=>'New_2'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1133_APPROVAL_STATUS'
,p_condition_element=>'P1133_APPROVAL_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42303077610661615)
,p_event_id=>wwv_flow_imp.id(42302569789661615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(467606449347709784)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42291870313661611)
,p_name=>'New_3'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1133_APPROVAL_STATUS'
,p_condition_element=>'P1133_APPROVAL_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42292310104661611)
,p_event_id=>wwv_flow_imp.id(42291870313661611)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(467606449347709784)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42292780799661612)
,p_name=>'New_1'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1133_APPROVAL_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42293296804661612)
,p_event_id=>wwv_flow_imp.id(42292780799661612)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(467606449347709784)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42293648695661612)
,p_name=>'Fetch Data User Wise  and Sale Point Wise'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42294165596661612)
,p_event_id=>wwv_flow_imp.id(42293648695661612)
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
 p_id=>wwv_flow_imp.id(42294516142661612)
,p_name=>'New_6'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(42257231628661584)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42295099450661612)
,p_event_id=>wwv_flow_imp.id(42294516142661612)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:window.open("f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=COUNTER_SALES","_blank");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42295404739661613)
,p_name=>'fetch the record from bag aamount'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1133_FROM_DATE,P1133_TO_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42295929407661613)
,p_event_id=>wwv_flow_imp.id(42295404739661613)
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
'            AND TRUNC(CS.ORDER_DATE) BETWEEN NVL(TO_DATE(:P1133_FROM_DATE, ''DD-MON-YYYY''), TRUNC(CS.ORDER_DATE))',
'              AND NVL(TO_DATE(:P1133_TO_DATE, ''DD-MON-YYYY''), TRUNC(CS.ORDER_DATE));',
'',
'    -- ASSIGN TO PAGE ITEMS',
'    :P1133_TOTAL_BAGS  := V_TOTAL_BAGS;',
'    :P1133_TOTAL_AMOUNT := V_TOTAL_AMOUNT;',
'END;',
''))
,p_attribute_02=>'P1133_FROM_DATE,P1133_TO_DATE'
,p_attribute_03=>'P1133_TOTAL_BAGS,P1133_RECOVERY_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42296456186661613)
,p_event_id=>wwv_flow_imp.id(42295404739661613)
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
'  var pending  = formatNumber(apex.item(''P1133_TOTAL_BAGS'').getValue(), 0); ',
'  var approved = formatNumber(apex.item(''P1133_TOTAL_AMOUNT'').getValue(), 2); ',
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
 p_id=>wwv_flow_imp.id(42314597675661618)
,p_name=>'New_4'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(42244312719661573)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42315074931661619)
,p_event_id=>wwv_flow_imp.id(42314597675661618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE ',
'           AB_SO_ORDER_HEAD',
'    SET PAYMENT_TYPE = :P1133_TRANSACTION_TYPE',
'    WHERE ',
'                  SO_ID = :P1133_CSO_ID;',
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
,p_attribute_02=>'P1133_CSO_ID,P1133_TRANSACTION_TYPE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42315502767661619)
,p_event_id=>wwv_flow_imp.id(42314597675661618)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56657204275861055)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42309868926661617)
,p_name=>'Update & Add Amount'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(42281491548661603)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42311349555661617)
,p_event_id=>wwv_flow_imp.id(42309868926661617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Not Add Value without Total Received'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var itemValue = apex.item("P1133_ADD_AMOUNT").getValue();',
'if (itemValue == null || itemValue.trim() === '''') {',
'    apex.message.alert("Select Add Amount First!");    ',
'    return false;',
'} else {',
'    return true;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42310364637661617)
,p_event_id=>wwv_flow_imp.id(42309868926661617)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure to this amount is add in this report!'
,p_attribute_02=>'Add Amount?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42312307954661618)
,p_event_id=>wwv_flow_imp.id(42309868926661617)
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
'    WHERE SOD_ID = :P1133_SOD_ID;',
'',
'    INSERT INTO AB_SO_ORDER_HEAD (',
'        SO_TYPE, CUSTOMER_ID, STATUS, ORDER_DATE',
'    )',
'    VALUES (',
'        ''1007'', :P1133_CUSTOMER_ID, ''Y'', :P1133_RECEIVING_DATE',
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
'        :P1133_ADD_TOTAL_AMOUNT,             ',
'        ''Y'',',
'        V_SO_ID,',
'        V_SOD_ID',
'    )',
'    RETURNING SOD_ID INTO V_NEW_SOD_ID;',
'',
'END;',
''))
,p_attribute_02=>'P1133_CUSTOMER_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42310818704661617)
,p_event_id=>wwv_flow_imp.id(42309868926661617)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56137953440788459)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42311879963661618)
,p_event_id=>wwv_flow_imp.id(42309868926661617)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56141439371788494)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42316888671661619)
,p_name=>'Set Value (add amount in other amount)'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1133_PREVIOUSE_ADD_AMOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42317318314661619)
,p_event_id=>wwv_flow_imp.id(42316888671661619)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1133_ADD_TOTAL_AMOUNT'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'NVL(:P1133_ADD_AMOUNT,0) + NVL(to_number(replace(:P1133_PREVIOUSE_ADD_AMOUNT, '','', '''')),0)'
,p_attribute_07=>'P1133_ADD_AMOUNT,P1133_PREVIOUSE_ADD_AMOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42315961156661619)
,p_name=>'New_5'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1133_CUSTOMER_IDS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42316448763661619)
,p_event_id=>wwv_flow_imp.id(42315961156661619)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58341682522469653)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42308951274661617)
,p_name=>'New_7'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1133_ADD_AMOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42309444152661617)
,p_event_id=>wwv_flow_imp.id(42308951274661617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1133_ADD_TOTAL_AMOUNT'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'NVL(:P1133_ADD_AMOUNT,0) + NVL(to_number(replace(:P1133_PREVIOUSE_ADD_AMOUNT, '','', '''')),0)'
,p_attribute_07=>'P1133_ADD_AMOUNT,P1133_PREVIOUSE_ADD_AMOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42313606335661618)
,p_name=>'New_8'
,p_event_sequence=>190
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(56140818785788488)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42314116756661618)
,p_event_id=>wwv_flow_imp.id(42313606335661618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(224973256188974696)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42312791844661618)
,p_name=>'New_9'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1133_CUSTOMER_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42313285084661618)
,p_event_id=>wwv_flow_imp.id(42312791844661618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58345065081469687)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74114831013456207)
,p_event_id=>wwv_flow_imp.id(42312791844661618)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79891438562502164)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42317715461661619)
,p_name=>'New_10'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1133_SALE_POINTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42319752868661620)
,p_event_id=>wwv_flow_imp.id(42317715461661619)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56137953440788459)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42320206028661620)
,p_event_id=>wwv_flow_imp.id(42317715461661619)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66010826410511802)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(102978045510829525)
,p_event_id=>wwv_flow_imp.id(42317715461661619)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(75608628000131442)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42304859972661615)
,p_name=>'New_11'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(42258098885661584)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42305313157661616)
,p_event_id=>wwv_flow_imp.id(42304859972661615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:window.open("f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=CS_MASTER_SHEET","_blank");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42320679114661621)
,p_name=>'New_12'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(42266732472661591)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42321138551661621)
,p_event_id=>wwv_flow_imp.id(42320679114661621)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:window.open("f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=Counter%20Sale%20Party%20Balance","_blank");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42305761733661616)
,p_name=>'New_13'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(42243523682661572)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42306272893661616)
,p_event_id=>wwv_flow_imp.id(42305761733661616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:window.open("f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=CUSTOMER%20CREDIT%20LEDGER","_blank");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42306686593661616)
,p_name=>'New_14'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1133_PARTY_IDS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42307119117661616)
,p_event_id=>wwv_flow_imp.id(42306686593661616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73213752019855585)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42307522036661616)
,p_name=>'New_15'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1133_COUNTER_GATE_PASS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42308068504661616)
,p_event_id=>wwv_flow_imp.id(42307522036661616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P1133_COUNTER_GATE_PASS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42308565355661617)
,p_event_id=>wwv_flow_imp.id(42307522036661616)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:window.open("f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=Counter%20gate%20pass","_blank");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50839912870591018)
,p_name=>'New_16'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1133_SALE_POINTS'
,p_condition_element=>'P1133_SALE_POINTS'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50840048730591019)
,p_event_id=>wwv_flow_imp.id(50839912870591018)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(42270801881661595)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50840192206591020)
,p_event_id=>wwv_flow_imp.id(50839912870591018)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(42270801881661595)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42291026843661611)
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
'        INITCAP(SALE_POINT)  INTO :P1133_SALE_POINT',
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
,p_internal_uid=>42291026843661611
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42291482531661611)
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
'            AND TRUNC(CS.ORDER_DATE) BETWEEN NVL(TO_DATE(:P1133_FROM_DATE, ''DD-MON-YYYY''), TRUNC(CS.ORDER_DATE))',
'            AND NVL(TO_DATE(:P1133_TO_DATE, ''DD-MON-YYYY''), TRUNC(CS.ORDER_DATE));',
'',
'    -- ASSIGN TO PAGE ITEMS',
'    :P1133_TOTAL_BAGS  := V_TOTAL_BAGS;',
'    :P1133_TOTAL_AMOUNT := V_TOTAL_AMOUNT;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>42291482531661611
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42290659635661610)
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
'                -- LISTAGG(CSP.SR_IDS, '','') WITHIN GROUP (ORDER BY CSP.SR_IDS) AS SR_IDS,',
'                --  MAX(ASP.SALE_POINT_ID),',
'                -- MAX(COA_ID) COA_ID',
'             ',
'              LISTAGG(CSP.SR_ID, '','') WITHIN GROUP (ORDER BY CSP.SR_ID),',
'                LISTAGG(ASP.SALE_POINT_ID, '','') WITHIN GROUP (ORDER BY ASP.SALE_POINT_ID),',
'                LISTAGG(COA_ID, '','') WITHIN GROUP (ORDER BY COA_ID)',
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
'        AND ASP.SALE_OFFER_ID = :GV_USER_ID',
'       ;',
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
,p_internal_uid=>42290659635661610
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
