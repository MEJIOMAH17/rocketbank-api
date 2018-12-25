package com.bumptech.glide.load.model;

import android.net.Uri;
import android.text.TextUtils;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;

public class GlideUrl {
    private final Headers headers;
    private String safeStringUrl;
    private URL safeUrl;
    private final String stringUrl;
    private final URL url;

    public GlideUrl(URL url) {
        this(url, Headers.DEFAULT);
    }

    public GlideUrl(String str) {
        this(str, Headers.DEFAULT);
    }

    private GlideUrl(URL url, Headers headers) {
        if (url == null) {
            throw new IllegalArgumentException("URL must not be null!");
        } else if (headers == null) {
            throw new IllegalArgumentException("Headers must not be null");
        } else {
            this.url = url;
            this.stringUrl = null;
            this.headers = headers;
        }
    }

    private GlideUrl(String str, Headers headers) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("String url must not be empty or null: ".concat(String.valueOf(str)));
        } else if (headers == null) {
            throw new IllegalArgumentException("Headers must not be null");
        } else {
            this.stringUrl = str;
            this.url = null;
            this.headers = headers;
        }
    }

    public final String toStringUrl() {
        return getSafeStringUrl();
    }

    private String getSafeStringUrl() {
        if (TextUtils.isEmpty(this.safeStringUrl)) {
            String str = this.stringUrl;
            if (TextUtils.isEmpty(str)) {
                str = this.url.toString();
            }
            this.safeStringUrl = Uri.encode(str, "@#&=*+-_.,:!?()/~'%");
        }
        return this.safeStringUrl;
    }

    public final Map<String, String> getHeaders() {
        return this.headers.getHeaders();
    }

    public final String getCacheKey() {
        return this.stringUrl != null ? this.stringUrl : this.url.toString();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.stringUrl != null ? this.stringUrl : this.url.toString());
        stringBuilder.append('\n');
        stringBuilder.append(this.headers.toString());
        return stringBuilder.toString();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GlideUrl)) {
            return false;
        }
        GlideUrl glideUrl = (GlideUrl) obj;
        if (!(this.stringUrl != null ? this.stringUrl : this.url.toString()).equals(glideUrl.stringUrl != null ? glideUrl.stringUrl : glideUrl.url.toString()) || this.headers.equals(glideUrl.headers) == null) {
            return false;
        }
        return true;
    }

    public final URL toURL() throws MalformedURLException {
        if (this.safeUrl == null) {
            this.safeUrl = new URL(getSafeStringUrl());
        }
        return this.safeUrl;
    }

    public int hashCode() {
        return ((this.stringUrl != null ? this.stringUrl : this.url.toString()).hashCode() * 31) + this.headers.hashCode();
    }
}
