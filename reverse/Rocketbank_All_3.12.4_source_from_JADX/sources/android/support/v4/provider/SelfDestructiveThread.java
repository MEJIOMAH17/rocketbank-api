package android.support.v4.provider;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import android.support.annotation.RestrictTo;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.util.concurrent.Callable;

@RestrictTo
public class SelfDestructiveThread {
    private Callback mCallback = new C01731();
    private final int mDestructAfterMillisec;
    private int mGeneration;
    private Handler mHandler;
    private final Object mLock = new Object();
    private final int mPriority;
    private HandlerThread mThread;
    private final String mThreadName;

    /* renamed from: android.support.v4.provider.SelfDestructiveThread$1 */
    class C01731 implements Callback {
        C01731() {
        }

        public final boolean handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    SelfDestructiveThread.access$100(SelfDestructiveThread.this);
                    return true;
                case 1:
                    SelfDestructiveThread.access$000(SelfDestructiveThread.this, (Runnable) message.obj);
                    return true;
                default:
                    return true;
            }
        }
    }

    public interface ReplyCallback<T> {
        void onReply(T t);
    }

    public SelfDestructiveThread(String str) {
        this.mThreadName = str;
        this.mPriority = 10;
        this.mDestructAfterMillisec = AbstractSpiCall.DEFAULT_TIMEOUT;
        this.mGeneration = null;
    }

    private void post(Runnable runnable) {
        synchronized (this.mLock) {
            if (this.mThread == null) {
                this.mThread = new HandlerThread(this.mThreadName, 10);
                this.mThread.start();
                this.mHandler = new Handler(this.mThread.getLooper(), this.mCallback);
                this.mGeneration++;
            }
            this.mHandler.removeMessages(0);
            this.mHandler.sendMessage(this.mHandler.obtainMessage(1, runnable));
        }
    }

    public final <T> void postAndReply(final Callable<T> callable, final ReplyCallback<T> replyCallback) {
        final Handler handler = new Handler();
        post(new Runnable() {
            public final void run() {
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
                r0 = r3;	 Catch:{ Exception -> 0x0007 }
                r0 = r0.call();	 Catch:{ Exception -> 0x0007 }
                goto L_0x0008;
            L_0x0007:
                r0 = 0;
            L_0x0008:
                r1 = r0;
                r2 = new android.support.v4.provider.SelfDestructiveThread$2$1;
                r2.<init>(r0);
                r1.post(r2);
                return;
                */
                throw new UnsupportedOperationException("Method not decompiled: android.support.v4.provider.SelfDestructiveThread.2.run():void");
            }
        });
    }

    public final <T> T postAndWait(java.util.concurrent.Callable<T> r13, int r14) throws java.lang.InterruptedException {
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
        r12 = this;
        r7 = new java.util.concurrent.locks.ReentrantLock;
        r7.<init>();
        r8 = r7.newCondition();
        r9 = new java.util.concurrent.atomic.AtomicReference;
        r9.<init>();
        r10 = new java.util.concurrent.atomic.AtomicBoolean;
        r0 = 1;
        r10.<init>(r0);
        r11 = new android.support.v4.provider.SelfDestructiveThread$3;
        r0 = r11;
        r1 = r12;
        r2 = r9;
        r3 = r13;
        r4 = r7;
        r5 = r10;
        r6 = r8;
        r0.<init>(r2, r3, r4, r5, r6);
        r12.post(r11);
        r7.lock();
        r13 = r10.get();	 Catch:{ all -> 0x005c }
        if (r13 != 0) goto L_0x0034;	 Catch:{ all -> 0x005c }
    L_0x002c:
        r13 = r9.get();	 Catch:{ all -> 0x005c }
        r7.unlock();
        return r13;
    L_0x0034:
        r13 = java.util.concurrent.TimeUnit.MILLISECONDS;	 Catch:{ all -> 0x005c }
        r0 = (long) r14;	 Catch:{ all -> 0x005c }
        r13 = r13.toNanos(r0);	 Catch:{ all -> 0x005c }
    L_0x003b:
        r0 = r8.awaitNanos(r13);	 Catch:{ InterruptedException -> 0x0040 }
        r13 = r0;
    L_0x0040:
        r0 = r10.get();	 Catch:{ all -> 0x005c }
        if (r0 != 0) goto L_0x004e;	 Catch:{ all -> 0x005c }
    L_0x0046:
        r13 = r9.get();	 Catch:{ all -> 0x005c }
        r7.unlock();
        return r13;
    L_0x004e:
        r0 = 0;
        r2 = (r13 > r0 ? 1 : (r13 == r0 ? 0 : -1));
        if (r2 > 0) goto L_0x003b;
    L_0x0054:
        r13 = new java.lang.InterruptedException;	 Catch:{ all -> 0x005c }
        r14 = "timeout";	 Catch:{ all -> 0x005c }
        r13.<init>(r14);	 Catch:{ all -> 0x005c }
        throw r13;	 Catch:{ all -> 0x005c }
    L_0x005c:
        r13 = move-exception;
        r7.unlock();
        throw r13;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.provider.SelfDestructiveThread.postAndWait(java.util.concurrent.Callable, int):T");
    }

    static /* synthetic */ void access$000(SelfDestructiveThread selfDestructiveThread, Runnable runnable) {
        runnable.run();
        synchronized (selfDestructiveThread.mLock) {
            selfDestructiveThread.mHandler.removeMessages(0);
            selfDestructiveThread.mHandler.sendMessageDelayed(selfDestructiveThread.mHandler.obtainMessage(0), 10000);
        }
    }

    static /* synthetic */ void access$100(SelfDestructiveThread selfDestructiveThread) {
        synchronized (selfDestructiveThread.mLock) {
            if (selfDestructiveThread.mHandler.hasMessages(1)) {
                return;
            }
            selfDestructiveThread.mThread.quit();
            selfDestructiveThread.mThread = null;
            selfDestructiveThread.mHandler = null;
        }
    }
}
