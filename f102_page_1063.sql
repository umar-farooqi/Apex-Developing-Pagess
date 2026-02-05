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
--     PAGE: 1063
--   Manifest End
--   Version:         24.2.12
--   Instance ID:     706401905951048
--

begin
null;
end;
/
prompt --application/pages/delete_01063
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>1063);
end;
/
prompt --application/pages/page_01063
begin
wwv_flow_imp_page.create_page(
 p_id=>1063
,p_name=>'Counter Sale Order Payment Schedule'
,p_alias=>'COUNTER-SALE-ORDER-PAYMENT-SCHEDULE1'
,p_page_mode=>'MODAL'
,p_step_title=>'Counter  Sale Order Payment Schedule'
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
'/* Remaining Balance Card - Green Gradient */',
'.running-balance {',
'  background: linear-gradient(135deg, #5CB85C, #3D8B3D);',
'  color: #ffffff;',
'}',
'',
'',
'',
'',
'.large-trash {',
'    font-size: 40px; /* adjust as needed */',
'    color: red;      /* optional */',
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
'    background: linear-gradient(145deg, #36414f, #36414f);',
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
'}'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-PageBody--noContentPadding'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(194957754541166707)
,p_plug_name=>'Details'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>1000000060
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(194957920730166708)
,p_plug_name=>'Sale Order Detail'
,p_parent_plug_id=>wwv_flow_imp.id(194957754541166707)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_html CLOB;',
'BEGIN',
'    FOR r IN (',
'       WITH REGISTRATION AS(',
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
'           -- AND SALE_OFFER_ID = :GV_USER_ID',
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
'                   CS.SO_ID,',
'                    CR.CUSTOMER_ID,  ',
'                    INITCAP(CR.CUSTOMER_NAME) AS CUSTOMER_NAME,',
'                    TO_CHAR(CS.ORDER_DATE, ''DD-MON-YYYY'') AS ORDER_DATE,',
'                     NVL(CSD.NO_BAGS, 0) AS COUNTER_BAGS,',
'                    CSD.BAG_RATE,',
'                    CSD.TOTAL_AMOUNT,',
'                    ASR.REG_NAME    AS WAREHOUSE,',
'                       LD.LOOKUP_DET_NAME   AS PAYMENT_NAME, ITM.ITEM_NAME || '' ('' || ITM.PACKING_SIZE || '' '' || ITM.UNIT || '' '' || ITM.PACKING || '')'' AS PRODUCT,',
'                  ',
'                    INITCAP(CS.CREATED_BY) || '' ('' || TO_CHAR(CS.CREATED_ON, ''DD-MON-YYYY'') || '')'' AS ADD_BY,',
'                    CS.REMARKS,',
'                    CASE ',
'                            WHEN APP.SOD_ID  IS NULL THEN ''<div class="pending-badge"><span class="clock-icon"></span> Pending</div>''',
'                            WHEN APP.SOD_ID IS NOT NULL AND  APP.APPROVAL_STATUS = ''APPROVED''  THEN  ''<div class="approved-badge"><span class="check-icon"></span> Approved</div>''',
'                            WHEN APP.SOD_ID IS NOT NULL AND  APP.APPROVAL_STATUS = ''REJECTED''  THEN  ''<div class="rejected-badge"> <span class="cross-icon blinking"></span> Rejected </div>''',
'                    END   || '' ('' || APP.APPROVAL_BY || '')'' AS APPROVAL_STATUS,',
'                    CS.PAYMENT_TYPE,',
'                    PM.LOOKUP_DET_NAME AS PAYMENT_MODE_TYPE,',
'                    CT.LOOKUP_DET_NAME AS CUSTOMER_TYPE',
'          ',
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
'               --  JOIN  SALE_POINT_ASSIGN SPA ON SPA.SALE_POINT_ID = CS.SALE_POINT_ID ',
'            LEFT JOIN  LOOKUP PM  ON PM.DET_ID = CS.PAYMENT_TYPE',
'            LEFT JOIN SCHEDULE_OF_PAYMENT SOP ON SOP.SO_ID = CS.SO_ID',
'         WHERE ',
'                       CS.ORG_ID = :GV_ORG_ID',
'              AND CS.STATUS = ''Y''',
'              AND CS.SO_TYPE = ''708''',
'           ',
'             AND   CSD.SOD_ID =:P1063_SALE_ORDER',
'        ORDER BY',
'             CS.SO_ID DESC ',
'                   ',
'    ) LOOP',
'',
'        l_html :=',
'        ''<style>',
'        .sale-card {',
'          max-width: 760px;',
'          background: #ffffff;',
'          border-radius: 24px;',
'          border: 1px solid #e2e8f0;',
'          box-shadow: 0 12px 24px rgba(0,0,0,0.08);',
'          margin: 24px auto;',
'          font-family: "Segoe UI", Roboto, Arial, sans-serif;',
'          overflow: hidden;',
'          transition: transform 0.3s ease, box-shadow 0.3s ease;',
'        }',
'        .sale-card:hover { transform: translateY(-4px); box-shadow: 0 16px 32px rgba(0,0,0,0.12); }',
'',
'        .card-header {',
'          display: flex;',
'          justify-content: space-between;',
'          align-items: center;',
'          background: #36414f; /* Slate Gray-Blue */',
'          padding: 20px 24px;',
'          color: #ffffff;',
'        }',
'        .card-header h2 { margin: 0; font-size: 22px; font-weight: 700; }',
'        .city { font-size: 12px; color: #cbd5e1; }',
'',
'        .status {',
'          padding: 8px 22px;',
'          border-radius: 28px;',
'          font-size: 12px;',
'          font-weight: 700;',
'          text-transform: uppercase;',
'          letter-spacing: .4px;',
'        }',
'        .status.pending { background: #fbbf24; color: #fff; }',
'        .status.approved { background: #16a34a; color: #fff; }',
'        .status.rejected { background: #dc2626; color: #fff; }',
'',
'        .details-section {',
'          background: #f9fafb;',
'          padding: 16px 20px;',
'          display: flex;',
'          flex-direction: column;',
'          gap: 12px;',
'          border-bottom: 1px solid #e2e8f0;',
'        }',
'        .details-row { display: flex; justify-content: space-between; font-size: 13px; color: #1e293b; font-weight: 600; }',
'',
'        .product-section {',
'background: linear-gradient(135deg, #2a7f7f, #5ca6a6);',
'          padding: 20px;',
'          border-radius: 0 0 24px 24px;',
'          margin-top: 12px;',
'          color: #ffffff;',
'          box-shadow: inset 0 0 20px rgba(0,0,0,0.05);',
'        }',
'        .product-section div { font-weight: 700; font-size: 15px; margin-bottom: 12px; }',
'',
'        .bags { display: grid; grid-template-columns: repeat(3, 1fr); gap: 18px; margin-top: 12px; }',
'        .bags div {',
'          padding: 18px 14px;',
'          border-radius: 18px;',
'          font-weight: 700;',
'          text-align: center;',
'          color: #fff;',
'          box-shadow: 0 4px 14px rgba(0,0,0,0.1);',
'          transition: transform 0.3s ease, box-shadow 0.3s ease;',
'          background: linear-gradient(135deg, #6c5ce7, #a29bfe);',
'        }',
'        .bags div:hover { transform: translateY(-6px); box-shadow: 0 8px 20px rgba(0,0,0,0.15); }',
'        .bags div:nth-child(2) { background: linear-gradient(135deg, #00b894, #00cec9); } /* Teal gradient */',
'        .bags div:nth-child(3) { background: linear-gradient(135deg, #fdcb6e, #e17055); } /* Orange gradient */',
'        .bags span { font-size: 12px; opacity: 0.85; }',
'        .bags h3 { margin: 6px 0 0; font-size: 18px; font-weight: 700; }',
'',
'        .card-footer {',
'          border-top: 1px dashed #e2e8f0;',
'          padding: 14px 20px;',
'          font-size: 12px;',
'          color: #2d3436; /* Dark Gray */',
'          display: flex;',
'          justify-content: space-between;',
'          margin-top: 16px;',
'          font-weight: 600;',
'        }',
'        </style>'' ||',
'',
'        ''<div class="sale-card">'' ||',
'            ''<div class="card-header">'' ||',
'                ''<div><h2>Counter Sale Order #'' || r.SO_ID || ''</h2><div class="city">'' || r.WAREHOUSE || ''</div></div>'' ||',
'                ''<span class="status pending">'' || r.APPROVAL_STATUS || ''</span>'' ||',
'            ''</div>'' ||',
'',
'            ''<div class="details-section">'' ||',
'                ''<div class="details-row"><div><strong>Sale Officer:</strong> '' || r.CUSTOMER_NAME || ''</div><div><strong>Order Date:</strong> '' || r.ORDER_DATE || ''</div></div>'' ||',
'                ''<div class="details-row"><div><strong>Customer Type:</strong> '' || r.CUSTOMER_TYPE || ''</div><div><strong>Payment Mode:</strong> '' || r.PAYMENT_MODE_TYPE || ''</div></div>'' ||',
'            ''</div>'' ||',
'',
'            ''<div class="product-section">'' ||',
'                ''<div><strong>Product:</strong> '' || r.PRODUCT || ''</div>'' ||',
'                ''<div class="bags">'' ||',
'                    ''<div><span>No of Bags</span><h3>'' || r.COUNTER_BAGS || ''</h3></div>'' ||',
'                    ''<div><span>Rate / Bag</span><h3>'' || TO_CHAR(r.BAG_RATE,''999G999G999'') || ''</h3></div>'' ||',
'                    ''<div><span>Total Amount</span><h3>'' || TO_CHAR(r.TOTAL_AMOUNT,''999G999G999'') || ''</h3></div>'' ||',
'                ''</div>'' ||',
'            ''</div>'' ||',
'',
'            ''<div class="card-footer"><span>Added By: '' || r.ADD_BY || ''</span></div>'' ||',
'        ''</div>'';',
'',
'        htp.p(l_html);',
'    END LOOP;',
'END;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(194957953997166709)
,p_plug_name=>'Scedule Payment'
,p_parent_plug_id=>wwv_flow_imp.id(194957754541166707)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_region_attributes=>'style="background-color:#36414f;"'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3 class="heading-green">Payment Schedule</h3>',
'<hr class="gradient-line-green">'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(196064651023893069)
,p_plug_name=>'Payment Scdedule Collection'
,p_region_name=>'MOP'
,p_parent_plug_id=>wwv_flow_imp.id(194957953997166709)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:#36414f;"'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'        SELECT ',
'            ''remove'' AS remove, ',
'            seq_id,',
'            c001 AS SALE_ORDER_NO,',
'            c002  as SCHEDULE_DATE, ',
'            C003 AS SCHEDULE_AMOUNT',
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
 p_id=>wwv_flow_imp.id(196065249233893075)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JAHANZAIB'
,p_internal_uid=>196065249233893075
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196065366670893076)
,p_db_column_name=>'REMOVE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Delete'
,p_column_link=>'javascript:apex.event.trigger(document, ''REMOVE'', [{P118_SEQ_ID:''#SEQ_ID#''}]);'
,p_column_linktext=>'<i class="fa fa-trash" style="font-size:32px;" aria-hidden="true"></i>'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196065488771893077)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196065552390893078)
,p_db_column_name=>'SALE_ORDER_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Sale Order No'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196065658233893079)
,p_db_column_name=>'SCHEDULE_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Schedule Date'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196065811068893080)
,p_db_column_name=>'SCHEDULE_AMOUNT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Schedule Amount'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(196089940828944852)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1800385'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'REMOVE:SEQ_ID:SALE_ORDER_NO:SCHEDULE_DATE:SCHEDULE_AMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(196068078688893103)
,p_plug_name=>'Scedule Payment Items'
,p_parent_plug_id=>wwv_flow_imp.id(194957953997166709)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(196596839643929103)
,p_plug_name=>'Grid'
,p_parent_plug_id=>wwv_flow_imp.id(194957953997166709)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody'
,p_region_attributes=>'style="background-color:#36414f;"'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(196596942731929104)
,p_plug_name=>'Payment Schedule Details'
,p_region_name=>'VOU'
,p_parent_plug_id=>wwv_flow_imp.id(196596839643929103)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    SELECT',
'       *',
'    FROM(',
'    SELECT',
'        SCH_DET_ID SOD_ID,',
'        TO_CHAR(RUN_DATE,''DD-MON-YYYY'') SCHEDULE_DATE,',
'        SCHD_AMOUNT SCHEDULE_AMOUNT',
'    FROM',
'         AB_JOB_SCHEDULE SCH',
'     JOIN AB_JOB_SCHEDULE_DET SCD ON SCD.SCH_ID=SCH.SCH_ID AND SCD.STATUS=''Y''',
'    WHERE',
'          SCH.STATUS=''Y''',
'      AND SCH.SCH_TYPE=799',
'      AND SCH.SCH_ID=:P1063_SOP_ID',
'     ORDER BY',
'         RUN_DATE ASC   ',
'    )',
' '))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1063_SOP_ID'
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
 p_id=>wwv_flow_imp.id(196597203716929106)
,p_name=>'SOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SOD_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sod Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(196597282076929107)
,p_name=>'SCHEDULE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEDULE_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Schedule Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY'
,p_is_required=>false
,p_max_length=>20
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
 p_id=>wwv_flow_imp.id(196597420428929108)
,p_name=>'SCHEDULE_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEDULE_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Schedule Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
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
 p_id=>wwv_flow_imp.id(196597843716929113)
,p_name=>'DELETE'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>'Delete'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<button type="button" title="Delete" aria-label="Delete" ',
    '    style="padding: 10px 12px;" ',
    '    class="t-Button t-Button--noLabel t-Button--icon t-Button--small t-Button--danger t-Button--noUI deleterecord js-actionButton" ',
    '    data-action="row-delete">',
    '    <span aria-hidden="true" class="t-Icon fa fa-trash-o" style="font-size: 24px;"></span>',
    '</button>',
    '')))).to_clob
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( config ) {',
'config.defaultGridColumnOptions = {        noHeaderActivate: true    };',
'    return config;',
'}'))
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(196668503257146064)
,p_name=>'APEX$ROW_ACTION'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(196668557085146065)
,p_name=>'APEX$ROW_SELECTOR'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(196597073598929105)
,p_internal_uid=>196597073598929105
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
,p_show_toolbar=>false
,p_toolbar_buttons=>null
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
 p_id=>wwv_flow_imp.id(196661169365145209)
,p_interactive_grid_id=>wwv_flow_imp.id(196597073598929105)
,p_static_id=>'1806097'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(196661416509145210)
,p_report_id=>wwv_flow_imp.id(196661169365145209)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(196661876185145211)
,p_view_id=>wwv_flow_imp.id(196661416509145210)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(196597203716929106)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(196662754810145214)
,p_view_id=>wwv_flow_imp.id(196661416509145210)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(196597282076929107)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(196663685331145216)
,p_view_id=>wwv_flow_imp.id(196661416509145210)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(196597420428929108)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(196667247121145225)
,p_view_id=>wwv_flow_imp.id(196661416509145210)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(196597843716929113)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(196674458945147609)
,p_view_id=>wwv_flow_imp.id(196661416509145210)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(196668503257146064)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(196675350903147611)
,p_view_id=>wwv_flow_imp.id(196661416509145210)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(196668557085146065)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(207169424567637394)
,p_plug_name=>'Remaining Balance Card'
,p_parent_plug_id=>wwv_flow_imp.id(194957754541166707)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16060180467440417)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(196596839643929103)
,p_button_name=>'ADD_ROW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--warning:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<b>Add Row</B>'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-circle'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16056784685440412)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(196064651023893069)
,p_button_name=>'ADD_SCHEDULE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--warning:t-Button--iconLeft:t-Button--hoverIconPush:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<b>Add Schedule</b>'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-circle-o'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16056388672440411)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(196064651023893069)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16059793860440417)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(196596839643929103)
,p_button_name=>'UPDATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<B>Save Payment Schedule</B>'
,p_button_position=>'CREATE'
,p_icon_css_classes=>'fa-save-as'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(16086716186440467)
,p_branch_name=>'go to page 1063'
,p_branch_action=>'f?p=&APP_ID.:1063:&SESSION.::&DEBUG.:1063:P1063_SOP_ID,P1063_SALE_ORDER:&P1063_SOP_ID.,&P1063_SALE_ORDER.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194958745341166735)
,p_name=>'P1063_TOTAL_AMOUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(194957754541166707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194964749803166761)
,p_name=>'P1063_SALE_ORDER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(196068078688893103)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194964920588166763)
,p_name=>'P1063_SCHEDULE_AMOUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(196068078688893103)
,p_prompt=>'<B>Schdulet Amount</B>'
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
 p_id=>wwv_flow_imp.id(194964978313166764)
,p_name=>'P1063_SCHEDULE_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(196068078688893103)
,p_item_default=>'SELECT TO_CHAR(SYSDATE,''DD-MON-YYYY'') FROM DUAL'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'<B>Schedule Date</B>'
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
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196068552170893126)
,p_name=>'P1063_SOP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(194957754541166707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196070841477893115)
,p_name=>'P1063_ALERT_FLAG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(196068078688893103)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196071435416893130)
,p_name=>'P1063_SEQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(196064651023893069)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196071563051893131)
,p_name=>'P1063_SUM_AMOUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(196064651023893069)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196077340639893159)
,p_name=>'P1063_TOTAL_SCHEDULE_AMT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(196596839643929103)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(207171131135637426)
,p_name=>'P1063_REMAINING_AMOUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(207169424567637394)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(16066594327440450)
,p_validation_name=>'Total Amount must be equal to Total Schedule Amount.'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_remaining NUMBER;',
'BEGIN',
'    v_remaining := :P1063_TOTAL_AMOUNT - :P1063_TOTAL_SCHEDULE_AMT ;',
'',
'    IF v_remaining != 0 THEN',
'        RETURN ''Total Amount must be equal to Total Schedule Amount. Remaining: '' || TO_CHAR(v_remaining);',
'    ELSE',
'        RETURN NULL;',
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(196077340639893159)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(16064550984440432)
,p_tabular_form_region_id=>wwv_flow_imp.id(196596942731929104)
,p_validation_name=>'Schedule Date Must Be Today Or Later'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF TO_DATE(:SCHEDULE_DATE, ''DD-MON-YYYY'') < TRUNC(SYSDATE) THEN',
'        RETURN ''Schedule Date cannot be earlier than today.'';',
'    END IF;',
'',
'    RETURN NULL;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(16059793860440417)
,p_associated_column=>'SCHEDULE_DATE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16076017117440459)
,p_name=>'button click and add amount'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16056784685440412)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16076559315440459)
,p_event_id=>wwv_flow_imp.id(16076017117440459)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_exists          NUMBER;',
'    v_amount          NUMBER;',
'    v_total_scheduled NUMBER;',
'BEGIN',
'    -- 1. Schedule Date must be entered',
'    IF :P1063_SCHEDULE_DATE IS NULL THEN',
'        :P1063_ALERT_FLAG := ''Please enter Schedule Date'';',
'        RETURN;',
'    END IF;',
'',
'    -- -- 1a. Schedule Date cannot be in the past',
'    -- IF TO_DATE(:P1063_SCHEDULE_DATE,''DD-MON-YYYY'') < TRUNC(SYSDATE) THEN',
'    --     :P1063_ALERT_FLAG := ''Schedule Date cannot be in the past'';',
'    --     RETURN;',
'    -- END IF;',
'',
'    -- 2. Schedule Amount must be entered',
'    IF :P1063_SCHEDULE_AMOUNT IS NULL OR TRIM(:P1063_SCHEDULE_AMOUNT) = '''' THEN',
'        :P1063_ALERT_FLAG := ''Please enter Schedule Amount'';',
'        RETURN;',
'    END IF;',
'',
'    -- 3. Convert amount and validate > 0',
'    BEGIN',
'        v_amount := TO_NUMBER(REPLACE(:P1063_SCHEDULE_AMOUNT, '','', ''''));',
'        v_amount := ROUND(v_amount, 2);',
'',
'        IF v_amount <= 0 THEN',
'            :P1063_ALERT_FLAG := ''Schedule Amount must be greater than zero'';',
'            RETURN;',
'        END IF;',
'    EXCEPTION',
'        WHEN VALUE_ERROR THEN',
'            :P1063_ALERT_FLAG := ''Invalid Schedule Amount'';',
'            RETURN;',
'    END;',
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
'       AND C001 = :P1063_SALE_ORDER',
'       AND C002 = :P1063_SCHEDULE_DATE;',
'',
'    IF v_exists > 0 THEN',
'        :P1063_ALERT_FLAG := ''This Schedule already exists for the selected date'';',
'        RETURN;',
'    END IF;',
'',
'    -- 6. Calculate total scheduled amount',
'    SELECT NVL(SUM(TO_NUMBER(c003)), 0)',
'      INTO v_total_scheduled',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''MOP'';',
'',
'    IF (v_total_scheduled + v_amount) > :P1063_TOTAL_AMOUNT THEN',
'        :P1063_ALERT_FLAG := ''Cannot add schedule. Total exceeds allowed amount'';',
'        RETURN;',
'    END IF;',
'',
'    -- 7. Add schedule to collection',
'    APEX_COLLECTION.ADD_MEMBER(',
'        P_COLLECTION_NAME => ''MOP'',',
'        P_C001 => :P1063_SALE_ORDER,',
'        P_C002 => :P1063_SCHEDULE_DATE,',
'        P_C003 => v_amount',
'    );',
'',
'    -- 8. Update total scheduled amount page item',
'    SELECT NVL(SUM(TO_NUMBER(c003)), 0)',
'      INTO :P1063_SUM_AMOUNT',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''MOP'';',
'',
'    -- 9. Clear alert',
'    :P1063_ALERT_FLAG := NULL;',
'',
'END;',
''))
,p_attribute_02=>'P1063_SALE_ORDER,P1063_SCHEDULE_DATE,P1063_SCHEDULE_AMOUNT,P1063_TOTAL_AMOUNT'
,p_attribute_03=>'P1063_ALERT_FLAG,P1063_SUM_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16077040770440460)
,p_event_id=>wwv_flow_imp.id(16076017117440459)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(196064651023893069)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16073782716440457)
,p_name=>'Calculate  remaining amount'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1063_SUM_AMOUNT,P1063_TOTAL_AMOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16074294764440457)
,p_event_id=>wwv_flow_imp.id(16073782716440457)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Get values',
'var total     = Number($v(''P1063_TOTAL_AMOUNT'') || 0);',
'var sum       = Number($v(''P1063_SUM_AMOUNT'') || 0);',
'var remaining = total - sum;',
'',
'// Format remaining with commas',
'var formattedRemaining = remaining.toLocaleString(''en-US'', {minimumFractionDigits: 2, maximumFractionDigits: 2});',
'',
'// Set formatted value into P1063_SCHEDULE_AMOUNT',
'$s(''P1063_SCHEDULE_AMOUNT'', formattedRemaining);',
'',
'// Enable/Disable Create button',
'// Enable/Disable Create button',
'if (remaining === 0){',
'    $(''#CR_BUTTON'').prop(''disabled'', false);  // Enable button if remaining = 0',
'} else {',
'    $(''#CR_BUTTON'').prop(''disabled'', true);   // Disable button if remaining > 0',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16074663478440458)
,p_name=>'click  insert amount'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16056388672440411)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16075175063440458)
,p_event_id=>wwv_flow_imp.id(16074663478440458)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process(',
'    "SAVE_MOP_ORDER",',
'    {',
'        pageItems: "#P1063_SALE_ORDER"',
'    },',
'    {',
'        dataType: "json",',
'        success: function (pData) {',
'',
'            if (pData.status === "SUCCESS") {',
'',
'                $s("P1063_SOP_ID", pData.SO_ID);',
'',
'                apex.message.showPageSuccess(',
'                    "Sale Order saved successfully."',
'                );',
'',
'            } else if (pData.status === "NO_DATA") {',
'',
'                apex.message.alert("No schedule data found.");',
'',
'            } else {',
'',
'                apex.message.alert(pData.message);',
'            }',
'        },',
'        error: function (xhr, status, error) {',
'            apex.message.alert("AJAX Error: " + error);',
'        }',
'    }',
');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16075681091440458)
,p_event_id=>wwv_flow_imp.id(16074663478440458)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process(',
'    "SAVE_MOP_ORDER",',
'    {',
'        pageItems: "#P1063_SALE_ORDER"',
'    },',
'    {',
'        dataType: "json",',
'        success: function (pData) {',
'',
'            if (pData.status === "SUCCESS") {',
'',
'                $s("P1063_SOP_ID", pData.SO_ID);',
'',
'                apex.message.showPageSuccess(',
'                    "Sale Order saved successfully." ',
'                );',
'',
'            } else if (pData.status === "NO_DATA") {',
'',
'                apex.message.alert("No schedule data found in collection.");',
'',
'            } else {',
'',
'                apex.message.alert(pData.message);',
'            }',
'        },',
'        error: function (xhr, status, error) {',
'            apex.message.alert("AJAX Error: " + error);',
'        }',
'    }',
');',
''))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16077420288440460)
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
 p_id=>wwv_flow_imp.id(16077903004440460)
,p_event_id=>wwv_flow_imp.id(16077420288440460)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Are you sure...?',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16078460683440461)
,p_event_id=>wwv_flow_imp.id(16077420288440460)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item( "P1063_SEQ_ID" ).setValue(this.data.P1063_SEQ_ID);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16078945681440461)
,p_event_id=>wwv_flow_imp.id(16077420288440460)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.delete_member(p_collection_name => ''MOP'' , p_seq => :P1063_SEQ_ID);',
'select nvl(SUM(c003), 0)  difference INTO :P1063_SUM_AMOUNT',
'from apex_collections where collection_name = ''MOP'';'))
,p_attribute_02=>'P1063_SEQ_ID'
,p_attribute_03=>'P1063_SUM_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16079442587440461)
,p_event_id=>wwv_flow_imp.id(16077420288440460)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(196064651023893069)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16079809815440461)
,p_name=>'add the schedule amount coma digit'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1063_SCHEDULE_AMOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16080358167440462)
,p_event_id=>wwv_flow_imp.id(16079809815440461)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var input = $(this.triggeringElement);',
'',
'input.on(''keypress'', function(e){',
'    var charCode = (e.which) ? e.which : e.keyCode;',
'    if((charCode != 46 || this.value.indexOf(''.'') != -1) && (charCode < 48 || charCode > 57)){',
'        e.preventDefault();',
'    }',
'});',
'',
'var val = input.val().replace(/,/g,''''); ',
'if(val){',
'    var parts = val.split(''.'');',
'    parts[0] = Number(parts[0]).toLocaleString(''en-US''); ',
'    input.val(parts.join(''.''));',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16080716701440462)
,p_name=>'GET Total Amount into Schedule Amount'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1063_SALE_ORDER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16081279749440462)
,p_event_id=>wwv_flow_imp.id(16080716701440462)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1063_TOTAL_AMOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'        NVL(CSD.TOTAL_AMOUNT,0) TOTAL_AMOUNT',
' FROM  ',
'      AB_SO_ORDER_HEAD CS',
'       JOIN  AB_SO_ORDER_DET CSD ON CSD.SO_ID = CS.SO_ID AND CSD.STATUS=''Y''',
' WHERE CSD.SOD_ID = :P1063_SALE_ORDER',
' '))
,p_attribute_07=>'P1063_SALE_ORDER'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16085757614440465)
,p_name=>'alert message if error message'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1063_ALERT_FLAG'
,p_condition_element=>'P1063_ALERT_FLAG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16086243925440465)
,p_event_id=>wwv_flow_imp.id(16085757614440465)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    if ($v(''P1063_ALERT_FLAG'') !== ''N'' && $v(''P1063_ALERT_FLAG'') !== '''') {',
'        apex.message.alert($v(''P1063_ALERT_FLAG''), function() {',
'            $s(''P1063_ALERT_FLAG'', ''''); ',
'        });',
'    }',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16081670360440463)
,p_name=>'Add row IN grid USING THE JAVASCRIPT CODE'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16060180467440417)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16082148489440463)
,p_event_id=>wwv_flow_imp.id(16081670360440463)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var row$;',
'var region = apex.region("VOU");',
'var view = region.call("getCurrentView");',
'',
'',
'if (view.internalIdentifier === "grid") {',
'    row$ = region.widget().find(".a-GV-row").last();',
'    view.view$.grid("setSelection", row$);',
'    region.call("getActions").invoke("selection-add-row");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16069865135440454)
,p_name=>'SHOW GRI DDATA AND HIDE OTHER ONCE'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1063_SOP_ID'
,p_condition_element=>'P1063_SOP_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16070394989440455)
,p_event_id=>wwv_flow_imp.id(16069865135440454)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(196596839643929103)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16070812241440456)
,p_event_id=>wwv_flow_imp.id(16069865135440454)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(196596839643929103)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16071308623440456)
,p_event_id=>wwv_flow_imp.id(16069865135440454)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(196596942731929104)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16073361219440457)
,p_event_id=>wwv_flow_imp.id(16069865135440454)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(196064651023893069)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16071833701440456)
,p_event_id=>wwv_flow_imp.id(16069865135440454)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(196068078688893103)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16072314002440456)
,p_event_id=>wwv_flow_imp.id(16069865135440454)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(196068078688893103)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16072864442440457)
,p_event_id=>wwv_flow_imp.id(16069865135440454)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(196064651023893069)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16083435425440464)
,p_name=>'Calculate the Sum of Grid Amount into :P1063_TOTAL_SCHEDULE'
,p_event_sequence=>110
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(196596942731929104)
,p_triggering_element=>'SCHEDULE_AMOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16083985880440464)
,p_event_id=>wwv_flow_imp.id(16083435425440464)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1063_TOTAL_SCHEDULE_AMT'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
':SCHEDULE_AMOUNT',
''))
,p_attribute_07=>'SCHEDULE_AMOUNT'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16084477757440464)
,p_event_id=>wwv_flow_imp.id(16083435425440464)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = apex.region("VOU").widget().interactiveGrid("getViews", "grid").model;',
'var n_dist_amount, n_total = 0;',
'var col_gl_amount = model.getFieldKey("SCHEDULE_AMOUNT");',
'model.forEach(function(igrow)',
'       {',
'               ',
'               n_dist_amount = parseInt(igrow[col_gl_amount], 10);',
'               if (!isNaN(n_dist_amount)) {',
'                         n_total += n_dist_amount;',
'          }',
'  }',
'      );',
'     ',
'$s(''P1063_TOTAL_SCHEDULE_AMT'', n_total);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16084867091440465)
,p_name=>'Editable mode grid open_1'
,p_event_sequence=>120
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(196596942731929104)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16085347401440465)
,p_event_id=>wwv_flow_imp.id(16084867091440465)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("VOU").call("getActions").set("edit", true)'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16068046250440452)
,p_name=>'Remaining Amount  fetch'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1063_REMAINING_AMOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16068599936440453)
,p_event_id=>wwv_flow_imp.id(16068046250440452)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function () {',
'  function formatNumber(value, decimals) {',
'    var num = Number(value);',
'    if (isNaN(num)) num = 0;',
'    return num.toLocaleString(undefined, {',
'      minimumFractionDigits: decimals,',
'      maximumFractionDigits: decimals',
'    });',
'  }',
'  function refreshRemainingBalance() {',
'    var value = apex.item(''P1063_REMAINING_AMOUNT'').getValue();',
'    var el = document.getElementById(''card_remaining_balance'');',
'    if (el) {',
'      el.textContent = formatNumber(value, 1);',
'    }',
'  }',
'  refreshRemainingBalance();',
'  apex.item(''P1063_REMAINING_AMOUNT'').subscribe(''change'', function () {',
'    refreshRemainingBalance();',
'  });',
'',
'})();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16082509723440463)
,p_name=>'Grid Get Remaining Amount '
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1063_TOTAL_AMOUNT,P1063_TOTAL_SCHEDULE_AMT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16083017325440464)
,p_event_id=>wwv_flow_imp.id(16082509723440463)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function () {',
'',
'    var total   = parseFloat($v("P1063_TOTAL_AMOUNT")) || 0;',
'    var opening = parseFloat($v("P1063_TOTAL_SCHEDULE_AMT")) || 0;',
'',
'',
'    var remaining =  total - opening  ;',
'',
'    $s("P1063_REMAINING_AMOUNT", remaining);',
'',
'}, 300); '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16068934492440454)
,p_name=>'Collection Get Remaining Amount'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1063_SUM_AMOUNT,P1063_TOTAL_AMOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16069401127440454)
,p_event_id=>wwv_flow_imp.id(16068934492440454)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function () {',
'',
'    var total   = parseFloat($v("P1063_TOTAL_AMOUNT")) || 0;',
'    var opening = parseFloat($v("P1063_SUM_AMOUNT")) || 0;',
'',
'',
'    var remaining =  total - opening  ;',
'',
'    $s("P1063_REMAINING_AMOUNT", remaining);',
'',
'}, 300); '))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16064871216440432)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(196596942731929104)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Interactive Grid Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_run_date DATE;',
'BEGIN',
'    -- IF :SCHEDULE_AMOUNT IS NULL OR :SCHEDULE_AMOUNT <= 0 THEN',
'    --     APEX_ERROR.ADD_ERROR(',
'    --         p_message          => ''Schedule Amount must be greater than zero.'',',
'    --         p_display_location => apex_error.c_inline_in_notification',
'    --     );',
'    --     RETURN;',
'    -- END IF;',
'',
'    -- IF :SCHEDULE_DATE IS NULL THEN',
'    --     APEX_ERROR.ADD_ERROR(',
'    --         p_message          => ''Schedule Date is required.'',',
'    --         p_display_location => apex_error.c_inline_in_notification',
'    --     );',
'    --     RETURN;',
'    -- END IF;',
'',
'    BEGIN',
'        v_run_date := TO_DATE(:SCHEDULE_DATE, ''DD-MON-YYYY'');',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_ERROR.ADD_ERROR(',
'                p_message          => ''Invalid Schedule Date format.'',',
'                p_display_location => apex_error.c_inline_in_notification',
'            );',
'            RETURN;',
'    END;',
'',
'    /* ===============================',
'       Insert / Update Logic',
'       =============================== */',
'    IF :APEX$ROW_STATUS = ''C'' THEN',
'        INSERT INTO AB_JOB_SCHEDULE_DET',
'        (',
'            SCH_ID,',
'            SCHD_AMOUNT,',
'            RUN_DATE,',
'            SCHD_TYPE,',
'            STATUS',
'        )',
'        VALUES',
'        (',
'            :P1063_SOP_ID,',
'            :SCHEDULE_AMOUNT,',
'            v_run_date,',
'            799,',
'            ''Y''',
'        );',
'',
'    ELSIF :APEX$ROW_STATUS = ''U'' THEN',
'        UPDATE AB_JOB_SCHEDULE_DET',
'        SET',
'            SCHD_AMOUNT = :SCHEDULE_AMOUNT,',
'            RUN_DATE    = v_run_date',
'        WHERE',
'            SCH_DET_ID = :SOD_ID;',
'    ELSIF :APEX$ROW_STATUS = ''D'' THEN',
'        UPDATE AB_JOB_SCHEDULE_DET',
'        SET',
'            SCHD_AMOUNT = :SCHEDULE_AMOUNT,',
'            RUN_DATE    = v_run_date,',
'            STATUS=''N''',
'        WHERE',
'            SCH_DET_ID = :SOD_ID;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_ERROR.ADD_ERROR(',
'            p_message          => ''Error while saving schedule detail: '' || SQLERRM,',
'            p_display_location => apex_error.c_inline_in_notification,',
'            p_additional_info  => ''Please verify Schedule Date, Amount, and IDs.''',
'        );',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(16059793860440417)
,p_internal_uid=>16064871216440432
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16067268833440450)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'MOP REPORT CLEAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF APEX_COLLECTION.COLLECTION_EXISTS(''MOP'') THEN',
'       apex_collection.truncate_collection(p_collection_name => ''MOP'');',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>16067268833440450
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16066896056440450)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_MOP_ORDER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_SCH_ID NUMBER;',
'    V_CNT    NUMBER;',
'BEGIN',
'    /*-----------------------------------------',
'      1. Collection must have data',
'    -----------------------------------------*/',
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
'    /*-----------------------------------------',
'      2. Field validations',
'    -----------------------------------------*/',
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
'        IF TO_DATE(v.schedule_date,''DD-MON-YYYY'') < TRUNC(SYSDATE) THEN',
'            apex_json.open_object;',
'            apex_json.write(''status'',''ERROR'');',
'            apex_json.write(''message'',''You cannot enter a previous Schedule Date.'');',
'            apex_json.close_object;',
'            RETURN;',
'        END IF;',
'',
'    END LOOP;',
'',
'    /*-----------------------------------------',
'      3. Header exists check',
'    -----------------------------------------*/',
'    SELECT COUNT(*)',
'      INTO V_CNT',
'      FROM AB_JOB_SCHEDULE',
'     WHERE SCH_IDS  = :P1063_SALE_ORDER',
'       AND SCH_TYPE = 799',
'       AND STATUS   = ''Y'';',
'',
'    IF V_CNT > 0 THEN',
'        apex_json.open_object;',
'        apex_json.write(''status'',''EXISTS'');',
'        apex_json.write(''message'',',
'            ''Sale Order# ''||:P1063_SALE_ORDER||'' already exists.'');',
'        apex_json.close_object;',
'        RETURN;',
'    END IF;',
'',
'    /*-----------------------------------------',
'      4. Insert Header',
'    -----------------------------------------*/',
'    INSERT INTO AB_JOB_SCHEDULE',
'        (SCH_TYPE, SCH_IDS, STATUS)',
'    VALUES',
'        (799, :P1063_SALE_ORDER, ''Y'')',
'    RETURNING SCH_ID INTO V_SCH_ID;',
'',
'    /*-----------------------------------------',
'      5. Insert Detail (NO DUPLICATE ERROR NOW)',
'    -----------------------------------------*/',
'    FOR s IN (',
'        SELECT DISTINCT',
'               c002 AS schedule_date,',
'               c003 AS schedule_amount',
'          FROM apex_collections',
'         WHERE collection_name = ''MOP''',
'           AND c002 IS NOT NULL',
'    ) LOOP',
'',
'        INSERT INTO AB_JOB_SCHEDULE_DET',
'            (SCH_ID,',
'             SCHD_TYPE,',
'             RUN_DATE,',
'             SCHD_AMOUNT,',
'             STATUS)',
'        VALUES',
'            (V_SCH_ID,',
'             799,',
'             TO_DATE(s.schedule_date,''DD-MON-YYYY''),',
'             TO_NUMBER(REPLACE(s.schedule_amount,'','','''')),',
'             ''Y'');',
'',
'    END LOOP;',
'',
'    COMMIT;',
'',
'    APEX_COLLECTION.DELETE_COLLECTION(''MOP'');',
'',
'    apex_util.set_session_state(''P1063_SOP_ID'', V_SCH_ID);',
'',
'    apex_json.open_object;',
'    apex_json.write(''status'',''SUCCESS'');',
'    apex_json.write(''SO_ID'',V_SCH_ID);',
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
'        apex_json.write(''message'',SQLERRM);',
'        apex_json.close_object;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>16066896056440450
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16067650709440451)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_MOP_ORDER_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_SCH_ID NUMBER;',
'    V_CNT   NUMBER;',
'BEGIN',
'      SELECT COUNT(*) INTO V_CNT FROM apex_collections WHERE collection_name = ''MOP'' AND c002 IS NOT NULL;',
'',
'    IF V_CNT = 0 THEN',
'        apex_json.open_object;',
'        apex_json.write(''status'', ''NO_DATA'');',
'        apex_json.close_object;',
'        RETURN;',
'    END IF;',
'',
'',
'    SELECT COUNT(*) INTO V_CNT FROM AB_JOB_SCHEDULE WHERE SCH_IDS = :P1063_SALE_ORDER  AND STATUS = ''Y'' AND SCH_TYPE = 899;',
'',
'    IF V_CNT > 0 THEN',
'        apex_json.open_object;',
'        apex_json.write(''status'', ''EXISTS'');',
'        apex_json.write(''message'', ''Sale Order# = '' || :P1063_SALE_ORDER || '' already exists.'');',
'        apex_json.close_object;',
'        RETURN;',
'    END IF;',
'',
'    INSERT INTO AB_JOB_SCHEDULE',
'        (SCH_TYPE, SCH_IDS, STATUS)',
'    VALUES',
'        (799, :P1063_SALE_ORDER, ''Y'')',
'    RETURNING SCH_ID INTO V_SCH_ID;',
'',
'    FOR s IN (',
'        SELECT c002 AS schedule_date,',
'               c003 AS schedule_amount',
'          FROM apex_collections',
'         WHERE collection_name = ''MOP''',
'           AND c002 IS NOT NULL',
'    ) LOOP',
'        INSERT INTO AB_JOB_SCHEDULE_DET',
'            (SCH_ID, SCHD_TYPE, RUN_DATE, STATUS, SCHD_AMOUNT)',
'        VALUES',
'            (',
'                V_SCH_ID,',
'                ''799'',',
'                TO_DATE(s.schedule_date, ''DD-MON-YYYY''),',
'                ''Y'',',
'                TO_NUMBER(REPLACE(s.schedule_amount, '','', ''''))',
'            );',
'    END LOOP;',
'',
'    COMMIT;',
'',
'    APEX_COLLECTION.DELETE_COLLECTION(''MOP'');',
'',
'    apex_util.set_session_state(''P1063_SOP_ID'', V_SCH_ID);',
'',
'    apex_json.open_object;',
'    apex_json.write(''status'', ''SUCCESS'');',
'    apex_json.write(''SO_ID'', V_SCH_ID);',
'    apex_json.close_object;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        apex_json.open_object;',
'        apex_json.write(''status'', ''ERROR'');',
'        apex_json.write(''message'', SQLERRM);',
'        apex_json.close_object;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>16067650709440451
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
