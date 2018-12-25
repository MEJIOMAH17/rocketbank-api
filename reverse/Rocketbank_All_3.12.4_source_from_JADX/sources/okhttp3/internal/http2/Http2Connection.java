package okhttp3.internal.http2;

import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.NamedRunnable;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import ru.rocketbank.r2d2.root.chat.ChatFragment;

public final class Http2Connection implements Closeable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final ExecutorService listenerExecutor = new ThreadPoolExecutor(0, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 60, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory("OkHttp Http2Connection", true));
    private boolean awaitingPong;
    long bytesLeftInWriteWindow;
    final boolean client;
    final Set<Integer> currentPushRequests = new LinkedHashSet();
    final String hostname;
    int lastGoodStreamId;
    final Listener listener;
    int nextStreamId;
    Settings okHttpSettings = new Settings();
    final Settings peerSettings = new Settings();
    private final ExecutorService pushExecutor;
    final PushObserver pushObserver;
    final ReaderRunnable readerRunnable;
    boolean receivedInitialPeerSettings = false;
    boolean shutdown;
    final Socket socket;
    final Map<Integer, Http2Stream> streams = new LinkedHashMap();
    long unacknowledgedBytesRead = 0;
    final Http2Writer writer;
    private final ScheduledExecutorService writerExecutor;

    public static class Builder {
        boolean client = true;
        String hostname;
        Listener listener = Listener.REFUSE_INCOMING_STREAMS;
        int pingIntervalMillis;
        PushObserver pushObserver = PushObserver.CANCEL;
        BufferedSink sink;
        Socket socket;
        BufferedSource source;

        public final Builder socket(Socket socket, String str, BufferedSource bufferedSource, BufferedSink bufferedSink) {
            this.socket = socket;
            this.hostname = str;
            this.source = bufferedSource;
            this.sink = bufferedSink;
            return this;
        }

        public final Builder listener(Listener listener) {
            this.listener = listener;
            return this;
        }

        public final Builder pingIntervalMillis(int i) {
            this.pingIntervalMillis = i;
            return this;
        }

        public final Http2Connection build() {
            return new Http2Connection(this);
        }
    }

    public static abstract class Listener {
        public static final Listener REFUSE_INCOMING_STREAMS = new C13101();

        /* renamed from: okhttp3.internal.http2.Http2Connection$Listener$1 */
        class C13101 extends Listener {
            C13101() {
            }

            public final void onStream(Http2Stream http2Stream) throws IOException {
                http2Stream.close(ErrorCode.REFUSED_STREAM);
            }
        }

        public void onSettings(Http2Connection http2Connection) {
        }

        public abstract void onStream(Http2Stream http2Stream) throws IOException;
    }

    final class PingRunnable extends NamedRunnable {
        final int payload1;
        final int payload2;
        final boolean reply;

        PingRunnable(boolean z, int i, int i2) {
            super("OkHttp %s ping %08x%08x", r4.hostname, Integer.valueOf(i), Integer.valueOf(i2));
            this.reply = z;
            this.payload1 = i;
            this.payload2 = i2;
        }

        public final void execute() {
            Http2Connection.this.writePing(this.reply, this.payload1, this.payload2);
        }
    }

    class ReaderRunnable extends NamedRunnable implements Handler {
        final Http2Reader reader;

        ReaderRunnable(Http2Reader http2Reader) {
            super("OkHttp %s", r4.hostname);
            this.reader = http2Reader;
        }

        protected final void execute() {
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
            r0 = okhttp3.internal.http2.ErrorCode.INTERNAL_ERROR;
            r1 = okhttp3.internal.http2.ErrorCode.INTERNAL_ERROR;
            r2 = r5.reader;	 Catch:{ IOException -> 0x0025 }
            r2.readConnectionPreface(r5);	 Catch:{ IOException -> 0x0025 }
        L_0x0009:
            r2 = r5.reader;	 Catch:{ IOException -> 0x0025 }
            r3 = 0;	 Catch:{ IOException -> 0x0025 }
            r2 = r2.nextFrame(r3, r5);	 Catch:{ IOException -> 0x0025 }
            if (r2 != 0) goto L_0x0009;	 Catch:{ IOException -> 0x0025 }
        L_0x0012:
            r2 = okhttp3.internal.http2.ErrorCode.NO_ERROR;	 Catch:{ IOException -> 0x0025 }
            r0 = okhttp3.internal.http2.ErrorCode.CANCEL;	 Catch:{ IOException -> 0x0021 }
            r1 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ IOException -> 0x001b }
        L_0x0018:
            r1.close(r2, r0);	 Catch:{ IOException -> 0x001b }
        L_0x001b:
            r0 = r5.reader;
            okhttp3.internal.Util.closeQuietly(r0);
            return;
        L_0x0021:
            r0 = r2;
            goto L_0x0025;
        L_0x0023:
            r2 = move-exception;
            goto L_0x0030;
        L_0x0025:
            r2 = okhttp3.internal.http2.ErrorCode.PROTOCOL_ERROR;	 Catch:{ all -> 0x0023 }
            r0 = okhttp3.internal.http2.ErrorCode.PROTOCOL_ERROR;	 Catch:{ all -> 0x002c }
            r1 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ IOException -> 0x001b }
            goto L_0x0018;
        L_0x002c:
            r0 = move-exception;
            r4 = r2;
            r2 = r0;
            r0 = r4;
        L_0x0030:
            r3 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ IOException -> 0x0035 }
            r3.close(r0, r1);	 Catch:{ IOException -> 0x0035 }
        L_0x0035:
            r0 = r5.reader;
            okhttp3.internal.Util.closeQuietly(r0);
            throw r2;
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.ReaderRunnable.execute():void");
        }

        public final void data(boolean z, int i, BufferedSource bufferedSource, int i2) throws IOException {
            if (Http2Connection.pushedStream(i)) {
                Http2Connection.this.pushDataLater(i, bufferedSource, i2, z);
                return;
            }
            Http2Stream stream = Http2Connection.this.getStream(i);
            if (stream == null) {
                Http2Connection.this.writeSynResetLater(i, ErrorCode.PROTOCOL_ERROR);
                bufferedSource.skip((long) i2);
                return;
            }
            stream.receiveData(bufferedSource, i2);
            if (z) {
                stream.receiveFin();
            }
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void headers$64c3d190(boolean r11, int r12, java.util.List<okhttp3.internal.http2.Header> r13) {
            /*
            r10 = this;
            r0 = okhttp3.internal.http2.Http2Connection.pushedStream(r12);
            if (r0 == 0) goto L_0x000c;
        L_0x0006:
            r0 = okhttp3.internal.http2.Http2Connection.this;
            r0.pushHeadersLater(r12, r13, r11);
            return;
        L_0x000c:
            r0 = okhttp3.internal.http2.Http2Connection.this;
            monitor-enter(r0);
            r1 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ all -> 0x0078 }
            r1 = r1.getStream(r12);	 Catch:{ all -> 0x0078 }
            if (r1 != 0) goto L_0x006e;
        L_0x0017:
            r1 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ all -> 0x0078 }
            r1 = r1.shutdown;	 Catch:{ all -> 0x0078 }
            if (r1 == 0) goto L_0x001f;
        L_0x001d:
            monitor-exit(r0);	 Catch:{ all -> 0x0078 }
            return;
        L_0x001f:
            r1 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ all -> 0x0078 }
            r1 = r1.lastGoodStreamId;	 Catch:{ all -> 0x0078 }
            if (r12 > r1) goto L_0x0027;
        L_0x0025:
            monitor-exit(r0);	 Catch:{ all -> 0x0078 }
            return;
        L_0x0027:
            r1 = r12 % 2;
            r2 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ all -> 0x0078 }
            r2 = r2.nextStreamId;	 Catch:{ all -> 0x0078 }
            r3 = 2;
            r2 = r2 % r3;
            if (r1 != r2) goto L_0x0033;
        L_0x0031:
            monitor-exit(r0);	 Catch:{ all -> 0x0078 }
            return;
        L_0x0033:
            r1 = new okhttp3.internal.http2.Http2Stream;	 Catch:{ all -> 0x0078 }
            r6 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ all -> 0x0078 }
            r7 = 0;
            r4 = r1;
            r5 = r12;
            r8 = r11;
            r9 = r13;
            r4.<init>(r5, r6, r7, r8, r9);	 Catch:{ all -> 0x0078 }
            r11 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ all -> 0x0078 }
            r11.lastGoodStreamId = r12;	 Catch:{ all -> 0x0078 }
            r11 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ all -> 0x0078 }
            r11 = r11.streams;	 Catch:{ all -> 0x0078 }
            r13 = java.lang.Integer.valueOf(r12);	 Catch:{ all -> 0x0078 }
            r11.put(r13, r1);	 Catch:{ all -> 0x0078 }
            r11 = okhttp3.internal.http2.Http2Connection.listenerExecutor;	 Catch:{ all -> 0x0078 }
            r13 = new okhttp3.internal.http2.Http2Connection$ReaderRunnable$1;	 Catch:{ all -> 0x0078 }
            r2 = "OkHttp %s stream %d";
            r3 = new java.lang.Object[r3];	 Catch:{ all -> 0x0078 }
            r4 = 0;
            r5 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ all -> 0x0078 }
            r5 = r5.hostname;	 Catch:{ all -> 0x0078 }
            r3[r4] = r5;	 Catch:{ all -> 0x0078 }
            r4 = 1;
            r12 = java.lang.Integer.valueOf(r12);	 Catch:{ all -> 0x0078 }
            r3[r4] = r12;	 Catch:{ all -> 0x0078 }
            r13.<init>(r2, r3, r1);	 Catch:{ all -> 0x0078 }
            r11.execute(r13);	 Catch:{ all -> 0x0078 }
            monitor-exit(r0);	 Catch:{ all -> 0x0078 }
            return;
        L_0x006e:
            monitor-exit(r0);	 Catch:{ all -> 0x0078 }
            r1.receiveHeaders(r13);
            if (r11 == 0) goto L_0x0077;
        L_0x0074:
            r1.receiveFin();
        L_0x0077:
            return;
        L_0x0078:
            r11 = move-exception;
            monitor-exit(r0);	 Catch:{ all -> 0x0078 }
            throw r11;
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.ReaderRunnable.headers$64c3d190(boolean, int, java.util.List):void");
        }

        public final void rstStream(int i, ErrorCode errorCode) {
            if (Http2Connection.pushedStream(i)) {
                Http2Connection.this.pushResetLater(i, errorCode);
                return;
            }
            i = Http2Connection.this.removeStream(i);
            if (i != 0) {
                i.receiveRstStream(errorCode);
            }
        }

        public final void settings$14e94388(final okhttp3.internal.http2.Settings r15) {
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
            r14 = this;
            r0 = okhttp3.internal.http2.Http2Connection.this;
            monitor-enter(r0);
            r1 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ all -> 0x00c6 }
            r1 = r1.peerSettings;	 Catch:{ all -> 0x00c6 }
            r1 = r1.getInitialWindowSize();	 Catch:{ all -> 0x00c6 }
            r2 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ all -> 0x00c6 }
            r2 = r2.peerSettings;	 Catch:{ all -> 0x00c6 }
            r3 = 0;	 Catch:{ all -> 0x00c6 }
            r4 = r3;	 Catch:{ all -> 0x00c6 }
        L_0x0011:
            r5 = 10;	 Catch:{ all -> 0x00c6 }
            if (r4 >= r5) goto L_0x0025;	 Catch:{ all -> 0x00c6 }
        L_0x0015:
            r5 = r15.isSet(r4);	 Catch:{ all -> 0x00c6 }
            if (r5 == 0) goto L_0x0022;	 Catch:{ all -> 0x00c6 }
        L_0x001b:
            r5 = r15.get(r4);	 Catch:{ all -> 0x00c6 }
            r2.set(r4, r5);	 Catch:{ all -> 0x00c6 }
        L_0x0022:
            r4 = r4 + 1;
            goto L_0x0011;
        L_0x0025:
            r2 = 1;
            r4 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ RejectedExecutionException -> 0x003e }
            r4 = r4.writerExecutor;	 Catch:{ RejectedExecutionException -> 0x003e }
            r5 = new okhttp3.internal.http2.Http2Connection$ReaderRunnable$3;	 Catch:{ RejectedExecutionException -> 0x003e }
            r6 = "OkHttp %s ACK Settings";	 Catch:{ RejectedExecutionException -> 0x003e }
            r7 = new java.lang.Object[r2];	 Catch:{ RejectedExecutionException -> 0x003e }
            r8 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ RejectedExecutionException -> 0x003e }
            r8 = r8.hostname;	 Catch:{ RejectedExecutionException -> 0x003e }
            r7[r3] = r8;	 Catch:{ RejectedExecutionException -> 0x003e }
            r5.<init>(r6, r7, r15);	 Catch:{ RejectedExecutionException -> 0x003e }
            r4.execute(r5);	 Catch:{ RejectedExecutionException -> 0x003e }
        L_0x003e:
            r15 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ all -> 0x00c6 }
            r15 = r15.peerSettings;	 Catch:{ all -> 0x00c6 }
            r15 = r15.getInitialWindowSize();	 Catch:{ all -> 0x00c6 }
            r4 = -1;	 Catch:{ all -> 0x00c6 }
            r5 = 0;	 Catch:{ all -> 0x00c6 }
            r7 = 0;	 Catch:{ all -> 0x00c6 }
            if (r15 == r4) goto L_0x008d;	 Catch:{ all -> 0x00c6 }
        L_0x004c:
            if (r15 == r1) goto L_0x008d;	 Catch:{ all -> 0x00c6 }
        L_0x004e:
            r15 = r15 - r1;	 Catch:{ all -> 0x00c6 }
            r8 = (long) r15;	 Catch:{ all -> 0x00c6 }
            r15 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ all -> 0x00c6 }
            r15 = r15.receivedInitialPeerSettings;	 Catch:{ all -> 0x00c6 }
            if (r15 != 0) goto L_0x0069;	 Catch:{ all -> 0x00c6 }
        L_0x0056:
            r15 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ all -> 0x00c6 }
            r10 = r15.bytesLeftInWriteWindow;	 Catch:{ all -> 0x00c6 }
            r12 = r10 + r8;	 Catch:{ all -> 0x00c6 }
            r15.bytesLeftInWriteWindow = r12;	 Catch:{ all -> 0x00c6 }
            r1 = (r8 > r5 ? 1 : (r8 == r5 ? 0 : -1));	 Catch:{ all -> 0x00c6 }
            if (r1 <= 0) goto L_0x0065;	 Catch:{ all -> 0x00c6 }
        L_0x0062:
            r15.notifyAll();	 Catch:{ all -> 0x00c6 }
        L_0x0065:
            r15 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ all -> 0x00c6 }
            r15.receivedInitialPeerSettings = r2;	 Catch:{ all -> 0x00c6 }
        L_0x0069:
            r15 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ all -> 0x00c6 }
            r15 = r15.streams;	 Catch:{ all -> 0x00c6 }
            r15 = r15.isEmpty();	 Catch:{ all -> 0x00c6 }
            if (r15 != 0) goto L_0x008e;	 Catch:{ all -> 0x00c6 }
        L_0x0073:
            r15 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ all -> 0x00c6 }
            r15 = r15.streams;	 Catch:{ all -> 0x00c6 }
            r15 = r15.values();	 Catch:{ all -> 0x00c6 }
            r1 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ all -> 0x00c6 }
            r1 = r1.streams;	 Catch:{ all -> 0x00c6 }
            r1 = r1.size();	 Catch:{ all -> 0x00c6 }
            r1 = new okhttp3.internal.http2.Http2Stream[r1];	 Catch:{ all -> 0x00c6 }
            r15 = r15.toArray(r1);	 Catch:{ all -> 0x00c6 }
            r7 = r15;	 Catch:{ all -> 0x00c6 }
            r7 = (okhttp3.internal.http2.Http2Stream[]) r7;	 Catch:{ all -> 0x00c6 }
            goto L_0x008e;	 Catch:{ all -> 0x00c6 }
        L_0x008d:
            r8 = r5;	 Catch:{ all -> 0x00c6 }
        L_0x008e:
            r15 = okhttp3.internal.http2.Http2Connection.listenerExecutor;	 Catch:{ all -> 0x00c6 }
            r1 = new okhttp3.internal.http2.Http2Connection$ReaderRunnable$2;	 Catch:{ all -> 0x00c6 }
            r4 = "OkHttp %s settings";	 Catch:{ all -> 0x00c6 }
            r2 = new java.lang.Object[r2];	 Catch:{ all -> 0x00c6 }
            r10 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ all -> 0x00c6 }
            r10 = r10.hostname;	 Catch:{ all -> 0x00c6 }
            r2[r3] = r10;	 Catch:{ all -> 0x00c6 }
            r1.<init>(r4, r2);	 Catch:{ all -> 0x00c6 }
            r15.execute(r1);	 Catch:{ all -> 0x00c6 }
            monitor-exit(r0);	 Catch:{ all -> 0x00c6 }
            if (r7 == 0) goto L_0x00c5;
        L_0x00a7:
            r15 = (r8 > r5 ? 1 : (r8 == r5 ? 0 : -1));
            if (r15 == 0) goto L_0x00c5;
        L_0x00ab:
            r15 = r7.length;
        L_0x00ac:
            if (r3 >= r15) goto L_0x00c5;
        L_0x00ae:
            r0 = r7[r3];
            monitor-enter(r0);
            r1 = r0.bytesLeftInWriteWindow;	 Catch:{ all -> 0x00c2 }
            r10 = r1 + r8;	 Catch:{ all -> 0x00c2 }
            r0.bytesLeftInWriteWindow = r10;	 Catch:{ all -> 0x00c2 }
            r1 = (r8 > r5 ? 1 : (r8 == r5 ? 0 : -1));	 Catch:{ all -> 0x00c2 }
            if (r1 <= 0) goto L_0x00be;	 Catch:{ all -> 0x00c2 }
        L_0x00bb:
            r0.notifyAll();	 Catch:{ all -> 0x00c2 }
        L_0x00be:
            monitor-exit(r0);	 Catch:{ all -> 0x00c2 }
            r3 = r3 + 1;	 Catch:{ all -> 0x00c2 }
            goto L_0x00ac;	 Catch:{ all -> 0x00c2 }
        L_0x00c2:
            r15 = move-exception;	 Catch:{ all -> 0x00c2 }
            monitor-exit(r0);	 Catch:{ all -> 0x00c2 }
            throw r15;
        L_0x00c5:
            return;
        L_0x00c6:
            r15 = move-exception;
            monitor-exit(r0);	 Catch:{ all -> 0x00c6 }
            throw r15;
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.ReaderRunnable.settings$14e94388(okhttp3.internal.http2.Settings):void");
        }

        public final void ping(boolean r4, int r5, int r6) {
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
            r3 = this;
            if (r4 == 0) goto L_0x0014;
        L_0x0002:
            r4 = okhttp3.internal.http2.Http2Connection.this;
            monitor-enter(r4);
            r5 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ all -> 0x0011 }
            r5.awaitingPong = false;	 Catch:{ all -> 0x0011 }
            r5 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ all -> 0x0011 }
            r5.notifyAll();	 Catch:{ all -> 0x0011 }
            monitor-exit(r4);	 Catch:{ all -> 0x0011 }
            return;	 Catch:{ all -> 0x0011 }
        L_0x0011:
            r5 = move-exception;	 Catch:{ all -> 0x0011 }
            monitor-exit(r4);	 Catch:{ all -> 0x0011 }
            throw r5;
        L_0x0014:
            r4 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ RejectedExecutionException -> 0x0026 }
            r4 = r4.writerExecutor;	 Catch:{ RejectedExecutionException -> 0x0026 }
            r0 = new okhttp3.internal.http2.Http2Connection$PingRunnable;	 Catch:{ RejectedExecutionException -> 0x0026 }
            r1 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ RejectedExecutionException -> 0x0026 }
            r2 = 1;	 Catch:{ RejectedExecutionException -> 0x0026 }
            r0.<init>(r2, r5, r6);	 Catch:{ RejectedExecutionException -> 0x0026 }
            r4.execute(r0);	 Catch:{ RejectedExecutionException -> 0x0026 }
            return;
        L_0x0026:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.ReaderRunnable.ping(boolean, int, int):void");
        }

        public final void goAway$4b802bc(int i, ByteString byteString) {
            byteString.size();
            synchronized (Http2Connection.this) {
                Http2Stream[] http2StreamArr = (Http2Stream[]) Http2Connection.this.streams.values().toArray(new Http2Stream[Http2Connection.this.streams.size()]);
                Http2Connection.this.shutdown = true;
            }
            for (Http2Stream http2Stream : http2StreamArr) {
                if (http2Stream.id > i) {
                    if (http2Stream.connection.client == ((http2Stream.id & 1) == 1 ? true : null) ? true : null) {
                        http2Stream.receiveRstStream(ErrorCode.REFUSED_STREAM);
                        Http2Connection.this.removeStream(http2Stream.id);
                    }
                }
            }
        }

        public final void windowUpdate(int i, long j) {
            if (i == 0) {
                synchronized (Http2Connection.this) {
                    i = Http2Connection.this;
                    i.bytesLeftInWriteWindow += j;
                    Http2Connection.this.notifyAll();
                }
                return;
            }
            i = Http2Connection.this.getStream(i);
            if (i != 0) {
                synchronized (i) {
                    i.bytesLeftInWriteWindow += j;
                    if (j > 0) {
                        i.notifyAll();
                    }
                }
            }
        }

        public final void pushPromise$16014a7a(int i, List<Header> list) {
            Http2Connection.this.pushRequestLater(i, list);
        }
    }

    static boolean pushedStream(int i) {
        return i != 0 && (i & 1) == 0;
    }

    Http2Connection(Builder builder) {
        Builder builder2 = builder;
        this.pushObserver = builder2.pushObserver;
        this.client = builder2.client;
        this.listener = builder2.listener;
        r0.nextStreamId = builder2.client ? 1 : 2;
        if (builder2.client) {
            r0.nextStreamId += 2;
        }
        if (builder2.client) {
            r0.okHttpSettings.set(7, 16777216);
        }
        r0.hostname = builder2.hostname;
        r0.writerExecutor = new ScheduledThreadPoolExecutor(1, Util.threadFactory(Util.format("OkHttp %s Writer", r0.hostname), false));
        if (builder2.pingIntervalMillis != 0) {
            r0.writerExecutor.scheduleAtFixedRate(new PingRunnable(false, 0, 0), (long) builder2.pingIntervalMillis, (long) builder2.pingIntervalMillis, TimeUnit.MILLISECONDS);
        }
        r0.pushExecutor = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.threadFactory(Util.format("OkHttp %s Push Observer", r0.hostname), true));
        r0.peerSettings.set(7, ChatFragment.TYPE_MESSAGE_TYPING);
        r0.peerSettings.set(5, 16384);
        r0.bytesLeftInWriteWindow = (long) r0.peerSettings.getInitialWindowSize();
        r0.socket = builder2.socket;
        r0.writer = new Http2Writer(builder2.sink, r0.client);
        r0.readerRunnable = new ReaderRunnable(new Http2Reader(builder2.source, r0.client));
    }

    final synchronized Http2Stream getStream(int i) {
        return (Http2Stream) this.streams.get(Integer.valueOf(i));
    }

    final synchronized Http2Stream removeStream(int i) {
        Http2Stream http2Stream;
        http2Stream = (Http2Stream) this.streams.remove(Integer.valueOf(i));
        notifyAll();
        return http2Stream;
    }

    public final synchronized int maxConcurrentStreams() {
        return this.peerSettings.getMaxConcurrentStreams$134621();
    }

    public final Http2Stream newStream(List<Header> list, boolean z) throws IOException {
        return newStream$9238d7d(list, z);
    }

    private Http2Stream newStream$9238d7d(List<Header> list, boolean z) throws IOException {
        Http2Stream http2Stream;
        boolean z2 = z ^ 1;
        synchronized (this.writer) {
            int i;
            synchronized (this) {
                if (this.nextStreamId > 1073741823) {
                    shutdown(ErrorCode.REFUSED_STREAM);
                }
                if (this.shutdown) {
                    throw new ConnectionShutdownException();
                }
                i = this.nextStreamId;
                this.nextStreamId += 2;
                http2Stream = new Http2Stream(i, this, z2, false, list);
                if (z && this.bytesLeftInWriteWindow != 0) {
                    if (http2Stream.bytesLeftInWriteWindow != 0) {
                        z = false;
                        if (http2Stream.isOpen()) {
                            this.streams.put(Integer.valueOf(i), http2Stream);
                        }
                    }
                }
                z = true;
                if (http2Stream.isOpen()) {
                    this.streams.put(Integer.valueOf(i), http2Stream);
                }
            }
            this.writer.synStream$64c3d190(z2, i, list);
        }
        if (z) {
            this.writer.flush();
        }
        return http2Stream;
    }

    public final void writeData(int r11, boolean r12, okio.Buffer r13, long r14) throws java.io.IOException {
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
        r10 = this;
        r0 = 0;
        r2 = (r14 > r0 ? 1 : (r14 == r0 ? 0 : -1));
        r3 = 0;
        if (r2 != 0) goto L_0x000d;
    L_0x0007:
        r14 = r10.writer;
        r14.data(r12, r11, r13, r3);
        return;
    L_0x000d:
        r2 = (r14 > r0 ? 1 : (r14 == r0 ? 0 : -1));
        if (r2 <= 0) goto L_0x0065;
    L_0x0011:
        monitor-enter(r10);
    L_0x0012:
        r4 = r10.bytesLeftInWriteWindow;	 Catch:{ InterruptedException -> 0x005d }
        r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1));	 Catch:{ InterruptedException -> 0x005d }
        if (r2 > 0) goto L_0x0030;	 Catch:{ InterruptedException -> 0x005d }
    L_0x0018:
        r2 = r10.streams;	 Catch:{ InterruptedException -> 0x005d }
        r4 = java.lang.Integer.valueOf(r11);	 Catch:{ InterruptedException -> 0x005d }
        r2 = r2.containsKey(r4);	 Catch:{ InterruptedException -> 0x005d }
        if (r2 != 0) goto L_0x002c;	 Catch:{ InterruptedException -> 0x005d }
    L_0x0024:
        r11 = new java.io.IOException;	 Catch:{ InterruptedException -> 0x005d }
        r12 = "stream closed";	 Catch:{ InterruptedException -> 0x005d }
        r11.<init>(r12);	 Catch:{ InterruptedException -> 0x005d }
        throw r11;	 Catch:{ InterruptedException -> 0x005d }
    L_0x002c:
        r10.wait();	 Catch:{ InterruptedException -> 0x005d }
        goto L_0x0012;
    L_0x0030:
        r4 = r10.bytesLeftInWriteWindow;	 Catch:{ all -> 0x005b }
        r4 = java.lang.Math.min(r14, r4);	 Catch:{ all -> 0x005b }
        r2 = (int) r4;	 Catch:{ all -> 0x005b }
        r4 = r10.writer;	 Catch:{ all -> 0x005b }
        r4 = r4.maxDataLength();	 Catch:{ all -> 0x005b }
        r2 = java.lang.Math.min(r2, r4);	 Catch:{ all -> 0x005b }
        r4 = r10.bytesLeftInWriteWindow;	 Catch:{ all -> 0x005b }
        r6 = (long) r2;	 Catch:{ all -> 0x005b }
        r8 = r4 - r6;	 Catch:{ all -> 0x005b }
        r10.bytesLeftInWriteWindow = r8;	 Catch:{ all -> 0x005b }
        monitor-exit(r10);	 Catch:{ all -> 0x005b }
        r4 = r14 - r6;
        r14 = r10.writer;
        if (r12 == 0) goto L_0x0055;
    L_0x004f:
        r15 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1));
        if (r15 != 0) goto L_0x0055;
    L_0x0053:
        r15 = 1;
        goto L_0x0056;
    L_0x0055:
        r15 = r3;
    L_0x0056:
        r14.data(r15, r11, r13, r2);
        r14 = r4;
        goto L_0x000d;
    L_0x005b:
        r11 = move-exception;
        goto L_0x0063;
    L_0x005d:
        r11 = new java.io.InterruptedIOException;	 Catch:{ all -> 0x005b }
        r11.<init>();	 Catch:{ all -> 0x005b }
        throw r11;	 Catch:{ all -> 0x005b }
    L_0x0063:
        monitor-exit(r10);	 Catch:{ all -> 0x005b }
        throw r11;
    L_0x0065:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.writeData(int, boolean, okio.Buffer, long):void");
    }

    final void writeSynResetLater(int r9, okhttp3.internal.http2.ErrorCode r10) {
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
        r8 = this;
        r0 = r8.writerExecutor;	 Catch:{ RejectedExecutionException -> 0x0020 }
        r7 = new okhttp3.internal.http2.Http2Connection$1;	 Catch:{ RejectedExecutionException -> 0x0020 }
        r3 = "OkHttp %s stream %d";	 Catch:{ RejectedExecutionException -> 0x0020 }
        r1 = 2;	 Catch:{ RejectedExecutionException -> 0x0020 }
        r4 = new java.lang.Object[r1];	 Catch:{ RejectedExecutionException -> 0x0020 }
        r1 = 0;	 Catch:{ RejectedExecutionException -> 0x0020 }
        r2 = r8.hostname;	 Catch:{ RejectedExecutionException -> 0x0020 }
        r4[r1] = r2;	 Catch:{ RejectedExecutionException -> 0x0020 }
        r1 = 1;	 Catch:{ RejectedExecutionException -> 0x0020 }
        r2 = java.lang.Integer.valueOf(r9);	 Catch:{ RejectedExecutionException -> 0x0020 }
        r4[r1] = r2;	 Catch:{ RejectedExecutionException -> 0x0020 }
        r1 = r7;	 Catch:{ RejectedExecutionException -> 0x0020 }
        r2 = r8;	 Catch:{ RejectedExecutionException -> 0x0020 }
        r5 = r9;	 Catch:{ RejectedExecutionException -> 0x0020 }
        r6 = r10;	 Catch:{ RejectedExecutionException -> 0x0020 }
        r1.<init>(r3, r4, r5, r6);	 Catch:{ RejectedExecutionException -> 0x0020 }
        r0.execute(r7);	 Catch:{ RejectedExecutionException -> 0x0020 }
        return;
    L_0x0020:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.writeSynResetLater(int, okhttp3.internal.http2.ErrorCode):void");
    }

    final void writeWindowUpdateLater(int r10, long r11) {
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
        r9 = this;
        r0 = r9.writerExecutor;	 Catch:{ RejectedExecutionException -> 0x0020 }
        r8 = new okhttp3.internal.http2.Http2Connection$2;	 Catch:{ RejectedExecutionException -> 0x0020 }
        r3 = "OkHttp Window Update %s stream %d";	 Catch:{ RejectedExecutionException -> 0x0020 }
        r1 = 2;	 Catch:{ RejectedExecutionException -> 0x0020 }
        r4 = new java.lang.Object[r1];	 Catch:{ RejectedExecutionException -> 0x0020 }
        r1 = 0;	 Catch:{ RejectedExecutionException -> 0x0020 }
        r2 = r9.hostname;	 Catch:{ RejectedExecutionException -> 0x0020 }
        r4[r1] = r2;	 Catch:{ RejectedExecutionException -> 0x0020 }
        r1 = 1;	 Catch:{ RejectedExecutionException -> 0x0020 }
        r2 = java.lang.Integer.valueOf(r10);	 Catch:{ RejectedExecutionException -> 0x0020 }
        r4[r1] = r2;	 Catch:{ RejectedExecutionException -> 0x0020 }
        r1 = r8;	 Catch:{ RejectedExecutionException -> 0x0020 }
        r2 = r9;	 Catch:{ RejectedExecutionException -> 0x0020 }
        r5 = r10;	 Catch:{ RejectedExecutionException -> 0x0020 }
        r6 = r11;	 Catch:{ RejectedExecutionException -> 0x0020 }
        r1.<init>(r3, r4, r5, r6);	 Catch:{ RejectedExecutionException -> 0x0020 }
        r0.execute(r8);	 Catch:{ RejectedExecutionException -> 0x0020 }
        return;
    L_0x0020:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.writeWindowUpdateLater(int, long):void");
    }

    final void writePing(boolean r3, int r4, int r5) {
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
        r2 = this;
        if (r3 != 0) goto L_0x0015;
    L_0x0002:
        monitor-enter(r2);
        r0 = r2.awaitingPong;	 Catch:{ all -> 0x0012 }
        r1 = 1;	 Catch:{ all -> 0x0012 }
        r2.awaitingPong = r1;	 Catch:{ all -> 0x0012 }
        monitor-exit(r2);	 Catch:{ all -> 0x0012 }
        if (r0 == 0) goto L_0x0015;
    L_0x000b:
        r3 = okhttp3.internal.http2.ErrorCode.PROTOCOL_ERROR;	 Catch:{ IOException -> 0x0011 }
        r2.close(r3, r3);	 Catch:{ IOException -> 0x0011 }
        return;
    L_0x0011:
        return;
    L_0x0012:
        r3 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x0012 }
        throw r3;
    L_0x0015:
        r0 = r2.writer;	 Catch:{ IOException -> 0x001b }
        r0.ping(r3, r4, r5);	 Catch:{ IOException -> 0x001b }
        return;
    L_0x001b:
        r3 = okhttp3.internal.http2.ErrorCode.PROTOCOL_ERROR;	 Catch:{ IOException -> 0x0021 }
        r2.close(r3, r3);	 Catch:{ IOException -> 0x0021 }
        return;
    L_0x0021:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.writePing(boolean, int, int):void");
    }

    private void shutdown(ErrorCode errorCode) throws IOException {
        synchronized (this.writer) {
            synchronized (this) {
                if (this.shutdown) {
                    return;
                }
                this.shutdown = true;
                int i = this.lastGoodStreamId;
                this.writer.goAway(i, errorCode, Util.EMPTY_BYTE_ARRAY);
            }
        }
    }

    public final void close() throws IOException {
        close(ErrorCode.NO_ERROR, ErrorCode.CANCEL);
    }

    final void close(ErrorCode errorCode, ErrorCode errorCode2) throws IOException {
        Http2Stream[] http2StreamArr = null;
        try {
            shutdown(errorCode);
            errorCode = null;
        } catch (IOException e) {
            errorCode = e;
        }
        synchronized (this) {
            if (!this.streams.isEmpty()) {
                http2StreamArr = (Http2Stream[]) this.streams.values().toArray(new Http2Stream[this.streams.size()]);
                this.streams.clear();
            }
        }
        if (http2StreamArr != null) {
            for (Http2Stream close : http2StreamArr) {
                try {
                    close.close(errorCode2);
                } catch (IOException e2) {
                    if (errorCode != null) {
                        errorCode = e2;
                    }
                }
            }
        }
        try {
            this.writer.close();
        } catch (ErrorCode errorCode22) {
            if (errorCode == null) {
                errorCode = errorCode22;
            }
        }
        try {
            this.socket.close();
        } catch (IOException e3) {
            errorCode = e3;
        }
        this.writerExecutor.shutdown();
        this.pushExecutor.shutdown();
        if (errorCode != null) {
            throw errorCode;
        }
    }

    public final synchronized boolean isShutdown() {
        return this.shutdown;
    }

    final void pushRequestLater(int r9, java.util.List<okhttp3.internal.http2.Header> r10) {
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
        r8 = this;
        monitor-enter(r8);
        r0 = r8.currentPushRequests;	 Catch:{ all -> 0x003f }
        r1 = java.lang.Integer.valueOf(r9);	 Catch:{ all -> 0x003f }
        r0 = r0.contains(r1);	 Catch:{ all -> 0x003f }
        if (r0 == 0) goto L_0x0014;	 Catch:{ all -> 0x003f }
    L_0x000d:
        r10 = okhttp3.internal.http2.ErrorCode.PROTOCOL_ERROR;	 Catch:{ all -> 0x003f }
        r8.writeSynResetLater(r9, r10);	 Catch:{ all -> 0x003f }
        monitor-exit(r8);	 Catch:{ all -> 0x003f }
        return;	 Catch:{ all -> 0x003f }
    L_0x0014:
        r0 = r8.currentPushRequests;	 Catch:{ all -> 0x003f }
        r1 = java.lang.Integer.valueOf(r9);	 Catch:{ all -> 0x003f }
        r0.add(r1);	 Catch:{ all -> 0x003f }
        monitor-exit(r8);	 Catch:{ all -> 0x003f }
        r0 = r8.pushExecutor;	 Catch:{ RejectedExecutionException -> 0x003e }
        r7 = new okhttp3.internal.http2.Http2Connection$3;	 Catch:{ RejectedExecutionException -> 0x003e }
        r3 = "OkHttp %s Push Request[%s]";	 Catch:{ RejectedExecutionException -> 0x003e }
        r1 = 2;	 Catch:{ RejectedExecutionException -> 0x003e }
        r4 = new java.lang.Object[r1];	 Catch:{ RejectedExecutionException -> 0x003e }
        r1 = 0;	 Catch:{ RejectedExecutionException -> 0x003e }
        r2 = r8.hostname;	 Catch:{ RejectedExecutionException -> 0x003e }
        r4[r1] = r2;	 Catch:{ RejectedExecutionException -> 0x003e }
        r1 = 1;	 Catch:{ RejectedExecutionException -> 0x003e }
        r2 = java.lang.Integer.valueOf(r9);	 Catch:{ RejectedExecutionException -> 0x003e }
        r4[r1] = r2;	 Catch:{ RejectedExecutionException -> 0x003e }
        r1 = r7;	 Catch:{ RejectedExecutionException -> 0x003e }
        r2 = r8;	 Catch:{ RejectedExecutionException -> 0x003e }
        r5 = r9;	 Catch:{ RejectedExecutionException -> 0x003e }
        r6 = r10;	 Catch:{ RejectedExecutionException -> 0x003e }
        r1.<init>(r3, r4, r5, r6);	 Catch:{ RejectedExecutionException -> 0x003e }
        r0.execute(r7);	 Catch:{ RejectedExecutionException -> 0x003e }
        return;
    L_0x003e:
        return;
    L_0x003f:
        r9 = move-exception;
        monitor-exit(r8);	 Catch:{ all -> 0x003f }
        throw r9;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.pushRequestLater(int, java.util.List):void");
    }

    final void pushHeadersLater(int r10, java.util.List<okhttp3.internal.http2.Header> r11, boolean r12) {
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
        r9 = this;
        r0 = r9.pushExecutor;	 Catch:{ RejectedExecutionException -> 0x0021 }
        r8 = new okhttp3.internal.http2.Http2Connection$4;	 Catch:{ RejectedExecutionException -> 0x0021 }
        r3 = "OkHttp %s Push Headers[%s]";	 Catch:{ RejectedExecutionException -> 0x0021 }
        r1 = 2;	 Catch:{ RejectedExecutionException -> 0x0021 }
        r4 = new java.lang.Object[r1];	 Catch:{ RejectedExecutionException -> 0x0021 }
        r1 = 0;	 Catch:{ RejectedExecutionException -> 0x0021 }
        r2 = r9.hostname;	 Catch:{ RejectedExecutionException -> 0x0021 }
        r4[r1] = r2;	 Catch:{ RejectedExecutionException -> 0x0021 }
        r1 = 1;	 Catch:{ RejectedExecutionException -> 0x0021 }
        r2 = java.lang.Integer.valueOf(r10);	 Catch:{ RejectedExecutionException -> 0x0021 }
        r4[r1] = r2;	 Catch:{ RejectedExecutionException -> 0x0021 }
        r1 = r8;	 Catch:{ RejectedExecutionException -> 0x0021 }
        r2 = r9;	 Catch:{ RejectedExecutionException -> 0x0021 }
        r5 = r10;	 Catch:{ RejectedExecutionException -> 0x0021 }
        r6 = r11;	 Catch:{ RejectedExecutionException -> 0x0021 }
        r7 = r12;	 Catch:{ RejectedExecutionException -> 0x0021 }
        r1.<init>(r3, r4, r5, r6, r7);	 Catch:{ RejectedExecutionException -> 0x0021 }
        r0.execute(r8);	 Catch:{ RejectedExecutionException -> 0x0021 }
        return;
    L_0x0021:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.pushHeadersLater(int, java.util.List, boolean):void");
    }

    final void pushDataLater(int i, BufferedSource bufferedSource, int i2, boolean z) throws IOException {
        final Buffer buffer = new Buffer();
        long j = (long) i2;
        bufferedSource.require(j);
        bufferedSource.read(buffer, j);
        if (buffer.size() != j) {
            bufferedSource = new StringBuilder();
            bufferedSource.append(buffer.size());
            bufferedSource.append(" != ");
            bufferedSource.append(i2);
            throw new IOException(bufferedSource.toString());
        }
        final int i3 = i;
        final int i4 = i2;
        final boolean z2 = z;
        this.pushExecutor.execute(new NamedRunnable("OkHttp %s Push Data[%s]", new Object[]{this.hostname, Integer.valueOf(i)}) {
            public final void execute() {
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
                r3 = this;
                r0 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ IOException -> 0x002b }
                r0 = r0.pushObserver;	 Catch:{ IOException -> 0x002b }
                r1 = r5;	 Catch:{ IOException -> 0x002b }
                r2 = r6;	 Catch:{ IOException -> 0x002b }
                r0.onData$749b27ff(r1, r2);	 Catch:{ IOException -> 0x002b }
                r0 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ IOException -> 0x002b }
                r0 = r0.writer;	 Catch:{ IOException -> 0x002b }
                r1 = r4;	 Catch:{ IOException -> 0x002b }
                r2 = okhttp3.internal.http2.ErrorCode.CANCEL;	 Catch:{ IOException -> 0x002b }
                r0.rstStream(r1, r2);	 Catch:{ IOException -> 0x002b }
                r0 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ IOException -> 0x002b }
                monitor-enter(r0);	 Catch:{ IOException -> 0x002b }
                r1 = okhttp3.internal.http2.Http2Connection.this;	 Catch:{ all -> 0x0028 }
                r1 = r1.currentPushRequests;	 Catch:{ all -> 0x0028 }
                r2 = r4;	 Catch:{ all -> 0x0028 }
                r2 = java.lang.Integer.valueOf(r2);	 Catch:{ all -> 0x0028 }
                r1.remove(r2);	 Catch:{ all -> 0x0028 }
                monitor-exit(r0);	 Catch:{ all -> 0x0028 }
                return;	 Catch:{ all -> 0x0028 }
            L_0x0028:
                r1 = move-exception;	 Catch:{ all -> 0x0028 }
                monitor-exit(r0);	 Catch:{ all -> 0x0028 }
                throw r1;	 Catch:{ IOException -> 0x002b }
            L_0x002b:
                return;
                */
                throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.5.execute():void");
            }
        });
    }

    final void pushResetLater(int i, ErrorCode errorCode) {
        final int i2 = i;
        final ErrorCode errorCode2 = errorCode;
        this.pushExecutor.execute(new NamedRunnable("OkHttp %s Push Reset[%s]", new Object[]{this.hostname, Integer.valueOf(i)}) {
            public final void execute() {
                synchronized (Http2Connection.this) {
                    Http2Connection.this.currentPushRequests.remove(Integer.valueOf(i2));
                }
            }
        });
    }

    public final void start() throws IOException {
        this.writer.connectionPreface();
        this.writer.settings(this.okHttpSettings);
        int initialWindowSize = this.okHttpSettings.getInitialWindowSize();
        if (initialWindowSize != ChatFragment.TYPE_MESSAGE_TYPING) {
            this.writer.windowUpdate(0, (long) (initialWindowSize - ChatFragment.TYPE_MESSAGE_TYPING));
        }
        new Thread(this.readerRunnable).start();
    }

    static /* synthetic */ void access$000(okhttp3.internal.http2.Http2Connection r1) {
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
        r0 = okhttp3.internal.http2.ErrorCode.PROTOCOL_ERROR;	 Catch:{ IOException -> 0x0006 }
        r1.close(r0, r0);	 Catch:{ IOException -> 0x0006 }
        return;
    L_0x0006:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.access$000(okhttp3.internal.http2.Http2Connection):void");
    }
}
