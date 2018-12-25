package com.flurry.sdk;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.google.android.gms.tapandpay.TapAndPayStatusCodes;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map.Entry;

public class kn extends lx {
    /* renamed from: e */
    static final String f721e = "kn";
    /* renamed from: A */
    private km f722A = new km(this);
    /* renamed from: a */
    private int f723a;
    /* renamed from: b */
    private int f724b;
    /* renamed from: c */
    private final jw<String, String> f725c = new jw();
    /* renamed from: d */
    private HttpURLConnection f726d;
    /* renamed from: f */
    public String f727f;
    /* renamed from: g */
    public C0506a f728g;
    /* renamed from: h */
    public int f729h = AbstractSpiCall.DEFAULT_TIMEOUT;
    /* renamed from: i */
    public int f730i = TapAndPayStatusCodes.TAP_AND_PAY_UNLOCK_DEVICE_FOR_PAYMENT_REQUIRED;
    /* renamed from: j */
    public boolean f731j = true;
    /* renamed from: k */
    public C0507c f732k;
    /* renamed from: l */
    public boolean f733l;
    /* renamed from: m */
    long f734m = -1;
    /* renamed from: n */
    public long f735n = -1;
    /* renamed from: o */
    public Exception f736o;
    /* renamed from: p */
    public int f737p = -1;
    /* renamed from: q */
    public final jw<String, String> f738q = new jw();
    /* renamed from: r */
    public boolean f739r;
    /* renamed from: s */
    public int f740s = 25000;
    /* renamed from: t */
    public boolean f741t;
    /* renamed from: x */
    private boolean f742x;
    /* renamed from: y */
    private boolean f743y;
    /* renamed from: z */
    private final Object f744z = new Object();

    /* renamed from: com.flurry.sdk.kn$1 */
    class C05041 extends Thread {
        /* renamed from: a */
        final /* synthetic */ kn f353a;

        C05041(kn knVar) {
            this.f353a = knVar;
        }

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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r1 = this;
            r0 = r1.f353a;	 Catch:{ Throwable -> 0x0012 }
            r0 = r0.f726d;	 Catch:{ Throwable -> 0x0012 }
            if (r0 == 0) goto L_0x0011;	 Catch:{ Throwable -> 0x0012 }
        L_0x0008:
            r0 = r1.f353a;	 Catch:{ Throwable -> 0x0012 }
            r0 = r0.f726d;	 Catch:{ Throwable -> 0x0012 }
            r0.disconnect();	 Catch:{ Throwable -> 0x0012 }
        L_0x0011:
            return;
        L_0x0012:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.kn.1.run():void");
        }
    }

    /* renamed from: com.flurry.sdk.kn$a */
    public enum C0506a {
        kUnknown,
        kGet,
        kPost,
        kPut,
        kDelete,
        kHead;

        public final String toString() {
            switch (this) {
                case kPost:
                    return "POST";
                case kPut:
                    return "PUT";
                case kDelete:
                    return "DELETE";
                case kHead:
                    return "HEAD";
                case kGet:
                    return "GET";
                default:
                    return null;
            }
        }
    }

    /* renamed from: com.flurry.sdk.kn$c */
    public interface C0507c {
        /* renamed from: a */
        void mo1381a(kn knVar);

        /* renamed from: a */
        void mo1382a(kn knVar, InputStream inputStream) throws Exception;

        /* renamed from: a */
        void mo1383a(OutputStream outputStream) throws Exception;
    }

    /* renamed from: com.flurry.sdk.kn$b */
    public static class C1125b implements C0507c {
        /* renamed from: a */
        public void mo1381a(kn knVar) {
        }

        /* renamed from: a */
        public void mo1382a(kn knVar, InputStream inputStream) throws Exception {
        }

        /* renamed from: a */
        public final void mo1383a(OutputStream outputStream) throws Exception {
        }
    }

    /* renamed from: a */
    public final void m663a(String str, String str2) {
        this.f725c.m138a((Object) str, (Object) str2);
    }

    /* renamed from: b */
    public final boolean m664b() {
        boolean z;
        synchronized (this.f744z) {
            z = this.f743y;
        }
        return z;
    }

    /* renamed from: c */
    public final boolean m665c() {
        return !m667e() && m666d();
    }

    /* renamed from: d */
    public final boolean m666d() {
        return this.f737p >= Callback.DEFAULT_DRAG_ANIMATION_DURATION && this.f737p < 400 && !this.f741t;
    }

    /* renamed from: e */
    public final boolean m667e() {
        return this.f736o != null;
    }

    /* renamed from: a */
    public final List<String> m661a(String str) {
        return this.f738q.m134a((Object) str);
    }

    /* renamed from: f */
    public final void m668f() {
        String str = f721e;
        StringBuilder stringBuilder = new StringBuilder("Cancelling http request: ");
        stringBuilder.append(this.f727f);
        kf.m176a(3, str, stringBuilder.toString());
        synchronized (this.f744z) {
            this.f743y = true;
        }
        if (!this.f742x) {
            this.f742x = true;
            if (this.f726d != null) {
                new C05041(this).start();
            }
        }
    }

    /* renamed from: a */
    public void mo1370a() {
        StringBuilder stringBuilder;
        try {
            if (this.f727f == null) {
                this.f722A.m208a();
                m670h();
            } else if (jk.m92a().f267b) {
                if (this.f728g == null || C0506a.kUnknown.equals(this.f728g)) {
                    this.f728g = C0506a.kGet;
                }
                m659i();
                r2 = f721e;
                stringBuilder = new StringBuilder("HTTP status: ");
                stringBuilder.append(this.f737p);
                stringBuilder.append(" for url: ");
                stringBuilder.append(this.f727f);
                kf.m176a(4, r2, stringBuilder.toString());
                this.f722A.m208a();
                m670h();
            } else {
                r2 = f721e;
                stringBuilder = new StringBuilder("Network not available, aborting http request: ");
                stringBuilder.append(this.f727f);
                kf.m176a(3, r2, stringBuilder.toString());
                this.f722A.m208a();
                m670h();
            }
        } catch (Throwable e) {
            String str = f721e;
            StringBuilder stringBuilder2 = new StringBuilder("HTTP status: ");
            stringBuilder2.append(this.f737p);
            stringBuilder2.append(" for url: ");
            stringBuilder2.append(this.f727f);
            kf.m176a(4, str, stringBuilder2.toString());
            String str2 = f721e;
            stringBuilder = new StringBuilder("Exception during http request: ");
            stringBuilder.append(this.f727f);
            kf.m177a(3, str2, stringBuilder.toString(), e);
            this.f724b = this.f726d.getReadTimeout();
            this.f723a = this.f726d.getConnectTimeout();
            this.f736o = e;
        } catch (Throwable th) {
            this.f722A.m208a();
            m670h();
        }
    }

    /* renamed from: g */
    public final void mo3226g() {
        m668f();
    }

    /* renamed from: i */
    private void m659i() throws Exception {
        Closeable outputStream;
        Closeable bufferedOutputStream;
        Throwable th;
        Throwable th2;
        if (!this.f743y) {
            this.f727f = lr.m302a(this.f727f);
            this.f726d = (HttpURLConnection) new URL(this.f727f).openConnection();
            this.f726d.setConnectTimeout(this.f729h);
            this.f726d.setReadTimeout(this.f730i);
            this.f726d.setRequestMethod(this.f728g.toString());
            this.f726d.setInstanceFollowRedirects(this.f731j);
            this.f726d.setDoOutput(C0506a.kPost.equals(this.f728g));
            this.f726d.setDoInput(true);
            for (Entry entry : this.f725c.m139b()) {
                this.f726d.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
            if (!(C0506a.kGet.equals(this.f728g) || C0506a.kPost.equals(this.f728g))) {
                this.f726d.setRequestProperty("Accept-Encoding", "");
            }
            if (this.f743y) {
                m660j();
                return;
            }
            if (C0506a.kPost.equals(this.f728g)) {
                try {
                    outputStream = this.f726d.getOutputStream();
                    try {
                        bufferedOutputStream = new BufferedOutputStream(outputStream);
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedOutputStream = null;
                        th2 = th;
                        lr.m305a(bufferedOutputStream);
                        lr.m305a(outputStream);
                        throw th2;
                    }
                } catch (Throwable th4) {
                    bufferedOutputStream = null;
                    th2 = th4;
                    outputStream = bufferedOutputStream;
                    lr.m305a(bufferedOutputStream);
                    lr.m305a(outputStream);
                    throw th2;
                }
                try {
                    if (!(this.f732k == null || m664b())) {
                        this.f732k.mo1383a((OutputStream) bufferedOutputStream);
                    }
                    lr.m305a(bufferedOutputStream);
                    lr.m305a(outputStream);
                } catch (Throwable th5) {
                    m660j();
                }
            }
            if (this.f733l) {
                this.f734m = System.currentTimeMillis();
            }
            if (this.f739r) {
                this.f722A.m209a((long) this.f740s);
            }
            this.f737p = this.f726d.getResponseCode();
            if (this.f733l && this.f734m != -1) {
                this.f735n = System.currentTimeMillis() - this.f734m;
            }
            this.f722A.m208a();
            for (Entry entry2 : this.f726d.getHeaderFields().entrySet()) {
                for (Object a : (List) entry2.getValue()) {
                    this.f738q.m138a(entry2.getKey(), a);
                }
            }
            if (!C0506a.kGet.equals(this.f728g) && !C0506a.kPost.equals(this.f728g)) {
                m660j();
            } else if (this.f743y) {
                m660j();
            } else {
                try {
                    outputStream = this.f726d.getInputStream();
                    try {
                        bufferedOutputStream = new BufferedInputStream(outputStream);
                    } catch (Throwable th32) {
                        th = th32;
                        bufferedOutputStream = null;
                        th2 = th;
                        lr.m305a(bufferedOutputStream);
                        lr.m305a(outputStream);
                        throw th2;
                    }
                    try {
                        if (!(this.f732k == null || m664b())) {
                            this.f732k.mo1382a(this, bufferedOutputStream);
                        }
                        lr.m305a(bufferedOutputStream);
                        lr.m305a(outputStream);
                        m660j();
                    } catch (Throwable th6) {
                        th2 = th6;
                        lr.m305a(bufferedOutputStream);
                        lr.m305a(outputStream);
                        throw th2;
                    }
                } catch (Throwable th42) {
                    bufferedOutputStream = null;
                    th2 = th42;
                    outputStream = bufferedOutputStream;
                    lr.m305a(bufferedOutputStream);
                    lr.m305a(outputStream);
                    throw th2;
                }
            }
        }
    }

    /* renamed from: h */
    final void m670h() {
        if (this.f732k != null && !m664b()) {
            this.f732k.mo1381a(this);
        }
    }

    /* renamed from: j */
    private void m660j() {
        if (!this.f742x) {
            this.f742x = true;
            if (this.f726d != null) {
                this.f726d.disconnect();
            }
        }
    }
}
