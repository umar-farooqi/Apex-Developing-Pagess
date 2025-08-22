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
--     PAGE: 671
--   Manifest End
--   Version:         24.1.0
--   Instance ID:     706401905951048
--

begin
null;
end;
/
prompt --application/pages/delete_00671
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>671);
end;
/
prompt --application/pages/page_00671
begin
wwv_flow_imp_page.create_page(
 p_id=>671
,p_name=>'BG Summary Amount'
,p_alias=>'BG-SUMMARY-AMOUNT'
,p_step_title=>'BG Summary Amount'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-GV-headerGroup {',
'    background-color: #2e8b47 !important;  /* Green color */',
'    padding: 0px !important;',
'    margin: 0px !important;',
'    border-radius: 0px !important;',
'   overflow: hidden !important;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(97558371661525727)
,p_plug_name=>'BG Summary Amount'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2310230379184666)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH  FOL_AMOUNT AS (',
'    SELECT     ',
'              MAX(FLDS.ID) AS DET_ID,',
'               FLDS.MAST_ID FOL_ID ,',
'              -- FLDS.MATURITY_TYPE,',
'               LISTAGG(LD.LOOKUP_DET_NAME, '' , '') WITHIN GROUP (ORDER BY LD.LOOKUP_DET_NAME) AS FACILITIES_NAME,',
'            -- LD.LOOKUP_DET_NAME AS FACILITIES_NAME,',
'               NVL(SUM(AMOUNT),0) TOAL_FOL_AMOUNT',
'        FROM',
'                          AB_FACILITIES_LETTER_DET FLDS',
'                         JOIN AB_LOOKUP_DETAIL LD ON LD.DET_ID=FLDS.FACILITIES_ID',
'        WHERE ',
'                  FLDS.FACILITIES_TYPE=''FACILITIES DET''',
'        AND FLDS.ORG_ID=:GV_ORG_ID',
'    GROUP BY',
'                FLDS.MAST_ID --, FLDS.ID',
') ,FACILITIES_ACCOUNT_NUMBER AS (',
'    SELECT',
'             IDS FLD_ID ,',
'               LISTAGG(BNK.REG_CODE||'' - ''||ASRC.REG_NAME, '', '') WITHIN GROUP (ORDER BY ACCOUNT_NO) AS INTITLED_NAME',
'        FROM',
'                          AB_FACILITIES_LETTER_DET FLDS',
'                JOIN AB_SETUP_REGISTRATION BNK ON BNK.SR_ID=FLDS.ACCOUNT_NO AND BNK.REG_TYPE in (''BANK LOV'',''624'')',
'                 JOIN AB_SETUP_REGISTRATION ASRC ON ASRC.SR_ID=BNK.COMPANY_ID AND ASRC.REG_TYPE=''COMPANY''',
'        WHERE ',
'                  IMAGE_TYPE=''FACILITIES ACCOUNT NUMBER''',
'        AND FLDS.ORG_ID=:GV_ORG_ID',
'  GROUP BY',
'                IDS ',
')',
'    SELECT ',
'           --FA.DET_ID,',
'            AFL.ID FOL_ID,',
'            BNK.REG_NAME BANK_NAME,',
'            BANK_BRANCH,',
'           -- FA.MATURITY_TYPE,',
'           FA.FACILITIES_NAME,',
'         -- LISTAGG(FA.FACILITIES_NAME, '' , '') WITHIN GROUP (ORDER BY FA.FACILITIES_NAME) AS FACILITIES_NAME,',
'          FAN.INTITLED_NAME AS ACCOUNT_NO,',
'            ',
'      TO_CHAR(NVL(TOAL_FOL_AMOUNT, 0), ''999G999G999G999G990'') AS TOAL_FOL_AMOUNT',
'            ',
'         ',
'         ',
'    FROM ',
'                      AB_FACILITIES_LETTER AFL',
'            JOIN AB_SETUP_REGISTRATION BNK ON BNK.SR_ID=AFL.BANK_ID AND REG_TYPE=''BANK''',
'            JOIN FOL_AMOUNT FA ON FA.FOL_ID=AFL.ID',
'            LEFT JOIN  FACILITIES_ACCOUNT_NUMBER FAN ON FAN.FLD_ID=FA.DET_ID',
'    WHERE ',
'                     AFL.FACILITIES_TYPE = ''FACILITIES MAST''',
'            AND AFL.ORG_ID = :GV_ORG_ID',
'            AND AFL.STATUS = ''Y''',
'          AND FOL_ID not in (1469, 1887)',
'',
'        --   GROUP BY ',
'        --   AFL.ID ,',
'        --     BNK.REG_NAME ,',
'        --     BANK_BRANCH,',
'        --      FAN.INTITLED_NAME ,',
'        --      TOAL_FOL_AMOUNT',
'  '))
,p_plug_source_type=>'NATIVE_IG'
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
,p_landmark_type=>'main'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(97567938451530137)
,p_heading=>'Facilities of letter'
,p_label=>'Facilities of letter'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(97810704952415604)
,p_name=>'TOAL_FOL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOAL_FOL_AMOUNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Toal Fol Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(97567938451530137)
,p_use_group_for=>'BOTH'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
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
 p_id=>wwv_flow_imp.id(97811017986415607)
,p_name=>'FOL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOL_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fol Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(97567938451530137)
,p_use_group_for=>'BOTH'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
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
 p_id=>wwv_flow_imp.id(97811135957415608)
,p_name=>'BANK_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANK_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Bank Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(97567938451530137)
,p_use_group_for=>'BOTH'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>255
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
 p_id=>wwv_flow_imp.id(97811231603415609)
,p_name=>'BANK_BRANCH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANK_BRANCH'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Bank Branch'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(97567938451530137)
,p_use_group_for=>'BOTH'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(108738882446481637)
,p_name=>'FACILITIES_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FACILITIES_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Facilities Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(97567938451530137)
,p_use_group_for=>'BOTH'
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
 p_id=>wwv_flow_imp.id(108739988860481648)
,p_name=>'ACCOUNT_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCOUNT_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Account No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(97567938451530137)
,p_use_group_for=>'BOTH'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(97566890306530126)
,p_internal_uid=>97566890306530126
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>true
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
 p_id=>wwv_flow_imp.id(97614135305573539)
,p_interactive_grid_id=>wwv_flow_imp.id(97566890306530126)
,p_static_id=>'976142'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(97614395674573539)
,p_report_id=>wwv_flow_imp.id(97614135305573539)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8762249014595)
,p_view_id=>wwv_flow_imp.id(97614395674573539)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(108738882446481637)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(97839769732667728)
,p_view_id=>wwv_flow_imp.id(97614395674573539)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(97810704952415604)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>128
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(97859141307814772)
,p_view_id=>wwv_flow_imp.id(97614395674573539)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(97811017986415607)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>71
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(97860010560814775)
,p_view_id=>wwv_flow_imp.id(97614395674573539)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(97811135957415608)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>169
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(97860903957814777)
,p_view_id=>wwv_flow_imp.id(97614395674573539)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(97811231603415609)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>223
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109531771514586599)
,p_view_id=>wwv_flow_imp.id(97614395674573539)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(108739988860481648)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>308
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(97648270440719004)
,p_plug_name=>'BG Utilization'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2310230379184666)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' WITH FOL_AMOUNT AS (',
'    SELECT     ',
'        MAX(FLDS.ID) AS DET_ID,',
'        FLDS.MAST_ID,',
'        NVL(SUM(FLDS.AMOUNT), 0) AS TOTAL_FOL_AMOUNT',
'    FROM AB_FACILITIES_LETTER_DET FLDS',
'    JOIN AB_LOOKUP_DETAIL LD ON LD.DET_ID = FLDS.FACILITIES_ID',
'    WHERE FLDS.FACILITIES_TYPE = ''FACILITIES DET''',
'      AND FLDS.ORG_ID = :GV_ORG_ID',
'    GROUP BY FLDS.MAST_ID',
'    ',
'),',
'FIRST_BG AS (',
'    SELECT *',
'    FROM (',
'        SELECT ',
'            AFLS.FACILITIES_ID,',
'            AFLS.BG_NUMBER,',
'            AFLS.BG_ISSU_DATE,',
'            AFLS.BG_EXPIRE_DATE,',
'            AFLS.AMOUNT,',
'            FA.TOTAL_FOL_AMOUNT,',
'            FA.MAST_ID,',
'            ROW_NUMBER() OVER (PARTITION BY FA.MAST_ID ORDER BY AFLS.BG_ISSU_DATE, AFLS.FACILITIES_ID) AS RN,',
'            AFLS.ID AS UTI_ID',
'        FROM AB_FACILITIES_LETTER AFLS',
'        JOIN FOL_AMOUNT FA ON AFLS.FACILITIES_ID = FA.DET_ID',
'        WHERE AFLS.ORG_ID = :GV_ORG_ID',
'    ) ',
'    WHERE RN = 1',
'),',
'UTIL_AND_EXPIRE_ROWS AS (',
'    -- Utilization rows (minus first)',
'    SELECT ',
'        AFLS.FACILITIES_ID,',
'        AFLS.BG_NUMBER,',
'        AFLS.BG_ISSU_DATE,',
'        AFLS.BG_EXPIRE_DATE,',
'        AFLS.AMOUNT AS UTILIZATION_AMOUNT,',
'        NULL AS TOTAL_AMOUNT,',
'        FA.MAST_ID,',
'        AFLS.BG_ISSU_DATE AS EVENT_DATE,',
'        1 AS EVENT_TYPE,',
'        AFLS.ID AS UTI_ID',
'    FROM AB_FACILITIES_LETTER AFLS',
'    JOIN FOL_AMOUNT FA ON AFLS.FACILITIES_ID = FA.DET_ID',
'    WHERE AFLS.ORG_ID = :GV_ORG_ID',
'',
'    UNION ALL',
'',
'    -- Expiry rows (add back)',
'    SELECT ',
'        AFLS.FACILITIES_ID,',
'        AFLS.BG_NUMBER,',
'        AFLS.BG_ISSU_DATE,',
'        AFLS.BG_EXPIRE_DATE,',
'        NULL AS UTILIZATION_AMOUNT,',
'        AFLS.AMOUNT AS TOTAL_AMOUNT,',
'        FA.MAST_ID,',
'        AFLS.BG_EXPIRE_DATE AS EVENT_DATE,',
'        2 AS EVENT_TYPE,',
'        AFLS.ID AS UTI_ID',
'    FROM AB_FACILITIES_LETTER AFLS',
'    JOIN FOL_AMOUNT FA ON AFLS.FACILITIES_ID = FA.DET_ID',
'    WHERE AFLS.ORG_ID = :GV_ORG_ID',
'      AND AFLS.BG_EXPIRE_DATE <= SYSDATE',
'),',
'ALL_ROWS AS (',
'    SELECT',
'        F.FACILITIES_ID,',
'        F.BG_NUMBER,',
'        F.BG_ISSU_DATE,',
'        F.BG_EXPIRE_DATE,',
'        NULL AS UTILIZATION_AMOUNT,',
'        F.TOTAL_FOL_AMOUNT AS TOTAL_AMOUNT,',
'        F.MAST_ID,',
'        TO_DATE(''1900-01-01'', ''YYYY-MM-DD'') AS EVENT_DATE,',
'        0 AS EVENT_TYPE,',
'        F.UTI_ID,',
'        0 AS SEQ_ORDER',
'    FROM FIRST_BG F',
'',
'    UNION ALL',
'',
'    SELECT',
'        U.FACILITIES_ID,',
'        U.BG_NUMBER,',
'        U.BG_ISSU_DATE,',
'        U.BG_EXPIRE_DATE,',
'        U.UTILIZATION_AMOUNT,',
'        U.TOTAL_AMOUNT,',
'        U.MAST_ID,',
'        U.EVENT_DATE,',
'        U.EVENT_TYPE,',
'        U.UTI_ID,',
'        CASE ',
'            WHEN U.EVENT_TYPE = 1 THEN 1  ',
'            WHEN U.EVENT_TYPE = 2 THEN 2  ',
'            ELSE 3',
'        END AS SEQ_ORDER',
'    FROM UTIL_AND_EXPIRE_ROWS U',
')',
'',
'-- Final output',
'-- Final output',
'SELECT *',
'FROM (',
'    SELECT',
'        FACILITIES_ID,',
'        BG_NUMBER,',
'        BG_ISSU_DATE,',
'        BG_EXPIRE_DATE,',
'        UTILIZATION_AMOUNT,',
'        TOTAL_AMOUNT,',
'        MAST_ID,',
'SUM(',
'  CASE ',
'    WHEN EVENT_TYPE = 0 THEN NVL(TOTAL_AMOUNT, 0)                                -- Opening',
'    WHEN EVENT_TYPE = 1 THEN -NVL(UTILIZATION_AMOUNT, 0)                         -- Utilization',
'    WHEN EVENT_TYPE = 2 THEN NVL(TOTAL_AMOUNT, NVL(UTILIZATION_AMOUNT, 0))        -- Expiry/Release add back',
'    ELSE 0',
'  END',
') OVER (',
'  PARTITION BY MAST_ID ',
'  ORDER BY EVENT_DATE, SEQ_ORDER, UTI_ID',
'  ROWS UNBOUNDED PRECEDING',
') AS BALANCE',
',',
'',
'        ',
'        CASE ',
'            WHEN EVENT_DATE = TO_DATE(''1900-01-01'', ''YYYY-MM-DD'') THEN 0 ',
'            ELSE 1 ',
'        END AS SORT_ORDER,',
'        EVENT_DATE,',
'        EVENT_TYPE,',
'        UTI_ID',
'    FROM ALL_ROWS',
')',
'',
'',
'',
'',
'',
'',
'',
'-- WITH FOL_AMOUNT AS (',
'--     SELECT     ',
'--         MAX(FLDS.ID) AS DET_ID,',
'--         FLDS.MAST_ID,',
'--         NVL(SUM(FLDS.AMOUNT), 0) AS TOTAL_FOL_AMOUNT',
'--     FROM AB_FACILITIES_LETTER_DET FLDS',
'--     JOIN AB_LOOKUP_DETAIL LD ON LD.DET_ID = FLDS.FACILITIES_ID',
'--     WHERE FLDS.FACILITIES_TYPE = ''FACILITIES DET''',
'--         AND FLDS.ORG_ID = :GV_ORG_ID',
'--     GROUP BY FLDS.MAST_ID)',
'--      SELECT',
'--         AFLS.FACILITIES_ID,',
'--         AFLS.BG_NUMBER,',
'--         AFLS.BG_ISSU_DATE,',
'--         AFLS.BG_EXPIRE_DATE,',
'--         AFLS.AMOUNT AS UTILIZATION_AMOUNT,',
'--         FA.TOTAL_FOL_AMOUNT AS TOTAL_AMOUNT,',
'--         FA.MAST_ID AS MAST_ID,',
'--         ROW_NUMBER() OVER (PARTITION BY FA.MAST_ID ORDER BY AFLS.BG_ISSU_DATE, AFLS.FACILITIES_ID) AS SEQUENCE_NUMBER,',
'--         NVL(FA.TOTAL_FOL_AMOUNT,0) - NVL(AFLS.AMOUNT,0) AS BALANCE',
'--     FROM AB_FACILITIES_LETTER AFLS',
'--     JOIN FOL_AMOUNT FA ON AFLS.FACILITIES_ID = FA.DET_ID',
'--     WHERE AFLS.ORG_ID = :GV_ORG_ID',
'',
'',
'',
'',
'',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(97558371661525727)
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
,p_landmark_type=>'main'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(97648564350719007)
,p_heading=>'Utilization'
,p_label=>'Utilization'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(98019476516115320)
,p_name=>'UTILIZATION_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UTILIZATION_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Utilization Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(97648564350719007)
,p_use_group_for=>'BOTH'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990'
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
 p_id=>wwv_flow_imp.id(99035583035165538)
,p_name=>'TOTAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(97648564350719007)
,p_use_group_for=>'BOTH'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990'
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
 p_id=>wwv_flow_imp.id(99036203614165545)
,p_name=>'FACILITIES_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FACILITIES_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Facilities Id'
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
 p_id=>wwv_flow_imp.id(99036368138165546)
,p_name=>'EVENT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Event Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(99036409638165547)
,p_name=>'EVENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_TYPE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Event Type'
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
 p_id=>wwv_flow_imp.id(99677322682270804)
,p_name=>'MAST_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAST_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(97811017986415607)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99677467224270805)
,p_name=>'BG_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BG_NUMBER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Bg Number'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(97648564350719007)
,p_use_group_for=>'BOTH'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(99677521711270806)
,p_name=>'BG_ISSU_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BG_ISSU_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Bg Issu Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(97648564350719007)
,p_use_group_for=>'BOTH'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_format_mask=>'DD-MON-YYYY'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(99677655015270807)
,p_name=>'BG_EXPIRE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BG_EXPIRE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Bg Expire Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>280
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(97648564350719007)
,p_use_group_for=>'BOTH'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_format_mask=>'DD-MON-YYYY'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(99677791548270808)
,p_name=>'BALANCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BALANCE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Balance'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>290
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(97648564350719007)
,p_use_group_for=>'BOTH'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990'
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
 p_id=>wwv_flow_imp.id(99677878008270809)
,p_name=>'SORT_ORDER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SORT_ORDER'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sort Order'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>300
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
 p_id=>wwv_flow_imp.id(99677915328270810)
,p_name=>'UTI_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UTI_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Uti Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>310
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(97648372062719005)
,p_internal_uid=>97648372062719005
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>true
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
 p_id=>wwv_flow_imp.id(97681793850044348)
,p_interactive_grid_id=>wwv_flow_imp.id(97648372062719005)
,p_static_id=>'976818'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(97681929376044348)
,p_report_id=>wwv_flow_imp.id(97681793850044348)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1782500005423)
,p_view_id=>wwv_flow_imp.id(97681929376044348)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(99677467224270805)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2878388005426)
,p_view_id=>wwv_flow_imp.id(97681929376044348)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(99677521711270806)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3952198005429)
,p_view_id=>wwv_flow_imp.id(97681929376044348)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(99677655015270807)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5062737005432)
,p_view_id=>wwv_flow_imp.id(97681929376044348)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(99677791548270808)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6146736005435)
,p_view_id=>wwv_flow_imp.id(97681929376044348)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(99677878008270809)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7251118005437)
,p_view_id=>wwv_flow_imp.id(97681929376044348)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(99677915328270810)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98067780514342346)
,p_view_id=>wwv_flow_imp.id(97681929376044348)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(98019476516115320)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>113
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(99467150859069551)
,p_view_id=>wwv_flow_imp.id(97681929376044348)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(99035583035165538)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(99573381829688186)
,p_view_id=>wwv_flow_imp.id(97681929376044348)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(99036203614165545)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(99574292752688189)
,p_view_id=>wwv_flow_imp.id(97681929376044348)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(99036368138165546)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(99575189730688192)
,p_view_id=>wwv_flow_imp.id(97681929376044348)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(99036409638165547)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>129
,p_sort_order=>2
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(99743178461901813)
,p_view_id=>wwv_flow_imp.id(97681929376044348)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(99677322682270804)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98020186002115327)
,p_plug_name=>'BG Utilization dublicate'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2310230379184666)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH FOL_AMOUNT AS (',
'      SELECT     ',
'        FLDS.ID AS DET_ID,',
'        FLDS.MAST_ID,',
'        NVL(SUM(FLDS.AMOUNT), 0) AS TOTAL_FOL_AMOUNT,',
'        ISSUE_DATE AS ISSUE_DATE,',
'       -- LISTAGG(LD.LOOKUP_DET_NAME, '' , '') WITHIN GROUP (ORDER BY LD.LOOKUP_DET_NAME) AS FACILITIES_NAME',
'         LD.LOOKUP_DET_NAME AS FACILITIES_NAME',
'    FROM AB_FACILITIES_LETTER_DET FLDS',
'    JOIN AB_LOOKUP_DETAIL LD ',
'        ON LD.DET_ID = FLDS.FACILITIES_ID',
'    WHERE FLDS.FACILITIES_TYPE = ''FACILITIES DET''',
'        AND FLDS.ORG_ID = :GV_ORG_ID',
'    GROUP BY FLDS.MAST_ID , ISSUE_DATE ,  LD.LOOKUP_DET_NAME , FLDS.ID , FLDS.ACCOUNT_NO ',
'),',
'',
'ALL_EVENTS AS (',
'    -- Opening row',
'    SELECT',
'        DET_ID,',
'        FA.MAST_ID,',
'        NULL AS UTILIZATION_AMOUNT,',
'        FA.TOTAL_FOL_AMOUNT AS TOTAL_AMOUNT,',
'        ISSUE_DATE AS EVENT_DATE,',
'        0 AS EVENT_TYPE, ',
'        FACILITIES_NAME,',
'        NULL AS BG_NUMBER,',
'       NULL AS SUPPLIER_ID,',
'       NULL AS SR_ID,',
'       NULL AS SUPPLIER_NAME',
'    FROM FOL_AMOUNT FA',
'  ',
'',
'    UNION ALL',
'',
'    -- Utilization rows (minus)',
'    SELECT',
'       FA.DET_ID,',
'        FA.MAST_ID,',
'        AFLS.AMOUNT AS UTILIZATION_AMOUNT,',
'        NULL AS TOTAL_AMOUNT,',
'        AFLS.BG_ISSU_DATE AS EVENT_DATE,',
'        1 AS EVENT_TYPE,',
'        FACILITIES_NAME,',
'        AFLS.BG_NUMBER,',
'        AFLS.SUPPLIER_ID,',
'        ASR.SR_ID,',
'        MAX(CASE WHEN ASR.SR_ID = AFLS.SUPPLIER_ID AND ASR.REG_TYPE = ''VENDOR'' THEN INITCAP(ASR.PARTY_NAME) ELSE NULL END) AS Supplier_Name',
'',
'    FROM AB_FACILITIES_LETTER AFLS',
'    JOIN FOL_AMOUNT FA   ON AFLS.FACILITIES_ID = FA.DET_ID',
'   LEFT JOIN AB_SETUP_REGISTRATION ASR ON ASR.SR_ID = AFLS.SUPPLIER_ID',
'    WHERE AFLS.ORG_ID = :GV_ORG_ID',
'      AND AFLS.AMOUNT > 0',
'      GROUP BY',
'    FA.DET_ID,',
'    FA.MAST_ID,',
'    AFLS.AMOUNT,',
'    AFLS.BG_ISSU_DATE,',
'    FACILITIES_NAME,',
'    AFLS.BG_NUMBER,',
'    AFLS.SUPPLIER_ID,',
'    ASR.SR_ID',
'',
'    UNION ALL',
'',
'    -- Return rows (plus back)',
'    SELECT',
'        FA.DET_ID,',
'        FA.MAST_ID,',
'        NULL AS UTILIZATION_AMOUNT,',
'        AFLS.AMOUNT AS TOTAL_AMOUNT,',
'        AFLS.BG_EXPIRE_DATE AS EVENT_DATE,',
'        2 AS EVENT_TYPE,',
'        FACILITIES_NAME,',
'        AFLS.BG_NUMBER,',
'        AFLS.SUPPLIER_ID,',
'        ASR.SR_ID,',
'       MAX(CASE WHEN ASR.SR_ID = AFLS.SUPPLIER_ID AND ASR.REG_TYPE = ''VENDOR'' THEN INITCAP(ASR.PARTY_NAME) ELSE NULL END) AS Supplier_Name',
'',
'    FROM AB_FACILITIES_LETTER AFLS',
'    JOIN FOL_AMOUNT FA    ON AFLS.FACILITIES_ID = FA.DET_ID',
'     LEFT JOIN AB_SETUP_REGISTRATION ASR ON ASR.SR_ID = AFLS.SUPPLIER_ID',
'     ',
'    WHERE AFLS.ORG_ID = :GV_ORG_ID',
'      AND AFLS.BG_EXPIRE_DATE <= SYSDATE',
'      GROUP BY',
'    FA.DET_ID,',
'    FA.MAST_ID,',
'    AFLS.AMOUNT,',
'    AFLS.BG_EXPIRE_DATE,',
'    FACILITIES_NAME,',
'    AFLS.BG_NUMBER,',
'    AFLS.SUPPLIER_ID,',
'    ASR.SR_ID',
')',
'SELECT',
'    DET_ID,',
'    MAST_ID,',
'    UTILIZATION_AMOUNT,',
'    TOTAL_AMOUNT,',
'    TO_CHAR(EVENT_DATE, ''DD-MON-YYYY'') AS EVENT_DATE,',
'    EVENT_TYPE,',
'    FACILITIES_NAME,',
'    BG_NUMBER,',
'   SUPPLIER_ID,',
'   SR_ID,',
'   Supplier_Name,',
'    SUM(',
'        CASE ',
'            WHEN EVENT_TYPE = 0 THEN NVL(TOTAL_AMOUNT, 0)          -- Opening (+)',
unistr('            WHEN EVENT_TYPE = 1 THEN -NVL(UTILIZATION_AMOUNT, 0)   -- Utilization (\2212)'),
'            WHEN EVENT_TYPE = 2 THEN NVL(TOTAL_AMOUNT, 0)           -- Return (+)',
'            ELSE 0',
'        END',
'    ) OVER (',
'        PARTITION BY MAST_ID',
'        ORDER BY EVENT_DATE,  EVENT_TYPE',
'        ROWS UNBOUNDED PRECEDING',
'    ) AS BALANCE',
'FROM ALL_EVENTS',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(97558371661525727)
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
,p_landmark_type=>'main'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(98020363336115329)
,p_heading=>'Facilities of letter'
,p_label=>'Facilities of letter'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(98020416274115330)
,p_heading=>'Utilization..'
,p_label=>'Utilization'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(98020942041115335)
,p_name=>'TOTAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Total Amount'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(98020416274115330)
,p_use_group_for=>'BOTH'
,p_attribute_05=>'BOTH'
,p_format_mask=>'999G999G999G999G990'
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(98021012914115336)
,p_name=>'UTILIZATION_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UTILIZATION_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Utilization Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(98020416274115330)
,p_use_group_for=>'BOTH'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990'
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
 p_id=>wwv_flow_imp.id(98021159062115337)
,p_name=>'BALANCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BALANCE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Balance'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(98020416274115330)
,p_use_group_for=>'BOTH'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990'
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
 p_id=>wwv_flow_imp.id(98022054290115346)
,p_name=>'MAST_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAST_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mast id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(98020416274115330)
,p_use_group_for=>'BOTH'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(97811017986415607)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(108737982000481628)
,p_name=>'EVENT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_group_id=>wwv_flow_imp.id(98020416274115330)
,p_use_group_for=>'BOTH'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(108738096371481629)
,p_name=>'EVENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_TYPE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Event Type'
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
 p_id=>wwv_flow_imp.id(108739249394481641)
,p_name=>'FACILITIES_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FACILITIES_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Facilities Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(98020416274115330)
,p_use_group_for=>'BOTH'
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
 p_id=>wwv_flow_imp.id(108739349347481642)
,p_name=>'BG_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BG_NUMBER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Bg Number'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(98020416274115330)
,p_use_group_for=>'BOTH'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(108739700784481646)
,p_name=>'DET_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DET_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Det Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(98020416274115330)
,p_use_group_for=>'BOTH'
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
 p_id=>wwv_flow_imp.id(108740052383481649)
,p_name=>'SUPPLIER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPPLIER_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Supplier Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(98020416274115330)
,p_use_group_for=>'BOTH'
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
 p_id=>wwv_flow_imp.id(109585872423134502)
,p_name=>'SR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SR_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sr Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>180
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(98020416274115330)
,p_use_group_for=>'BOTH'
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
 p_id=>wwv_flow_imp.id(109585905207134503)
,p_name=>'SUPPLIER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPPLIER_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Supplier Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(98020416274115330)
,p_use_group_for=>'BOTH'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>100
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(98020250511115328)
,p_internal_uid=>98020250511115328
,p_is_editable=>false
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
 p_id=>wwv_flow_imp.id(98742287183394462)
,p_interactive_grid_id=>wwv_flow_imp.id(98020250511115328)
,p_static_id=>'987423'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(98742435854394463)
,p_report_id=>wwv_flow_imp.id(98742287183394462)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15650484082514)
,p_view_id=>wwv_flow_imp.id(98742435854394463)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(109585872423134502)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19391490123898)
,p_view_id=>wwv_flow_imp.id(98742435854394463)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(109585905207134503)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>216
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21653174134907)
,p_view_id=>wwv_flow_imp.id(98742435854394463)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(98022054290115346)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>56
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98747268680394483)
,p_view_id=>wwv_flow_imp.id(98742435854394463)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(98020942041115335)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98748178730394486)
,p_view_id=>wwv_flow_imp.id(98742435854394463)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(98021012914115336)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98749069791394489)
,p_view_id=>wwv_flow_imp.id(98742435854394463)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(98021159062115337)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(108939796980605366)
,p_view_id=>wwv_flow_imp.id(98742435854394463)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(108737982000481628)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(108940699895605369)
,p_view_id=>wwv_flow_imp.id(98742435854394463)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(108738096371481629)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109185019647901425)
,p_view_id=>wwv_flow_imp.id(98742435854394463)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(108739249394481641)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>136
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109244395436284550)
,p_view_id=>wwv_flow_imp.id(98742435854394463)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(108739349347481642)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>162
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109382443988734579)
,p_view_id=>wwv_flow_imp.id(98742435854394463)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(108739700784481646)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>65
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109571656333946631)
,p_view_id=>wwv_flow_imp.id(98742435854394463)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(108740052383481649)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108736654054481615)
,p_plug_name=>'BG Utilization dublicate'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2310230379184666)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH FOL_AMOUNT AS (',
'      SELECT     ',
'        FLDS.ID AS DET_ID,',
'        FLDS.MAST_ID,',
'        NVL(SUM(FLDS.AMOUNT), 0) AS TOTAL_FOL_AMOUNT,',
'        ISSUE_DATE AS ISSUE_DATE,',
'       -- LISTAGG(LD.LOOKUP_DET_NAME, '' , '') WITHIN GROUP (ORDER BY LD.LOOKUP_DET_NAME) AS FACILITIES_NAME',
'         LD.LOOKUP_DET_NAME AS FACILITIES_NAME',
'    FROM AB_FACILITIES_LETTER_DET FLDS',
'    JOIN AB_LOOKUP_DETAIL LD ',
'        ON LD.DET_ID = FLDS.FACILITIES_ID',
'    WHERE FLDS.FACILITIES_TYPE = ''FACILITIES DET''',
'        AND FLDS.ORG_ID = :GV_ORG_ID',
'    GROUP BY FLDS.MAST_ID , ISSUE_DATE ,  LD.LOOKUP_DET_NAME , FLDS.ID , FLDS.ACCOUNT_NO ',
'),',
'',
'ALL_EVENTS AS (',
'    -- Opening row',
'    SELECT',
'        DET_ID,',
'        FA.MAST_ID,',
'        NULL AS UTILIZATION_AMOUNT,',
'        FA.TOTAL_FOL_AMOUNT AS TOTAL_AMOUNT,',
'        ISSUE_DATE AS EVENT_DATE,',
'        -- TO_DATE(''1900-01-01'',''YYYY-MM-DD'') AS EVENT_DATE,',
'        0 AS EVENT_TYPE, ',
'        FACILITIES_NAME,',
'        NULL AS BG_NUMBER,',
'       NULL AS SUPPLIER_ID,',
'       NULL AS SR_ID,',
'       NULL AS SUPPLIER_NAME',
'    FROM FOL_AMOUNT FA',
'  ',
'',
'    UNION ALL',
'',
'    -- Utilization rows (minus)',
'    SELECT',
'       FA.DET_ID,',
'        FA.MAST_ID,',
'        AFLS.AMOUNT AS UTILIZATION_AMOUNT,',
'        NULL AS TOTAL_AMOUNT,',
'        AFLS.BG_ISSU_DATE AS EVENT_DATE,',
'        1 AS EVENT_TYPE,',
'        FACILITIES_NAME,',
'        AFLS.BG_NUMBER,',
'        AFLS.SUPPLIER_ID,',
'        ASR.SR_ID,',
'        MAX(CASE WHEN ASR.SR_ID = AFLS.SUPPLIER_ID AND ASR.REG_TYPE = ''VENDOR'' THEN INITCAP(ASR.PARTY_NAME) ELSE NULL END) AS Supplier_Name',
'',
'    FROM AB_FACILITIES_LETTER AFLS',
'    JOIN FOL_AMOUNT FA   ON AFLS.FACILITIES_ID = FA.DET_ID',
'   LEFT JOIN AB_SETUP_REGISTRATION ASR ON ASR.SR_ID = AFLS.SUPPLIER_ID',
'    WHERE AFLS.ORG_ID = :GV_ORG_ID',
'      AND AFLS.AMOUNT > 0',
'      GROUP BY',
'    FA.DET_ID,',
'    FA.MAST_ID,',
'    AFLS.AMOUNT,',
'    AFLS.BG_ISSU_DATE,',
'    FACILITIES_NAME,',
'    AFLS.BG_NUMBER,',
'    AFLS.SUPPLIER_ID,',
'    ASR.SR_ID',
'',
'    UNION ALL',
'',
'    -- Return rows (plus back)',
'    SELECT',
'        FA.DET_ID,',
'        FA.MAST_ID,',
'        NULL AS UTILIZATION_AMOUNT,',
'        AFLS.AMOUNT AS TOTAL_AMOUNT,',
'        AFLS.BG_EXPIRE_DATE AS EVENT_DATE,',
'        2 AS EVENT_TYPE,',
'        FACILITIES_NAME,',
'        AFLS.BG_NUMBER,',
'        AFLS.SUPPLIER_ID,',
'        ASR.SR_ID,',
'       MAX(CASE WHEN ASR.SR_ID = AFLS.SUPPLIER_ID AND ASR.REG_TYPE = ''VENDOR'' THEN INITCAP(ASR.PARTY_NAME) ELSE NULL END) AS Supplier_Name',
'',
'    FROM AB_FACILITIES_LETTER AFLS',
'    JOIN FOL_AMOUNT FA    ON AFLS.FACILITIES_ID = FA.DET_ID',
'     LEFT JOIN AB_SETUP_REGISTRATION ASR ON ASR.SR_ID = AFLS.SUPPLIER_ID',
'     ',
'    WHERE AFLS.ORG_ID = :GV_ORG_ID',
'      AND AFLS.BG_EXPIRE_DATE <= SYSDATE',
'      GROUP BY',
'    FA.DET_ID,',
'    FA.MAST_ID,',
'    AFLS.AMOUNT,',
'    AFLS.BG_EXPIRE_DATE,',
'    FACILITIES_NAME,',
'    AFLS.BG_NUMBER,',
'    AFLS.SUPPLIER_ID,',
'    ASR.SR_ID',
')',
'SELECT',
'    DET_ID,',
'    MAST_ID,',
'    UTILIZATION_AMOUNT,',
'    TOTAL_AMOUNT,',
'    TO_CHAR(EVENT_DATE, ''DD-MON-YYYY'') AS EVENT_DATE,',
'    EVENT_TYPE,',
'    FACILITIES_NAME,',
'    BG_NUMBER,',
'   SUPPLIER_ID,',
'   SR_ID,',
'   Supplier_Name,',
'    SUM(',
'        CASE ',
'            WHEN EVENT_TYPE = 0 THEN NVL(TOTAL_AMOUNT, 0)          -- Opening (+)',
unistr('            WHEN EVENT_TYPE = 1 THEN -NVL(UTILIZATION_AMOUNT, 0)   -- Utilization (\2212)'),
'            WHEN EVENT_TYPE = 2 THEN NVL(TOTAL_AMOUNT, 0)           -- Return (+)',
'            ELSE 0',
'        END',
'    ) OVER (',
'        PARTITION BY MAST_ID',
'        ORDER BY EVENT_DATE,  EVENT_TYPE',
'        ROWS UNBOUNDED PRECEDING',
'    ) AS BALANCE',
'FROM ALL_EVENTS',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(97558371661525727)
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
,p_landmark_type=>'main'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(108736885378481617)
,p_heading=>'Facilities of letter'
,p_label=>'Facilities of letter'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(108736958099481618)
,p_heading=>'Utilization..'
,p_label=>'Utilization'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(108737402461481623)
,p_name=>'TOTAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Total Amount'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_imp.id(108736958099481618)
,p_use_group_for=>'BOTH'
,p_attribute_05=>'BOTH'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(108737591529481624)
,p_name=>'UTILIZATION_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UTILIZATION_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Utilization Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(108736958099481618)
,p_use_group_for=>'BOTH'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(108737642944481625)
,p_name=>'BALANCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BALANCE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Balance'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(108736958099481618)
,p_use_group_for=>'BOTH'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(108737791716481626)
,p_name=>'MAST_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAST_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mast id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(97811017986415607)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(108738391589481632)
,p_name=>'EVENT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Event Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(108738479736481633)
,p_name=>'EVENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_TYPE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Event Type'
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
 p_id=>wwv_flow_imp.id(109586053608134504)
,p_name=>'DET_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DET_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Det Id'
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
 p_id=>wwv_flow_imp.id(109586126296134505)
,p_name=>'FACILITIES_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FACILITIES_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Facilities Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(109586259103134506)
,p_name=>'BG_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BG_NUMBER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Bg Number'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(109586358799134507)
,p_name=>'SUPPLIER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPPLIER_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Supplier Id'
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
 p_id=>wwv_flow_imp.id(109586459180134508)
,p_name=>'SR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SR_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sr Id'
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
 p_id=>wwv_flow_imp.id(109586577386134509)
,p_name=>'SUPPLIER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPPLIER_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Supplier Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>100
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(108736780061481616)
,p_internal_uid=>108736780061481616
,p_is_editable=>false
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
 p_id=>wwv_flow_imp.id(108865990588108628)
,p_interactive_grid_id=>wwv_flow_imp.id(108736780061481616)
,p_static_id=>'1088660'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(108866176744108628)
,p_report_id=>wwv_flow_imp.id(108865990588108628)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(108871437933108642)
,p_view_id=>wwv_flow_imp.id(108866176744108628)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(108737402461481623)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(108872398134108645)
,p_view_id=>wwv_flow_imp.id(108866176744108628)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(108737591529481624)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(108873294267108647)
,p_view_id=>wwv_flow_imp.id(108866176744108628)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(108737642944481625)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(108874119577108650)
,p_view_id=>wwv_flow_imp.id(108866176744108628)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(108737791716481626)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109082494425674370)
,p_view_id=>wwv_flow_imp.id(108866176744108628)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(108738391589481632)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109083333624674373)
,p_view_id=>wwv_flow_imp.id(108866176744108628)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(108738479736481633)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109655112507752711)
,p_view_id=>wwv_flow_imp.id(108866176744108628)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(109586053608134504)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109656071057752714)
,p_view_id=>wwv_flow_imp.id(108866176744108628)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(109586126296134505)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109656910940752717)
,p_view_id=>wwv_flow_imp.id(108866176744108628)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(109586259103134506)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109657877282752719)
,p_view_id=>wwv_flow_imp.id(108866176744108628)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(109586358799134507)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109658707092752722)
,p_view_id=>wwv_flow_imp.id(108866176744108628)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(109586459180134508)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109659698254752724)
,p_view_id=>wwv_flow_imp.id(108866176744108628)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(109586577386134509)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108738183291481630)
,p_plug_name=>'Facilities Wise Utilization'
,p_title=>'Facilities Wise Utilization'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useRegionTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2323719936184670)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(2250630693184645)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2427838267184704)
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
