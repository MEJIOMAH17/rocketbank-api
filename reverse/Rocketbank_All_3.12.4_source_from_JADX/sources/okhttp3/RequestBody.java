package okhttp3;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import javax.annotation.Nullable;
import okhttp3.internal.Util;
import okio.BufferedSink;
import okio.ByteString;
import okio.Okio;

public abstract class RequestBody {

    /* renamed from: okhttp3.RequestBody$1 */
    class C12991 extends RequestBody {
        final /* synthetic */ ByteString val$content;
        final /* synthetic */ MediaType val$contentType;

        C12991(MediaType mediaType, ByteString byteString) {
            this.val$contentType = mediaType;
            this.val$content = byteString;
        }

        @Nullable
        public final MediaType contentType() {
            return this.val$contentType;
        }

        public final long contentLength() throws IOException {
            return (long) this.val$content.size();
        }

        public final void writeTo(BufferedSink bufferedSink) throws IOException {
            bufferedSink.write(this.val$content);
        }
    }

    /* renamed from: okhttp3.RequestBody$2 */
    class C13002 extends RequestBody {
        final /* synthetic */ int val$byteCount;
        final /* synthetic */ byte[] val$content;
        final /* synthetic */ MediaType val$contentType;
        final /* synthetic */ int val$offset;

        C13002(MediaType mediaType, int i, byte[] bArr, int i2) {
            this.val$contentType = mediaType;
            this.val$byteCount = i;
            this.val$content = bArr;
            this.val$offset = i2;
        }

        @Nullable
        public final MediaType contentType() {
            return this.val$contentType;
        }

        public final long contentLength() {
            return (long) this.val$byteCount;
        }

        public final void writeTo(BufferedSink bufferedSink) throws IOException {
            bufferedSink.write(this.val$content, this.val$offset, this.val$byteCount);
        }
    }

    /* renamed from: okhttp3.RequestBody$3 */
    class C13013 extends RequestBody {
        final /* synthetic */ MediaType val$contentType;
        final /* synthetic */ File val$file;

        C13013(MediaType mediaType, File file) {
            this.val$contentType = mediaType;
            this.val$file = file;
        }

        @Nullable
        public final MediaType contentType() {
            return this.val$contentType;
        }

        public final long contentLength() {
            return this.val$file.length();
        }

        public final void writeTo(BufferedSink bufferedSink) throws IOException {
            Closeable closeable = null;
            try {
                Closeable source = Okio.source(this.val$file);
                try {
                    bufferedSink.writeAll(source);
                    Util.closeQuietly(source);
                } catch (Throwable th) {
                    bufferedSink = th;
                    closeable = source;
                    Util.closeQuietly(closeable);
                    throw bufferedSink;
                }
            } catch (Throwable th2) {
                bufferedSink = th2;
                Util.closeQuietly(closeable);
                throw bufferedSink;
            }
        }
    }

    public long contentLength() throws IOException {
        return -1;
    }

    @Nullable
    public abstract MediaType contentType();

    public abstract void writeTo(BufferedSink bufferedSink) throws IOException;

    public static RequestBody create(@Nullable MediaType mediaType, String str) {
        Charset charset = Util.UTF_8;
        if (mediaType != null) {
            charset = mediaType.charset(null);
            if (charset == null) {
                charset = Util.UTF_8;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(mediaType);
                stringBuilder.append("; charset=utf-8");
                mediaType = MediaType.parse(stringBuilder.toString());
            }
        }
        return create(mediaType, str.getBytes(charset));
    }

    public static RequestBody create(@Nullable MediaType mediaType, ByteString byteString) {
        return new C12991(mediaType, byteString);
    }

    public static RequestBody create(@Nullable MediaType mediaType, byte[] bArr) {
        return create(mediaType, bArr, 0, bArr.length);
    }

    public static RequestBody create(@Nullable MediaType mediaType, byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new NullPointerException("content == null");
        }
        Util.checkOffsetAndCount((long) bArr.length, (long) i, (long) i2);
        return new C13002(mediaType, i2, bArr, i);
    }

    public static RequestBody create(@Nullable MediaType mediaType, File file) {
        if (file != null) {
            return new C13013(mediaType, file);
        }
        throw new NullPointerException("content == null");
    }
}
