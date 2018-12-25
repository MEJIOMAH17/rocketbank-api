package com.bumptech.glide.load.model;

import android.text.TextUtils;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public final class LazyHeaders implements Headers {
    private volatile Map<String, String> combinedHeaders;
    private final Map<String, List<LazyHeaderFactory>> headers;

    public static final class Builder {
        private static final Map<String, List<LazyHeaderFactory>> DEFAULT_HEADERS;
        private static final String DEFAULT_USER_AGENT = System.getProperty("http.agent");
        private boolean copyOnModify = true;
        private Map<String, List<LazyHeaderFactory>> headers = DEFAULT_HEADERS;
        private boolean isEncodingDefault = true;
        private boolean isUserAgentDefault = true;

        static {
            Map hashMap = new HashMap(2);
            if (!TextUtils.isEmpty(DEFAULT_USER_AGENT)) {
                hashMap.put(AbstractSpiCall.HEADER_USER_AGENT, Collections.singletonList(new StringHeaderFactory(DEFAULT_USER_AGENT)));
            }
            hashMap.put("Accept-Encoding", Collections.singletonList(new StringHeaderFactory("identity")));
            DEFAULT_HEADERS = Collections.unmodifiableMap(hashMap);
        }

        public final LazyHeaders build() {
            this.copyOnModify = true;
            return new LazyHeaders(this.headers);
        }
    }

    static final class StringHeaderFactory implements LazyHeaderFactory {
        private final String value;

        StringHeaderFactory(String str) {
            this.value = str;
        }

        public final String buildHeader() {
            return this.value;
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder("StringHeaderFactory{value='");
            stringBuilder.append(this.value);
            stringBuilder.append('\'');
            stringBuilder.append('}');
            return stringBuilder.toString();
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof StringHeaderFactory)) {
                return null;
            }
            return this.value.equals(((StringHeaderFactory) obj).value);
        }

        public final int hashCode() {
            return this.value.hashCode();
        }
    }

    LazyHeaders(Map<String, List<LazyHeaderFactory>> map) {
        this.headers = Collections.unmodifiableMap(map);
    }

    public final Map<String, String> getHeaders() {
        if (this.combinedHeaders == null) {
            synchronized (this) {
                if (this.combinedHeaders == null) {
                    Map hashMap = new HashMap();
                    for (Entry entry : this.headers.entrySet()) {
                        StringBuilder stringBuilder = new StringBuilder();
                        List list = (List) entry.getValue();
                        for (int i = 0; i < list.size(); i++) {
                            stringBuilder.append(((LazyHeaderFactory) list.get(i)).buildHeader());
                            if (i != list.size() - 1) {
                                stringBuilder.append(',');
                            }
                        }
                        hashMap.put(entry.getKey(), stringBuilder.toString());
                    }
                    this.combinedHeaders = Collections.unmodifiableMap(hashMap);
                }
            }
        }
        return this.combinedHeaders;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("LazyHeaders{headers=");
        stringBuilder.append(this.headers);
        stringBuilder.append('}');
        return stringBuilder.toString();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof LazyHeaders)) {
            return null;
        }
        return this.headers.equals(((LazyHeaders) obj).headers);
    }

    public final int hashCode() {
        return this.headers.hashCode();
    }
}
