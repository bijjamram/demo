prompt --application/pages/page_00083
begin
wwv_flow_api.create_page(
 p_id=>83
,p_user_interface_id=>wwv_flow_api.id(2333082129878819730)
,p_name=>'Add Multiple Users'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(2506141252046817827)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.helpText {',
'padding: 8px;',
'color: #707070;',
'}'))
,p_step_template=>wwv_flow_api.id(1225680452518288315)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(3797358846252064904)
,p_dialog_chained=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20180220095743'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2622500942999984094)
,p_plug_name=>'Wizard Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_api.id(1225684792970288320)
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2622501541400984098)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Form--labelsAbove:t-Region--removeHeader'
,p_plug_template=>wwv_flow_api.id(1225690169574288324)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_list_template_id=>wwv_flow_api.id(1225704044613288342)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2622502735472984101)
,p_plug_name=>'Hidden Items'
,p_plug_template=>wwv_flow_api.id(1225683798473288318)
,p_plug_display_sequence=>5
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2622501142533984096)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2622500942999984094)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1225705764797288347)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
,p_security_scheme=>wwv_flow_api.id(3797358846252064904)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2622501335566984098)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(2622500942999984094)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(1225705187803288346)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_icon_css_classes=>'fa-chevron-right'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1103797424038068159)
,p_branch_name=>'next'
,p_branch_action=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2622501756936984098)
,p_name=>'P83_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(2622501541400984098)
,p_item_default=>'2'
,p_prompt=>'Role'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'ACCESS_LEVELS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select access_level d, id r',
'  from eba_bt_access_levels',
' order by id desc'))
,p_field_template=>wwv_flow_api.id(269497651921969761)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2622501932238984099)
,p_name=>'P83_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(2622501541400984098)
,p_prompt=>'Usernames'
,p_placeholder=>'Enter usernames here'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>10
,p_field_template=>wwv_flow_api.id(269497651921969761)
,p_item_template_options=>'#DEFAULT#'
,p_inline_help_text=>'Enter usernames separated by commas, semicolons, or whitespace. Existing or duplicate usernames will automatically be ignored.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2622502932837984102)
,p_name=>'P83_USERNAME_FORMAT1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2622502735472984101)
,p_use_cache_before_default=>'NO'
,p_source=>'eba_bt_fw.get_preference_value (''USERNAME_FORMAT'')'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(2622503548235984103)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1103796769674068153)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(2622501142533984096)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1103796862124068154)
,p_event_id=>wwv_flow_api.id(1103796769674068153)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2622503657163984103)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    wwv_flow_global.vc_arr2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    ---------------------',
'    -- create collections',
'    --',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''EBA_BT_BULK_USER_INVALID'');',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''EBA_BT_BULK_USER_VALID'');',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''EBA_BT_BULK_USER_CREATE'');',
'',
'    --------------------------------------------',
'    -- replace delimiting characters with commas',
'    --',
'    l_line := :P83_PRELIM_USERS;',
'    l_line := replace(l_line,chr(10),'' '');',
'    l_line := replace(l_line,chr(13),'' '');',
'    l_line := replace(l_line,chr(9),'' '');',
'    l_line := replace(l_line,''<'','' '');',
'    l_line := replace(l_line,''>'','' '');',
'    l_line := replace(l_line,'';'','' '');',
'    l_line := replace(l_line,'':'','' '');',
'    l_line := replace(l_line,''('','' '');',
'    l_line := replace(l_line,'')'','' '');',
'    l_line := replace(l_line,'' '','','');',
'',
'    -----------------------------------------',
'    -- get one comma separated line of emails',
'    --',
'    for j in 1..1000 loop',
'        if instr(l_line,'',,'') > 0 then',
'           l_line := replace(l_line,'',,'','','');',
'        else',
'           exit;',
'        end if;',
'    end loop;',
'',
'    -------------------------',
'    -- get an array of emails',
'    --',
'    l_emails := wwv_flow_utilities.string_to_table(l_line,'','');',
'',
'    -----------------------------',
'    -- add emails to a collection',
'    --',
'    l_username := null;',
'    l_domain := null;',
'    l_at := 0;',
'    l_dot := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid := true;',
'        l_username := trim(l_emails(j));',
'',
'        if l_username is not null then',
'            if eba_bt_fw.get_preference_value(''USERNAME_FORMAT'') = ''EMAIL'' then',
'              -----------',
'              -- Validate',
'              --',
'              l_at := instr(nvl(l_username,''x''),''@'');',
'              l_domain := substr(l_username,l_at+1);',
'              l_dot := instr(l_domain,''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''EBA_BT_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''EBA_BT_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            l_username := trim(l_username);',
'            l_username := trim(both ''.'' from l_username);',
'            l_username := replace(l_username,'' '',null);',
'            l_username := replace(l_username,chr(10),null);',
'            l_username := replace(l_username,chr(9),null);',
'            l_username := replace(l_username,chr(13),null);',
'            l_username := replace(l_username,chr(49824),null);',
'',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''EBA_BT_BULK_USER_INVALID'',',
'                    p_c001            => upper(l_username),',
'                    p_c002            => apex_lang.message(''USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select /* APEX76a66f */ username',
'                             from eba_bt_users',
'                            where upper(username) = upper(l_username))',
'                loop',
'                    wwv_flow_collection.add_member(',
'                        p_collection_name => ''EBA_BT_BULK_USER_INVALID'',',
'                        p_c001            => upper(l_username),',
'                        p_c002            => apex_lang.message(''ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select /* APEXeaf772 */  c001',
'                             from wwv_flow_collections',
'                            where collection_name = ''EBA_BT_BULK_USER_VALID''',
'                              and c001 = upper(l_username))',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''EBA_BT_BULK_USER_INVALID'',',
'                        p_c001            => upper(l_username),',
'                        p_c002            => apex_lang.message(''DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''EBA_BT_BULK_USER_VALID'',',
'                    p_c001            => upper(l_username));',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_process_error_message=>'#SQLERRM@'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(2622501335566984098)
);
end;
/
