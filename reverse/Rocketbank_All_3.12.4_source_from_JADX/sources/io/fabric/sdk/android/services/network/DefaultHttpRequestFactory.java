package io.fabric.sdk.android.services.network;

import android.support.v7.cardview.C0943R.color;
import io.fabric.sdk.android.Logger;
import java.util.Locale;
import java.util.Map;

public final class DefaultHttpRequestFactory implements HttpRequestFactory {
    private final Logger logger;

    public final void setPinningInfoProvider$4e61dc68$6195d672() {
    }

    public DefaultHttpRequestFactory() {
        this(new color());
    }

    public DefaultHttpRequestFactory(Logger logger) {
        this.logger = logger;
    }

    public final HttpRequest buildHttpRequest(HttpMethod httpMethod, String str, Map<String, String> map) {
        switch (httpMethod) {
            case GET:
                httpMethod = HttpRequest.get$6df498ee(str, map);
                break;
            case POST:
                httpMethod = HttpRequest.post$6df498ee(str, map);
                break;
            case PUT:
                httpMethod = HttpRequest.put(str);
                break;
            case DELETE:
                httpMethod = HttpRequest.delete(str);
                break;
            default:
                throw new IllegalArgumentException("Unsupported HTTP method!");
        }
        if (str != null) {
            str.toLowerCase(Locale.US).startsWith("https");
        }
        return httpMethod;
    }
}
