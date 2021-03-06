

set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.3.00.05'
,p_default_workspace_id=>1871301519555315
,p_default_application_id=>14963
,p_default_owner=>'OOS_USER'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 14963 - Theme Boilerplate
--
-- Application Export:
--   Application:     14963
--   Name:            Theme Boilerplate
--   Date and Time:   07:51 Saturday November 4, 2017
--   Exported By:     OOS_USER
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.1.3.00.05
--   Instance ID:     230182471520822
--

-- Application Statistics:
--   Pages:                      1
--   Shared Components:
--     Logic:
--       Processes:              1
--       Build Options:          1
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 1
--         Region:               1
--         Label:                1
--         List:                 1
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               1
--         Report:               2
--     Globalization:
--     Reports:
--   Supporting Objects:  Excluded

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,14963)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'OOS_USER')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Theme Boilerplate')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'14963')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'N'
,p_checksum_salt=>'2EF51444DD573C61805687582DBA41A50C9B6F3E0E729BBA5361E6D3771F386B'
,p_bookmark_checksum_function=>'MD5'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(7051866691362378893)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:Theme Boilerplate'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'v3.0.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'S'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T:O:W'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_default_error_display_loc=>'INLINE_IN_NOTIFICATION'
,p_last_updated_by=>'OOS_USER'
,p_last_upd_yyyymmddhh24miss=>'20171104054202'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>482
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(7052437520090866111)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7052438002242866119)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Option 1'
,p_list_item_link_target=>'#'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7052438297000866119)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Option 2'
,p_list_item_link_target=>'#'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7052438593540866120)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Option 3'
,p_list_item_link_target=>'#'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(7053035503939855167)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7053035706899855168)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Option 1'
,p_list_item_link_target=>'#'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7053035992029855171)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Option 2'
,p_list_item_link_target=>'#'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7053036320683855171)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Logout'
,p_list_item_link_target=>'&LOGOUT_URL.'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(42809173278079668)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'LEGACY'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(42809615392079668)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(42809744133079668)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'classic'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(6891767731343016035)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(6891767803923016035)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(7051855596792378863)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SELECT_LIST'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(23531077955906805001)
,p_process_sequence=>-999
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'APEX Nitro'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Use one of the following depending on your files location',
'apex_application.g_flow_images := owa_util.get_cgi_env(''APEX-Nitro'');',
'-- apex_application.g_company_images := owa_util.get_cgi_env(''APEX-Nitro'');',
'-- apex_application.g_theme_file_prefix := owa_util.get_cgi_env(''APEX-Nitro'');',
'-- :G_APP_IMAGES := owa_util.get_cgi_env(''APEX-Nitro'');'))
,p_process_when=>'owa_util.get_cgi_env(''APEX-Nitro'') is not null'
,p_process_when_type=>'PLSQL_EXPRESSION'
,p_required_patch=>wwv_flow_api.id(18565436969862653538)
);
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(7051867805423378898)
,p_name=>' Breadcrumb'
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1940842014819938480)
,p_theme_id=>600
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="#RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'	<title>#TITLE#</title>',
'',
'	<meta charset="utf-8">',
'	<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'	<meta name="author" content="Vincent Morneau">',
'	<meta name="description" content="APEX Theme Boilerplate">',
'	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>',
'',
'	#APEX_CSS#',
'	#THEME_CSS#',
'	#TEMPLATE_CSS#',
'	#THEME_STYLE_CSS#',
'	#APPLICATION_CSS#',
'	#PAGE_CSS#',
'	#FAVICONS#',
'	#HEAD#',
'</head>',
'<body id="#PAGE_STATIC_ID#" class="#PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_OPEN#',
'',
'#REGION_POSITION_01#',
'#REGION_POSITION_02#',
'#REGION_POSITION_03#',
'#REGION_POSITION_04#',
'',
'<a href="#HOME_LINK#">#LOGO#</a>',
'',
'#NAVIGATION_BAR#',
'#TOP_GLOBAL_NAVIGATION_LIST#',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'',
'#GLOBAL_NOTIFICATION#',
'#SUCCESS_MESSAGE#',
'#NOTIFICATION_MESSAGE#',
'#BODY#',
'',
'#REGION_POSITION_05#',
'#REGION_POSITION_06#',
'#REGION_POSITION_07#',
'#REGION_POSITION_08#',
'',
'#APP_VERSION#',
'#CUSTOMIZE#',
'#SCREEN_READER_TOGGLE#',
'',
'#FORM_CLOSE#',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>#SUCCESS_MESSAGE#</div>',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>#MESSAGE#</div>',
''))
,p_theme_class_id=>8
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
'	<p>#MESSAGE#</p>',
'	<p>#ADDITIONAL_INFO#</p>',
'	<p>#TECHNICAL_INFO#</p>',
'</div>',
'<a href="#BACK_LINK#">#OK#</a>',
''))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">#ROWS#</div>',
''))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">#COLUMNS#</div>',
''))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>',
''))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1940842435080938481)
,p_page_template_id=>wwv_flow_api.id(1940842014819938480)
,p_name=>'Item Container'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1940844454182938482)
,p_page_template_id=>wwv_flow_api.id(1940842014819938480)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(1941014332249031093)
,p_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button type="button" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>',
'	<span>#LABEL#</span>',
'	<i class="#ICON_CSS_CLASSES#"></i>',
'</button>',
'',
''))
,p_translate_this_template=>'N'
,p_theme_class_id=>6
,p_theme_id=>600
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1940836543761930573)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'	#ICON_CSS_CLASSES##TITLE#',
'	#PREVIOUS##EDIT##COPY##EXPAND#',
'	#BODY##SUB_REGIONS#',
'	#CLOSE##HELP##CHANGE##DELETE##CREATE##CREATE2##NEXT#',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>600
,p_theme_class_id=>21
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1940905343779964570)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <li class="active"><a href="#LINK#">#ICON_CSS_CLASSES##TEXT#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <li><a href="#LINK#">#ICON_CSS_CLASSES##TEXT#</a></li>',
''))
,p_list_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_theme_id=>600
,p_theme_class_id=>9
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul id="#LIST_ID#" class="#COMPONENT_CSS_CLASSES#">',
''))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
''))
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(42812451358387174)
,p_row_template_name=>'Standard - Named Column'
,p_internal_name=>'STANDARD_NAMED_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'		<div class="#COMPONENT_CSS_CLASSES#">',
'			#1##2##3##4##5#',
'		</div>',
''))
,p_row_template_before_rows=>' '
,p_row_template_after_rows=>' '
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>600
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(42812494064389286)
,p_row_template_name=>'Standard - Generic Columns'
,p_internal_name=>'STANDARD_GENERIC_COLUMNS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'        <td headers="#COLUMN_HEADER_NAME#" #ALIGNMENT#>#COLUMN_VALUE#</td>',
''))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table id="report_#REGION_STATIC_ID#" class="#COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'<tfoot>',
'    <div>#EXTERNAL_LINK##CSV_LINK#</div>',
'    <div>#PAGINATION#</div>',
'</tfoot>',
''))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<thead>',
'<tr>',
''))
,p_column_heading_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <th id="#COLUMN_HEADER_NAME#" #ALIGNMENT# #COLUMN_WIDTH#>#COLUMN_HEADER#</th>',
''))
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tr>',
'</thead>',
'<tbody>',
''))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span>#TEXT#</span>',
''))
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#">next</a>',
''))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#">previous</a>',
''))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#">next set</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#">previous set</a>',
''))
,p_theme_id=>600
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(42812494064389286)
,p_row_template_before_first=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <tr>',
''))
,p_row_template_after_last=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    </tr>',
''))
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(1940903674442959926)
,p_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">',
''))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    </label>',
''))
,p_before_item=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#CURRENT_ITEM_NAME#_CONTAINER" class="#ITEM_CSS_CLASSES#">',
''))
,p_after_item=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'',
''))
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    #ERROR_TEMPLATE#',
''))
,p_error_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<span>#ERROR_MESSAGE#</span>',
''))
,p_theme_id=>600
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(1941017329233039749)
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_before_first=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<nav class="#COMPONENT_CSS_CLASSES#">',
''))
,p_current_page_option=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <a href="#LINK#">#NAME#</a>',
''))
,p_non_current_page_option=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <a href="#LINK#">#NAME#</a>',
''))
,p_after_last=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
''))
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>600
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(1941018459525043767)
,p_page_name=>'Popup - Standard'
,p_theme_id=>600
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(1940980666983055022)
,p_cal_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_day_of_week_format=>'<th>#IDAY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="">',
' <tr>',
'   <td align="center" style="font-weight:bold;">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="1" cellpadding="1" cellspacing="1" summary="0">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div>#DD#</div><br />'
,p_day_open_format=>'<td valign="top">'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" bgcolor="#d3d3d3">'
,p_weekend_title_format=>'<div>#DD#</div>'
,p_weekend_open_format=>'<td valign="top">'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div>#DD#</div>'
,p_nonday_open_format=>'<td valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_theme_id=>600
,p_theme_class_id=>4
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(1940764861013868941)
,p_theme_id=>600
,p_theme_name=>'Theme Boilerplate'
,p_theme_internal_name=>'THEME_BOILERPLATE'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(1940842014819938480)
,p_error_template=>wwv_flow_api.id(1940842014819938480)
,p_login_template=>wwv_flow_api.id(1940842014819938480)
,p_default_button_template=>wwv_flow_api.id(1941014332249031093)
,p_default_region_template=>wwv_flow_api.id(1940836543761930573)
,p_default_chart_template=>wwv_flow_api.id(1940836543761930573)
,p_default_form_template=>wwv_flow_api.id(1940836543761930573)
,p_default_reportr_template=>wwv_flow_api.id(1940836543761930573)
,p_default_tabform_template=>wwv_flow_api.id(1940836543761930573)
,p_default_wizard_template=>wwv_flow_api.id(1940836543761930573)
,p_default_menur_template=>wwv_flow_api.id(1940836543761930573)
,p_default_listr_template=>wwv_flow_api.id(1940836543761930573)
,p_default_irr_template=>wwv_flow_api.id(1940836543761930573)
,p_default_report_template=>wwv_flow_api.id(42812494064389286)
,p_default_label_template=>wwv_flow_api.id(1940903674442959926)
,p_default_calendar_template=>wwv_flow_api.id(1940980666983055022)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogr_template=>wwv_flow_api.id(1940836543761930573)
,p_default_option_label=>wwv_flow_api.id(1940903674442959926)
,p_default_required_label=>wwv_flow_api.id(1940903674442959926)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(600),'')
,p_icon_library=>'FONTAPEX'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6029259473788640706)
,p_theme_id=>101
,p_name=>'COLLAPSIBLE_BEHAVIOR'
,p_display_name=>'Collapsible Behavior'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6103153597420005466)
,p_theme_id=>101
,p_name=>'LANGUAGE_TYPE'
,p_display_name=>'Language Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6179436830381811572)
,p_theme_id=>101
,p_name=>'ALIGNMENT'
,p_display_name=>'Alignment'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6462301244206606110)
,p_theme_id=>101
,p_name=>'SHADOW'
,p_display_name=>'Shadow'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6894682557716127692)
,p_theme_id=>101
,p_name=>'SECTION_HEADER_SIZE'
,p_display_name=>'Section Header Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6897871478547177176)
,p_theme_id=>101
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6897889898462178936)
,p_theme_id=>101
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6897891988603185070)
,p_theme_id=>101
,p_name=>'WAVE_COLOR'
,p_display_name=>'Wave Color'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'None'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7589287605249391190)
,p_theme_id=>101
,p_name=>'SHADOW'
,p_display_name=>'Shadow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7601424839181891163)
,p_theme_id=>101
,p_name=>'BACKGROUND_COLOR'
,p_display_name=>'Background Color'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7601425618488895813)
,p_theme_id=>101
,p_name=>'BACKGROUND_MODIFIER'
,p_display_name=>'Background Modifier'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7601446328632907236)
,p_theme_id=>101
,p_name=>'TEXT_COLOR'
,p_display_name=>'Text Color'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(18565436969862653538)
,p_build_option_name=>'DEV_ONLY'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
);
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(7051866691362378893)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(7051866492130378890)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Responsive'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>600
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(7052437520090866111)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(1940905343779964570)
,p_nav_list_template_options=>'#DEFAULT#'
,p_content_delivery_network=>'GOOGLE'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(7053035503939855167)
,p_nav_bar_list_template_id=>wwv_flow_api.id(1940905343779964570)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(7051866492130378890)
,p_name=>'Global Page'
,p_page_mode=>'NORMAL'
,p_step_title=>'Global Page - Desktop'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(1940842014819938480)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'D'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20150412222933'
);
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
