package okhttp3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import okhttp3.internal.Util;

public final class Headers {
    private final String[] namesAndValues;

    public static final class Builder {
        final List<String> namesAndValues = new ArrayList(20);

        public final Builder add(String str, String str2) {
            checkNameAndValue(str, str2);
            this.namesAndValues.add(str);
            this.namesAndValues.add(str2.trim());
            return this;
        }

        public final Builder removeAll(String str) {
            int i = 0;
            while (i < this.namesAndValues.size()) {
                if (str.equalsIgnoreCase((String) this.namesAndValues.get(i))) {
                    this.namesAndValues.remove(i);
                    this.namesAndValues.remove(i);
                    i -= 2;
                }
                i += 2;
            }
            return this;
        }

        public final Builder set(String str, String str2) {
            checkNameAndValue(str, str2);
            removeAll(str);
            this.namesAndValues.add(str);
            this.namesAndValues.add(str2.trim());
            return this;
        }

        private static void checkNameAndValue(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            } else if (str.isEmpty()) {
                throw new IllegalArgumentException("name is empty");
            } else {
                char charAt;
                int length = str.length();
                int i = 0;
                while (i < length) {
                    charAt = str.charAt(i);
                    if (charAt > ' ') {
                        if (charAt < '') {
                            i++;
                        }
                    }
                    throw new IllegalArgumentException(Util.format("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str));
                }
                if (str2 == null) {
                    StringBuilder stringBuilder = new StringBuilder("value for name ");
                    stringBuilder.append(str);
                    stringBuilder.append(" == null");
                    throw new NullPointerException(stringBuilder.toString());
                }
                length = str2.length();
                i = 0;
                while (i < length) {
                    charAt = str2.charAt(i);
                    if ((charAt > '\u001f' || charAt == '\t') && charAt < '') {
                        i++;
                    } else {
                        throw new IllegalArgumentException(Util.format("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(charAt), Integer.valueOf(i), str, str2));
                    }
                }
            }
        }

        public final Headers build() {
            return new Headers(this);
        }
    }

    Headers(Builder builder) {
        this.namesAndValues = (String[]) builder.namesAndValues.toArray(new String[builder.namesAndValues.size()]);
    }

    private Headers(String[] strArr) {
        this.namesAndValues = strArr;
    }

    @Nullable
    public final String get(String str) {
        String[] strArr = this.namesAndValues;
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    public final int size() {
        return this.namesAndValues.length / 2;
    }

    public final String name(int i) {
        return this.namesAndValues[i << 1];
    }

    public final String value(int i) {
        return this.namesAndValues[(i << 1) + 1];
    }

    public final Builder newBuilder() {
        Builder builder = new Builder();
        Collections.addAll(builder.namesAndValues, this.namesAndValues);
        return builder;
    }

    public final boolean equals(@Nullable Object obj) {
        return (!(obj instanceof Headers) || Arrays.equals(((Headers) obj).namesAndValues, this.namesAndValues) == null) ? null : true;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.namesAndValues);
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        int length = this.namesAndValues.length / 2;
        for (int i = 0; i < length; i++) {
            int i2 = i << 1;
            stringBuilder.append(this.namesAndValues[i2]);
            stringBuilder.append(": ");
            stringBuilder.append(this.namesAndValues[i2 + 1]);
            stringBuilder.append("\n");
        }
        return stringBuilder.toString();
    }

    public static Headers of(String... strArr) {
        if (strArr.length % 2 != 0) {
            throw new IllegalArgumentException("Expected alternating header names and values");
        }
        int i;
        strArr = (String[]) strArr.clone();
        for (i = 0; i < strArr.length; i++) {
            if (strArr[i] == null) {
                throw new IllegalArgumentException("Headers cannot be null");
            }
            strArr[i] = strArr[i].trim();
        }
        i = 0;
        while (i < strArr.length) {
            String str = strArr[i];
            String str2 = strArr[i + 1];
            if (str.length() != 0 && str.indexOf(0) == -1) {
                if (str2.indexOf(0) == -1) {
                    i += 2;
                }
            }
            StringBuilder stringBuilder = new StringBuilder("Unexpected header: ");
            stringBuilder.append(str);
            stringBuilder.append(": ");
            stringBuilder.append(str2);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        return new Headers(strArr);
    }
}
