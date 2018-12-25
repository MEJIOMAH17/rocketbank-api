package okhttp3.internal.http2;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import okio.AsyncTimeout;
import okio.Buffer;
import okio.BufferedSource;
import okio.Sink;
import okio.Source;
import okio.Timeout;

public final class Http2Stream {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    long bytesLeftInWriteWindow;
    final Http2Connection connection;
    ErrorCode errorCode = null;
    private boolean hasResponseHeaders;
    final int id;
    final StreamTimeout readTimeout = new StreamTimeout();
    private final List<Header> requestHeaders;
    private List<Header> responseHeaders;
    final FramingSink sink;
    private final FramingSource source;
    long unacknowledgedBytesRead = 0;
    final StreamTimeout writeTimeout = new StreamTimeout();

    final class FramingSink implements Sink {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        boolean closed;
        boolean finished;
        private final Buffer sendBuffer = new Buffer();

        static {
            Class cls = Http2Stream.class;
        }

        FramingSink() {
        }

        public final void write(Buffer buffer, long j) throws IOException {
            this.sendBuffer.write(buffer, j);
            while (this.sendBuffer.size() >= PlaybackStateCompat.ACTION_PREPARE) {
                emitFrame(null);
            }
        }

        private void emitFrame(boolean r12) throws java.io.IOException {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r11 = this;
            r0 = okhttp3.internal.http2.Http2Stream.this;
            monitor-enter(r0);
            r1 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x00bb }
            r1 = r1.writeTimeout;	 Catch:{ all -> 0x00bb }
            r1.enter();	 Catch:{ all -> 0x00bb }
        L_0x000a:
            r1 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x00a7 }
            r1 = r1.bytesLeftInWriteWindow;	 Catch:{ all -> 0x00a7 }
            r3 = 0;	 Catch:{ all -> 0x00a7 }
            r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1));	 Catch:{ all -> 0x00a7 }
            if (r5 > 0) goto L_0x002e;	 Catch:{ all -> 0x00a7 }
        L_0x0014:
            r1 = r11.finished;	 Catch:{ all -> 0x00a7 }
            if (r1 != 0) goto L_0x002e;	 Catch:{ all -> 0x00a7 }
        L_0x0018:
            r1 = r11.closed;	 Catch:{ all -> 0x00a7 }
            if (r1 != 0) goto L_0x002e;	 Catch:{ all -> 0x00a7 }
        L_0x001c:
            r1 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x00a7 }
            r1 = r1.errorCode;	 Catch:{ all -> 0x00a7 }
            if (r1 != 0) goto L_0x002e;	 Catch:{ all -> 0x00a7 }
        L_0x0022:
            r1 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x00a7 }
            r1.wait();	 Catch:{ InterruptedException -> 0x0028 }
            goto L_0x000a;
        L_0x0028:
            r12 = new java.io.InterruptedIOException;	 Catch:{ all -> 0x00a7 }
            r12.<init>();	 Catch:{ all -> 0x00a7 }
            throw r12;	 Catch:{ all -> 0x00a7 }
        L_0x002e:
            r1 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x00bb }
            r1 = r1.writeTimeout;	 Catch:{ all -> 0x00bb }
            r1 = r1.exit();	 Catch:{ all -> 0x00bb }
            if (r1 == 0) goto L_0x0040;	 Catch:{ all -> 0x00bb }
        L_0x0038:
            r12 = new java.net.SocketTimeoutException;	 Catch:{ all -> 0x00bb }
            r1 = "timeout";	 Catch:{ all -> 0x00bb }
            r12.<init>(r1);	 Catch:{ all -> 0x00bb }
            throw r12;	 Catch:{ all -> 0x00bb }
        L_0x0040:
            r1 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x00bb }
            r1.checkOutNotClosed();	 Catch:{ all -> 0x00bb }
            r1 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x00bb }
            r1 = r1.bytesLeftInWriteWindow;	 Catch:{ all -> 0x00bb }
            r3 = r11.sendBuffer;	 Catch:{ all -> 0x00bb }
            r3 = r3.size();	 Catch:{ all -> 0x00bb }
            r9 = java.lang.Math.min(r1, r3);	 Catch:{ all -> 0x00bb }
            r1 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x00bb }
            r2 = r1.bytesLeftInWriteWindow;	 Catch:{ all -> 0x00bb }
            r4 = r2 - r9;	 Catch:{ all -> 0x00bb }
            r1.bytesLeftInWriteWindow = r4;	 Catch:{ all -> 0x00bb }
            monitor-exit(r0);	 Catch:{ all -> 0x00bb }
            r0 = okhttp3.internal.http2.Http2Stream.this;
            r0 = r0.writeTimeout;
            r0.enter();
            r0 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x0093 }
            r5 = r0.connection;	 Catch:{ all -> 0x0093 }
            r0 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x0093 }
            r6 = r0.id;	 Catch:{ all -> 0x0093 }
            if (r12 == 0) goto L_0x0079;	 Catch:{ all -> 0x0093 }
        L_0x006d:
            r12 = r11.sendBuffer;	 Catch:{ all -> 0x0093 }
            r0 = r12.size();	 Catch:{ all -> 0x0093 }
            r12 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1));	 Catch:{ all -> 0x0093 }
            if (r12 != 0) goto L_0x0079;	 Catch:{ all -> 0x0093 }
        L_0x0077:
            r12 = 1;	 Catch:{ all -> 0x0093 }
            goto L_0x007a;	 Catch:{ all -> 0x0093 }
        L_0x0079:
            r12 = 0;	 Catch:{ all -> 0x0093 }
        L_0x007a:
            r7 = r12;	 Catch:{ all -> 0x0093 }
            r8 = r11.sendBuffer;	 Catch:{ all -> 0x0093 }
            r5.writeData(r6, r7, r8, r9);	 Catch:{ all -> 0x0093 }
            r12 = okhttp3.internal.http2.Http2Stream.this;
            r12 = r12.writeTimeout;
            r12 = r12.exit();
            if (r12 == 0) goto L_0x0092;
        L_0x008a:
            r12 = new java.net.SocketTimeoutException;
            r0 = "timeout";
            r12.<init>(r0);
            throw r12;
        L_0x0092:
            return;
        L_0x0093:
            r12 = move-exception;
            r0 = okhttp3.internal.http2.Http2Stream.this;
            r0 = r0.writeTimeout;
            r0 = r0.exit();
            if (r0 == 0) goto L_0x00a6;
        L_0x009e:
            r12 = new java.net.SocketTimeoutException;
            r0 = "timeout";
            r12.<init>(r0);
            throw r12;
        L_0x00a6:
            throw r12;
        L_0x00a7:
            r12 = move-exception;
            r1 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x00bb }
            r1 = r1.writeTimeout;	 Catch:{ all -> 0x00bb }
            r1 = r1.exit();	 Catch:{ all -> 0x00bb }
            if (r1 == 0) goto L_0x00ba;	 Catch:{ all -> 0x00bb }
        L_0x00b2:
            r12 = new java.net.SocketTimeoutException;	 Catch:{ all -> 0x00bb }
            r1 = "timeout";	 Catch:{ all -> 0x00bb }
            r12.<init>(r1);	 Catch:{ all -> 0x00bb }
            throw r12;	 Catch:{ all -> 0x00bb }
        L_0x00ba:
            throw r12;	 Catch:{ all -> 0x00bb }
        L_0x00bb:
            r12 = move-exception;	 Catch:{ all -> 0x00bb }
            monitor-exit(r0);	 Catch:{ all -> 0x00bb }
            throw r12;
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Stream.FramingSink.emitFrame(boolean):void");
        }

        public final void flush() throws IOException {
            synchronized (Http2Stream.this) {
                Http2Stream.this.checkOutNotClosed();
            }
            while (this.sendBuffer.size() > 0) {
                emitFrame(false);
                Http2Stream.this.connection.writer.flush();
            }
        }

        public final Timeout timeout() {
            return Http2Stream.this.writeTimeout;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void close() throws java.io.IOException {
            /*
            r8 = this;
            r0 = okhttp3.internal.http2.Http2Stream.this;
            monitor-enter(r0);
            r1 = r8.closed;	 Catch:{ all -> 0x0054 }
            if (r1 == 0) goto L_0x0009;
        L_0x0007:
            monitor-exit(r0);	 Catch:{ all -> 0x0054 }
            return;
        L_0x0009:
            monitor-exit(r0);	 Catch:{ all -> 0x0054 }
            r0 = okhttp3.internal.http2.Http2Stream.this;
            r0 = r0.sink;
            r0 = r0.finished;
            r1 = 1;
            if (r0 != 0) goto L_0x003c;
        L_0x0013:
            r0 = r8.sendBuffer;
            r2 = r0.size();
            r4 = 0;
            r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
            if (r0 <= 0) goto L_0x002d;
        L_0x001f:
            r0 = r8.sendBuffer;
            r2 = r0.size();
            r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
            if (r0 <= 0) goto L_0x003c;
        L_0x0029:
            r8.emitFrame(r1);
            goto L_0x001f;
        L_0x002d:
            r0 = okhttp3.internal.http2.Http2Stream.this;
            r2 = r0.connection;
            r0 = okhttp3.internal.http2.Http2Stream.this;
            r3 = r0.id;
            r4 = 1;
            r5 = 0;
            r6 = 0;
            r2.writeData(r3, r4, r5, r6);
        L_0x003c:
            r2 = okhttp3.internal.http2.Http2Stream.this;
            monitor-enter(r2);
            r8.closed = r1;	 Catch:{ all -> 0x0051 }
            monitor-exit(r2);	 Catch:{ all -> 0x0051 }
            r0 = okhttp3.internal.http2.Http2Stream.this;
            r0 = r0.connection;
            r0 = r0.writer;
            r0.flush();
            r0 = okhttp3.internal.http2.Http2Stream.this;
            r0.cancelStreamIfNecessary();
            return;
        L_0x0051:
            r0 = move-exception;
            monitor-exit(r2);	 Catch:{ all -> 0x0051 }
            throw r0;
        L_0x0054:
            r1 = move-exception;
            monitor-exit(r0);	 Catch:{ all -> 0x0054 }
            throw r1;
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Stream.FramingSink.close():void");
        }
    }

    final class FramingSource implements Source {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        boolean closed;
        boolean finished;
        private final long maxByteCount;
        private final Buffer readBuffer = new Buffer();
        private final Buffer receiveBuffer = new Buffer();

        static {
            Class cls = Http2Stream.class;
        }

        FramingSource(long j) {
            this.maxByteCount = j;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final long read(okio.Buffer r8, long r9) throws java.io.IOException {
            /*
            r7 = this;
            r0 = 0;
            r2 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1));
            if (r2 >= 0) goto L_0x0016;
        L_0x0006:
            r8 = new java.lang.IllegalArgumentException;
            r0 = "byteCount < 0: ";
            r9 = java.lang.String.valueOf(r9);
            r9 = r0.concat(r9);
            r8.<init>(r9);
            throw r8;
        L_0x0016:
            r2 = okhttp3.internal.http2.Http2Stream.this;
            monitor-enter(r2);
            r7.waitUntilReadable();	 Catch:{ all -> 0x00c6 }
            r3 = r7.closed;	 Catch:{ all -> 0x00c6 }
            if (r3 == 0) goto L_0x0028;
        L_0x0020:
            r8 = new java.io.IOException;	 Catch:{ all -> 0x00c6 }
            r9 = "stream closed";
            r8.<init>(r9);	 Catch:{ all -> 0x00c6 }
            throw r8;	 Catch:{ all -> 0x00c6 }
        L_0x0028:
            r3 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x00c6 }
            r3 = r3.errorCode;	 Catch:{ all -> 0x00c6 }
            if (r3 == 0) goto L_0x0038;
        L_0x002e:
            r8 = new okhttp3.internal.http2.StreamResetException;	 Catch:{ all -> 0x00c6 }
            r9 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x00c6 }
            r9 = r9.errorCode;	 Catch:{ all -> 0x00c6 }
            r8.<init>(r9);	 Catch:{ all -> 0x00c6 }
            throw r8;	 Catch:{ all -> 0x00c6 }
        L_0x0038:
            r3 = r7.readBuffer;	 Catch:{ all -> 0x00c6 }
            r3 = r3.size();	 Catch:{ all -> 0x00c6 }
            r5 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1));
            if (r5 != 0) goto L_0x0046;
        L_0x0042:
            r8 = -1;
            monitor-exit(r2);	 Catch:{ all -> 0x00c6 }
            return r8;
        L_0x0046:
            r3 = r7.readBuffer;	 Catch:{ all -> 0x00c6 }
            r4 = r7.readBuffer;	 Catch:{ all -> 0x00c6 }
            r4 = r4.size();	 Catch:{ all -> 0x00c6 }
            r9 = java.lang.Math.min(r9, r4);	 Catch:{ all -> 0x00c6 }
            r8 = r3.read(r8, r9);	 Catch:{ all -> 0x00c6 }
            r10 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x00c6 }
            r3 = r10.unacknowledgedBytesRead;	 Catch:{ all -> 0x00c6 }
            r5 = r3 + r8;
            r10.unacknowledgedBytesRead = r5;	 Catch:{ all -> 0x00c6 }
            r10 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x00c6 }
            r3 = r10.unacknowledgedBytesRead;	 Catch:{ all -> 0x00c6 }
            r10 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x00c6 }
            r10 = r10.connection;	 Catch:{ all -> 0x00c6 }
            r10 = r10.okHttpSettings;	 Catch:{ all -> 0x00c6 }
            r10 = r10.getInitialWindowSize();	 Catch:{ all -> 0x00c6 }
            r10 = r10 / 2;
            r5 = (long) r10;	 Catch:{ all -> 0x00c6 }
            r10 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1));
            if (r10 < 0) goto L_0x0086;
        L_0x0073:
            r10 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x00c6 }
            r10 = r10.connection;	 Catch:{ all -> 0x00c6 }
            r3 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x00c6 }
            r3 = r3.id;	 Catch:{ all -> 0x00c6 }
            r4 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x00c6 }
            r4 = r4.unacknowledgedBytesRead;	 Catch:{ all -> 0x00c6 }
            r10.writeWindowUpdateLater(r3, r4);	 Catch:{ all -> 0x00c6 }
            r10 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x00c6 }
            r10.unacknowledgedBytesRead = r0;	 Catch:{ all -> 0x00c6 }
        L_0x0086:
            monitor-exit(r2);	 Catch:{ all -> 0x00c6 }
            r10 = okhttp3.internal.http2.Http2Stream.this;
            r10 = r10.connection;
            monitor-enter(r10);
            r2 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x00c3 }
            r2 = r2.connection;	 Catch:{ all -> 0x00c3 }
            r3 = r2.unacknowledgedBytesRead;	 Catch:{ all -> 0x00c3 }
            r5 = r3 + r8;
            r2.unacknowledgedBytesRead = r5;	 Catch:{ all -> 0x00c3 }
            r2 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x00c3 }
            r2 = r2.connection;	 Catch:{ all -> 0x00c3 }
            r2 = r2.unacknowledgedBytesRead;	 Catch:{ all -> 0x00c3 }
            r4 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x00c3 }
            r4 = r4.connection;	 Catch:{ all -> 0x00c3 }
            r4 = r4.okHttpSettings;	 Catch:{ all -> 0x00c3 }
            r4 = r4.getInitialWindowSize();	 Catch:{ all -> 0x00c3 }
            r4 = r4 / 2;
            r4 = (long) r4;	 Catch:{ all -> 0x00c3 }
            r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
            if (r6 < 0) goto L_0x00c1;
        L_0x00ad:
            r2 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x00c3 }
            r2 = r2.connection;	 Catch:{ all -> 0x00c3 }
            r3 = 0;
            r4 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x00c3 }
            r4 = r4.connection;	 Catch:{ all -> 0x00c3 }
            r4 = r4.unacknowledgedBytesRead;	 Catch:{ all -> 0x00c3 }
            r2.writeWindowUpdateLater(r3, r4);	 Catch:{ all -> 0x00c3 }
            r2 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x00c3 }
            r2 = r2.connection;	 Catch:{ all -> 0x00c3 }
            r2.unacknowledgedBytesRead = r0;	 Catch:{ all -> 0x00c3 }
        L_0x00c1:
            monitor-exit(r10);	 Catch:{ all -> 0x00c3 }
            return r8;
        L_0x00c3:
            r8 = move-exception;
            monitor-exit(r10);	 Catch:{ all -> 0x00c3 }
            throw r8;
        L_0x00c6:
            r8 = move-exception;
            monitor-exit(r2);	 Catch:{ all -> 0x00c6 }
            throw r8;
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Stream.FramingSource.read(okio.Buffer, long):long");
        }

        private void waitUntilReadable() throws java.io.IOException {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r5 = this;
            r0 = okhttp3.internal.http2.Http2Stream.this;
            r0 = r0.readTimeout;
            r0.enter();
        L_0x0007:
            r0 = r5.readBuffer;	 Catch:{ all -> 0x0040 }
            r0 = r0.size();	 Catch:{ all -> 0x0040 }
            r2 = 0;	 Catch:{ all -> 0x0040 }
            r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));	 Catch:{ all -> 0x0040 }
            if (r4 != 0) goto L_0x002d;	 Catch:{ all -> 0x0040 }
        L_0x0013:
            r0 = r5.finished;	 Catch:{ all -> 0x0040 }
            if (r0 != 0) goto L_0x002d;	 Catch:{ all -> 0x0040 }
        L_0x0017:
            r0 = r5.closed;	 Catch:{ all -> 0x0040 }
            if (r0 != 0) goto L_0x002d;	 Catch:{ all -> 0x0040 }
        L_0x001b:
            r0 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x0040 }
            r0 = r0.errorCode;	 Catch:{ all -> 0x0040 }
            if (r0 != 0) goto L_0x002d;	 Catch:{ all -> 0x0040 }
        L_0x0021:
            r0 = okhttp3.internal.http2.Http2Stream.this;	 Catch:{ all -> 0x0040 }
            r0.wait();	 Catch:{ InterruptedException -> 0x0027 }
            goto L_0x0007;
        L_0x0027:
            r0 = new java.io.InterruptedIOException;	 Catch:{ all -> 0x0040 }
            r0.<init>();	 Catch:{ all -> 0x0040 }
            throw r0;	 Catch:{ all -> 0x0040 }
        L_0x002d:
            r0 = okhttp3.internal.http2.Http2Stream.this;
            r0 = r0.readTimeout;
            r0 = r0.exit();
            if (r0 == 0) goto L_0x003f;
        L_0x0037:
            r0 = new java.net.SocketTimeoutException;
            r1 = "timeout";
            r0.<init>(r1);
            throw r0;
        L_0x003f:
            return;
        L_0x0040:
            r0 = move-exception;
            r1 = okhttp3.internal.http2.Http2Stream.this;
            r1 = r1.readTimeout;
            r1 = r1.exit();
            if (r1 == 0) goto L_0x0053;
        L_0x004b:
            r0 = new java.net.SocketTimeoutException;
            r1 = "timeout";
            r0.<init>(r1);
            throw r0;
        L_0x0053:
            throw r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Stream.FramingSource.waitUntilReadable():void");
        }

        final void receive(BufferedSource bufferedSource, long j) throws IOException {
            while (j > 0) {
                synchronized (Http2Stream.this) {
                    boolean z = this.finished;
                    Object obj = null;
                    Object obj2 = j + this.readBuffer.size() > this.maxByteCount ? 1 : null;
                }
                if (obj2 != null) {
                    bufferedSource.skip(j);
                    Http2Stream.this.closeLater(ErrorCode.FLOW_CONTROL_ERROR);
                    return;
                } else if (z) {
                    bufferedSource.skip(j);
                    return;
                } else {
                    long read = bufferedSource.read(this.receiveBuffer, j);
                    if (read == -1) {
                        throw new EOFException();
                    }
                    long j2 = j - read;
                    synchronized (Http2Stream.this) {
                        if (this.readBuffer.size() == 0) {
                            obj = 1;
                        }
                        this.readBuffer.writeAll(this.receiveBuffer);
                        if (obj != null) {
                            Http2Stream.this.notifyAll();
                        }
                    }
                    j = j2;
                }
            }
        }

        public final Timeout timeout() {
            return Http2Stream.this.readTimeout;
        }

        public final void close() throws IOException {
            synchronized (Http2Stream.this) {
                this.closed = true;
                this.readBuffer.clear();
                Http2Stream.this.notifyAll();
            }
            Http2Stream.this.cancelStreamIfNecessary();
        }
    }

    class StreamTimeout extends AsyncTimeout {
        StreamTimeout() {
        }

        protected final void timedOut() {
            Http2Stream.this.closeLater(ErrorCode.CANCEL);
        }

        protected final IOException newTimeoutException(IOException iOException) {
            IOException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }
    }

    Http2Stream(int i, Http2Connection http2Connection, boolean z, boolean z2, List<Header> list) {
        if (http2Connection == null) {
            throw new NullPointerException("connection == null");
        } else if (list == null) {
            throw new NullPointerException("requestHeaders == null");
        } else {
            this.id = i;
            this.connection = http2Connection;
            this.bytesLeftInWriteWindow = (long) http2Connection.peerSettings.getInitialWindowSize();
            this.source = new FramingSource((long) http2Connection.okHttpSettings.getInitialWindowSize());
            this.sink = new FramingSink();
            this.source.finished = z2;
            this.sink.finished = z;
            this.requestHeaders = list;
        }
    }

    public final synchronized boolean isOpen() {
        if (this.errorCode != null) {
            return false;
        }
        if ((this.source.finished || this.source.closed) && ((this.sink.finished || this.sink.closed) && this.hasResponseHeaders)) {
            return false;
        }
        return true;
    }

    public final Source getSource() {
        return this.source;
    }

    public final Sink getSink() {
        synchronized (this) {
            if (!this.hasResponseHeaders) {
                int i = 1;
                if (this.connection.client != ((this.id & 1) == 1)) {
                    i = 0;
                }
                if (i == 0) {
                    throw new IllegalStateException("reply before requesting the sink");
                }
            }
        }
        return this.sink;
    }

    public final void close(ErrorCode errorCode) throws IOException {
        if (closeInternal(errorCode)) {
            Http2Connection http2Connection = this.connection;
            http2Connection.writer.rstStream(this.id, errorCode);
        }
    }

    public final void closeLater(ErrorCode errorCode) {
        if (closeInternal(errorCode)) {
            this.connection.writeSynResetLater(this.id, errorCode);
        }
    }

    private boolean closeInternal(ErrorCode errorCode) {
        synchronized (this) {
            if (this.errorCode != null) {
                return false;
            } else if (this.source.finished && this.sink.finished) {
                return false;
            } else {
                this.errorCode = errorCode;
                notifyAll();
                this.connection.removeStream(this.id);
                return true;
            }
        }
    }

    final void receiveHeaders(List<Header> list) {
        synchronized (this) {
            boolean z = true;
            this.hasResponseHeaders = true;
            if (this.responseHeaders == null) {
                this.responseHeaders = list;
                z = isOpen();
                notifyAll();
            } else {
                List arrayList = new ArrayList();
                arrayList.addAll(this.responseHeaders);
                arrayList.add(null);
                arrayList.addAll(list);
                this.responseHeaders = arrayList;
            }
        }
        if (!z) {
            this.connection.removeStream(this.id);
        }
    }

    final void receiveData(BufferedSource bufferedSource, int i) throws IOException {
        this.source.receive(bufferedSource, (long) i);
    }

    final void receiveFin() {
        synchronized (this) {
            this.source.finished = true;
            boolean isOpen = isOpen();
            notifyAll();
        }
        if (!isOpen) {
            this.connection.removeStream(this.id);
        }
    }

    final synchronized void receiveRstStream(ErrorCode errorCode) {
        if (this.errorCode == null) {
            this.errorCode = errorCode;
            notifyAll();
        }
    }

    final void cancelStreamIfNecessary() throws IOException {
        synchronized (this) {
            Object obj = (!this.source.finished && this.source.closed && (this.sink.finished || this.sink.closed)) ? 1 : null;
            boolean isOpen = isOpen();
        }
        if (obj != null) {
            ErrorCode errorCode = ErrorCode.CANCEL;
            if (closeInternal(errorCode)) {
                this.connection.writer.rstStream(this.id, errorCode);
            }
            return;
        }
        if (!isOpen) {
            this.connection.removeStream(this.id);
        }
    }

    final void checkOutNotClosed() throws IOException {
        if (this.sink.closed) {
            throw new IOException("stream closed");
        } else if (this.sink.finished) {
            throw new IOException("stream finished");
        } else if (this.errorCode != null) {
            throw new StreamResetException(this.errorCode);
        }
    }

    public final synchronized java.util.List<okhttp3.internal.http2.Header> takeResponseHeaders() throws java.io.IOException {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r4 = this;
        monitor-enter(r4);
        r0 = r4.id;	 Catch:{ all -> 0x0067 }
        r1 = 1;	 Catch:{ all -> 0x0067 }
        r0 = r0 & r1;	 Catch:{ all -> 0x0067 }
        r2 = 0;	 Catch:{ all -> 0x0067 }
        if (r0 != r1) goto L_0x000a;	 Catch:{ all -> 0x0067 }
    L_0x0008:
        r0 = r1;	 Catch:{ all -> 0x0067 }
        goto L_0x000b;	 Catch:{ all -> 0x0067 }
    L_0x000a:
        r0 = r2;	 Catch:{ all -> 0x0067 }
    L_0x000b:
        r3 = r4.connection;	 Catch:{ all -> 0x0067 }
        r3 = r3.client;	 Catch:{ all -> 0x0067 }
        if (r3 != r0) goto L_0x0012;	 Catch:{ all -> 0x0067 }
    L_0x0011:
        goto L_0x0013;	 Catch:{ all -> 0x0067 }
    L_0x0012:
        r1 = r2;	 Catch:{ all -> 0x0067 }
    L_0x0013:
        if (r1 != 0) goto L_0x001d;	 Catch:{ all -> 0x0067 }
    L_0x0015:
        r0 = new java.lang.IllegalStateException;	 Catch:{ all -> 0x0067 }
        r1 = "servers cannot read response headers";	 Catch:{ all -> 0x0067 }
        r0.<init>(r1);	 Catch:{ all -> 0x0067 }
        throw r0;	 Catch:{ all -> 0x0067 }
    L_0x001d:
        r0 = r4.readTimeout;	 Catch:{ all -> 0x0067 }
        r0.enter();	 Catch:{ all -> 0x0067 }
    L_0x0022:
        r0 = r4.responseHeaders;	 Catch:{ all -> 0x0055 }
        if (r0 != 0) goto L_0x0034;	 Catch:{ all -> 0x0055 }
    L_0x0026:
        r0 = r4.errorCode;	 Catch:{ all -> 0x0055 }
        if (r0 != 0) goto L_0x0034;
    L_0x002a:
        r4.wait();	 Catch:{ InterruptedException -> 0x002e }
        goto L_0x0022;
    L_0x002e:
        r0 = new java.io.InterruptedIOException;	 Catch:{ all -> 0x0055 }
        r0.<init>();	 Catch:{ all -> 0x0055 }
        throw r0;	 Catch:{ all -> 0x0055 }
    L_0x0034:
        r0 = r4.readTimeout;	 Catch:{ all -> 0x0067 }
        r0 = r0.exit();	 Catch:{ all -> 0x0067 }
        if (r0 == 0) goto L_0x0044;	 Catch:{ all -> 0x0067 }
    L_0x003c:
        r0 = new java.net.SocketTimeoutException;	 Catch:{ all -> 0x0067 }
        r1 = "timeout";	 Catch:{ all -> 0x0067 }
        r0.<init>(r1);	 Catch:{ all -> 0x0067 }
        throw r0;	 Catch:{ all -> 0x0067 }
    L_0x0044:
        r0 = r4.responseHeaders;	 Catch:{ all -> 0x0067 }
        if (r0 == 0) goto L_0x004d;	 Catch:{ all -> 0x0067 }
    L_0x0048:
        r1 = 0;	 Catch:{ all -> 0x0067 }
        r4.responseHeaders = r1;	 Catch:{ all -> 0x0067 }
        monitor-exit(r4);
        return r0;
    L_0x004d:
        r0 = new okhttp3.internal.http2.StreamResetException;	 Catch:{ all -> 0x0067 }
        r1 = r4.errorCode;	 Catch:{ all -> 0x0067 }
        r0.<init>(r1);	 Catch:{ all -> 0x0067 }
        throw r0;	 Catch:{ all -> 0x0067 }
    L_0x0055:
        r0 = move-exception;	 Catch:{ all -> 0x0067 }
        r1 = r4.readTimeout;	 Catch:{ all -> 0x0067 }
        r1 = r1.exit();	 Catch:{ all -> 0x0067 }
        if (r1 == 0) goto L_0x0066;	 Catch:{ all -> 0x0067 }
    L_0x005e:
        r0 = new java.net.SocketTimeoutException;	 Catch:{ all -> 0x0067 }
        r1 = "timeout";	 Catch:{ all -> 0x0067 }
        r0.<init>(r1);	 Catch:{ all -> 0x0067 }
        throw r0;	 Catch:{ all -> 0x0067 }
    L_0x0066:
        throw r0;	 Catch:{ all -> 0x0067 }
    L_0x0067:
        r0 = move-exception;
        monitor-exit(r4);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Stream.takeResponseHeaders():java.util.List<okhttp3.internal.http2.Header>");
    }
}
