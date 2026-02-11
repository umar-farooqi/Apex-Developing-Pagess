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
--     PAGE: 135
--   Manifest End
--   Version:         24.2.12
--   Instance ID:     706401905951048
--

begin
null;
end;
/
prompt --application/pages/delete_00135
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>135);
end;
/
prompt --application/pages/page_00135
begin
wwv_flow_imp_page.create_page(
 p_id=>135
,p_name=>'Counter Sale Party Recovery '
,p_alias=>'COUNTER-SALE-PARTY-RECOVERY'
,p_page_mode=>'MODAL'
,p_step_title=>'Counter Sale Party Recovery '
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Container for all status cards */',
'.status-cards {',
'  display: flex;',
'  gap: 16px;           ',
'  padding: 15px;       ',
'  flex-wrap: wrap;',
'  justify-content: center;',
'}',
'',
'/* Individual status card */',
'.status-card {',
'  flex: 1;',
'  min-width: 160px;',
'  max-width: 240px;',
'  text-align: center;',
'  padding: 18px 14px;',
'  border-radius: 14px;',
'  box-shadow: 0 6px 16px rgba(0,0,0,0.12);',
'  display: flex;',
'  flex-direction: column;',
'  align-items: center;',
'  justify-content: center;',
'  transition: transform 0.3s ease, box-shadow 0.3s ease;',
'  cursor: default;',
'}',
'',
'.status-card:hover {',
'  transform: translateY(-5px);',
'  box-shadow: 0 12px 26px rgba(0,0,0,0.16);',
'}',
'',
'/* Icon inside the card */',
'.status-icon {',
'  width: 50px;',
'  height: 50px;',
'  margin-bottom: 12px;',
'  border-radius: 50%;',
'  padding: 6px;',
'  background: rgba(255,255,255,0.2);',
'  box-shadow: 0 3px 10px rgba(0,0,0,0.08);',
'  transition: transform 0.3s ease, box-shadow 0.3s ease;',
'}',
'',
'.status-card:hover .status-icon {',
'  transform: scale(1.08);',
'  box-shadow: 0 5px 16px rgba(0,0,0,0.14);',
'}',
'',
'/* Number inside the card */',
'.count {',
'  font-size: 22px;',
'  font-weight: 700;',
'  color: #fff;',
'  margin-bottom: 3px;',
'}',
'',
'/* Label below the number */',
'.label {',
'  font-size: 14px;',
'  font-weight: 500;',
'  color: #f0f0f0;',
'}',
'',
'.running-balance {',
'  background: linear-gradient(135deg, #5CB85C, #3D8B3D);',
'  color: #ffffff;',
'}',
'/* Gradient for Received Amount card */',
'.received-amount {',
'  background: linear-gradient(135deg, #5DADE2, #2E86C1);',
'  color: #ffffff;',
'}',
'',
'  .heading-green {',
'        color: Green;',
'        text-align: left;',
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
'body.t-DialogBody .t-Body-content {',
'    background-color: #ececec;  /* Light Gray */',
'    font-family: ''Segoe UI'', Tahoma, Geneva, Verdana, sans-serif;',
'}',
'.heading-green {',
'        color: rgb(255, 255, 255);',
'        text-align: left;',
'        margin: 0;',
'        padding: 1px 0;',
'}',
'.gradient-line-green {',
'        display: block;',
'        border: 0;',
'        height: 2px; ',
'        border-radius: 3px; ',
'        background: linear-gradient(to right, #dddddd, #ffffff, #dddddd); ',
'        box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1); ',
'        margin: 10px auto; ',
'        max-width: 100%; ',
'}',
'.t-Body-content {',
'    background-color: #ececec;',
'    font-family: ''Segoe UI'', Tahoma, Geneva, Verdana, sans-serif;',
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
'#MOP td {',
'    font-size: 12px; ',
'    padding: 3px;  ',
'    border: 1px solid #ddd;  ',
'    text-align: left;  ',
'    background-color: #f9f9f9; ',
'}',
'#MOP td:first-child {',
'    width: 100px; ',
'}',
'#MOP th {',
'    background-color: #36414f;',
'    font-weight: bold;',
'    padding: 3px;',
'    text-align: left;',
'    border: 1px solid #ddd;',
'    white-space: nowrap;',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'}',
'#MOP th span {',
'    color: white !important;  ',
'}',
'#MOP th a {',
'    color: white !important;  ',
'}',
'#MOP th:not(:first-child), #MOP td:not(:first-child) {',
'    width: 200px;  ',
'    word-wrap: break-word;',
'}',
'#MOP td:hover {',
'    background-color: #f1f1f1;',
'    cursor: pointer;',
'}',
'#MOP td, #MOP th {',
'    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);',
'}',
'@media (max-width: 768px) {',
'    #MOP td, #MOP th {',
'        width: 120px;',
'        padding: 8px;',
'    }',
'}',
'/*-------------------------Grid css code------------------------------*/',
'#VOU {',
'    width: 100%;',
'    border-collapse: separate;',
'    border-spacing: 0;',
'    font-family: ''Roboto'', sans-serif;',
'    font-size: 16px;',
'    background-color: rgba(255, 255, 255, 0); ',
'    border-radius: 12px;',
'    box-shadow: 0 20px 60px rgba(0, 0, 0, 0.1);',
'    transition: all 0.4s ease-in-out;',
'    overflow: hidden;',
'}',
'#VOU th {',
'    background: linear-gradient(145deg, #36414f, #484f59);',
'    color: #fff;',
'    padding: 16px 25px;',
'    text-align: center;',
'    font-weight: 600;',
'    text-transform: capitalize;',
'    letter-spacing: 1px;',
'    border-bottom: 3px solid #36414f;',
'    font-size: 14px;',
'    border-radius: 10px 10px 0 0;',
'    transition: none;',
'    box-shadow: none;',
'}',
'#VOU td {',
'    background-color: rgba(249, 249, 249, 0.8); ',
'    color: #333;',
'    padding:  16px 12px;',
'    text-align: center;',
'    font-size: 14px;',
'    border-bottom: 2px solid #ddd;',
'    border-radius: 8px;',
'    transition: none; ',
'    box-shadow: none; ',
'}',
'#VOU td:hover {',
'    background-color: rgba(249, 249, 249, 0.8);',
'    transform: none;',
'    opacity: 1;',
'    box-shadow: none; ',
'    cursor: default;',
'}',
'#VOU tr:nth-child(even) td {',
'    background-color: rgba(241, 241, 241, 0.8); ',
'}',
'#VOU tr.active td {',
'    background-color: rgba(165, 214, 167, 0.8);',
'    color: #1b5e20;',
'}',
'#VOU .apex-item-text {',
'    border: 2px solid #36414f;',
'    padding: 14px;',
'    border-radius: 8px;',
'    background-color: #fff;',
'    box-shadow: inset 3px 3px 8px rgba(0, 0, 0, 0.1), inset -3px -3px 8px rgba(255, 255, 255, 0.7);',
'    font-size: 16px;',
'    transition: all 0.3s ease-in-out;',
'}',
'#VOU td.active {',
'    background-color: #dcedc8;',
'    box-shadow: inset 3px 3px 8px rgba(0, 0, 0, 0.1), inset -3px -3px 8px rgba(255, 255, 255, 0.7);',
'}',
'#VOU tr:hover {',
'    background-color: rgba(200, 230, 201, 0.8);',
'    transform: none; ',
'    opacity: 1;',
'    transition: none; ',
'}',
'@media (max-width: 768px) {',
'    #LO th, #LO td {',
'        padding: 12px;',
'        font-size: 14px;',
'    }',
'#VOU .apex-item-text {',
'        padding: 10px;',
'        font-size: 12px;',
'}',
'#VOU th {',
'        font-size: 15px;',
'    }',
'}',
'#VOU td, #VOU th {',
'    border-radius: 10px;',
'    box-shadow: inset 3px 3px 10px rgba(0, 0, 0, 0.05), inset -3px -3px 10px rgba(255, 255, 255, 0.7);',
'}',
'#VOU th, #VOU td {',
'    text-align: center;',
'    text-transform: capitalize; ',
'}',
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
''))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:t-PageBody--noContentPadding'
,p_dialog_height=>'700'
,p_dialog_width=>'1350'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18634595104426526)
,p_plug_name=>'Counter Sale Party Recovery '
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(2250630693184645)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_display_condition_type=>'NEVER'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="shipment-header-decent">',
'    <h3>Counter Sale Recovery</h3>',
'    <div class="road-decent"></div>',
unistr('    <div class="truck-decent">\D83D\DED2\D83C\DFC3\D83C\DFFB\200D\2642\FE0F</div>'),
'</div>',
''))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(381457138443793008)
,p_plug_name=>'Details'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>1000000060
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(207531056528344509)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(381457138443793008)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18634178301426522)
,p_plug_name=>'Received Amount'
,p_parent_plug_id=>wwv_flow_imp.id(207531056528344509)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="status-cards">',
'  <!-- Received Amount Card -->',
'  <div class="status-card received-amount">',
'    <img src="#APP_FILES#CREDIT AMOUNT.png" class="status-icon" alt="Received Amount">',
'    <div class="count">',
'      <span id="card_received_amount">0.0</span>',
'    </div>',
'    <div class="label">Received Amount</div>',
'  </div>',
'</div>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(202517537432844115)
,p_plug_name=>'Sale Order Detail'
,p_parent_plug_id=>wwv_flow_imp.id(207531056528344509)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_html CLOB;',
'BEGIN',
'    FOR r IN (',
'        SELECT ',
'            PARTY_ID,',
'            CUSTOMER_NAME,',
'            NVL(SUM(COUNTER_BAGS),0) COUNTER_BAGS,',
'            NVL(SUM(TOTAL_AMOUNT),0) TOTAL_AMOUNT,',
'            ''Add Receiving'' AS ADD_AMOUNT',
'        FROM TABLE(AB_SALE_ORDER_PKG.COUNTER_SALE_REPORT(:GV_ORG_ID, :GV_USER_ID))',
'        WHERE APPROVAL_STATUS = ''Approved''',
'          AND PARTY_ID = :P135_PARTY_ID',
'         AND  PAYMENT_TYPE = 597',
'        GROUP BY PARTY_ID, CUSTOMER_NAME',
'    ) LOOP',
'',
'        l_html := ',
'        ''<style>',
'        .voucher-card{',
'          max-width:760px;',
'          margin:24px auto;',
'          background:#fff;',
'          border-radius:22px;',
'          border:1px solid #e2e8f0;',
'          box-shadow:0 10px 24px rgba(0,0,0,.08);',
'          font-family:Segoe UI,Arial;',
'          overflow:hidden;',
'        }',
'        .v-header{',
'          background:#1e293b;',
'          color:#fff;',
'          padding:18px 22px;',
'          display:flex;',
'          justify-content:space-between;',
'          align-items:center;',
'        }',
'        .v-header h2{margin:0;font-size:20px}',
'        .v-body{padding:18px 22px;background:#f8fafc}',
'        .row{',
'          margin-bottom:10px;',
'          font-size:13px;',
'          font-weight:600;',
'          color:#334155;',
'        }',
'        .amounts{',
'          display:grid;',
'          grid-template-columns:repeat(2,1fr);',
'          gap:16px;',
'          margin-top:16px;',
'        }',
'        .box{',
'          padding:16px;',
'          border-radius:16px;',
'          text-align:center;',
'          color:#fff;',
'          font-weight:700;',
'        }',
'        .bags{background:linear-gradient(135deg,#2563eb,#3b82f6)}',
'        .amt{background:linear-gradient(135deg,#16a34a,#22c55e)}',
'        .box span{font-size:12px;opacity:.85}',
'        .box h3{margin:6px 0 0;font-size:20px}',
'        .v-footer{',
'          padding:12px 22px;',
'          font-size:12px;',
'          font-weight:600;',
'          border-top:1px dashed #e2e8f0;',
'          color:#475569;',
'        }',
'        </style>'' ||',
'',
'        ''<div class="voucher-card">'' ||',
'',
'            ''<div class="v-header">'' ||',
'                ''<h2>Customer Counter Sale Summary</h2>'' ||',
'                ''<div>''|| r.ADD_AMOUNT ||''</div>'' ||',
'            ''</div>'' ||',
'',
'            ''<div class="v-body">'' ||',
'',
'                ''<div class="row"><strong>Customer:</strong> ''|| r.CUSTOMER_NAME ||''</div>'' ||',
'                ---''<div class="row"><strong>Party ID:</strong> ''|| r.PARTY_ID ||''</div>'' ||',
'',
'                ''<div class="amounts">'' ||',
'',
'                    ''<div class="box bags">',
'                        <span>Counter Bags</span>',
'                        <h3>''|| r.COUNTER_BAGS ||''</h3>',
'                     </div>'' ||',
'',
'                    ''<div class="box amt">',
'                        <span>Recovery Amount</span>',
'                        <h3>''|| TO_CHAR(r.TOTAL_AMOUNT,''999G999G999D00'') ||''</h3>',
'                     </div>'' ||',
'',
'                ''</div>'' ||',
'',
'            ''</div>'' ||',
'',
'',
'        ''</div>'';',
'',
'        htp.p(l_html);',
'',
'    END LOOP;',
'END;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(207531580912344514)
,p_plug_name=>'Remaining Recovery'
,p_parent_plug_id=>wwv_flow_imp.id(207531056528344509)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="status-cards">',
'  <!-- Remaining Balance Card -->',
'  <div class="status-card running-balance">',
'    <img src="#APP_FILES#icons8-sack-96.png" class="status-icon" alt="Remaining Balance">',
'    <div class="count">',
'      <span id="card_remaining_balance">0.00</span>',
'    </div>',
'    <div class="label">Remaining Balance</div>',
'  </div>',
'</div>',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(381457337899793010)
,p_plug_name=>'Scedule Payment'
,p_parent_plug_id=>wwv_flow_imp.id(381457138443793008)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_region_attributes=>'style="background-color:#36414f;"'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(382564034926519370)
,p_plug_name=>'Payment Scdedule Collection'
,p_region_name=>'MOP'
,p_parent_plug_id=>wwv_flow_imp.id(381457337899793010)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:#36414f;"'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'        SELECT ',
'            ''remove'' AS remove, ',
'            seq_id,',
'            c001 AS CUSTOMER_ID,',
'            c002  as RECEIVED_DATE, ',
'            C003 AS RECEIVED_AMOUNT',
'        FROM ',
'            apex_collections',
'        WHERE',
'            collection_name =''MOP''',
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(382564633136519376)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JAHANZAIB'
,p_internal_uid=>382564633136519376
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(382564750573519377)
,p_db_column_name=>'REMOVE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Delete'
,p_column_link=>'javascript:apex.event.trigger(document, ''REMOVE'', [{P135_SEQ_ID:''#SEQ_ID#''}]);'
,p_column_linktext=>'<i class="fa fa-trash" style="font-size:32px;" aria-hidden="true"></i>'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(382564872674519378)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Seq#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18624106404418905)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>30
,p_column_identifier=>'F'
,p_column_label=>'Customer Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18624272234418906)
,p_db_column_name=>'RECEIVED_DATE'
,p_display_order=>40
,p_column_identifier=>'G'
,p_column_label=>'Received Date'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18624338414418907)
,p_db_column_name=>'RECEIVED_AMOUNT'
,p_display_order=>50
,p_column_identifier=>'H'
,p_column_label=>'Received Amount'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(382589324731571153)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1800385'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'REMOVE:SEQ_ID:RECEIVED_AMOUNT:RECEIVED_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18624410247418908)
,p_plug_name=>'Received Amount Details'
,p_parent_plug_id=>wwv_flow_imp.id(382564034926519370)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc:margin-top-md'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COUNTER_SALE AS(',
'        SELECT ',
'                    PARTY_ID,',
'                    CUSTOMER_NAME PARTY_NAME,',
'                    NVL(SUM(COUNTER_BAGS),0) COUNTER_BAGS,',
'                    NVL(SUM(TOTAL_AMOUNT),0) TOTAL_AMOUNT',
'        FROM',
'                    TABLE(AB_SALE_ORDER_PKG.COUNTER_SALE_REPORT(:GV_ORG_ID, :GV_USER_ID))',
'        WHERE',
'                       APPROVAL_STATUS=''Approved'' ',
'             AND  PAYMENT_TYPE = 597',
'             AND PARTY_ID=:P135_PARTY_ID',
'        GROUP BY',
'                PARTY_ID,',
'                CUSTOMER_NAME',
')',
',COUNTER_SALE_RECOVERY AS(',
'        SELECT',
'                    SO.SO_ID,',
'                    SOD.SOD_ID,',
'                    SO.CUSTOMER_ID PARTY_ID,',
'                    SOD_DATE RECOVERY_DATE,',
'                    NVL(TOTAL_AMOUNT,0) COUNTER_RECOVERY',
'        FROM',
'                     AB_SO_ORDER_HEAD SO',
'            JOIN AB_SO_ORDER_DET SOD ON SOD.SO_ID=SO.SO_ID AND SOD.STATUS=''Y''',
'        WHERE',
'                     SO.STATUS=''Y''',
'            AND SO_TYPE=''1007'' ',
')',
'        SELECT',
'                 SO_ID,',
'                 SOD_ID,',
'                 CS.PARTY_ID,',
'                 PARTY_NAME,',
'                 RECOVERY_DATE,',
'                 NVL(TOTAL_AMOUNT,0) RECOVERY_AMOUNT,',
'                 NVL(COUNTER_RECOVERY,0)  RECEIVED_AMOUNT,',
'                 NVL(TOTAL_AMOUNT,0)  -  NVL(COUNTER_RECOVERY,0) REMAINING_AMOUNT',
'        FROM ',
'                          COUNTER_SALE CS ',
'        LEFT JOIN COUNTER_SALE_RECOVERY CSR ON CSR.PARTY_ID=CS.PARTY_ID ',
'        ORDER BY',
'                    RECOVERY_DATE DESC,',
'                    SOD_ID DESC '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P135_PARTY_ID'
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
 p_id=>wwv_flow_imp.id(18635459980426535)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JAHANZAIB'
,p_internal_uid=>18635459980426535
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18635513654426536)
,p_db_column_name=>'SO_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'So Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18635638672426537)
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
 p_id=>wwv_flow_imp.id(18635706165426538)
,p_db_column_name=>'PARTY_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Party Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18635876018426539)
,p_db_column_name=>'PARTY_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Party Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18635918934426540)
,p_db_column_name=>'RECOVERY_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Recovery Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18636040075426541)
,p_db_column_name=>'RECOVERY_AMOUNT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Recovery Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18636186454426542)
,p_db_column_name=>'RECEIVED_AMOUNT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Received Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18636267366426543)
,p_db_column_name=>'REMAINING_AMOUNT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Remaining Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(19052146495998731)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'190522'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PARTY_NAME:RECOVERY_DATE:RECEIVED_AMOUNT:'
,p_sum_columns_on_break=>'RECEIVED_AMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(382567462591519404)
,p_plug_name=>'Scedule Payment Items'
,p_parent_plug_id=>wwv_flow_imp.id(381457337899793010)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody'
,p_region_attributes=>'style="background-color:#36414f;"'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18464684403048208)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(382564034926519370)
,p_button_name=>'ADD_SCHEDULE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--warning:t-Button--iconLeft:t-Button--hoverIconPush:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<b>Save</b>'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-circle-o'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18464293182048208)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(382564034926519370)
,p_button_name=>'CREATE'
,p_button_static_id=>'CR_BUTTON'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<B>Save Payment Schedule<m/B>'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save-as'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(18493579014048241)
,p_branch_name=>'go to page 117'
,p_branch_action=>'f?p=&APP_ID.:135:&SESSION.::&DEBUG.:135:P135_SOP_ID,P135_OBV_IDD:&P135_SOP_ID.,&P135_OBV_IDD.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16781377285392238)
,p_name=>'P135_TOTAL_AMOUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(381457138443793008)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16782227533392247)
,p_name=>'P135_TOTAL_SCHEDULE_AMT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(381457337899793010)
,p_item_display_point=>'SUB_REGIONS'
,p_prompt=>'Total Schedule Amt'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18623867698418902)
,p_name=>'P135_REMAINING_AMOUNT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(207531056528344509)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18634219603426523)
,p_name=>'P135_RECEIVED_AMOUNT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(207531056528344509)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(381476873067793048)
,p_name=>'P135_SCHEDULE_AMOUNT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(382567462591519404)
,p_prompt=>'<B>Received Amount</B>'
,p_placeholder=>'Enter Amount  (e.g 1,000)'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'onkeypress="if((event.which != 46 || this.value.indexOf(''.'') != -1) && (event.which < 48 || event.which > 57)){event.preventDefault();}"'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(381476930792793049)
,p_name=>'P135_SCHEDULE_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(382567462591519404)
,p_item_default=>'SELECT TO_CHAR(SYSDATE,''DD-MON-YYYY'') FROM DUAL'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'<B>Received Date</B>'
,p_placeholder=>'Select Schedule Date'
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
  'min_date', 'STATIC',
  'min_static', '+0d',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(382568526757519409)
,p_name=>'P135_PARTY_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(381457138443793008)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(382582793957519400)
,p_name=>'P135_ALERT_FLAG'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(382567462591519404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(382587924846519421)
,p_name=>'P135_SEQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(382564034926519370)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(382588052481519422)
,p_name=>'P135_SUM_AMOUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(382564034926519370)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18481050634048234)
,p_name=>'button click and add amount'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18464684403048208)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18482081342048235)
,p_event_id=>wwv_flow_imp.id(18481050634048234)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_exists          NUMBER;',
'    v_amount          NUMBER;',
'    v_total_scheduled NUMBER;',
'BEGIN',
'',
'    -- 1. Schedule Date must be entered',
'    IF :P135_SCHEDULE_DATE IS NULL THEN',
'        :P135_ALERT_FLAG := ''Please enter Schedule Date'';',
'        RETURN;',
'    END IF;',
'',
'    --- Schedule Date cannot be in the past',
'    IF TO_DATE(:P135_SCHEDULE_DATE,''DD-MON-YYYY'') < TRUNC(SYSDATE) THEN',
'        :P135_ALERT_FLAG := ''Schedule Date cannot be in the past'';',
'        RETURN;',
'    END IF;',
'',
'    -- 2. Schedule Amount must be entered',
'    IF :P135_SCHEDULE_AMOUNT IS NULL OR TRIM(:P135_SCHEDULE_AMOUNT) = '''' THEN',
'        :P135_ALERT_FLAG := ''Please enter Schedule Amount'';',
'        RETURN;',
'    END IF;',
'',
'    -- 3. Convert amount and validate > 0',
'    BEGIN',
'        v_amount := TO_NUMBER(REPLACE(:P135_SCHEDULE_AMOUNT, '','', ''''));',
'        v_amount := ROUND(v_amount, 2);',
'',
'        IF v_amount <= 0 THEN',
'            :P135_ALERT_FLAG := ''Schedule Amount must be greater than zero'';',
'            RETURN;',
'        END IF;',
'    EXCEPTION',
'        WHEN VALUE_ERROR THEN',
'            :P135_ALERT_FLAG := ''Invalid Schedule Amount'';',
'            RETURN;',
'    END;',
'',
'      SELECT COUNT(*)',
'      INTO v_exists',
'      FROM AB_SO_ORDER_DET SOD',
'      JOIN AB_SO_ORDER_HEAD SO ON SO.SO_ID = SOD.SO_ID',
'     WHERE SO.CUSTOMER_ID = :P135_PARTY_ID',
'       AND SO.SO_TYPE = ''1007''',
'       AND SO.STATUS = ''Y''',
'       AND SOD.STATUS = ''Y''',
'       AND TRUNC(SOD.SOD_DATE) = TO_DATE(:P135_SCHEDULE_DATE, ''DD-MON-YYYY'');',
'',
'    -- IF v_exists > 0 THEN',
'    --     :P135_ALERT_FLAG := ''A schedule for this date already exists in the system'';',
'    --     RETURN;',
'    -- END IF;',
'',
'',
'    -- 4. Create collection if not exists',
'    IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''MOP'') THEN',
'        APEX_COLLECTION.CREATE_COLLECTION(''MOP'');',
'    END IF;',
'',
'    -- 5. Check if SAME DATE already exists in collection for THIS Sale Order',
'    SELECT COUNT(*)',
'      INTO v_exists',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''MOP''',
'       AND C002 = :P135_SCHEDULE_DATE;',
'',
'    IF v_exists > 0 THEN',
'        :P135_ALERT_FLAG := ''This Schedule already exists for the selected date'';',
'        RETURN;',
'    END IF;',
'',
'    -- 6. Calculate total scheduled amount',
'    SELECT NVL(SUM(TO_NUMBER(c003)), 0)',
'      INTO v_total_scheduled',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''MOP'';',
'',
'    IF (v_total_scheduled + v_amount) > :P135_REMAINING_AMOUNT THEN',
'        :P135_ALERT_FLAG := ''Cannot add schedule. Total exceeds allowed amount'';',
'        RETURN;',
'    END IF;',
'',
'    -- 7. Add schedule to collection',
'    APEX_COLLECTION.ADD_MEMBER(',
'        P_COLLECTION_NAME => ''MOP'',',
'        P_C001 => :P135_TOTAL_AMOUNT,',
'        P_C002 => :P135_SCHEDULE_DATE,',
'        P_C003 => v_amount',
'    );',
'',
'    -- 8. Update total scheduled amount page item',
'    SELECT NVL(SUM(TO_NUMBER(c003)), 0)',
'      INTO :P135_SUM_AMOUNT',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''MOP'';',
'',
'    -- 9. Clear alert',
'    :P135_ALERT_FLAG := NULL;',
'',
'END;',
''))
,p_attribute_02=>'P135_SCHEDULE_DATE,P135_SCHEDULE_AMOUNT,P135_PARTY_ID,P135_REMAINING_AMOUNT'
,p_attribute_03=>'P135_ALERT_FLAG,P135_SUM_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18481560255048234)
,p_event_id=>wwv_flow_imp.id(18481050634048234)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(382564034926519370)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18480135994048233)
,p_name=>'click  insert amount'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18464293182048208)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18480634259048234)
,p_event_id=>wwv_flow_imp.id(18480135994048233)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("SAVE_SOP_ORDER",',
'{',
'    pageItems: "#P135_PARTY_ID,#P135_SCHEDULE_DATE,#P135_RECEIVED_AMOUNT"',
'},',
'{',
'    dataType: "json",',
'    success: function (pData) {',
'',
'        if (pData.status === "SUCCESS") {',
'',
'            $s("P118_SOP_ID", pData.SO_ID);',
'',
'            // Optional: show success message briefly before refresh',
'            apex.message.showPageSuccess("Sale Order saved successfully.");',
'',
'            // Refresh the modal page after a short delay',
'            setTimeout(function() {',
'                // Reload current modal page',
'                location.reload(); // simple page refresh',
'            }, 800); // wait 0.8 sec to show success message',
'',
'        } else if (pData.status === "NO_DATA") {',
'',
'            apex.message.alert("No schedule data found.");',
'',
'        } else {',
'',
'            apex.message.alert(pData.message);',
'        }',
'    },',
'    error: function (xhr, status, error) {',
'        apex.message.alert("AJAX Error: " + error);',
'    }',
'});',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18636340862426544)
,p_event_id=>wwv_flow_imp.id(18480135994048233)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("SAVE_SOP_ORDER",',
'{',
'    pageItems: "#P135_PARTY_ID"',
'},',
'{',
'    dataType: "json",',
'    success: function (pData) {',
'',
'        if (pData.status === "SUCCESS") {',
'',
'            $s("P118_SOP_ID", pData.SO_ID);',
'',
'            apex.message.showPageSuccess("Sale Order saved successfully.");',
' ',
'            setTimeout(function () {',
'                apex.navigation.redirect("f?p=" + $v("pFlowId") + ":" + $v("pFlowStepId") + ":" + $v("pInstance"));',
'            }, 1200);',
'',
'        } else if (pData.status === "NO_DATA") {',
'',
'            apex.message.alert("No schedule data found.");',
'',
'        } else {',
'',
'            apex.message.alert(pData.message);',
'        }',
'    },',
'    error: function (xhr, status, error) {',
'        apex.message.alert("AJAX Error: " + error);',
'    }',
'});',
''))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18482485700048235)
,p_name=>'row remove to '
,p_event_sequence=>40
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'REMOVE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18482980862048235)
,p_event_id=>wwv_flow_imp.id(18482485700048235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Are you sure...?',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18483437230048236)
,p_event_id=>wwv_flow_imp.id(18482485700048235)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item( "P135_SEQ_ID" ).setValue(this.data.P135_SEQ_ID);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18483949312048236)
,p_event_id=>wwv_flow_imp.id(18482485700048235)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.delete_member(p_collection_name => ''MOP'' , p_seq => :P135_SEQ_ID);',
'select nvl(SUM(c003), 0)  difference INTO :P135_SUM_AMOUNT',
'from apex_collections where collection_name = ''MOP'';'))
,p_attribute_02=>'P135_SEQ_ID'
,p_attribute_03=>'P135_SUM_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18484476022048236)
,p_event_id=>wwv_flow_imp.id(18482485700048235)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(382564034926519370)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18484870628048237)
,p_name=>'add the schedule amount coma digit'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_SCHEDULE_AMOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18485350648048237)
,p_event_id=>wwv_flow_imp.id(18484870628048237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var input = $(this.triggeringElement);',
'',
'// Allow only numbers and one decimal (filter typing)',
'input.on(''keypress'', function(e){',
'    var charCode = (e.which) ? e.which : e.keyCode;',
'    if((charCode != 46 || this.value.indexOf(''.'') != -1) && (charCode < 48 || charCode > 57)){',
'        e.preventDefault();',
'    }',
'});',
'',
'// Format number with commas on key release',
'var val = input.val().replace(/,/g,''''); // Remove existing commas',
'if(val){',
'    var parts = val.split(''.'');',
'    parts[0] = Number(parts[0]).toLocaleString(''en-US''); // Add commas to integer part',
'    input.val(parts.join(''.''));',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18485700975048237)
,p_name=>'GET Total Amount into Schedule Amount'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_OBV_IDD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18486278577048238)
,p_event_id=>wwv_flow_imp.id(18485700975048237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P135_ACCOUNT_ID,P135_OPENNING_AMOUNT,P135_VOUCHER_DATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH OPENING_VOUCHER AS(',
'    SELECT',
'            TRANSCATION_IDD,                ',
'            TRANSACTION_DATE,',
'            ACCOUNT_ID',
'    FROM ',
'            TABLE(AB_FINANCE_REPORTS.ACCOUNT_WISE_LEDGER_DETAIL(:GV_ORG_ID))',
')',
'       SELECT',
'            ACCOUNT_ID,',
'            CASE WHEN  TRD.DR_AMOUNT IS NULL THEN  TRD.CR_AMOUNT   ELSE TRD.DR_AMOUNT END  CREDIT_AMOUNT,',
'            TRANSACTION_DATE',
'        FROM ',
'                 AB_FIN_TRANSACTION_DET TRD',
'            LEFT JOIN OPENING_VOUCHER OBV ON OBV.TRANSCATION_IDD=TRD.TRD_IDS',
'        WHERE ',
'              TRD.STATUS = ''Y''',
'          AND TRD_TYPE=802',
'          AND TRANSCATION_TYPE_IDD= 597',
'          AND TRD_IDS=:P135_OBV_IDD'))
,p_attribute_07=>'P135_OBV_IDD'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18487512027048238)
,p_name=>'alert message if error message'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_ALERT_FLAG'
,p_condition_element=>'P135_ALERT_FLAG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18488068625048238)
,p_event_id=>wwv_flow_imp.id(18487512027048238)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    if ($v(''P135_ALERT_FLAG'') !== ''N'' && $v(''P135_ALERT_FLAG'') !== '''') {',
'        apex.message.alert($v(''P135_ALERT_FLAG''), function() {',
'            $s(''P135_ALERT_FLAG'', ''''); ',
'        });',
'    }',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18491672067048240)
,p_name=>'Remaining Amount  fetch'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_REMAINING_AMOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18492183801048240)
,p_event_id=>wwv_flow_imp.id(18491672067048240)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function () {',
'',
'  // Format number with decimals',
'  function formatNumber(value, decimals) {',
'    var num = Number(value);',
'    if (isNaN(num)) num = 0;',
'    return num.toLocaleString(undefined, {',
'      minimumFractionDigits: decimals,',
'      maximumFractionDigits: decimals',
'    });',
'  }',
'',
'  // Update Remaining Balance card',
'  function refreshRemainingBalance() {',
'    var value = apex.item(''P135_REMAINING_AMOUNT'').getValue();',
'    var el = document.getElementById(''card_remaining_balance'');',
'    if (el) {',
'      el.textContent = formatNumber(value, 1);',
'    }',
'  }',
'',
'  // Initial load',
'  refreshRemainingBalance();',
'',
'  // Dynamic update whenever item changes',
'  apex.item(''P135_REMAINING_AMOUNT'').subscribe(''change'', function () {',
'    refreshRemainingBalance();',
'  });',
'',
'})();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18492599756048241)
,p_name=>'Overdue Balance amounts'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_ACCOUNT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16781600248392241)
,p_name=>'set value into remaining amount '
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_PARTY_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16781789361392242)
,p_event_id=>wwv_flow_imp.id(16781600248392241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P135_TOTAL_AMOUNT,P135_RECEIVED_AMOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COUNTER_SALE AS(',
'        SELECT ',
'               PARTY_ID,',
'               NVL(SUM(TOTAL_AMOUNT),0) TOTAL_AMOUNT',
'        FROM',
'            TABLE(AB_SALE_ORDER_PKG.COUNTER_SALE_REPORT(:GV_ORG_ID, :GV_USER_ID))',
'        WHERE',
'                           APPROVAL_STATUS=''Approved'' ',
'              AND  PARTY_ID = :P135_PARTY_ID',
'              AND  PAYMENT_TYPE = 597',
'        GROUP BY',
'            PARTY_ID',
')',
',COUNTER_SALE_RECOVERY AS(',
'        SELECT',
'                    SO.CUSTOMER_ID PARTY_ID,',
'                    NVL(SUM(TOTAL_AMOUNT),0) COUNTER_RECOVERY',
'        FROM',
'                AB_SO_ORDER_HEAD SO',
'            JOIN AB_SO_ORDER_DET SOD ON SOD.SO_ID=SO.SO_ID AND SOD.STATUS=''Y''',
'        WHERE',
'                    SO.STATUS=''Y''',
'            AND SO_TYPE=''1007''',
'        GROUP BY',
'            SO.CUSTOMER_ID           ',
')',
'        SELECT',
'              NVL(TOTAL_AMOUNT,0)  - NVL(COUNTER_RECOVERY,0) TOTAL_RECOVERY,',
'              NVL(COUNTER_RECOVERY,0)   RECEIVED_AMOUNT',
'        FROM ',
'                          COUNTER_SALE CS ',
'        LEFT JOIN COUNTER_SALE_RECOVERY CSR ON CSR.PARTY_ID=CS.PARTY_ID '))
,p_attribute_07=>'TOTAL_AMOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18625247485418916)
,p_event_id=>wwv_flow_imp.id(16781600248392241)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18624410247418908)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16781858626392243)
,p_name=>'New_1'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_TOTAL_AMOUNT,,P135_SUM_AMOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16781931432392244)
,p_event_id=>wwv_flow_imp.id(16781858626392243)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Get values',
'var total     = Number($v(''P135_TOTAL_AMOUNT'') || 0);',
'var sum       = Number($v(''P135_SUM_AMOUNT'') || 0);',
'var remaining = total - sum;',
'',
'// Format remaining with commas',
'var formattedRemaining = remaining.toLocaleString(''en-US'', {minimumFractionDigits:0, maximumFractionDigits:0});',
'',
'// Set formatted value into P1063_SCHEDULE_AMOUNT',
'$s(''P135_SCHEDULE_AMOUNT'', formattedRemaining);',
'',
'// Enable/Disable Create button',
'// Enable/Disable Create button',
'// if (remaining === 0){',
'//     $(''#CR_BUTTON'').prop(''disabled'', false);  // Enable button if remaining = 0',
'// } else {',
'//     $(''#CR_BUTTON'').prop(''disabled'', true);   // Disable button if remaining > 0',
'// }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16782081797392245)
,p_name=>'New_2'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_TOTAL_AMOUNT,P135_TOTAL_SCHEDULE_AMT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16782180429392246)
,p_event_id=>wwv_flow_imp.id(16782081797392245)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function () {',
'',
'    var total   = parseFloat($v("P135_TOTAL_AMOUNT")) || 0;',
'    var opening = parseFloat($v("P135_TOTAL_SCHEDULE_AMT")) || 0;',
'',
'',
'    var remaining =  total - opening  ;',
'',
'    $s("P135_REMAINING_AMOUNT", remaining);',
'',
'}, 300); '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18623951896418903)
,p_name=>'New_3'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_TOTAL_AMOUNT,P135_SUM_AMOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18624078785418904)
,p_event_id=>wwv_flow_imp.id(18623951896418903)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function () {',
'',
'    var total   = parseFloat($v("P135_TOTAL_AMOUNT")) || 0;',
'    var opening = parseFloat($v("P135_SUM_AMOUNT")) || 0;',
'',
'',
'    var remaining =  total - opening  ;',
'',
'    $s("P135_REMAINING_AMOUNT", remaining);',
'',
'}, 300); '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18634354891426524)
,p_name=>'Received amount and refresh the card'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_RECEIVED_AMOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18634414287426525)
,p_event_id=>wwv_flow_imp.id(18634354891426524)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function () {',
'',
'  // Format number with decimals',
'  function formatNumber(value, decimals) {',
'    var num = Number(value);',
'    if (isNaN(num)) num = 0;',
'    return num.toLocaleString(undefined, {',
'      minimumFractionDigits: decimals,',
'      maximumFractionDigits: decimals',
'    });',
'  }',
'',
'  // Update Received Amount card',
'  function refreshReceivedAmount() {',
'    var value = apex.item(''P135_RECEIVED_AMOUNT'').getValue();',
'    var el = document.getElementById(''card_received_amount'');',
'    if (el) {',
'      el.textContent = formatNumber(value, 1);',
'    }',
'  }',
'',
'  // Initial load',
'  refreshReceivedAmount();',
'',
'  // Dynamic update whenever item changes',
'  apex.item(''P135_RECEIVED_AMOUNT'').subscribe(''change'', function () {',
'    refreshReceivedAmount();',
'  });',
'',
'})();',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18473665207048228)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'MOP REPORT CLEAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF APEX_COLLECTION.COLLECTION_EXISTS(''MOP'') THEN',
'       apex_collection.truncate_collection(p_collection_name => ''MOP'');',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>18473665207048228
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18474062358048228)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_SOP_ORDER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_SO_ID            NUMBER;',
'    V_CNT              NUMBER;',
'    V_ORDER_DATE       DATE;',
'    V_REMAINING_AMOUNT NUMBER;',
'    V_INSERT_COUNT     NUMBER := 0;',
'BEGIN',
'',
unistr('    /* \D83D\DD39 Collection Check */'),
'    SELECT COUNT(*) INTO V_CNT',
'    FROM apex_collections',
'    WHERE collection_name = ''MOP''',
'      AND c002 IS NOT NULL;',
'',
'    IF V_CNT = 0 THEN',
'        apex_json.open_object;',
'        apex_json.write(''status'',''NO_DATA'');',
'        apex_json.close_object;',
'        RETURN;',
'    END IF;',
'',
unistr('    /* \D83D\DD39 Validation */'),
'    FOR v IN (',
'        SELECT c002, c003',
'        FROM apex_collections',
'        WHERE collection_name = ''MOP''',
'    ) LOOP',
'        IF v.c002 IS NULL OR TO_NUMBER(REPLACE(v.c003,'','','''')) <= 0 THEN',
'            apex_json.open_object;',
'            apex_json.write(''status'',''ERROR'');',
'            apex_json.write(''message'',''Invalid schedule data.'');',
'            apex_json.close_object;',
'            RETURN;',
'        END IF;',
'    END LOOP;',
'',
unistr('    /* \D83D\DD39 Order Date from Schedule */'),
'    SELECT MIN(TO_DATE(c002,''DD-MON-YYYY''))',
'    INTO V_ORDER_DATE',
'    FROM apex_collections',
'    WHERE collection_name = ''MOP'';',
'',
'    V_ORDER_DATE := NVL(V_ORDER_DATE, SYSDATE);',
'',
unistr('    /* \D83D\DD39 Remaining Balance */'),
'    WITH CS AS (',
'        SELECT PARTY_ID, NVL(SUM(TOTAL_AMOUNT),0) TOTAL_AMOUNT',
'        FROM TABLE(AB_SALE_ORDER_PKG.COUNTER_SALE_REPORT(:GV_ORG_ID,:GV_USER_ID))',
'        WHERE APPROVAL_STATUS=''Approved''',
'          AND PARTY_ID = :P135_PARTY_ID',
'        GROUP BY PARTY_ID',
'    ),',
'    CSR AS (',
'        SELECT SO.CUSTOMER_ID PARTY_ID,',
'               NVL(SUM(TOTAL_AMOUNT),0) RECOVERY',
'        FROM AB_SO_ORDER_HEAD SO',
'        JOIN AB_SO_ORDER_DET SOD',
'          ON SOD.SO_ID = SO.SO_ID',
'         AND SOD.STATUS = ''Y''',
'        WHERE SO_TYPE=''1007''',
'        GROUP BY SO.CUSTOMER_ID',
'    )',
'    SELECT NVL(CS.TOTAL_AMOUNT,0) - NVL(CSR.RECOVERY,0)',
'    INTO V_REMAINING_AMOUNT',
'    FROM CS LEFT JOIN CSR',
'      ON CSR.PARTY_ID = CS.PARTY_ID;',
'',
'    IF V_REMAINING_AMOUNT <= 0 THEN',
'        apex_json.open_object;',
'        apex_json.write(''status'',''EXISTS'');',
'        apex_json.write(''message'',''Full recovery already done.'');',
'        apex_json.close_object;',
'        RETURN;',
'    END IF;',
'',
unistr('    /* \D83D\DD39 Get Existing Header or Create */'),
'    BEGIN',
'        SELECT SO_ID',
'        INTO V_SO_ID',
'        FROM AB_SO_ORDER_HEAD',
'        WHERE CUSTOMER_ID = :P135_PARTY_ID',
'          AND SO_TYPE = ''1007''',
'          AND STATUS = ''Y''',
'        FETCH FIRST ROW ONLY;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            INSERT INTO AB_SO_ORDER_HEAD',
'                (SO_TYPE, CUSTOMER_ID, STATUS, ORDER_DATE)',
'            VALUES',
'                (''1007'', :P135_PARTY_ID, ''Y'', SYSDATE)',
'            RETURNING SO_ID INTO V_SO_ID;',
'    END;',
'',
unistr('    /* \D83D\DD39 Insert Detail Rows with date-wise duplicate check */'),
'    FOR s IN (',
'        SELECT TO_NUMBER(REPLACE(c003,'','','''')) AMT',
'        FROM apex_collections',
'        WHERE collection_name = ''MOP''',
'    ) LOOP',
'',
'        EXIT WHEN V_REMAINING_AMOUNT <= 0;',
'',
unistr('        /* \D83D\DD38 Check if same date record already exists */'),
'        DECLARE',
'            V_DATE_EXISTS NUMBER;',
'            V_AMT_TO_INSERT NUMBER;',
'        BEGIN',
'            SELECT COUNT(*)',
'            INTO V_DATE_EXISTS',
'            FROM AB_SO_ORDER_DET',
'            WHERE SO_ID = V_SO_ID',
'              AND SOD_TYPE = ''1007''',
'              AND TRUNC(SOD_DATE) = TRUNC(V_ORDER_DATE)',
'              AND STATUS = ''Y'';',
'',
'            IF V_DATE_EXISTS = 0 THEN',
'',
'                /* Decide amount to insert */',
'                IF s.AMT <= V_REMAINING_AMOUNT THEN',
'                    V_AMT_TO_INSERT := s.AMT;',
'                ELSE',
'                    V_AMT_TO_INSERT := V_REMAINING_AMOUNT;',
'                END IF;',
'',
'                INSERT INTO AB_SO_ORDER_DET',
'                    (SO_ID, SOD_TYPE, TOTAL_AMOUNT, STATUS, SOD_DATE)',
'                VALUES',
'                    (V_SO_ID, ''1007'', V_AMT_TO_INSERT, ''Y'', V_ORDER_DATE);',
'',
'                V_REMAINING_AMOUNT := V_REMAINING_AMOUNT - V_AMT_TO_INSERT;',
'                --V_INSERT_COUNT := V_INSERT_COUNT + 1;',
'',
'            END IF;',
'        END;',
'',
'    END LOOP;',
'',
'    -- IF V_INSERT_COUNT = 0 THEN',
'    --     ROLLBACK;',
'    --     apex_json.open_object;',
'    --     apex_json.write(''status'',''ERROR'');',
'    --     apex_json.write(''message'',''Recovery for the same date has already been added in the system. Please select a different recovery date.'');',
'    --     apex_json.close_object;',
'    --     RETURN;',
'    -- END IF;',
'',
'    COMMIT;',
'',
unistr('    /* \D83D\DD39 Clear collection and set session state */'),
'    APEX_COLLECTION.DELETE_COLLECTION(''MOP'');',
'    apex_util.set_session_state(''P118_SOP_ID'', V_SO_ID);',
'',
'    apex_json.open_object;',
'    apex_json.write(''status'',''SUCCESS'');',
'    apex_json.write(''SO_ID'', V_SO_ID);',
'    apex_json.close_object;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        apex_json.open_object;',
'        apex_json.write(''status'',''ERROR'');',
'        apex_json.write(''message'', SQLERRM);',
'        apex_json.close_object;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>18474062358048228
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18632972029426510)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_SOP_ORDER_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_SO_ID       NUMBER;',
'    V_CNT         NUMBER;',
'    V_ORDER_DATE  DATE;',
'BEGIN',
'    /* ===============================',
'       Check Collection Has Data',
'       =============================== */',
'    SELECT COUNT(*)',
'      INTO V_CNT',
'      FROM apex_collections',
'     WHERE collection_name = ''MOP''',
'       AND c002 IS NOT NULL;',
'',
'    IF V_CNT = 0 THEN',
'        apex_json.open_object;',
'        apex_json.write(''status'', ''NO_DATA'');',
'        apex_json.close_object;',
'        RETURN;',
'    END IF;',
'',
'    /* ===============================',
'       Validate Collection Rows',
'       =============================== */',
'    FOR v IN (',
'        SELECT c002 AS schedule_date,',
'               c003 AS schedule_amount',
'          FROM apex_collections',
'         WHERE collection_name = ''MOP''',
'    ) LOOP',
'',
'        IF v.schedule_date IS NULL THEN',
'            apex_json.open_object;',
'            apex_json.write(''status'', ''ERROR'');',
'            apex_json.write(''message'',''Schedule Date must be entered.'');',
'            apex_json.close_object;',
'            RETURN;',
'        END IF;',
'',
'        IF v.schedule_amount IS NULL',
'           OR TRIM(v.schedule_amount) = '''' THEN',
'            apex_json.open_object;',
'            apex_json.write(''status'',''ERROR'');',
'            apex_json.write(''message'',''Schedule Amount must be entered.'');',
'            apex_json.close_object;',
'            RETURN;',
'        END IF;',
'',
'        IF TO_NUMBER(REPLACE(v.schedule_amount,'','','''')) <= 0 THEN',
'            apex_json.open_object;',
'            apex_json.write(''status'',''ERROR'');',
'            apex_json.write(''message'',''Schedule Amount must be greater than zero.'');',
'            apex_json.close_object;',
'            RETURN;',
'        END IF;',
'',
'    END LOOP;',
'',
'    /* ===============================',
'       Get ORDER DATE (from Collection)',
'       =============================== */',
'    SELECT MIN(TO_DATE(c002,''DD-MON-YYYY''))',
'      INTO V_ORDER_DATE',
'      FROM apex_collections',
'     WHERE collection_name = ''MOP''',
'       AND c002 IS NOT NULL;',
'',
'    /* ===============================',
'       Check Already Exists',
'       =============================== */',
'    -- SELECT COUNT(*)',
'    --   INTO V_CNT',
'    --   FROM AB_SO_ORDER_HEAD',
'    --  WHERE CUSTOMER_ID = :P135_PARTY_ID',
'    --    AND SO_TYPE     = ''1007''',
'    --    AND STATUS      = ''Y'';',
'    WITH COUNTER_SALE AS(',
'        SELECT ',
'               PARTY_ID,',
'               NVL(SUM(TOTAL_AMOUNT),0) TOTAL_AMOUNT',
'        FROM',
'            TABLE(AB_SALE_ORDER_PKG.COUNTER_SALE_REPORT(:GV_ORG_ID, :GV_USER_ID))',
'        WHERE',
'                           APPROVAL_STATUS=''Approved'' ',
'              AND  PARTY_ID = :P135_PARTY_ID',
'        GROUP BY',
'            PARTY_ID',
'    )',
'    ,COUNTER_SALE_RECOVERY AS(',
'        SELECT',
'                    SO.CUSTOMER_ID PARTY_ID,',
'                    NVL(SUM(TOTAL_AMOUNT),0) COUNTER_RECOVERY',
'        FROM',
'                AB_SO_ORDER_HEAD SO',
'            JOIN AB_SO_ORDER_DET SOD ON SOD.SO_ID=SO.SO_ID AND SOD.STATUS=''Y''',
'        WHERE',
'                    SO.STATUS=''Y''',
'            AND SO_TYPE=''1007'' ',
'        GROUP BY',
'                SO.CUSTOMER_ID',
')',
'        SELECT',
'                     COUNT(*)',
'                   INTO V_CNT',
'        FROM ',
'                          COUNTER_SALE CS ',
'        LEFT JOIN COUNTER_SALE_RECOVERY CSR ON CSR.PARTY_ID=CS.PARTY_ID ',
'        WHERE',
'                NVL(TOTAL_AMOUNT,0)  - NVL(COUNTER_RECOVERY,0)=0;',
'',
'    IF V_CNT > 0 THEN',
'        apex_json.open_object;',
'        apex_json.write(''status'',''EXISTS'');',
'        apex_json.write(',
'            ''message'',',
'            ''OBVr# '' || :P135_PARTY_ID || '' already exists.''',
'        );',
'        apex_json.close_object;',
'        RETURN;',
'    END IF;',
'',
'    /* ===============================',
'       Insert Order Head',
'       =============================== */',
'    INSERT INTO AB_SO_ORDER_HEAD',
'        (SO_TYPE, CUSTOMER_ID, STATUS, ORDER_DATE)',
'    VALUES',
'        (''1007'', :P135_PARTY_ID, ''Y'', V_ORDER_DATE)',
'    RETURNING SO_ID INTO V_SO_ID;',
'',
'    /* ===============================',
'       Insert Order Detail',
'       =============================== */',
'    FOR s IN (',
'        SELECT DISTINCT',
'               c002 AS schedule_date,',
'               c003 AS schedule_amount',
'          FROM apex_collections',
'         WHERE collection_name = ''MOP''',
'           AND c002 IS NOT NULL',
'    ) LOOP',
'',
'        INSERT INTO AB_SO_ORDER_DET',
'            (SO_ID,',
'             SOD_TYPE,',
'             TOTAL_AMOUNT,',
'             STATUS)',
'        VALUES',
'            (V_SO_ID,',
'             ''1007'',',
'             TO_NUMBER(REPLACE(s.schedule_amount,'','','''')),',
'             ''Y'');',
'',
'    END LOOP;',
'',
'    COMMIT;',
'',
'    /* ===============================',
'       Cleanup + Response',
'       =============================== */',
'    APEX_COLLECTION.DELETE_COLLECTION(''MOP'');',
'',
'    apex_util.set_session_state(''P118_SOP_ID'', V_SO_ID);',
'',
'    apex_json.open_object;',
'    apex_json.write(''status'',''SUCCESS'');',
'    apex_json.write(''SO_ID'', V_SO_ID);',
'    apex_json.close_object;',
'',
'EXCEPTION',
'    WHEN DUP_VAL_ON_INDEX THEN',
'        ROLLBACK;',
'        apex_json.open_object;',
'        apex_json.write(''status'',''ERROR'');',
'        apex_json.write(',
'            ''message'',',
'            ''This Schedule already exists for the selected date.''',
'        );',
'        apex_json.close_object;',
'',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        apex_json.open_object;',
'        apex_json.write(''status'',''ERROR'');',
'        apex_json.write(''message'', SQLERRM);',
'        apex_json.close_object;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>18632972029426510
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
