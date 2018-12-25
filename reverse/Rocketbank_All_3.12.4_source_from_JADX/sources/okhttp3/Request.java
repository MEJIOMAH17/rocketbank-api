package okhttp3;

import android.arch.lifecycle.MethodCallsLogger;
import javax.annotation.Nullable;

public final class Request {
    @Nullable
    final RequestBody body;
    private volatile CacheControl cacheControl;
    final Headers headers;
    final String method;
    final Object tag;
    final HttpUrl url;

    public static class Builder {
        RequestBody body;
        okhttp3.Headers.Builder headers;
        String method;
        Object tag;
        HttpUrl url;

        public Builder() {
            this.method = "GET";
            this.headers = new okhttp3.Headers.Builder();
        }

        Builder(Request request) {
            this.url = request.url;
            this.method = request.method;
            this.body = request.body;
            this.tag = request.tag;
            this.headers = request.headers.newBuilder();
        }

        public final Builder url(HttpUrl httpUrl) {
            if (httpUrl == null) {
                throw new NullPointerException("url == null");
            }
            this.url = httpUrl;
            return this;
        }

        public final Builder url(String str) {
            if (str == null) {
                throw new NullPointerException("url == null");
            }
            StringBuilder stringBuilder;
            if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                stringBuilder = new StringBuilder("http:");
                stringBuilder.append(str.substring(3));
                str = stringBuilder.toString();
            } else {
                if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                    stringBuilder = new StringBuilder("https:");
                    stringBuilder.append(str.substring(4));
                    str = stringBuilder.toString();
                }
            }
            HttpUrl parse = HttpUrl.parse(str);
            if (parse == null) {
                throw new IllegalArgumentException("unexpected url: ".concat(String.valueOf(str)));
            } else if (parse == null) {
                throw new NullPointerException("url == null");
            } else {
                this.url = parse;
                return this;
            }
        }

        public final Builder header(String str, String str2) {
            this.headers.set(str, str2);
            return this;
        }

        public final Builder addHeader(String str, String str2) {
            this.headers.add(str, str2);
            return this;
        }

        public final Builder removeHeader(String str) {
            this.headers.removeAll(str);
            return this;
        }

        public final Builder headers(Headers headers) {
            this.headers = headers.newBuilder();
            return this;
        }

        public final Builder get() {
            return method("GET", null);
        }

        public final Builder patch(RequestBody requestBody) {
            return method("PATCH", requestBody);
        }

        public final Builder method(String str, @Nullable RequestBody requestBody) {
            if (str == null) {
                throw new NullPointerException("method == null");
            } else if (str.length() == 0) {
                throw new IllegalArgumentException("method.length() == 0");
            } else {
                StringBuilder stringBuilder;
                if (requestBody != null) {
                    Object obj = (str.equals("GET") || str.equals("HEAD")) ? null : 1;
                    if (obj == null) {
                        stringBuilder = new StringBuilder("method ");
                        stringBuilder.append(str);
                        stringBuilder.append(" must not have a request body.");
                        throw new IllegalArgumentException(stringBuilder.toString());
                    }
                }
                if (requestBody == null && MethodCallsLogger.requiresRequestBody(str)) {
                    stringBuilder = new StringBuilder("method ");
                    stringBuilder.append(str);
                    stringBuilder.append(" must have a request body.");
                    throw new IllegalArgumentException(stringBuilder.toString());
                }
                this.method = str;
                this.body = requestBody;
                return this;
            }
        }

        public final Request build() {
            if (this.url != null) {
                return new Request(this);
            }
            throw new IllegalStateException("url == null");
        }
    }

    Request(Builder builder) {
        this.url = builder.url;
        this.method = builder.method;
        this.headers = new Headers(builder.headers);
        this.body = builder.body;
        this.tag = builder.tag != null ? builder.tag : this;
    }

    public final HttpUrl url() {
        return this.url;
    }

    public final String method() {
        return this.method;
    }

    public final Headers headers() {
        return this.headers;
    }

    @Nullable
    public final String header(String str) {
        return this.headers.get(str);
    }

    @Nullable
    public final RequestBody body() {
        return this.body;
    }

    public final Builder newBuilder() {
        return new Builder(this);
    }

    public final CacheControl cacheControl() {
        CacheControl cacheControl = this.cacheControl;
        if (cacheControl != null) {
            return cacheControl;
        }
        cacheControl = CacheControl.parse(this.headers);
        this.cacheControl = cacheControl;
        return cacheControl;
    }

    public final boolean isHttps() {
        return this.url.scheme.equals("https");
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("Request{method=");
        stringBuilder.append(this.method);
        stringBuilder.append(", url=");
        stringBuilder.append(this.url);
        stringBuilder.append(", tag=");
        stringBuilder.append(this.tag != this ? this.tag : null);
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}
