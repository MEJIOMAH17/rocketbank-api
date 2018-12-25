package io.fabric.sdk.android.services.settings;

import android.support.v7.recyclerview.C0945R.dimen;
import bolts.AppLinkNavigation;
import com.android.databinding.library.C0291R;
import com.android.databinding.library.baseAdapters.C0292R;
import com.android.databinding.library.baseAdapters.C0292R.id;
import com.appsflyer.AdvertisingIdClient;
import com.facebook.share.internal.ShareConstants;
import io.fabric.sdk.android.services.common.CurrentTimeProvider;
import org.json.JSONException;
import org.json.JSONObject;

final class DefaultSettingsJsonTransform implements SettingsJsonTransform {
    DefaultSettingsJsonTransform() {
    }

    public final AdvertisingIdClient buildFromJson$2b2c1559(CurrentTimeProvider currentTimeProvider, JSONObject jSONObject) throws JSONException {
        AppIconSettingsData appIconSettingsData;
        long j;
        JSONObject jSONObject2 = jSONObject;
        int optInt = jSONObject2.optInt("settings_version", 0);
        int optInt2 = jSONObject2.optInt("cache_duration", 3600);
        JSONObject jSONObject3 = jSONObject2.getJSONObject("app");
        String string = jSONObject3.getString("identifier");
        String string2 = jSONObject3.getString("status");
        String string3 = jSONObject3.getString("url");
        String string4 = jSONObject3.getString("reports_url");
        String string5 = jSONObject3.getString("ndk_reports_url");
        boolean optBoolean = jSONObject3.optBoolean("update_required", false);
        if (jSONObject3.has("icon") && jSONObject3.getJSONObject("icon").has("hash")) {
            jSONObject3 = jSONObject3.getJSONObject("icon");
            appIconSettingsData = new AppIconSettingsData(jSONObject3.getString("hash"), jSONObject3.getInt("width"), jSONObject3.getInt("height"));
        } else {
            appIconSettingsData = null;
        }
        AppLinkNavigation appLinkNavigation = new AppLinkNavigation(string, string2, string3, string4, string5, optBoolean, appIconSettingsData);
        JSONObject jSONObject4 = jSONObject2.getJSONObject("session");
        id idVar = new id(jSONObject4.optInt("log_buffer_size", 64000), jSONObject4.optInt("max_chained_exception_depth", 8), jSONObject4.optInt("max_custom_exception_events", 64), jSONObject4.optInt("max_custom_key_value_pairs", 64), jSONObject4.optInt("identifier_mask", 255), jSONObject4.optBoolean("send_session_without_crash", false), jSONObject4.optInt("max_complete_sessions_count", 4));
        jSONObject4 = jSONObject2.getJSONObject("prompt");
        C0292R c0292r = new C0292R(jSONObject4.optString(ShareConstants.WEB_DIALOG_PARAM_TITLE, "Send Crash Report?"), jSONObject4.optString(ShareConstants.WEB_DIALOG_PARAM_MESSAGE, "Looks like we crashed! Please help us fix the problem by sending a crash report."), jSONObject4.optString("send_button_title", "Send"), jSONObject4.optBoolean("show_cancel_button", true), jSONObject4.optString("cancel_button_title", "Don't Send"), jSONObject4.optBoolean("show_always_send_button", true), jSONObject4.optString("always_send_button_title", "Always Send"));
        jSONObject4 = jSONObject2.getJSONObject("features");
        C0291R.id idVar2 = new C0291R.id(jSONObject4.optBoolean("prompt_enabled", false), jSONObject4.optBoolean("collect_logged_exceptions", true), jSONObject4.optBoolean("collect_reports", true), jSONObject4.optBoolean("collect_analytics", false), jSONObject4.optBoolean("firebase_crashlytics_enabled", false));
        jSONObject4 = jSONObject2.getJSONObject("analytics");
        dimen dimen = new dimen(jSONObject4.optString("url", "https://e.crashlytics.com/spi/v2/events"), jSONObject4.optInt("flush_interval_secs", 600), jSONObject4.optInt("max_byte_size_per_file", 8000), jSONObject4.optInt("max_file_count_per_send", 1), jSONObject4.optInt("max_pending_send_file_count", 100), jSONObject4.optBoolean("forward_to_google_analytics", false), jSONObject4.optBoolean("include_purchase_events_in_forwarded_events", false), jSONObject4.optBoolean("track_custom_events", true), jSONObject4.optBoolean("track_predefined_events", true), jSONObject4.optInt("sampling_rate", 1), jSONObject4.optBoolean("flush_on_background", true));
        jSONObject4 = jSONObject2.getJSONObject("beta");
        C0291R c0291r = new C0291R(jSONObject4.optString("update_endpoint", SettingsJsonConstants.BETA_UPDATE_ENDPOINT_DEFAULT), jSONObject4.optInt("update_suspend_duration", 3600));
        long j2 = (long) optInt2;
        if (jSONObject2.has("expires_at")) {
            j = jSONObject2.getLong("expires_at");
        } else {
            j = currentTimeProvider.getCurrentTimeMillis() + (j2 * 1000);
        }
        return new AdvertisingIdClient(j, appLinkNavigation, idVar, c0292r, idVar2, dimen, c0291r, optInt, optInt2);
    }
}
