package io.fabric.sdk.android.services.common;

import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import java.util.Collections;
import java.util.Map;
import java.util.regex.Pattern;

public abstract class AbstractSpiCall {
    public static final String ACCEPT_JSON_VALUE = "application/json";
    public static final String ANDROID_CLIENT_TYPE = "android";
    public static final String CLS_ANDROID_SDK_DEVELOPER_TOKEN = "470fa2b4ae81cd56ecbcda9735803434cec591fa";
    public static final String CRASHLYTICS_USER_AGENT = "Crashlytics Android SDK/";
    public static final int DEFAULT_TIMEOUT = 10000;
    public static final String HEADER_ACCEPT = "Accept";
    public static final String HEADER_API_KEY = "X-CRASHLYTICS-API-KEY";
    public static final String HEADER_CLIENT_TYPE = "X-CRASHLYTICS-API-CLIENT-TYPE";
    public static final String HEADER_CLIENT_VERSION = "X-CRASHLYTICS-API-CLIENT-VERSION";
    public static final String HEADER_DEVELOPER_TOKEN = "X-CRASHLYTICS-DEVELOPER-TOKEN";
    public static final String HEADER_REQUEST_ID = "X-REQUEST-ID";
    public static final String HEADER_USER_AGENT = "User-Agent";
    private static final Pattern PROTOCOL_AND_HOST_PATTERN = Pattern.compile("http(s?)://[^\\/]+", 2);
    protected final Kit kit;
    private final HttpMethod method;
    private final String protocolAndHostOverride;
    private final HttpRequestFactory requestFactory;
    private final String url;

    public AbstractSpiCall(Kit kit, String str, String str2, HttpRequestFactory httpRequestFactory, HttpMethod httpMethod) {
        if (str2 == null) {
            throw new IllegalArgumentException("url must not be null.");
        } else if (httpRequestFactory == null) {
            throw new IllegalArgumentException("requestFactory must not be null.");
        } else {
            this.kit = kit;
            this.protocolAndHostOverride = str;
            this.url = overrideProtocolAndHost(str2);
            this.requestFactory = httpRequestFactory;
            this.method = httpMethod;
        }
    }

    protected String getUrl() {
        return this.url;
    }

    protected HttpRequest getHttpRequest() {
        return getHttpRequest(Collections.emptyMap());
    }

    protected HttpRequest getHttpRequest(Map<String, String> map) {
        map = this.requestFactory.buildHttpRequest(this.method, getUrl(), map);
        map.getConnection().setUseCaches(false);
        map.getConnection().setConnectTimeout(DEFAULT_TIMEOUT);
        String str = HEADER_USER_AGENT;
        StringBuilder stringBuilder = new StringBuilder(CRASHLYTICS_USER_AGENT);
        stringBuilder.append(this.kit.getVersion());
        return map.header(str, stringBuilder.toString()).header(HEADER_DEVELOPER_TOKEN, CLS_ANDROID_SDK_DEVELOPER_TOKEN);
    }

    private String overrideProtocolAndHost(String str) {
        return !CommonUtils.isNullOrEmpty(this.protocolAndHostOverride) ? PROTOCOL_AND_HOST_PATTERN.matcher(str).replaceFirst(this.protocolAndHostOverride) : str;
    }
}
