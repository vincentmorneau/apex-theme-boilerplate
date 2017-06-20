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
,p_release=>'5.1.0.00.45'
,p_default_workspace_id=>1871301519555315
,p_default_application_id=>14963
,p_default_owner=>'OOS_USER'
);
end;
/
prompt --application/themes/600
begin
    wwv_flow.g_flow_theme_id := 600;
null;
end;
/
 
--
prompt  ...theme : 600
--
prompt  ...remove existing theme ...
begin
 wwv_flow_api.delete_theme(p_flow_id=> wwv_flow.g_flow_id , p_theme_id=>wwv_flow.g_flow_theme_id ,p_import=>'Y');
null;
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1940842014819938480)
, p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>4
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(1940764861013868941)
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_name=>'Theme Boilerplate'
,p_theme_internal_name=>'THEME_BOILERPLATE'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(1940842014819938480)
,p_default_dialog_template=>wwv_flow_api.id(1940840649479938252)
,p_default_nav_list_position=>'SIDE'
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
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
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
