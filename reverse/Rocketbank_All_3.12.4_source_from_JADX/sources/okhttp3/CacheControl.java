package okhttp3;

import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import kotlin.text.Typography;
import okhttp3.internal.http.HttpHeaders;

public final class CacheControl {
    public static final CacheControl FORCE_CACHE;
    public static final CacheControl FORCE_NETWORK;
    @Nullable
    String headerValue;
    private final boolean immutable;
    private final boolean isPrivate;
    private final boolean isPublic;
    private final int maxAgeSeconds;
    private final int maxStaleSeconds;
    private final int minFreshSeconds;
    private final boolean mustRevalidate;
    private final boolean noCache;
    private final boolean noStore;
    private final boolean noTransform;
    private final boolean onlyIfCached;
    private final int sMaxAgeSeconds;

    public static final class Builder {
        int maxAgeSeconds = -1;
        int maxStaleSeconds = -1;
        int minFreshSeconds = -1;
        boolean noCache;
        boolean onlyIfCached;
    }

    static {
        Builder builder = new Builder();
        builder.noCache = true;
        FORCE_NETWORK = new CacheControl(builder);
        builder = new Builder();
        builder.onlyIfCached = true;
        long toSeconds = TimeUnit.SECONDS.toSeconds(2147483647L);
        builder.maxStaleSeconds = toSeconds > 2147483647L ? ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : (int) toSeconds;
        FORCE_CACHE = new CacheControl(builder);
    }

    private CacheControl(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, @Nullable String str) {
        this.noCache = z;
        this.noStore = z2;
        this.maxAgeSeconds = i;
        this.sMaxAgeSeconds = i2;
        this.isPrivate = z3;
        this.isPublic = z4;
        this.mustRevalidate = z5;
        this.maxStaleSeconds = i3;
        this.minFreshSeconds = i4;
        this.onlyIfCached = z6;
        this.noTransform = z7;
        this.immutable = z8;
        this.headerValue = str;
    }

    private CacheControl(Builder builder) {
        this.noCache = builder.noCache;
        this.noStore = false;
        this.maxAgeSeconds = builder.maxAgeSeconds;
        this.sMaxAgeSeconds = -1;
        this.isPrivate = false;
        this.isPublic = false;
        this.mustRevalidate = false;
        this.maxStaleSeconds = builder.maxStaleSeconds;
        this.minFreshSeconds = builder.minFreshSeconds;
        this.onlyIfCached = builder.onlyIfCached;
        this.noTransform = false;
        this.immutable = false;
    }

    public final boolean noCache() {
        return this.noCache;
    }

    public final boolean noStore() {
        return this.noStore;
    }

    public final int maxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    public final boolean isPrivate() {
        return this.isPrivate;
    }

    public final boolean isPublic() {
        return this.isPublic;
    }

    public final boolean mustRevalidate() {
        return this.mustRevalidate;
    }

    public final int maxStaleSeconds() {
        return this.maxStaleSeconds;
    }

    public final int minFreshSeconds() {
        return this.minFreshSeconds;
    }

    public final boolean onlyIfCached() {
        return this.onlyIfCached;
    }

    public final boolean immutable() {
        return this.immutable;
    }

    public static CacheControl parse(Headers headers) {
        Headers headers2 = headers;
        int size = headers.size();
        Object obj = 1;
        String str = null;
        boolean z = false;
        boolean z2 = false;
        int i = -1;
        int i2 = -1;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        int i3 = -1;
        int i4 = -1;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        for (int i5 = 0; i5 < size; i5++) {
            int i6;
            int skipUntil;
            String trim;
            int skipWhitespace;
            boolean z9;
            int skipUntil2;
            String trim2;
            String name = headers2.name(i5);
            String value = headers2.value(i5);
            if (name.equalsIgnoreCase("Cache-Control")) {
                if (str == null) {
                    str = value;
                    i6 = 0;
                    while (i6 < value.length()) {
                        skipUntil = HttpHeaders.skipUntil(value, i6, "=,;");
                        trim = value.substring(i6, skipUntil).trim();
                        if (!(skipUntil == value.length() || value.charAt(skipUntil) == ',')) {
                            if (value.charAt(skipUntil) == ';') {
                                skipWhitespace = HttpHeaders.skipWhitespace(value, skipUntil + 1);
                                if (skipWhitespace < value.length() || value.charAt(skipWhitespace) != Typography.quote) {
                                    z9 = true;
                                    skipUntil2 = HttpHeaders.skipUntil(value, skipWhitespace, ",;");
                                    trim2 = value.substring(skipWhitespace, skipUntil2).trim();
                                } else {
                                    skipWhitespace++;
                                    skipUntil2 = HttpHeaders.skipUntil(value, skipWhitespace, "\"");
                                    trim2 = value.substring(skipWhitespace, skipUntil2);
                                    z9 = true;
                                    skipUntil2++;
                                }
                                if (!"no-cache".equalsIgnoreCase(trim)) {
                                    i6 = skipUntil2;
                                    z = z9;
                                } else if ("no-store".equalsIgnoreCase(trim)) {
                                    if (!"max-age".equalsIgnoreCase(trim)) {
                                        i = HttpHeaders.parseSeconds(trim2, -1);
                                    } else if (!"s-maxage".equalsIgnoreCase(trim)) {
                                        i2 = HttpHeaders.parseSeconds(trim2, -1);
                                    } else if (!"private".equalsIgnoreCase(trim)) {
                                        i6 = skipUntil2;
                                        z3 = z9;
                                    } else if (!"public".equalsIgnoreCase(trim)) {
                                        i6 = skipUntil2;
                                        z4 = z9;
                                    } else if (!"must-revalidate".equalsIgnoreCase(trim)) {
                                        i6 = skipUntil2;
                                        z5 = z9;
                                    } else if (!"max-stale".equalsIgnoreCase(trim)) {
                                        i3 = HttpHeaders.parseSeconds(trim2, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
                                    } else if (!"min-fresh".equalsIgnoreCase(trim)) {
                                        i4 = HttpHeaders.parseSeconds(trim2, -1);
                                    } else if (!"only-if-cached".equalsIgnoreCase(trim)) {
                                        i6 = skipUntil2;
                                        z6 = z9;
                                    } else if (!"no-transform".equalsIgnoreCase(trim)) {
                                        i6 = skipUntil2;
                                        z7 = z9;
                                    } else if ("immutable".equalsIgnoreCase(trim)) {
                                        z8 = z9;
                                    }
                                    i6 = skipUntil2;
                                } else {
                                    i6 = skipUntil2;
                                    z2 = z9;
                                }
                            }
                        }
                        z9 = true;
                        skipUntil2 = skipUntil + 1;
                        trim2 = null;
                        if (!"no-cache".equalsIgnoreCase(trim)) {
                            i6 = skipUntil2;
                            z = z9;
                        } else if ("no-store".equalsIgnoreCase(trim)) {
                            if (!"max-age".equalsIgnoreCase(trim)) {
                                i = HttpHeaders.parseSeconds(trim2, -1);
                            } else if (!"s-maxage".equalsIgnoreCase(trim)) {
                                i2 = HttpHeaders.parseSeconds(trim2, -1);
                            } else if (!"private".equalsIgnoreCase(trim)) {
                                i6 = skipUntil2;
                                z3 = z9;
                            } else if (!"public".equalsIgnoreCase(trim)) {
                                i6 = skipUntil2;
                                z4 = z9;
                            } else if (!"must-revalidate".equalsIgnoreCase(trim)) {
                                i6 = skipUntil2;
                                z5 = z9;
                            } else if (!"max-stale".equalsIgnoreCase(trim)) {
                                i3 = HttpHeaders.parseSeconds(trim2, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
                            } else if (!"min-fresh".equalsIgnoreCase(trim)) {
                                i4 = HttpHeaders.parseSeconds(trim2, -1);
                            } else if (!"only-if-cached".equalsIgnoreCase(trim)) {
                                i6 = skipUntil2;
                                z6 = z9;
                            } else if (!"no-transform".equalsIgnoreCase(trim)) {
                                i6 = skipUntil2;
                                z7 = z9;
                            } else if ("immutable".equalsIgnoreCase(trim)) {
                                z8 = z9;
                            }
                            i6 = skipUntil2;
                        } else {
                            i6 = skipUntil2;
                            z2 = z9;
                        }
                    }
                }
            } else if (!name.equalsIgnoreCase("Pragma")) {
            }
            obj = null;
            i6 = 0;
            while (i6 < value.length()) {
                skipUntil = HttpHeaders.skipUntil(value, i6, "=,;");
                trim = value.substring(i6, skipUntil).trim();
                if (value.charAt(skipUntil) == ';') {
                    skipWhitespace = HttpHeaders.skipWhitespace(value, skipUntil + 1);
                    if (skipWhitespace < value.length()) {
                    }
                    z9 = true;
                    skipUntil2 = HttpHeaders.skipUntil(value, skipWhitespace, ",;");
                    trim2 = value.substring(skipWhitespace, skipUntil2).trim();
                    if (!"no-cache".equalsIgnoreCase(trim)) {
                        i6 = skipUntil2;
                        z = z9;
                    } else if ("no-store".equalsIgnoreCase(trim)) {
                        i6 = skipUntil2;
                        z2 = z9;
                    } else {
                        if (!"max-age".equalsIgnoreCase(trim)) {
                            i = HttpHeaders.parseSeconds(trim2, -1);
                        } else if (!"s-maxage".equalsIgnoreCase(trim)) {
                            i2 = HttpHeaders.parseSeconds(trim2, -1);
                        } else if (!"private".equalsIgnoreCase(trim)) {
                            i6 = skipUntil2;
                            z3 = z9;
                        } else if (!"public".equalsIgnoreCase(trim)) {
                            i6 = skipUntil2;
                            z4 = z9;
                        } else if (!"must-revalidate".equalsIgnoreCase(trim)) {
                            i6 = skipUntil2;
                            z5 = z9;
                        } else if (!"max-stale".equalsIgnoreCase(trim)) {
                            i3 = HttpHeaders.parseSeconds(trim2, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
                        } else if (!"min-fresh".equalsIgnoreCase(trim)) {
                            i4 = HttpHeaders.parseSeconds(trim2, -1);
                        } else if (!"only-if-cached".equalsIgnoreCase(trim)) {
                            i6 = skipUntil2;
                            z6 = z9;
                        } else if (!"no-transform".equalsIgnoreCase(trim)) {
                            i6 = skipUntil2;
                            z7 = z9;
                        } else if ("immutable".equalsIgnoreCase(trim)) {
                            z8 = z9;
                        }
                        i6 = skipUntil2;
                    }
                } else {
                    z9 = true;
                    skipUntil2 = skipUntil + 1;
                    trim2 = null;
                    if (!"no-cache".equalsIgnoreCase(trim)) {
                        i6 = skipUntil2;
                        z = z9;
                    } else if ("no-store".equalsIgnoreCase(trim)) {
                        if (!"max-age".equalsIgnoreCase(trim)) {
                            i = HttpHeaders.parseSeconds(trim2, -1);
                        } else if (!"s-maxage".equalsIgnoreCase(trim)) {
                            i2 = HttpHeaders.parseSeconds(trim2, -1);
                        } else if (!"private".equalsIgnoreCase(trim)) {
                            i6 = skipUntil2;
                            z3 = z9;
                        } else if (!"public".equalsIgnoreCase(trim)) {
                            i6 = skipUntil2;
                            z4 = z9;
                        } else if (!"must-revalidate".equalsIgnoreCase(trim)) {
                            i6 = skipUntil2;
                            z5 = z9;
                        } else if (!"max-stale".equalsIgnoreCase(trim)) {
                            i3 = HttpHeaders.parseSeconds(trim2, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
                        } else if (!"min-fresh".equalsIgnoreCase(trim)) {
                            i4 = HttpHeaders.parseSeconds(trim2, -1);
                        } else if (!"only-if-cached".equalsIgnoreCase(trim)) {
                            i6 = skipUntil2;
                            z6 = z9;
                        } else if (!"no-transform".equalsIgnoreCase(trim)) {
                            i6 = skipUntil2;
                            z7 = z9;
                        } else if ("immutable".equalsIgnoreCase(trim)) {
                            z8 = z9;
                        }
                        i6 = skipUntil2;
                    } else {
                        i6 = skipUntil2;
                        z2 = z9;
                    }
                }
            }
        }
        return new CacheControl(z, z2, i, i2, z3, z4, z5, i3, i4, z6, z7, z8, obj == null ? null : str);
    }

    public final String toString() {
        String str = this.headerValue;
        if (str != null) {
            return str;
        }
        StringBuilder stringBuilder = new StringBuilder();
        if (this.noCache) {
            stringBuilder.append("no-cache, ");
        }
        if (this.noStore) {
            stringBuilder.append("no-store, ");
        }
        if (this.maxAgeSeconds != -1) {
            stringBuilder.append("max-age=");
            stringBuilder.append(this.maxAgeSeconds);
            stringBuilder.append(", ");
        }
        if (this.sMaxAgeSeconds != -1) {
            stringBuilder.append("s-maxage=");
            stringBuilder.append(this.sMaxAgeSeconds);
            stringBuilder.append(", ");
        }
        if (this.isPrivate) {
            stringBuilder.append("private, ");
        }
        if (this.isPublic) {
            stringBuilder.append("public, ");
        }
        if (this.mustRevalidate) {
            stringBuilder.append("must-revalidate, ");
        }
        if (this.maxStaleSeconds != -1) {
            stringBuilder.append("max-stale=");
            stringBuilder.append(this.maxStaleSeconds);
            stringBuilder.append(", ");
        }
        if (this.minFreshSeconds != -1) {
            stringBuilder.append("min-fresh=");
            stringBuilder.append(this.minFreshSeconds);
            stringBuilder.append(", ");
        }
        if (this.onlyIfCached) {
            stringBuilder.append("only-if-cached, ");
        }
        if (this.noTransform) {
            stringBuilder.append("no-transform, ");
        }
        if (this.immutable) {
            stringBuilder.append("immutable, ");
        }
        if (stringBuilder.length() == 0) {
            str = "";
        } else {
            stringBuilder.delete(stringBuilder.length() - 2, stringBuilder.length());
            str = stringBuilder.toString();
        }
        this.headerValue = str;
        return str;
    }
}
