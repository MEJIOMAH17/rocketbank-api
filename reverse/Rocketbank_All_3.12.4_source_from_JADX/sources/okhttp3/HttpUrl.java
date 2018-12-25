package okhttp3;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import kotlin.text.Typography;
import okhttp3.internal.Util;
import okio.Buffer;
import org.slf4j.Marker;

public final class HttpUrl {
    private static final char[] HEX_DIGITS = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    @Nullable
    private final String fragment;
    final String host;
    private final String password;
    private final List<String> pathSegments;
    final int port;
    @Nullable
    private final List<String> queryNamesAndValues;
    final String scheme;
    private final String url;
    private final String username;

    public static final class Builder {
        @Nullable
        String encodedFragment;
        String encodedPassword = "";
        final List<String> encodedPathSegments = new ArrayList();
        @Nullable
        List<String> encodedQueryNamesAndValues;
        String encodedUsername = "";
        @Nullable
        String host;
        int port = -1;
        @Nullable
        String scheme;

        enum ParseResult {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public Builder() {
            this.encodedPathSegments.add("");
        }

        public final Builder addQueryParameter(String str, @Nullable String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (this.encodedQueryNamesAndValues == null) {
                this.encodedQueryNamesAndValues = new ArrayList();
            }
            this.encodedQueryNamesAndValues.add(HttpUrl.canonicalize$6fb45537(str, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false));
            this.encodedQueryNamesAndValues.add(str2 != null ? HttpUrl.canonicalize$6fb45537(str2, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false) : null);
            return this;
        }

        public final Builder addEncodedQueryParameter(String str, @Nullable String str2) {
            if (str == null) {
                throw new NullPointerException("encodedName == null");
            }
            if (this.encodedQueryNamesAndValues == null) {
                this.encodedQueryNamesAndValues = new ArrayList();
            }
            this.encodedQueryNamesAndValues.add(HttpUrl.canonicalize$6fb45537(str, " \"'<>#&=", true));
            this.encodedQueryNamesAndValues.add(str2 != null ? HttpUrl.canonicalize$6fb45537(str2, " \"'<>#&=", true) : null);
            return this;
        }

        public final HttpUrl build() {
            if (this.scheme == null) {
                throw new IllegalStateException("scheme == null");
            } else if (this.host != null) {
                return new HttpUrl(this);
            } else {
                throw new IllegalStateException("host == null");
            }
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(this.scheme);
            stringBuilder.append("://");
            if (!(this.encodedUsername.isEmpty() && this.encodedPassword.isEmpty())) {
                stringBuilder.append(this.encodedUsername);
                if (!this.encodedPassword.isEmpty()) {
                    stringBuilder.append(':');
                    stringBuilder.append(this.encodedPassword);
                }
                stringBuilder.append('@');
            }
            if (this.host.indexOf(58) != -1) {
                stringBuilder.append('[');
                stringBuilder.append(this.host);
                stringBuilder.append(']');
            } else {
                stringBuilder.append(this.host);
            }
            int defaultPort = this.port != -1 ? this.port : HttpUrl.defaultPort(this.scheme);
            if (defaultPort != HttpUrl.defaultPort(this.scheme)) {
                stringBuilder.append(':');
                stringBuilder.append(defaultPort);
            }
            HttpUrl.pathSegmentsToString(stringBuilder, this.encodedPathSegments);
            if (this.encodedQueryNamesAndValues != null) {
                stringBuilder.append('?');
                HttpUrl.namesAndValuesToQueryString(stringBuilder, this.encodedQueryNamesAndValues);
            }
            if (this.encodedFragment != null) {
                stringBuilder.append('#');
                stringBuilder.append(this.encodedFragment);
            }
            return stringBuilder.toString();
        }

        final ParseResult parse(@Nullable HttpUrl httpUrl, String str) {
            int i;
            char charAt;
            int i2;
            char c;
            char charAt2;
            char c2;
            boolean z;
            String encodedQuery;
            boolean z2;
            int i3;
            int delimiterOffset;
            int delimiterOffset2;
            boolean z3;
            boolean z4;
            char charAt3;
            int i4;
            char c3;
            Builder builder = this;
            HttpUrl httpUrl2 = httpUrl;
            String str2 = str;
            int skipLeadingAsciiWhitespace = Util.skipLeadingAsciiWhitespace(str2, 0, str.length());
            int skipTrailingAsciiWhitespace = Util.skipTrailingAsciiWhitespace(str2, skipLeadingAsciiWhitespace, str.length());
            char c4 = ':';
            if (skipTrailingAsciiWhitespace - skipLeadingAsciiWhitespace >= 2) {
                char charAt4 = str2.charAt(skipLeadingAsciiWhitespace);
                if (charAt4 < 'a' || charAt4 > 'z') {
                    if (charAt4 >= 'A') {
                        if (charAt4 > 'Z') {
                        }
                    }
                }
                i = skipLeadingAsciiWhitespace + 1;
                while (i < skipTrailingAsciiWhitespace) {
                    charAt = str2.charAt(i);
                    if ((charAt >= 'a' && charAt <= 'z') || ((charAt >= 'A' && charAt <= 'Z') || ((charAt >= '0' && charAt <= '9') || charAt == '+' || charAt == '-' || charAt == '.'))) {
                        i++;
                    } else if (charAt == ':') {
                        if (i != -1) {
                            if (str2.regionMatches(true, skipLeadingAsciiWhitespace, "https:", 0, 6)) {
                                if (str2.regionMatches(true, skipLeadingAsciiWhitespace, "http:", 0, 5)) {
                                    return ParseResult.UNSUPPORTED_SCHEME;
                                }
                                builder.scheme = "http";
                                skipLeadingAsciiWhitespace += 5;
                            } else {
                                builder.scheme = "https";
                                skipLeadingAsciiWhitespace += 6;
                            }
                        } else if (httpUrl2 != null) {
                            return ParseResult.MISSING_SCHEME;
                        } else {
                            builder.scheme = httpUrl2.scheme;
                        }
                        i = skipLeadingAsciiWhitespace;
                        i2 = 0;
                        while (true) {
                            c = '/';
                            charAt = '\\';
                            if (i < skipTrailingAsciiWhitespace) {
                                break;
                            }
                            charAt2 = str2.charAt(i);
                            if (charAt2 == '\\' && charAt2 != '/') {
                                break;
                            }
                            i2++;
                            i++;
                        }
                        c2 = '#';
                        z = true;
                        if (i2 < 2 && httpUrl2 != null) {
                            if (!httpUrl2.scheme.equals(builder.scheme)) {
                                builder.encodedUsername = httpUrl.encodedUsername();
                                builder.encodedPassword = httpUrl.encodedPassword();
                                builder.host = httpUrl2.host;
                                builder.port = httpUrl2.port;
                                builder.encodedPathSegments.clear();
                                builder.encodedPathSegments.addAll(httpUrl.encodedPathSegments());
                                if (skipLeadingAsciiWhitespace == skipTrailingAsciiWhitespace || str2.charAt(skipLeadingAsciiWhitespace) == '#') {
                                    encodedQuery = httpUrl.encodedQuery();
                                    builder.encodedQueryNamesAndValues = encodedQuery == null ? HttpUrl.queryStringToNamesAndValues(HttpUrl.canonicalize$6fb45537(encodedQuery, " \"'<>#", true)) : null;
                                }
                                z2 = true;
                                i3 = skipLeadingAsciiWhitespace;
                                delimiterOffset = Util.delimiterOffset(str2, i3, skipTrailingAsciiWhitespace, "?#");
                                resolvePath(str2, i3, delimiterOffset);
                                if (delimiterOffset < skipTrailingAsciiWhitespace && str2.charAt(delimiterOffset) == '?') {
                                    delimiterOffset2 = Util.delimiterOffset(str2, delimiterOffset, skipTrailingAsciiWhitespace, '#');
                                    builder.encodedQueryNamesAndValues = HttpUrl.queryStringToNamesAndValues(HttpUrl.canonicalize$1d5ffab7(str2, delimiterOffset + 1, delimiterOffset2, " \"'<>#", true, false, true, true));
                                    delimiterOffset = delimiterOffset2;
                                }
                                if (delimiterOffset < skipTrailingAsciiWhitespace && str2.charAt(delimiterOffset) == '#') {
                                    builder.encodedFragment = HttpUrl.canonicalize$1d5ffab7(str2, delimiterOffset + 1, skipTrailingAsciiWhitespace, "", true, false, false, false);
                                }
                                return ParseResult.SUCCESS;
                            }
                        }
                        i = skipLeadingAsciiWhitespace + i2;
                        z3 = false;
                        z4 = z3;
                        while (true) {
                            skipLeadingAsciiWhitespace = Util.delimiterOffset(str2, i, skipTrailingAsciiWhitespace, "@/\\?#");
                            charAt3 = skipLeadingAsciiWhitespace == skipTrailingAsciiWhitespace ? str2.charAt(skipLeadingAsciiWhitespace) : '￿';
                            if (!(charAt3 == '￿' || charAt3 == c2 || charAt3 == r15 || charAt3 == charAt)) {
                                switch (charAt3) {
                                    case '?':
                                        break;
                                    case '@':
                                        if (z3) {
                                            int delimiterOffset3 = Util.delimiterOffset(str2, i, skipLeadingAsciiWhitespace, c4);
                                            i4 = delimiterOffset3;
                                            z2 = z;
                                            c = c2;
                                            c3 = charAt;
                                            i3 = skipLeadingAsciiWhitespace;
                                            encodedQuery = HttpUrl.canonicalize$1d5ffab7(str2, i, delimiterOffset3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
                                            if (z4) {
                                                StringBuilder stringBuilder = new StringBuilder();
                                                stringBuilder.append(builder.encodedUsername);
                                                stringBuilder.append("%40");
                                                stringBuilder.append(encodedQuery);
                                                encodedQuery = stringBuilder.toString();
                                            }
                                            builder.encodedUsername = encodedQuery;
                                            if (i4 != i3) {
                                                builder.encodedPassword = HttpUrl.canonicalize$1d5ffab7(str2, i4 + 1, i3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
                                                z3 = z2;
                                            }
                                            z4 = z2;
                                        } else {
                                            z2 = z;
                                            c3 = charAt;
                                            i3 = skipLeadingAsciiWhitespace;
                                            StringBuilder stringBuilder2 = new StringBuilder();
                                            stringBuilder2.append(builder.encodedPassword);
                                            stringBuilder2.append("%40");
                                            stringBuilder2.append(HttpUrl.canonicalize$1d5ffab7(str2, i, i3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true));
                                            builder.encodedPassword = stringBuilder2.toString();
                                        }
                                        i = i3 + 1;
                                        z = z2;
                                        charAt = c3;
                                        c2 = '#';
                                        c4 = ':';
                                        c = '/';
                                        continue;
                                        continue;
                                    default:
                                        continue;
                                        continue;
                                }
                            }
                            z2 = z;
                            i3 = skipLeadingAsciiWhitespace;
                            delimiterOffset = portColonOffset(str2, i, i3);
                            i2 = delimiterOffset + 1;
                            if (i2 >= i3) {
                                builder.host = Util.canonicalizeHost(HttpUrl.percentDecode(str2, i, delimiterOffset, false));
                                builder.port = parsePort(str2, i2, i3);
                                if (builder.port == -1) {
                                    return ParseResult.INVALID_PORT;
                                }
                            }
                            builder.host = Util.canonicalizeHost(HttpUrl.percentDecode(str2, i, delimiterOffset, false));
                            builder.port = HttpUrl.defaultPort(builder.scheme);
                            if (builder.host == null) {
                                return ParseResult.INVALID_HOST;
                            }
                            delimiterOffset = Util.delimiterOffset(str2, i3, skipTrailingAsciiWhitespace, "?#");
                            resolvePath(str2, i3, delimiterOffset);
                            delimiterOffset2 = Util.delimiterOffset(str2, delimiterOffset, skipTrailingAsciiWhitespace, '#');
                            builder.encodedQueryNamesAndValues = HttpUrl.queryStringToNamesAndValues(HttpUrl.canonicalize$1d5ffab7(str2, delimiterOffset + 1, delimiterOffset2, " \"'<>#", true, false, true, true));
                            delimiterOffset = delimiterOffset2;
                            builder.encodedFragment = HttpUrl.canonicalize$1d5ffab7(str2, delimiterOffset + 1, skipTrailingAsciiWhitespace, "", true, false, false, false);
                            return ParseResult.SUCCESS;
                        }
                    }
                }
            }
            i = -1;
            if (i != -1) {
                if (str2.regionMatches(true, skipLeadingAsciiWhitespace, "https:", 0, 6)) {
                    if (str2.regionMatches(true, skipLeadingAsciiWhitespace, "http:", 0, 5)) {
                        return ParseResult.UNSUPPORTED_SCHEME;
                    }
                    builder.scheme = "http";
                    skipLeadingAsciiWhitespace += 5;
                } else {
                    builder.scheme = "https";
                    skipLeadingAsciiWhitespace += 6;
                }
            } else if (httpUrl2 != null) {
                return ParseResult.MISSING_SCHEME;
            } else {
                builder.scheme = httpUrl2.scheme;
            }
            i = skipLeadingAsciiWhitespace;
            i2 = 0;
            while (true) {
                c = '/';
                charAt = '\\';
                if (i < skipTrailingAsciiWhitespace) {
                    break;
                }
                charAt2 = str2.charAt(i);
                if (charAt2 == '\\') {
                }
                i2++;
                i++;
            }
            c2 = '#';
            z = true;
            if (!httpUrl2.scheme.equals(builder.scheme)) {
                builder.encodedUsername = httpUrl.encodedUsername();
                builder.encodedPassword = httpUrl.encodedPassword();
                builder.host = httpUrl2.host;
                builder.port = httpUrl2.port;
                builder.encodedPathSegments.clear();
                builder.encodedPathSegments.addAll(httpUrl.encodedPathSegments());
                encodedQuery = httpUrl.encodedQuery();
                if (encodedQuery == null) {
                }
                builder.encodedQueryNamesAndValues = encodedQuery == null ? HttpUrl.queryStringToNamesAndValues(HttpUrl.canonicalize$6fb45537(encodedQuery, " \"'<>#", true)) : null;
                z2 = true;
                i3 = skipLeadingAsciiWhitespace;
                delimiterOffset = Util.delimiterOffset(str2, i3, skipTrailingAsciiWhitespace, "?#");
                resolvePath(str2, i3, delimiterOffset);
                delimiterOffset2 = Util.delimiterOffset(str2, delimiterOffset, skipTrailingAsciiWhitespace, '#');
                builder.encodedQueryNamesAndValues = HttpUrl.queryStringToNamesAndValues(HttpUrl.canonicalize$1d5ffab7(str2, delimiterOffset + 1, delimiterOffset2, " \"'<>#", true, false, true, true));
                delimiterOffset = delimiterOffset2;
                builder.encodedFragment = HttpUrl.canonicalize$1d5ffab7(str2, delimiterOffset + 1, skipTrailingAsciiWhitespace, "", true, false, false, false);
                return ParseResult.SUCCESS;
            }
            i = skipLeadingAsciiWhitespace + i2;
            z3 = false;
            z4 = z3;
            while (true) {
                skipLeadingAsciiWhitespace = Util.delimiterOffset(str2, i, skipTrailingAsciiWhitespace, "@/\\?#");
                if (skipLeadingAsciiWhitespace == skipTrailingAsciiWhitespace) {
                }
                switch (charAt3) {
                    case '?':
                        break;
                    case '@':
                        if (z3) {
                            z2 = z;
                            c3 = charAt;
                            i3 = skipLeadingAsciiWhitespace;
                            StringBuilder stringBuilder22 = new StringBuilder();
                            stringBuilder22.append(builder.encodedPassword);
                            stringBuilder22.append("%40");
                            stringBuilder22.append(HttpUrl.canonicalize$1d5ffab7(str2, i, i3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true));
                            builder.encodedPassword = stringBuilder22.toString();
                        } else {
                            int delimiterOffset32 = Util.delimiterOffset(str2, i, skipLeadingAsciiWhitespace, c4);
                            i4 = delimiterOffset32;
                            z2 = z;
                            c = c2;
                            c3 = charAt;
                            i3 = skipLeadingAsciiWhitespace;
                            encodedQuery = HttpUrl.canonicalize$1d5ffab7(str2, i, delimiterOffset32, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
                            if (z4) {
                                StringBuilder stringBuilder3 = new StringBuilder();
                                stringBuilder3.append(builder.encodedUsername);
                                stringBuilder3.append("%40");
                                stringBuilder3.append(encodedQuery);
                                encodedQuery = stringBuilder3.toString();
                            }
                            builder.encodedUsername = encodedQuery;
                            if (i4 != i3) {
                                builder.encodedPassword = HttpUrl.canonicalize$1d5ffab7(str2, i4 + 1, i3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
                                z3 = z2;
                            }
                            z4 = z2;
                        }
                        i = i3 + 1;
                        z = z2;
                        charAt = c3;
                        c2 = '#';
                        c4 = ':';
                        c = '/';
                        continue;
                        continue;
                    default:
                        continue;
                        continue;
                }
                z2 = z;
                i3 = skipLeadingAsciiWhitespace;
                delimiterOffset = portColonOffset(str2, i, i3);
                i2 = delimiterOffset + 1;
                if (i2 >= i3) {
                    builder.host = Util.canonicalizeHost(HttpUrl.percentDecode(str2, i, delimiterOffset, false));
                    builder.port = HttpUrl.defaultPort(builder.scheme);
                } else {
                    builder.host = Util.canonicalizeHost(HttpUrl.percentDecode(str2, i, delimiterOffset, false));
                    builder.port = parsePort(str2, i2, i3);
                    if (builder.port == -1) {
                        return ParseResult.INVALID_PORT;
                    }
                }
                if (builder.host == null) {
                    return ParseResult.INVALID_HOST;
                }
                delimiterOffset = Util.delimiterOffset(str2, i3, skipTrailingAsciiWhitespace, "?#");
                resolvePath(str2, i3, delimiterOffset);
                delimiterOffset2 = Util.delimiterOffset(str2, delimiterOffset, skipTrailingAsciiWhitespace, '#');
                builder.encodedQueryNamesAndValues = HttpUrl.queryStringToNamesAndValues(HttpUrl.canonicalize$1d5ffab7(str2, delimiterOffset + 1, delimiterOffset2, " \"'<>#", true, false, true, true));
                delimiterOffset = delimiterOffset2;
                builder.encodedFragment = HttpUrl.canonicalize$1d5ffab7(str2, delimiterOffset + 1, skipTrailingAsciiWhitespace, "", true, false, false, false);
                return ParseResult.SUCCESS;
            }
        }

        private void resolvePath(String str, int i, int i2) {
            if (i != i2) {
                int i3;
                int i4;
                int i5;
                String canonicalize$1d5ffab7;
                char charAt = str.charAt(i);
                if (charAt != '/') {
                    if (charAt != '\\') {
                        this.encodedPathSegments.set(this.encodedPathSegments.size() - 1, "");
                        while (true) {
                            i3 = i;
                            if (i3 < i2) {
                                i = Util.delimiterOffset(str, i3, i2, "/\\");
                                i4 = 0;
                                i5 = i >= i2 ? 1 : 0;
                                canonicalize$1d5ffab7 = HttpUrl.canonicalize$1d5ffab7(str, i3, i, " \"<>^`{}|/\\?#", true, false, false, true);
                                if (!canonicalize$1d5ffab7.equals(".")) {
                                    if (canonicalize$1d5ffab7.equalsIgnoreCase("%2e")) {
                                        i3 = 0;
                                        if (i3 == 0) {
                                            if (canonicalize$1d5ffab7.equals("..") || canonicalize$1d5ffab7.equalsIgnoreCase("%2e.") || canonicalize$1d5ffab7.equalsIgnoreCase(".%2e") || canonicalize$1d5ffab7.equalsIgnoreCase("%2e%2e")) {
                                                i4 = 1;
                                            }
                                            if (i4 != 0) {
                                                if (((String) this.encodedPathSegments.get(this.encodedPathSegments.size() - 1)).isEmpty()) {
                                                    this.encodedPathSegments.add(canonicalize$1d5ffab7);
                                                } else {
                                                    this.encodedPathSegments.set(this.encodedPathSegments.size() - 1, canonicalize$1d5ffab7);
                                                }
                                                if (i5 != 0) {
                                                    this.encodedPathSegments.add("");
                                                }
                                            } else if (((String) this.encodedPathSegments.remove(this.encodedPathSegments.size() - 1)).isEmpty() || this.encodedPathSegments.isEmpty()) {
                                                this.encodedPathSegments.add("");
                                            } else {
                                                this.encodedPathSegments.set(this.encodedPathSegments.size() - 1, "");
                                            }
                                        }
                                        if (i5 == 0) {
                                            i++;
                                        }
                                    }
                                }
                                i3 = 1;
                                if (i3 == 0) {
                                    i4 = 1;
                                    if (i4 != 0) {
                                        if (((String) this.encodedPathSegments.get(this.encodedPathSegments.size() - 1)).isEmpty()) {
                                            this.encodedPathSegments.add(canonicalize$1d5ffab7);
                                        } else {
                                            this.encodedPathSegments.set(this.encodedPathSegments.size() - 1, canonicalize$1d5ffab7);
                                        }
                                        if (i5 != 0) {
                                            this.encodedPathSegments.add("");
                                        }
                                    } else {
                                        if (((String) this.encodedPathSegments.remove(this.encodedPathSegments.size() - 1)).isEmpty()) {
                                        }
                                        this.encodedPathSegments.add("");
                                    }
                                }
                                if (i5 == 0) {
                                    i++;
                                }
                            } else {
                                return;
                            }
                        }
                    }
                }
                this.encodedPathSegments.clear();
                this.encodedPathSegments.add("");
                i++;
                while (true) {
                    i3 = i;
                    if (i3 < i2) {
                        i = Util.delimiterOffset(str, i3, i2, "/\\");
                        i4 = 0;
                        if (i >= i2) {
                        }
                        canonicalize$1d5ffab7 = HttpUrl.canonicalize$1d5ffab7(str, i3, i, " \"<>^`{}|/\\?#", true, false, false, true);
                        if (canonicalize$1d5ffab7.equals(".")) {
                            if (canonicalize$1d5ffab7.equalsIgnoreCase("%2e")) {
                                i3 = 0;
                                if (i3 == 0) {
                                    i4 = 1;
                                    if (i4 != 0) {
                                        if (((String) this.encodedPathSegments.remove(this.encodedPathSegments.size() - 1)).isEmpty()) {
                                        }
                                        this.encodedPathSegments.add("");
                                    } else {
                                        if (((String) this.encodedPathSegments.get(this.encodedPathSegments.size() - 1)).isEmpty()) {
                                            this.encodedPathSegments.set(this.encodedPathSegments.size() - 1, canonicalize$1d5ffab7);
                                        } else {
                                            this.encodedPathSegments.add(canonicalize$1d5ffab7);
                                        }
                                        if (i5 != 0) {
                                            this.encodedPathSegments.add("");
                                        }
                                    }
                                }
                                if (i5 == 0) {
                                    i++;
                                }
                            }
                        }
                        i3 = 1;
                        if (i3 == 0) {
                            i4 = 1;
                            if (i4 != 0) {
                                if (((String) this.encodedPathSegments.get(this.encodedPathSegments.size() - 1)).isEmpty()) {
                                    this.encodedPathSegments.add(canonicalize$1d5ffab7);
                                } else {
                                    this.encodedPathSegments.set(this.encodedPathSegments.size() - 1, canonicalize$1d5ffab7);
                                }
                                if (i5 != 0) {
                                    this.encodedPathSegments.add("");
                                }
                            } else {
                                if (((String) this.encodedPathSegments.remove(this.encodedPathSegments.size() - 1)).isEmpty()) {
                                }
                                this.encodedPathSegments.add("");
                            }
                        }
                        if (i5 == 0) {
                            i++;
                        }
                    } else {
                        return;
                    }
                }
            }
        }

        private static int portColonOffset(String str, int i, int i2) {
            while (i < i2) {
                char charAt = str.charAt(i);
                if (charAt == ':') {
                    return i;
                }
                if (charAt == '[') {
                    do {
                        i++;
                        if (i >= i2) {
                            break;
                        }
                    } while (str.charAt(i) != ']');
                }
                i++;
            }
            return i2;
        }

        private static int parsePort(java.lang.String r9, int r10, int r11) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r0 = -1;
            r4 = "";	 Catch:{ NumberFormatException -> 0x001b }
            r5 = 0;	 Catch:{ NumberFormatException -> 0x001b }
            r6 = 0;	 Catch:{ NumberFormatException -> 0x001b }
            r7 = 0;	 Catch:{ NumberFormatException -> 0x001b }
            r8 = 1;	 Catch:{ NumberFormatException -> 0x001b }
            r1 = r9;	 Catch:{ NumberFormatException -> 0x001b }
            r2 = r10;	 Catch:{ NumberFormatException -> 0x001b }
            r3 = r11;	 Catch:{ NumberFormatException -> 0x001b }
            r9 = okhttp3.HttpUrl.canonicalize$1d5ffab7(r1, r2, r3, r4, r5, r6, r7, r8);	 Catch:{ NumberFormatException -> 0x001b }
            r9 = java.lang.Integer.parseInt(r9);	 Catch:{ NumberFormatException -> 0x001b }
            if (r9 <= 0) goto L_0x001a;
        L_0x0014:
            r10 = 65535; // 0xffff float:9.1834E-41 double:3.23786E-319;
            if (r9 > r10) goto L_0x001a;
        L_0x0019:
            return r9;
        L_0x001a:
            return r0;
        L_0x001b:
            return r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.parsePort(java.lang.String, int, int):int");
        }
    }

    HttpUrl(Builder builder) {
        this.scheme = builder.scheme;
        this.username = percentDecode(builder.encodedUsername, false);
        this.password = percentDecode(builder.encodedPassword, false);
        this.host = builder.host;
        int i = -1;
        if (builder.port != -1) {
            i = builder.port;
        } else {
            String str = builder.scheme;
            if (str.equals("http")) {
                i = 80;
            } else if (str.equals("https")) {
                i = 443;
            }
        }
        this.port = i;
        this.pathSegments = percentDecode(builder.encodedPathSegments, false);
        String str2 = null;
        this.queryNamesAndValues = builder.encodedQueryNamesAndValues != null ? percentDecode(builder.encodedQueryNamesAndValues, true) : null;
        if (builder.encodedFragment != null) {
            str2 = percentDecode(builder.encodedFragment, false);
        }
        this.fragment = str2;
        this.url = builder.toString();
    }

    public final String scheme() {
        return this.scheme;
    }

    public final boolean isHttps() {
        return this.scheme.equals("https");
    }

    public final String encodedUsername() {
        if (this.username.isEmpty()) {
            return "";
        }
        int length = this.scheme.length() + 3;
        String str = this.url;
        return this.url.substring(length, Util.delimiterOffset(str, length, str.length(), ":@"));
    }

    public final String encodedPassword() {
        if (this.password.isEmpty()) {
            return "";
        }
        return this.url.substring(this.url.indexOf(58, this.scheme.length() + 3) + 1, this.url.indexOf(64));
    }

    public final String host() {
        return this.host;
    }

    public final int port() {
        return this.port;
    }

    public static int defaultPort(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") != null ? 443 : -1;
    }

    public final String encodedPath() {
        int indexOf = this.url.indexOf(47, this.scheme.length() + 3);
        String str = this.url;
        return this.url.substring(indexOf, Util.delimiterOffset(str, indexOf, str.length(), "?#"));
    }

    static void pathSegmentsToString(StringBuilder stringBuilder, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            stringBuilder.append('/');
            stringBuilder.append((String) list.get(i));
        }
    }

    public final List<String> encodedPathSegments() {
        int indexOf = this.url.indexOf(47, this.scheme.length() + 3);
        String str = this.url;
        int delimiterOffset = Util.delimiterOffset(str, indexOf, str.length(), "?#");
        List<String> arrayList = new ArrayList();
        while (indexOf < delimiterOffset) {
            indexOf++;
            int delimiterOffset2 = Util.delimiterOffset(this.url, indexOf, delimiterOffset, '/');
            arrayList.add(this.url.substring(indexOf, delimiterOffset2));
            indexOf = delimiterOffset2;
        }
        return arrayList;
    }

    public final List<String> pathSegments() {
        return this.pathSegments;
    }

    @Nullable
    public final String encodedQuery() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        int indexOf = this.url.indexOf(63) + 1;
        String str = this.url;
        return this.url.substring(indexOf, Util.delimiterOffset(str, indexOf, str.length(), '#'));
    }

    static void namesAndValuesToQueryString(StringBuilder stringBuilder, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i += 2) {
            String str = (String) list.get(i);
            String str2 = (String) list.get(i + 1);
            if (i > 0) {
                stringBuilder.append(Typography.amp);
            }
            stringBuilder.append(str);
            if (str2 != null) {
                stringBuilder.append('=');
                stringBuilder.append(str2);
            }
        }
    }

    static List<String> queryStringToNamesAndValues(String str) {
        List<String> arrayList = new ArrayList();
        int i = 0;
        while (i <= str.length()) {
            int indexOf = str.indexOf(38, i);
            if (indexOf == -1) {
                indexOf = str.length();
            }
            int indexOf2 = str.indexOf(61, i);
            if (indexOf2 != -1) {
                if (indexOf2 <= indexOf) {
                    arrayList.add(str.substring(i, indexOf2));
                    arrayList.add(str.substring(indexOf2 + 1, indexOf));
                    i = indexOf + 1;
                }
            }
            arrayList.add(str.substring(i, indexOf));
            arrayList.add(null);
            i = indexOf + 1;
        }
        return arrayList;
    }

    @Nullable
    public final String query() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        namesAndValuesToQueryString(stringBuilder, this.queryNamesAndValues);
        return stringBuilder.toString();
    }

    @Nullable
    public final Builder newBuilder(String str) {
        Builder builder = new Builder();
        return builder.parse(this, str) == ParseResult.SUCCESS ? builder : null;
    }

    @Nullable
    public static HttpUrl parse(String str) {
        Builder builder = new Builder();
        if (builder.parse(null, str) == ParseResult.SUCCESS) {
            return builder.build();
        }
        return null;
    }

    public final boolean equals(@Nullable Object obj) {
        return (!(obj instanceof HttpUrl) || ((HttpUrl) obj).url.equals(this.url) == null) ? null : true;
    }

    public final int hashCode() {
        return this.url.hashCode();
    }

    public final String toString() {
        return this.url;
    }

    private static String percentDecode(String str, boolean z) {
        return percentDecode(str, 0, str.length(), z);
    }

    private static List<String> percentDecode(List<String> list, boolean z) {
        int size = list.size();
        List arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            String str = (String) list.get(i);
            arrayList.add(str != null ? percentDecode(str, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    static String percentDecode(String str, int i, int i2, boolean z) {
        int i3 = i;
        while (i3 < i2) {
            char charAt = str.charAt(i3);
            if (charAt != '%') {
                if (charAt != '+' || !z) {
                    i3++;
                }
            }
            Buffer buffer = new Buffer();
            buffer.writeUtf8(str, i, i3);
            percentDecode(buffer, str, i3, i2, z);
            return buffer.readUtf8();
        }
        return str.substring(i, i2);
    }

    private static void percentDecode(Buffer buffer, String str, int i, int i2, boolean z) {
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt == 37) {
                int i3 = i + 2;
                if (i3 < i2) {
                    int decodeHexDigit = Util.decodeHexDigit(str.charAt(i + 1));
                    int decodeHexDigit2 = Util.decodeHexDigit(str.charAt(i3));
                    if (!(decodeHexDigit == -1 || decodeHexDigit2 == -1)) {
                        buffer.writeByte((decodeHexDigit << 4) + decodeHexDigit2);
                        i = i3;
                        i += Character.charCount(codePointAt);
                    }
                    buffer.writeUtf8CodePoint(codePointAt);
                    i += Character.charCount(codePointAt);
                }
            }
            if (codePointAt == 43 && z) {
                buffer.writeByte(32);
                i += Character.charCount(codePointAt);
            }
            buffer.writeUtf8CodePoint(codePointAt);
            i += Character.charCount(codePointAt);
        }
    }

    private static boolean percentEncoded(String str, int i, int i2) {
        int i3 = i + 2;
        if (i3 >= i2 || str.charAt(i) != 37 || Util.decodeHexDigit(str.charAt(i + 1)) == -1 || Util.decodeHexDigit(str.charAt(i3)) == -1) {
            return null;
        }
        return true;
    }

    static String canonicalize$1d5ffab7(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        String str3 = str;
        int i3 = i2;
        String str4 = str2;
        int i4 = i;
        while (i4 < i3) {
            int codePointAt = str3.codePointAt(i4);
            int i5 = 43;
            if (codePointAt >= 32 && codePointAt != 127 && ((codePointAt < 128 || !z4) && str4.indexOf(codePointAt) == -1 && (codePointAt != 37 || (z && (!z2 || percentEncoded(str3, i4, i3)))))) {
                if (codePointAt != 43 || !z3) {
                    i4 += Character.charCount(codePointAt);
                }
            }
            Buffer buffer = new Buffer();
            buffer.writeUtf8(str3, i, i4);
            Buffer buffer2 = null;
            while (i4 < i3) {
                int codePointAt2 = str3.codePointAt(i4);
                if (z) {
                    if (!(codePointAt2 == 9 || codePointAt2 == 10 || codePointAt2 == 12 || codePointAt2 == 13)) {
                    }
                    i4 += Character.charCount(codePointAt2);
                    i5 = 43;
                }
                if (codePointAt2 == i5 && z3) {
                    buffer.writeUtf8(z ? Marker.ANY_NON_NULL_MARKER : "%2B");
                    i4 += Character.charCount(codePointAt2);
                    i5 = 43;
                } else {
                    if (codePointAt2 >= 32 && codePointAt2 != 127 && (codePointAt2 < 128 || !z4)) {
                        if (str4.indexOf(codePointAt2) == -1) {
                            if (codePointAt2 == 37) {
                                if (z) {
                                    if (z2 && !percentEncoded(str3, i4, i3)) {
                                    }
                                }
                            }
                            buffer.writeUtf8CodePoint(codePointAt2);
                            i4 += Character.charCount(codePointAt2);
                            i5 = 43;
                        }
                    }
                    if (buffer2 == null) {
                        buffer2 = new Buffer();
                    }
                    buffer2.writeUtf8CodePoint(codePointAt2);
                    while (!buffer2.exhausted()) {
                        int readByte = buffer2.readByte() & 255;
                        buffer.writeByte(37);
                        buffer.writeByte(HEX_DIGITS[(readByte >> 4) & 15]);
                        buffer.writeByte(HEX_DIGITS[readByte & 15]);
                    }
                    i4 += Character.charCount(codePointAt2);
                    i5 = 43;
                }
            }
            return buffer.readUtf8();
        }
        int i6 = i;
        return str.substring(i, i2);
    }

    static String canonicalize$40b94de9$29ef2d47(String str, String str2, boolean z) {
        return canonicalize$1d5ffab7(str, 0, str.length(), str2, z, false, true, true);
    }

    static String canonicalize$6fb45537(String str, String str2, boolean z) {
        return canonicalize$1d5ffab7(str, 0, str.length(), str2, z, false, true, true);
    }

    public final java.net.URI uri() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r13 = this;
        r0 = new okhttp3.HttpUrl$Builder;
        r0.<init>();
        r1 = r13.scheme;
        r0.scheme = r1;
        r1 = r13.encodedUsername();
        r0.encodedUsername = r1;
        r1 = r13.encodedPassword();
        r0.encodedPassword = r1;
        r1 = r13.host;
        r0.host = r1;
        r1 = r13.port;
        r2 = r13.scheme;
        r3 = "http";
        r3 = r2.equals(r3);
        r4 = -1;
        if (r3 == 0) goto L_0x0029;
    L_0x0026:
        r2 = 80;
        goto L_0x0035;
    L_0x0029:
        r3 = "https";
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0034;
    L_0x0031:
        r2 = 443; // 0x1bb float:6.21E-43 double:2.19E-321;
        goto L_0x0035;
    L_0x0034:
        r2 = r4;
    L_0x0035:
        if (r1 == r2) goto L_0x0039;
    L_0x0037:
        r4 = r13.port;
    L_0x0039:
        r0.port = r4;
        r1 = r0.encodedPathSegments;
        r1.clear();
        r1 = r0.encodedPathSegments;
        r2 = r13.encodedPathSegments();
        r1.addAll(r2);
        r3 = r13.encodedQuery();
        r1 = 0;
        if (r3 == 0) goto L_0x0064;
    L_0x0050:
        r6 = " \"'<>#";
        r4 = 0;
        r5 = r3.length();
        r7 = 1;
        r8 = 0;
        r9 = 1;
        r10 = 1;
        r2 = canonicalize$1d5ffab7(r3, r4, r5, r6, r7, r8, r9, r10);
        r2 = queryStringToNamesAndValues(r2);
        goto L_0x0065;
    L_0x0064:
        r2 = r1;
    L_0x0065:
        r0.encodedQueryNamesAndValues = r2;
        r2 = r13.fragment;
        if (r2 != 0) goto L_0x006c;
    L_0x006b:
        goto L_0x007c;
    L_0x006c:
        r1 = r13.url;
        r2 = 35;
        r1 = r1.indexOf(r2);
        r1 = r1 + 1;
        r2 = r13.url;
        r1 = r2.substring(r1);
    L_0x007c:
        r0.encodedFragment = r1;
        r1 = r0.encodedPathSegments;
        r1 = r1.size();
        r2 = 0;
        r3 = r2;
    L_0x0086:
        if (r3 >= r1) goto L_0x00a8;
    L_0x0088:
        r4 = r0.encodedPathSegments;
        r4 = r4.get(r3);
        r5 = r4;
        r5 = (java.lang.String) r5;
        r4 = r0.encodedPathSegments;
        r8 = "[]";
        r6 = 0;
        r7 = r5.length();
        r9 = 1;
        r10 = 1;
        r11 = 0;
        r12 = 1;
        r5 = canonicalize$1d5ffab7(r5, r6, r7, r8, r9, r10, r11, r12);
        r4.set(r3, r5);
        r3 = r3 + 1;
        goto L_0x0086;
    L_0x00a8:
        r1 = r0.encodedQueryNamesAndValues;
        if (r1 == 0) goto L_0x00d6;
    L_0x00ac:
        r1 = r0.encodedQueryNamesAndValues;
        r1 = r1.size();
    L_0x00b2:
        if (r2 >= r1) goto L_0x00d6;
    L_0x00b4:
        r3 = r0.encodedQueryNamesAndValues;
        r3 = r3.get(r2);
        r4 = r3;
        r4 = (java.lang.String) r4;
        if (r4 == 0) goto L_0x00d3;
    L_0x00bf:
        r3 = r0.encodedQueryNamesAndValues;
        r7 = "\\^`{|}";
        r5 = 0;
        r6 = r4.length();
        r8 = 1;
        r9 = 1;
        r10 = 1;
        r11 = 1;
        r4 = canonicalize$1d5ffab7(r4, r5, r6, r7, r8, r9, r10, r11);
        r3.set(r2, r4);
    L_0x00d3:
        r2 = r2 + 1;
        goto L_0x00b2;
    L_0x00d6:
        r1 = r0.encodedFragment;
        if (r1 == 0) goto L_0x00ed;
    L_0x00da:
        r2 = r0.encodedFragment;
        r5 = " \"#<>\\^`{|}";
        r3 = 0;
        r4 = r2.length();
        r6 = 1;
        r7 = 1;
        r8 = 0;
        r9 = 0;
        r1 = canonicalize$1d5ffab7(r2, r3, r4, r5, r6, r7, r8, r9);
        r0.encodedFragment = r1;
    L_0x00ed:
        r0 = r0.toString();
        r1 = new java.net.URI;	 Catch:{ URISyntaxException -> 0x00f7 }
        r1.<init>(r0);	 Catch:{ URISyntaxException -> 0x00f7 }
        return r1;
    L_0x00f7:
        r1 = move-exception;
        r2 = "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]";	 Catch:{ Exception -> 0x0105 }
        r3 = "";	 Catch:{ Exception -> 0x0105 }
        r0 = r0.replaceAll(r2, r3);	 Catch:{ Exception -> 0x0105 }
        r0 = java.net.URI.create(r0);	 Catch:{ Exception -> 0x0105 }
        return r0;
    L_0x0105:
        r0 = new java.lang.RuntimeException;
        r0.<init>(r1);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.uri():java.net.URI");
    }

    public final String redact() {
        Builder builder = new Builder();
        if (builder.parse(this, "/...") != ParseResult.SUCCESS) {
            builder = null;
        }
        String str = "";
        builder.encodedUsername = canonicalize$1d5ffab7(str, 0, str.length(), " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
        str = "";
        builder.encodedPassword = canonicalize$1d5ffab7(str, 0, str.length(), " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
        return builder.build().toString();
    }

    @Nullable
    public final HttpUrl resolve(String str) {
        Builder builder = new Builder();
        if (builder.parse(this, str) != ParseResult.SUCCESS) {
            builder = null;
        }
        return builder != null ? builder.build() : null;
    }
}
