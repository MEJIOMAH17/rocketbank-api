package io.fabric.sdk.android.services.settings;

import android.text.TextUtils;
import com.bumptech.glide.load.resource.bitmap.TransformationUtils;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.HttpRequest.HttpRequestException;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

final class DefaultSettingsSpiCall extends AbstractSpiCall implements SettingsSpiCall {
    public DefaultSettingsSpiCall(Kit kit, String str, String str2, HttpRequestFactory httpRequestFactory) {
        this(kit, str, str2, httpRequestFactory, HttpMethod.GET);
    }

    private DefaultSettingsSpiCall(Kit kit, String str, String str2, HttpRequestFactory httpRequestFactory, HttpMethod httpMethod) {
        super(kit, str, str2, httpRequestFactory, httpMethod);
    }

    private JSONObject getJsonObjectFrom(String str) {
        try {
            return new JSONObject(str);
        } catch (Throwable e) {
            StringBuilder stringBuilder = new StringBuilder("Failed to parse settings JSON from ");
            stringBuilder.append(getUrl());
            Fabric.getLogger().mo769d("Fabric", stringBuilder.toString(), e);
            Fabric.getLogger().mo768d("Fabric", "Settings response ".concat(String.valueOf(str)));
            return null;
        }
    }

    public final JSONObject invoke$4f9b8621(TransformationUtils transformationUtils) {
        JSONObject jSONObject = null;
        HttpRequest httpRequest;
        StringBuilder stringBuilder;
        String str;
        try {
            Map hashMap = new HashMap();
            hashMap.put("build_version", transformationUtils.buildVersion);
            hashMap.put("display_version", transformationUtils.displayVersion);
            hashMap.put("source", Integer.toString(transformationUtils.source));
            if (transformationUtils.iconHash != null) {
                hashMap.put("icon_hash", transformationUtils.iconHash);
            }
            String str2 = transformationUtils.instanceId;
            if (!CommonUtils.isNullOrEmpty(str2)) {
                hashMap.put("instance", str2);
            }
            httpRequest = getHttpRequest(hashMap);
            try {
                String str3 = AbstractSpiCall.HEADER_API_KEY;
                String str4 = transformationUtils.apiKey;
                if (str4 != null) {
                    httpRequest.header(str3, str4);
                }
                httpRequest.header(AbstractSpiCall.HEADER_CLIENT_TYPE, AbstractSpiCall.ANDROID_CLIENT_TYPE);
                httpRequest.header(AbstractSpiCall.HEADER_CLIENT_VERSION, this.kit.getVersion());
                httpRequest.header(AbstractSpiCall.HEADER_ACCEPT, AbstractSpiCall.ACCEPT_JSON_VALUE);
                str3 = "X-CRASHLYTICS-DEVICE-MODEL";
                str4 = transformationUtils.deviceModel;
                if (str4 != null) {
                    httpRequest.header(str3, str4);
                }
                str3 = "X-CRASHLYTICS-OS-BUILD-VERSION";
                str4 = transformationUtils.osBuildVersion;
                if (str4 != null) {
                    httpRequest.header(str3, str4);
                }
                str3 = "X-CRASHLYTICS-OS-DISPLAY-VERSION";
                str4 = transformationUtils.osDisplayVersion;
                if (str4 != null) {
                    httpRequest.header(str3, str4);
                }
                str3 = "X-CRASHLYTICS-INSTALLATION-ID";
                str4 = transformationUtils.installationId;
                if (str4 != null) {
                    httpRequest.header(str3, str4);
                }
                if (TextUtils.isEmpty(transformationUtils.advertisingId)) {
                    str3 = "X-CRASHLYTICS-ANDROID-ID";
                    transformationUtils = transformationUtils.androidId;
                    if (transformationUtils != null) {
                        httpRequest.header(str3, transformationUtils);
                    }
                } else {
                    str3 = "X-CRASHLYTICS-ADVERTISING-TOKEN";
                    transformationUtils = transformationUtils.advertisingId;
                    if (transformationUtils != null) {
                        httpRequest.header(str3, transformationUtils);
                    }
                }
                StringBuilder stringBuilder2 = new StringBuilder("Requesting settings from ");
                stringBuilder2.append(getUrl());
                Fabric.getLogger().mo768d("Fabric", stringBuilder2.toString());
                Fabric.getLogger().mo768d("Fabric", "Settings query params were: ".concat(String.valueOf(hashMap)));
                transformationUtils = httpRequest.code();
                Fabric.getLogger().mo768d("Fabric", "Settings result was: ".concat(String.valueOf(transformationUtils)));
                if (!(transformationUtils == 200 || transformationUtils == 201 || transformationUtils == 202)) {
                    if (transformationUtils != 203) {
                        transformationUtils = null;
                        if (transformationUtils == null) {
                            jSONObject = getJsonObjectFrom(httpRequest.body());
                        } else {
                            stringBuilder = new StringBuilder("Failed to retrieve settings from ");
                            stringBuilder.append(getUrl());
                            Fabric.getLogger().mo770e("Fabric", stringBuilder.toString());
                        }
                        if (httpRequest != null) {
                            transformationUtils = Fabric.getLogger();
                            str = "Fabric";
                            stringBuilder = new StringBuilder("Settings request ID: ");
                            stringBuilder.append(httpRequest.header(AbstractSpiCall.HEADER_REQUEST_ID));
                            transformationUtils.mo768d(str, stringBuilder.toString());
                        }
                        return jSONObject;
                    }
                }
                transformationUtils = true;
                if (transformationUtils == null) {
                    stringBuilder = new StringBuilder("Failed to retrieve settings from ");
                    stringBuilder.append(getUrl());
                    Fabric.getLogger().mo770e("Fabric", stringBuilder.toString());
                } else {
                    jSONObject = getJsonObjectFrom(httpRequest.body());
                }
                if (httpRequest != null) {
                    transformationUtils = Fabric.getLogger();
                    str = "Fabric";
                    stringBuilder = new StringBuilder("Settings request ID: ");
                    stringBuilder.append(httpRequest.header(AbstractSpiCall.HEADER_REQUEST_ID));
                    transformationUtils.mo768d(str, stringBuilder.toString());
                }
            } catch (HttpRequestException e) {
                transformationUtils = e;
                try {
                    Fabric.getLogger().mo771e("Fabric", "Settings request failed.", transformationUtils);
                    if (httpRequest != null) {
                        transformationUtils = Fabric.getLogger();
                        str = "Fabric";
                        stringBuilder = new StringBuilder("Settings request ID: ");
                        stringBuilder.append(httpRequest.header(AbstractSpiCall.HEADER_REQUEST_ID));
                        transformationUtils.mo768d(str, stringBuilder.toString());
                    }
                    return jSONObject;
                } catch (Throwable th) {
                    transformationUtils = th;
                    if (httpRequest != null) {
                        stringBuilder = new StringBuilder("Settings request ID: ");
                        stringBuilder.append(httpRequest.header(AbstractSpiCall.HEADER_REQUEST_ID));
                        Fabric.getLogger().mo768d("Fabric", stringBuilder.toString());
                    }
                    throw transformationUtils;
                }
            }
        } catch (HttpRequestException e2) {
            transformationUtils = e2;
            httpRequest = null;
            Fabric.getLogger().mo771e("Fabric", "Settings request failed.", transformationUtils);
            if (httpRequest != null) {
                transformationUtils = Fabric.getLogger();
                str = "Fabric";
                stringBuilder = new StringBuilder("Settings request ID: ");
                stringBuilder.append(httpRequest.header(AbstractSpiCall.HEADER_REQUEST_ID));
                transformationUtils.mo768d(str, stringBuilder.toString());
            }
            return jSONObject;
        } catch (Throwable th2) {
            transformationUtils = th2;
            httpRequest = null;
            if (httpRequest != null) {
                stringBuilder = new StringBuilder("Settings request ID: ");
                stringBuilder.append(httpRequest.header(AbstractSpiCall.HEADER_REQUEST_ID));
                Fabric.getLogger().mo768d("Fabric", stringBuilder.toString());
            }
            throw transformationUtils;
        }
        return jSONObject;
    }
}
