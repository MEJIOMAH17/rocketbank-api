package okhttp3;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSink;

public final class FormBody extends RequestBody {
    private static final MediaType CONTENT_TYPE = MediaType.parse("application/x-www-form-urlencoded");
    private final List<String> encodedNames;
    private final List<String> encodedValues;

    public static final class Builder {
        private final Charset charset;
        private final List<String> names;
        private final List<String> values;

        public Builder() {
            this((byte) 0);
        }

        private Builder(byte b) {
            this.names = new ArrayList();
            this.values = new ArrayList();
            this.charset = (byte) 0;
        }

        public final Builder add(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            } else if (str2 == null) {
                throw new NullPointerException("value == null");
            } else {
                this.names.add(HttpUrl.canonicalize$40b94de9$29ef2d47(str, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false));
                this.values.add(HttpUrl.canonicalize$40b94de9$29ef2d47(str2, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false));
                return this;
            }
        }

        public final Builder addEncoded(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            } else if (str2 == null) {
                throw new NullPointerException("value == null");
            } else {
                this.names.add(HttpUrl.canonicalize$40b94de9$29ef2d47(str, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true));
                this.values.add(HttpUrl.canonicalize$40b94de9$29ef2d47(str2, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true));
                return this;
            }
        }

        public final FormBody build() {
            return new FormBody(this.names, this.values);
        }
    }

    FormBody(List<String> list, List<String> list2) {
        this.encodedNames = Util.immutableList((List) list);
        this.encodedValues = Util.immutableList((List) list2);
    }

    public final MediaType contentType() {
        return CONTENT_TYPE;
    }

    public final long contentLength() {
        return writeOrCountBytes(null, true);
    }

    public final void writeTo(BufferedSink bufferedSink) throws IOException {
        writeOrCountBytes(bufferedSink, false);
    }

    private long writeOrCountBytes(@Nullable BufferedSink bufferedSink, boolean z) {
        if (z) {
            bufferedSink = new Buffer();
        } else {
            bufferedSink = bufferedSink.buffer();
        }
        int size = this.encodedNames.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                bufferedSink.writeByte(38);
            }
            bufferedSink.writeUtf8((String) this.encodedNames.get(i));
            bufferedSink.writeByte(61);
            bufferedSink.writeUtf8((String) this.encodedValues.get(i));
        }
        if (!z) {
            return 0;
        }
        long size2 = bufferedSink.size();
        bufferedSink.clear();
        return size2;
    }
}
