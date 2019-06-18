prompt --application/shared_components/logic/application_items
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(2517303847023793749)
,p_name=>'APPLICATION_TITLE'
,p_protection_level=>'S'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(6366564576871535007)
,p_name=>'APP_NOT_ASSIGNED_TEXT'
,p_protection_level=>'S'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(938530664817549672)
,p_name=>'BUG_ID'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(1342018318991149952)
,p_name=>'BUG_NUMBER'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(6323655297284405385)
,p_name=>'CHANGE_LOG_MESSAGE'
,p_protection_level=>'S'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(982310220634494182)
,p_name=>'CURRENT_USER_ID'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(1443848878448018271)
,p_name=>'FIX_BY'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(5503561071836766858)
,p_name=>'LAST_VIEW'
,p_protection_level=>'N'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(983900648650899565)
,p_name=>'PRODUCTS'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(1350140021588806143)
,p_name=>'PRODUCT_ID'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(1350248807486278713)
,p_name=>'PRODUCT_NAME'
,p_protection_level=>'I'
);
end;
/