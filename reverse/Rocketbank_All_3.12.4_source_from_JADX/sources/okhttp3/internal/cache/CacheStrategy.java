package okhttp3.internal.cache;

import java.util.Date;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import okhttp3.CacheControl;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Response.Builder;
import okhttp3.internal.Internal;
import okhttp3.internal.http.HttpDate;
import okhttp3.internal.http.HttpHeaders;

public final class CacheStrategy {
    @Nullable
    public final Response cacheResponse;
    @Nullable
    public final Request networkRequest;

    public static class Factory {
        private int ageSeconds = -1;
        final Response cacheResponse;
        private String etag;
        private Date expires;
        private Date lastModified;
        private String lastModifiedString;
        final long nowMillis;
        private long receivedResponseMillis;
        final Request request;
        private long sentRequestMillis;
        private Date servedDate;
        private String servedDateString;

        public Factory(long j, Request request, Response response) {
            this.nowMillis = j;
            this.request = request;
            this.cacheResponse = response;
            if (response != null) {
                this.sentRequestMillis = response.sentRequestAtMillis();
                this.receivedResponseMillis = response.receivedResponseAtMillis();
                j = response.headers();
                request = j.size();
                for (int i = 0; i < request; i++) {
                    response = j.name(i);
                    String value = j.value(i);
                    if ("Date".equalsIgnoreCase(response)) {
                        this.servedDate = HttpDate.parse(value);
                        this.servedDateString = value;
                    } else if ("Expires".equalsIgnoreCase(response)) {
                        this.expires = HttpDate.parse(value);
                    } else if ("Last-Modified".equalsIgnoreCase(response)) {
                        this.lastModified = HttpDate.parse(value);
                        this.lastModifiedString = value;
                    } else if ("ETag".equalsIgnoreCase(response)) {
                        this.etag = value;
                    } else if ("Age".equalsIgnoreCase(response) != null) {
                        this.ageSeconds = HttpHeaders.parseSeconds(value, -1);
                    }
                }
            }
        }

        public final CacheStrategy get() {
            CacheStrategy cacheStrategy;
            if (this.cacheResponse == null) {
                cacheStrategy = new CacheStrategy(r0.request, null);
            } else if (r0.request.isHttps() && r0.cacheResponse.handshake() == null) {
                cacheStrategy = new CacheStrategy(r0.request, null);
            } else if (CacheStrategy.isCacheable(r0.cacheResponse, r0.request)) {
                CacheControl cacheControl = r0.request.cacheControl();
                if (!cacheControl.noCache()) {
                    Object obj;
                    CacheControl cacheControl2;
                    long j;
                    long max;
                    CacheControl cacheControl3;
                    long toMillis;
                    long time;
                    long toMillis2;
                    long j2;
                    Builder newBuilder;
                    CacheStrategy cacheStrategy2;
                    String str;
                    String str2;
                    Headers.Builder newBuilder2;
                    Request request = r0.request;
                    Object obj2 = 1;
                    if (request.header("If-Modified-Since") == null) {
                        if (request.header("If-None-Match") == null) {
                            obj = null;
                            if (obj != null) {
                                cacheControl2 = r0.cacheResponse.cacheControl();
                                if (cacheControl2.immutable()) {
                                    j = 0;
                                    max = r0.servedDate == null ? Math.max(0, r0.receivedResponseMillis - r0.servedDate.getTime()) : 0;
                                    if (r0.ageSeconds != -1) {
                                        max = Math.max(max, TimeUnit.SECONDS.toMillis((long) r0.ageSeconds));
                                    }
                                    max = (max + (r0.receivedResponseMillis - r0.sentRequestMillis)) + (r0.nowMillis - r0.receivedResponseMillis);
                                    cacheControl3 = r0.cacheResponse.cacheControl();
                                    if (cacheControl3.maxAgeSeconds() == -1) {
                                        toMillis = TimeUnit.SECONDS.toMillis((long) cacheControl3.maxAgeSeconds());
                                    } else {
                                        if (r0.expires == null) {
                                            if (r0.servedDate == null) {
                                                toMillis = r0.servedDate.getTime();
                                            } else {
                                                toMillis = r0.receivedResponseMillis;
                                            }
                                            time = r0.expires.getTime() - toMillis;
                                            if (time > 0) {
                                                toMillis = time;
                                            }
                                        } else if (r0.lastModified != null && r0.cacheResponse.request().url().query() == null) {
                                            if (r0.servedDate == null) {
                                                toMillis = r0.servedDate.getTime();
                                            } else {
                                                toMillis = r0.sentRequestMillis;
                                            }
                                            time = toMillis - r0.lastModified.getTime();
                                            if (time > 0) {
                                                toMillis = time / 10;
                                            }
                                        }
                                        toMillis = 0;
                                    }
                                    if (cacheControl.maxAgeSeconds() != -1) {
                                        toMillis = Math.min(toMillis, TimeUnit.SECONDS.toMillis((long) cacheControl.maxAgeSeconds()));
                                    }
                                    toMillis2 = cacheControl.minFreshSeconds() == -1 ? TimeUnit.SECONDS.toMillis((long) cacheControl.minFreshSeconds()) : 0;
                                    if (!(cacheControl2.mustRevalidate() || cacheControl.maxStaleSeconds() == -1)) {
                                        j = TimeUnit.SECONDS.toMillis((long) cacheControl.maxStaleSeconds());
                                    }
                                    if (!cacheControl2.noCache()) {
                                        j2 = max + toMillis2;
                                        if (j2 < toMillis + j) {
                                            newBuilder = r0.cacheResponse.newBuilder();
                                            if (j2 >= toMillis) {
                                                newBuilder.addHeader("Warning", "110 HttpURLConnection \"Response is stale\"");
                                            }
                                            if (max > 86400000) {
                                                if (r0.cacheResponse.cacheControl().maxAgeSeconds() == -1 || r0.expires != null) {
                                                    obj2 = null;
                                                }
                                                if (obj2 != null) {
                                                    newBuilder.addHeader("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                                                }
                                            }
                                            cacheStrategy2 = new CacheStrategy(null, newBuilder.build());
                                            cacheStrategy = cacheStrategy2;
                                        }
                                    }
                                    if (r0.etag != null) {
                                        str = "If-None-Match";
                                        str2 = r0.etag;
                                    } else if (r0.lastModified != null) {
                                        str = "If-Modified-Since";
                                        str2 = r0.lastModifiedString;
                                    } else if (r0.servedDate == null) {
                                        str = "If-Modified-Since";
                                        str2 = r0.servedDateString;
                                    } else {
                                        cacheStrategy = new CacheStrategy(r0.request, null);
                                    }
                                    newBuilder2 = r0.request.headers().newBuilder();
                                    Internal.instance.addLenient(newBuilder2, str, str2);
                                    cacheStrategy2 = new CacheStrategy(r0.request.newBuilder().headers(newBuilder2.build()).build(), r0.cacheResponse);
                                    cacheStrategy = cacheStrategy2;
                                } else {
                                    cacheStrategy = new CacheStrategy(null, r0.cacheResponse);
                                }
                            }
                        }
                    }
                    obj = 1;
                    if (obj != null) {
                        cacheControl2 = r0.cacheResponse.cacheControl();
                        if (cacheControl2.immutable()) {
                            j = 0;
                            if (r0.servedDate == null) {
                            }
                            if (r0.ageSeconds != -1) {
                                max = Math.max(max, TimeUnit.SECONDS.toMillis((long) r0.ageSeconds));
                            }
                            max = (max + (r0.receivedResponseMillis - r0.sentRequestMillis)) + (r0.nowMillis - r0.receivedResponseMillis);
                            cacheControl3 = r0.cacheResponse.cacheControl();
                            if (cacheControl3.maxAgeSeconds() == -1) {
                                if (r0.expires == null) {
                                    if (r0.servedDate == null) {
                                        toMillis = r0.sentRequestMillis;
                                    } else {
                                        toMillis = r0.servedDate.getTime();
                                    }
                                    time = toMillis - r0.lastModified.getTime();
                                    if (time > 0) {
                                        toMillis = time / 10;
                                    }
                                } else {
                                    if (r0.servedDate == null) {
                                        toMillis = r0.receivedResponseMillis;
                                    } else {
                                        toMillis = r0.servedDate.getTime();
                                    }
                                    time = r0.expires.getTime() - toMillis;
                                    if (time > 0) {
                                        toMillis = time;
                                    }
                                }
                                toMillis = 0;
                            } else {
                                toMillis = TimeUnit.SECONDS.toMillis((long) cacheControl3.maxAgeSeconds());
                            }
                            if (cacheControl.maxAgeSeconds() != -1) {
                                toMillis = Math.min(toMillis, TimeUnit.SECONDS.toMillis((long) cacheControl.maxAgeSeconds()));
                            }
                            if (cacheControl.minFreshSeconds() == -1) {
                            }
                            j = TimeUnit.SECONDS.toMillis((long) cacheControl.maxStaleSeconds());
                            if (cacheControl2.noCache()) {
                                j2 = max + toMillis2;
                                if (j2 < toMillis + j) {
                                    newBuilder = r0.cacheResponse.newBuilder();
                                    if (j2 >= toMillis) {
                                        newBuilder.addHeader("Warning", "110 HttpURLConnection \"Response is stale\"");
                                    }
                                    if (max > 86400000) {
                                        if (r0.cacheResponse.cacheControl().maxAgeSeconds() == -1) {
                                        }
                                        obj2 = null;
                                        if (obj2 != null) {
                                            newBuilder.addHeader("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                                        }
                                    }
                                    cacheStrategy2 = new CacheStrategy(null, newBuilder.build());
                                    cacheStrategy = cacheStrategy2;
                                }
                            }
                            if (r0.etag != null) {
                                str = "If-None-Match";
                                str2 = r0.etag;
                            } else if (r0.lastModified != null) {
                                str = "If-Modified-Since";
                                str2 = r0.lastModifiedString;
                            } else if (r0.servedDate == null) {
                                cacheStrategy = new CacheStrategy(r0.request, null);
                            } else {
                                str = "If-Modified-Since";
                                str2 = r0.servedDateString;
                            }
                            newBuilder2 = r0.request.headers().newBuilder();
                            Internal.instance.addLenient(newBuilder2, str, str2);
                            cacheStrategy2 = new CacheStrategy(r0.request.newBuilder().headers(newBuilder2.build()).build(), r0.cacheResponse);
                            cacheStrategy = cacheStrategy2;
                        } else {
                            cacheStrategy = new CacheStrategy(null, r0.cacheResponse);
                        }
                    }
                }
                cacheStrategy = new CacheStrategy(r0.request, null);
            } else {
                cacheStrategy = new CacheStrategy(r0.request, null);
            }
            return (cacheStrategy.networkRequest == null || !r0.request.cacheControl().onlyIfCached()) ? cacheStrategy : new CacheStrategy(null, null);
        }
    }

    CacheStrategy(Request request, Response response) {
        this.networkRequest = request;
        this.cacheResponse = response;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean isCacheable(okhttp3.Response r3, okhttp3.Request r4) {
        /*
        r0 = r3.code();
        r1 = 0;
        switch(r0) {
            case 200: goto L_0x0031;
            case 203: goto L_0x0031;
            case 204: goto L_0x0031;
            case 300: goto L_0x0031;
            case 301: goto L_0x0031;
            case 302: goto L_0x0009;
            case 307: goto L_0x0009;
            case 308: goto L_0x0031;
            case 404: goto L_0x0031;
            case 405: goto L_0x0031;
            case 410: goto L_0x0031;
            case 414: goto L_0x0031;
            case 501: goto L_0x0031;
            default: goto L_0x0008;
        };
    L_0x0008:
        goto L_0x0048;
    L_0x0009:
        r0 = "Expires";
        r0 = r3.header(r0);
        if (r0 != 0) goto L_0x0031;
    L_0x0011:
        r0 = r3.cacheControl();
        r0 = r0.maxAgeSeconds();
        r2 = -1;
        if (r0 != r2) goto L_0x0031;
    L_0x001c:
        r0 = r3.cacheControl();
        r0 = r0.isPublic();
        if (r0 != 0) goto L_0x0031;
    L_0x0026:
        r0 = r3.cacheControl();
        r0 = r0.isPrivate();
        if (r0 != 0) goto L_0x0031;
    L_0x0030:
        goto L_0x0048;
    L_0x0031:
        r3 = r3.cacheControl();
        r3 = r3.noStore();
        if (r3 != 0) goto L_0x0047;
    L_0x003b:
        r3 = r4.cacheControl();
        r3 = r3.noStore();
        if (r3 != 0) goto L_0x0047;
    L_0x0045:
        r3 = 1;
        return r3;
    L_0x0047:
        return r1;
    L_0x0048:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache.CacheStrategy.isCacheable(okhttp3.Response, okhttp3.Request):boolean");
    }
}
