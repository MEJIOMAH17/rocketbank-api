package io.fabric.sdk.android.services.settings;

import com.appsflyer.AdvertisingIdClient;
import io.fabric.sdk.android.services.common.CurrentTimeProvider;
import org.json.JSONException;
import org.json.JSONObject;

public interface SettingsJsonTransform {
    AdvertisingIdClient buildFromJson$2b2c1559(CurrentTimeProvider currentTimeProvider, JSONObject jSONObject) throws JSONException;
}
