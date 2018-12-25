.class final Lio/fabric/sdk/android/services/settings/DefaultSettingsJsonTransform;
.super Ljava/lang/Object;
.source "DefaultSettingsJsonTransform.java"

# interfaces
.implements Lio/fabric/sdk/android/services/settings/SettingsJsonTransform;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildFromJson$2b2c1559(Lio/fabric/sdk/android/services/common/CurrentTimeProvider;Lorg/json/JSONObject;)Lcom/appsflyer/AdvertisingIdClient;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "settings_version"

    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    const-string v1, "cache_duration"

    const/16 v3, 0xe10

    .line 38
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    const-string v1, "app"

    .line 42
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "identifier"

    .line 1077
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v4, "status"

    .line 1078
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v4, "url"

    .line 1079
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v4, "reports_url"

    .line 1080
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v4, "ndk_reports_url"

    .line 1081
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v4, "update_required"

    .line 1082
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v20

    const-string v4, "icon"

    .line 1089
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "icon"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "hash"

    .line 1090
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "icon"

    .line 1091
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "hash"

    .line 1106
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "width"

    .line 1107
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "height"

    .line 1108
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1110
    new-instance v6, Lio/fabric/sdk/android/services/settings/AppIconSettingsData;

    invoke-direct {v6, v4, v5, v1}, Lio/fabric/sdk/android/services/settings/AppIconSettingsData;-><init>(Ljava/lang/String;II)V

    move-object/from16 v21, v6

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object/from16 v21, v1

    .line 1094
    :goto_0
    new-instance v1, Lbolts/AppLinkNavigation;

    move-object v14, v1

    invoke-direct/range {v14 .. v21}, Lbolts/AppLinkNavigation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLio/fabric/sdk/android/services/settings/AppIconSettingsData;)V

    const-string v4, "session"

    .line 44
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "log_buffer_size"

    const v6, 0xfa00

    .line 1185
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    const-string v5, "max_chained_exception_depth"

    const/16 v6, 0x8

    .line 1188
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v16

    const-string v5, "max_custom_exception_events"

    const/16 v6, 0x40

    .line 1191
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    const-string v5, "max_custom_key_value_pairs"

    .line 1194
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v18

    const-string v5, "identifier_mask"

    const/16 v6, 0xff

    .line 1197
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v19

    const-string v5, "send_session_without_crash"

    .line 1200
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v20

    const-string v5, "max_complete_sessions_count"

    const/4 v6, 0x4

    .line 1203
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v21

    .line 1207
    new-instance v7, Lcom/android/databinding/library/baseAdapters/R$id;

    move-object v14, v7

    invoke-direct/range {v14 .. v21}, Lcom/android/databinding/library/baseAdapters/R$id;-><init>(IIIIIZI)V

    const-string v4, "prompt"

    .line 46
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "title"

    const-string v6, "Send Crash Report?"

    .line 1213
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v5, "message"

    const-string v6, "Looks like we crashed! Please help us fix the problem by sending a crash report."

    .line 1216
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v5, "send_button_title"

    const-string v6, "Send"

    .line 1219
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v5, "show_cancel_button"

    const/4 v6, 0x1

    .line 1222
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v18

    const-string v5, "cancel_button_title"

    const-string v8, "Don\'t Send"

    .line 1225
    invoke-virtual {v4, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v5, "show_always_send_button"

    .line 1228
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v20

    const-string v5, "always_send_button_title"

    const-string v8, "Always Send"

    .line 1231
    invoke-virtual {v4, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1235
    new-instance v8, Lcom/android/databinding/library/baseAdapters/R;

    move-object v14, v8

    invoke-direct/range {v14 .. v21}, Lcom/android/databinding/library/baseAdapters/R;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v4, "features"

    .line 48
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "prompt_enabled"

    .line 2114
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    const-string v5, "collect_logged_exceptions"

    .line 2117
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v16

    const-string v5, "collect_reports"

    .line 2120
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v17

    const-string v5, "collect_analytics"

    .line 2123
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v18

    const-string v5, "firebase_crashlytics_enabled"

    .line 2126
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 2131
    new-instance v9, Lcom/android/databinding/library/R$id;

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lcom/android/databinding/library/R$id;-><init>(ZZZZZ)V

    const-string v4, "analytics"

    .line 50
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "url"

    const-string v10, "https://e.crashlytics.com/spi/v2/events"

    .line 2136
    invoke-virtual {v4, v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v5, "flush_interval_secs"

    const/16 v10, 0x258

    .line 2139
    invoke-virtual {v4, v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v16

    const-string v5, "max_byte_size_per_file"

    const/16 v10, 0x1f40

    .line 2141
    invoke-virtual {v4, v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    const-string v5, "max_file_count_per_send"

    .line 2144
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v18

    const-string v5, "max_pending_send_file_count"

    const/16 v10, 0x64

    .line 2147
    invoke-virtual {v4, v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v19

    const-string v5, "forward_to_google_analytics"

    .line 2150
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v20

    const-string v5, "include_purchase_events_in_forwarded_events"

    .line 2153
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v21

    const-string v2, "track_custom_events"

    .line 2157
    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v22

    const-string v2, "track_predefined_events"

    .line 2160
    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v23

    const-string v2, "sampling_rate"

    .line 2163
    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v24

    const-string v2, "flush_on_background"

    .line 2166
    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 2170
    new-instance v2, Landroid/support/v7/recyclerview/R$dimen;

    move-object v14, v2

    invoke-direct/range {v14 .. v25}, Landroid/support/v7/recyclerview/R$dimen;-><init>(Ljava/lang/String;IIIIZZZZIZ)V

    const-string v4, "beta"

    .line 52
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "update_endpoint"

    .line 2240
    sget-object v6, Lio/fabric/sdk/android/services/settings/SettingsJsonConstants;->BETA_UPDATE_ENDPOINT_DEFAULT:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "update_suspend_duration"

    .line 2243
    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 2247
    new-instance v11, Lcom/android/databinding/library/R;

    invoke-direct {v11, v5, v3}, Lcom/android/databinding/library/R;-><init>(Ljava/lang/String;I)V

    int-to-long v3, v13

    const-string v5, "expires_at"

    .line 2254
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v3, "expires_at"

    .line 2256
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    move-wide v4, v3

    goto :goto_1

    .line 2260
    :cond_1
    invoke-interface/range {p1 .. p1}, Lio/fabric/sdk/android/services/common/CurrentTimeProvider;->getCurrentTimeMillis()J

    move-result-wide v5

    const-wide/16 v14, 0x3e8

    mul-long/2addr v3, v14

    add-long v14, v5, v3

    move-wide v4, v14

    .line 56
    :goto_1
    new-instance v0, Lcom/appsflyer/AdvertisingIdClient;

    move-object v3, v0

    move-object v6, v1

    move-object v10, v2

    invoke-direct/range {v3 .. v13}, Lcom/appsflyer/AdvertisingIdClient;-><init>(JLbolts/AppLinkNavigation;Lcom/android/databinding/library/baseAdapters/R$id;Lcom/android/databinding/library/baseAdapters/R;Lcom/android/databinding/library/R$id;Landroid/support/v7/recyclerview/R$dimen;Lcom/android/databinding/library/R;II)V

    return-object v0
.end method
