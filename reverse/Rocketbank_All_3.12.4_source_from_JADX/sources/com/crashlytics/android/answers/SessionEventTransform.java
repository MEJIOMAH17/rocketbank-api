package com.crashlytics.android.answers;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import android.text.TextUtils;
import io.fabric.sdk.android.services.events.EventTransform;
import java.io.IOException;
import org.json.JSONObject;

final class SessionEventTransform implements EventTransform<SessionEvent> {
    SessionEventTransform() {
    }

    public final /* bridge */ /* synthetic */ byte[] toBytes(Object obj) throws IOException {
        return buildJsonForEvent((SessionEvent) obj).toString().getBytes("UTF-8");
    }

    @TargetApi(9)
    private static JSONObject buildJsonForEvent(SessionEvent sessionEvent) throws IOException {
        try {
            JSONObject jSONObject = new JSONObject();
            SessionEventMetadata sessionEventMetadata = sessionEvent.sessionEventMetadata;
            jSONObject.put("appBundleId", sessionEventMetadata.appBundleId);
            jSONObject.put("executionId", sessionEventMetadata.executionId);
            jSONObject.put("installationId", sessionEventMetadata.installationId);
            if (TextUtils.isEmpty(sessionEventMetadata.advertisingId)) {
                jSONObject.put("androidId", sessionEventMetadata.androidId);
            } else {
                jSONObject.put("advertisingId", sessionEventMetadata.advertisingId);
            }
            jSONObject.put("limitAdTrackingEnabled", sessionEventMetadata.limitAdTrackingEnabled);
            jSONObject.put("betaDeviceToken", sessionEventMetadata.betaDeviceToken);
            jSONObject.put("buildId", sessionEventMetadata.buildId);
            jSONObject.put("osVersion", sessionEventMetadata.osVersion);
            jSONObject.put("deviceModel", sessionEventMetadata.deviceModel);
            jSONObject.put("appVersionCode", sessionEventMetadata.appVersionCode);
            jSONObject.put("appVersionName", sessionEventMetadata.appVersionName);
            jSONObject.put("timestamp", sessionEvent.timestamp);
            jSONObject.put("type", sessionEvent.type.toString());
            if (sessionEvent.details != null) {
                jSONObject.put("details", new JSONObject(sessionEvent.details));
            }
            jSONObject.put("customType", sessionEvent.customType);
            if (sessionEvent.customAttributes != null) {
                jSONObject.put("customAttributes", new JSONObject(sessionEvent.customAttributes));
            }
            jSONObject.put("predefinedType", sessionEvent.predefinedType);
            if (sessionEvent.predefinedAttributes != null) {
                jSONObject.put("predefinedAttributes", new JSONObject(sessionEvent.predefinedAttributes));
            }
            return jSONObject;
        } catch (SessionEvent sessionEvent2) {
            if (VERSION.SDK_INT >= 9) {
                throw new IOException(sessionEvent2.getMessage(), sessionEvent2);
            }
            throw new IOException(sessionEvent2.getMessage());
        }
    }
}
