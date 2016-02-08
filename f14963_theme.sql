set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.3.00.03'
,p_default_workspace_id=>50654249616769752
,p_default_application_id=>14963
,p_default_owner=>'APEX_VMORNEAU'
);
end;
/
prompt --application/themes/102
begin
    wwv_flow.g_flow_theme_id := 102;
null;
end;
/
 
--
prompt  ...theme : 102
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
 p_id=>wwv_flow_api.id(1898031717988858628)
, p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'Modal'
,p_is_popup=>true
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<head>',
'    <title>#TITLE#</title>',
'    ',
'    <!-- Meta -->',
'    <meta charset="utf-8">',
'    <meta name="author" content="Vincent Morneau">',
'    <meta name="description" content="APEX Theme Boilerplate">',
'    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>',
'    ',
'    <!-- Mandatory APEX CSS -->',
'    #HEAD#',
'    #APEX_CSS#',
'    ',
'    <!-- Your Theme CSS -->',
'    #THEME_CSS#',
'    #THEME_STYLE_CSS#',
'    #APPLICATION_CSS#',
'    ',
'    <!-- Additionnal CSS -->',
'    #TEMPLATE_CSS#',
'    #PAGE_CSS#',
'</head>',
'<body class="#PAGE_CSS_CLASSES#" #ONLOAD#>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_OPEN#',
'',
'<div class="modal #PAGE_CSS_CLASSES#">',
'    <div class="modal-content">',
'        #SUCCESS_MESSAGE#',
'        #NOTIFICATION_MESSAGE#',
'        #BODY#',
'    </div>',
'    <div class="modal-footer">',
'        #REGION_POSITION_08#',
'    </div>',
'</div>',
'',
'#FORM_CLOSE#'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- Mandatory APEX JS -->',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'',
'<!-- Your JS -->',
'#THEME_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'    ',
'<!-- Additionnal JS -->',
'#TEMPLATE_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'',
'<!-- Generated code (plugins, etc.) -->',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div>#MESSAGE#</div>'
,p_notification_message=>'<div>#MESSAGE#</div>'
,p_theme_class_id=>8
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'    #ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'    #COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'    #CONTENT#',
'</div>'))
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1898032138567858635)
,p_page_template_id=>wwv_flow_api.id(1898031717988858628)
,p_name=>'Modal Footer'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1898033083328858856)
, p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'Standard'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<head>',
'    <title>#TITLE#</title>',
'    ',
'    <!-- Meta -->',
'    <meta charset="utf-8">',
'    <meta name="author" content="Vincent Morneau">',
'    <meta name="description" content="APEX Theme Boilerplate">',
'    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>',
'    ',
'    <!-- Mandatory APEX CSS -->',
'    #HEAD#',
'    #APEX_CSS#',
'    ',
'    <!-- Your CSS -->',
'    #THEME_CSS#',
'    #THEME_STYLE_CSS#',
'    #APPLICATION_CSS#',
'    ',
'    <!-- Additionnal CSS -->',
'    #TEMPLATE_CSS#',
'    #PAGE_CSS#',
'</head>',
'<body id="#PAGE_STATIC_ID#" class="#PAGE_CSS_CLASSES#" #ONLOAD#>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_OPEN#',
'',
'<!-- Item Container -->',
'#REGION_POSITION_01#',
'',
'<!-- Header -->',
'<header>',
'    #NAVIGATION_BAR#',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #SIDE_GLOBAL_NAVIGATION_LIST#',
'</header>',
'',
'<!-- Main Content -->',
'<main>',
'    #GLOBAL_NOTIFICATION#',
'    #SUCCESS_MESSAGE#',
'    #NOTIFICATION_MESSAGE#',
'    #BODY#',
'</main>',
'',
'<!-- Footer -->',
'<footer>',
'    #REGION_POSITION_08#',
'</footer>',
'',
'',
'#FORM_CLOSE#'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- Mandatory APEX JS Stuff -->',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'',
'<!-- Your JS -->',
'#THEME_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'    ',
'<!-- Additionnal JS -->',
'#TEMPLATE_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'',
'<!-- Generated Code (plugins, etc.) -->',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div>#MESSAGE#</div>'
,p_notification_message=>'<div>#MESSAGE#</div>'
,p_theme_class_id=>8
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'    #ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'    #COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#">',
'    #CONTENT#',
'</div>'))
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1898033503589858857)
,p_page_template_id=>wwv_flow_api.id(1898033083328858856)
,p_name=>'Item Container'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1898035522691858858)
,p_page_template_id=>wwv_flow_api.id(1898033083328858856)
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
 p_id=>wwv_flow_api.id(1898205400757951469)
,p_template_name=>'Standard'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#><i class="#ICON_CSS_CLASSES#"></i>#LABEL#</a>',
''))
,p_theme_class_id=>6
,p_theme_id => wwv_flow.g_flow_theme_id
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1898027612270850949)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'    #TITLE#',
'    #CREATE#    ',
'    #BODY#    ',
'    #CREATE2#',
'</div>'))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id => wwv_flow.g_flow_theme_id
,p_theme_class_id=>21
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1898096412288884946)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Standard'
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>9
,p_list_template_before_rows=>' <ul id="#LIST_ID#" class="#COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>' '
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1898046428474862479)
,p_row_template_name=>'Standard - Column'
,p_row_template1=>'<td headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>'<table id="report_#REGION_STATIC_ID#" class="#COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'<tfoot>',
'    <div>#EXTERNAL_LINK##CSV_LINK#</div>',
'</tfoot>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<thead>',
'<tr>'))
,p_column_heading_template=>'<th id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="instructiontext">#TEXT#</span>'
,p_next_page_template=>'<a href="#LINK#">next</a>'
,p_previous_page_template=>'<a href="#LINK#">previous</a>'
,p_next_set_template=>'<a href="#LINK#">next set</a>'
,p_previous_set_template=>'<a href="#LINK#">previous set</a>'
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>7
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(1898046428474862479)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1898072618661875621)
,p_row_template_name=>'Standard - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="#COMPONENT_CSS_CLASSES#">',
'    #1##2##3##4##5#',
'</div>'))
,p_row_template_before_rows=>' '
,p_row_template_after_rows=>' '
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>7
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(1898094742951880302)
,p_template_name=>'Standard'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'</label>'
,p_before_item=>'<div class="#ITEM_CSS_CLASSES#">'
,p_after_item=>'</div>'
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>5
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(1898208397741960125)
,p_name=>'Standard'
,p_before_first=>'<div class="#COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'#NAME#'
,p_non_current_page_option=>'<a href="#LINK#">#NAME#</a>'
,p_between_levels=>'&nbsp;&gt;&nbsp;'
,p_after_last=>'</div>'
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(1898209528033964143)
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
 p_id=>wwv_flow_api.id(1898171735491975398)
,p_cal_template_name=>'Standard'
,p_day_of_week_format=>'<th>#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="">',
' <tr>',
'   <td align="center" style="font-weight:bold;">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="1" cellpadding="1" cellspacing="1" summary="0">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
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
 p_id=>wwv_flow_api.id(1897955929522789317)
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_name=>'Theme Boilerplate'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(1898033083328858856)
,p_default_dialog_template=>wwv_flow_api.id(1898031717988858628)
,p_default_button_template=>wwv_flow_api.id(1898205400757951469)
,p_default_region_template=>wwv_flow_api.id(1898027612270850949)
,p_default_chart_template=>wwv_flow_api.id(1898027612270850949)
,p_default_form_template=>wwv_flow_api.id(1898027612270850949)
,p_default_reportr_template=>wwv_flow_api.id(1898027612270850949)
,p_default_tabform_template=>wwv_flow_api.id(1898027612270850949)
,p_default_wizard_template=>wwv_flow_api.id(1898027612270850949)
,p_default_menur_template=>wwv_flow_api.id(1898027612270850949)
,p_default_listr_template=>wwv_flow_api.id(1898027612270850949)
,p_default_irr_template=>wwv_flow_api.id(1898027612270850949)
,p_default_report_template=>wwv_flow_api.id(1898046428474862479)
,p_default_label_template=>wwv_flow_api.id(1898094742951880302)
,p_default_menu_template=>wwv_flow_api.id(1898208397741960125)
,p_default_calendar_template=>wwv_flow_api.id(1898171735491975398)
,p_default_list_template=>wwv_flow_api.id(1898096412288884946)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(1898027612270850949)
,p_default_dialogr_template=>wwv_flow_api.id(1898027612270850949)
,p_default_option_label=>wwv_flow_api.id(1898094742951880302)
,p_default_required_label=>wwv_flow_api.id(1898094742951880302)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_icon_library=>'FONTAWESOME'
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
 p_id=>wwv_flow_api.id(1898038462020851021)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'SECTION_HEADER_SIZE'
,p_display_name=>'Section Header Size'
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
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
