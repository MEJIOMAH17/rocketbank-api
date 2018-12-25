package okhttp3.internal.cache;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.util.regex.Pattern;

public final class DiskLruCache implements Closeable, Flushable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final Pattern LEGAL_KEY_PATTERN = Pattern.compile("[a-z0-9_-]{1,120}");
    boolean closed;

    public final synchronized void flush() throws IOException {
    }

    public final synchronized void close() throws IOException {
        this.closed = true;
    }
}
