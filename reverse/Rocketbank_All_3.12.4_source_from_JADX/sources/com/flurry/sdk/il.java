package com.flurry.sdk;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import android.widget.Toast;
import com.flurry.sdk.im.C1096a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

public class il {
    /* renamed from: a */
    public static int f141a;
    /* renamed from: b */
    public static int f142b;
    /* renamed from: c */
    public static AtomicInteger f143c;
    /* renamed from: d */
    static jy<List<im>> f144d;
    /* renamed from: f */
    private static il f145f;
    /* renamed from: g */
    private static Map<Integer, im> f146g;
    /* renamed from: e */
    private String f147e = il.class.getSimpleName();
    /* renamed from: h */
    private final AtomicInteger f148h;
    /* renamed from: i */
    private long f149i;
    /* renamed from: j */
    private ka<jj> f150j = new C10941(this);

    /* renamed from: com.flurry.sdk.il$2 */
    class C04762 implements Runnable {
        /* renamed from: a */
        final /* synthetic */ il f136a;

        C04762(il ilVar) {
            this.f136a = ilVar;
        }

        public final void run() {
            this.f136a.m29k();
        }
    }

    /* renamed from: com.flurry.sdk.il$3 */
    class C04773 implements Runnable {
        /* renamed from: a */
        final /* synthetic */ il f137a;

        C04773(il ilVar) {
            this.f137a = ilVar;
        }

        public final void run() {
            this.f137a.m29k();
        }
    }

    /* renamed from: com.flurry.sdk.il$5 */
    class C04795 implements Runnable {
        /* renamed from: a */
        final /* synthetic */ il f140a;

        C04795(il ilVar) {
            this.f140a = ilVar;
        }

        public final void run() {
            il.m14a();
            List c = il.m20c();
            if (il.f144d == null) {
                il.m31m();
            }
            il.f144d.m146a(c);
        }
    }

    /* renamed from: com.flurry.sdk.il$1 */
    class C10941 implements ka<jj> {
        /* renamed from: a */
        final /* synthetic */ il f528a;

        /* renamed from: com.flurry.sdk.il$1$1 */
        class C04751 implements Runnable {
            /* renamed from: a */
            final /* synthetic */ C10941 f135a;

            C04751(C10941 c10941) {
                this.f135a = c10941;
            }

            public final void run() {
                in.m58a().m65b();
            }
        }

        C10941(il ilVar) {
            this.f528a = ilVar;
        }

        /* renamed from: a */
        public final /* synthetic */ void mo1365a(jz jzVar) {
            jj jjVar = (jj) jzVar;
            String a = this.f528a.f147e;
            StringBuilder stringBuilder = new StringBuilder("onNetworkStateChanged : isNetworkEnable = ");
            stringBuilder.append(jjVar.f619a);
            kf.m176a(4, a, stringBuilder.toString());
            if (jjVar.f619a != null) {
                jr.m114a().m120b(new C04751(this));
            }
        }
    }

    /* renamed from: com.flurry.sdk.il$6 */
    class C10956 implements lc<List<im>> {
        C10956() {
        }

        /* renamed from: a */
        public final kz<List<im>> mo1372a(int i) {
            return new ky(new C1096a());
        }
    }

    private il() {
        f146g = new HashMap();
        this.f148h = new AtomicInteger(0);
        f143c = new AtomicInteger(0);
        if (f142b == 0) {
            f142b = 600000;
        }
        if (f141a == 0) {
            f141a = 15;
        }
        this.f149i = jr.m114a().f293a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).getLong("timeToSendNextPulseReport", 0);
        if (f144d == null) {
            m31m();
        }
        kb.m151a().m158a("com.flurry.android.sdk.NetworkStateEvent", this.f150j);
    }

    /* renamed from: a */
    public static synchronized il m14a() {
        il ilVar;
        synchronized (il.class) {
            if (f145f == null) {
                f145f = new il();
            }
            ilVar = f145f;
        }
        return ilVar;
    }

    /* renamed from: b */
    public static void m17b() {
        if (f145f != null) {
            kb.m151a().m160b("com.flurry.android.sdk.NetworkStateEvent", f145f.f150j);
            f146g.clear();
            f146g = null;
            f145f = null;
        }
    }

    /* renamed from: a */
    public static void m16a(int i) {
        f141a = i;
    }

    /* renamed from: b */
    public static void m18b(int i) {
        f142b = i;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    /* renamed from: a */
    public final synchronized void m33a(com.flurry.sdk.im r7) {
        /*
        r6 = this;
        monitor-enter(r6);
        r0 = 3;
        if (r7 != 0) goto L_0x000f;
    L_0x0004:
        r7 = r6.f147e;	 Catch:{ all -> 0x000d }
        r1 = "Must add valid PulseCallbackAsyncReportInfo";
        com.flurry.sdk.kf.m176a(r0, r7, r1);	 Catch:{ all -> 0x000d }
        monitor-exit(r6);
        return;
    L_0x000d:
        r7 = move-exception;
        goto L_0x0081;
    L_0x000f:
        r1 = r6.f147e;	 Catch:{ all -> 0x000d }
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x000d }
        r3 = "Adding and sending ";
        r2.<init>(r3);	 Catch:{ all -> 0x000d }
        r3 = r7.f156c;	 Catch:{ all -> 0x000d }
        r2.append(r3);	 Catch:{ all -> 0x000d }
        r3 = " report to PulseCallbackManager.";
        r2.append(r3);	 Catch:{ all -> 0x000d }
        r2 = r2.toString();	 Catch:{ all -> 0x000d }
        com.flurry.sdk.kf.m176a(r0, r1, r2);	 Catch:{ all -> 0x000d }
        r0 = r7.m54a();	 Catch:{ all -> 0x000d }
        r0 = r0.size();	 Catch:{ all -> 0x000d }
        if (r0 == 0) goto L_0x007f;
    L_0x0033:
        r0 = r6.f149i;	 Catch:{ all -> 0x000d }
        r2 = 0;
        r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r4 != 0) goto L_0x0052;
    L_0x003b:
        r0 = java.lang.System.currentTimeMillis();	 Catch:{ all -> 0x000d }
        r2 = f142b;	 Catch:{ all -> 0x000d }
        r2 = (long) r2;	 Catch:{ all -> 0x000d }
        r4 = r0 + r2;
        r6.f149i = r4;	 Catch:{ all -> 0x000d }
        r0 = com.flurry.sdk.jr.m114a();	 Catch:{ all -> 0x000d }
        r1 = new com.flurry.sdk.il$2;	 Catch:{ all -> 0x000d }
        r1.<init>(r6);	 Catch:{ all -> 0x000d }
        r0.m120b(r1);	 Catch:{ all -> 0x000d }
    L_0x0052:
        r0 = r6.m30l();	 Catch:{ all -> 0x000d }
        r7.f155b = r0;	 Catch:{ all -> 0x000d }
        r1 = f146g;	 Catch:{ all -> 0x000d }
        r0 = java.lang.Integer.valueOf(r0);	 Catch:{ all -> 0x000d }
        r1.put(r0, r7);	 Catch:{ all -> 0x000d }
        r7 = r7.m54a();	 Catch:{ all -> 0x000d }
        r7 = r7.iterator();	 Catch:{ all -> 0x000d }
    L_0x0069:
        r0 = r7.hasNext();	 Catch:{ all -> 0x000d }
        if (r0 == 0) goto L_0x007f;
    L_0x006f:
        r0 = com.flurry.sdk.hk.m375a();	 Catch:{ all -> 0x000d }
        r0 = r0.f464c;	 Catch:{ all -> 0x000d }
        r1 = r7.next();	 Catch:{ all -> 0x000d }
        r1 = (com.flurry.sdk.kp) r1;	 Catch:{ all -> 0x000d }
        r0.m225b(r1);	 Catch:{ all -> 0x000d }
        goto L_0x0069;
    L_0x007f:
        monitor-exit(r6);
        return;
    L_0x0081:
        monitor-exit(r6);
        throw r7;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.il.a(com.flurry.sdk.im):void");
    }

    /* renamed from: b */
    public final synchronized void m36b(im imVar) {
        if (imVar == null) {
            kf.m176a(3, this.f147e, "Must add valid PulseCallbackAsyncReportInfo");
            return;
        }
        if (this.f149i == 0) {
            this.f149i = System.currentTimeMillis() + ((long) f142b);
            jr.m114a().m120b(new C04773(this));
        }
        int l = m30l();
        imVar.f155b = l;
        f146g.put(Integer.valueOf(l), imVar);
        for (ii iiVar : imVar.m54a()) {
            Iterator it = iiVar.f513a.iterator();
            while (it.hasNext()) {
                it.next();
                f143c.incrementAndGet();
                if (m26h()) {
                    kf.m176a(3, this.f147e, "Max Callback Attempts threshold reached. Sending callback logging reports");
                    m28j();
                }
            }
        }
        if (m27i()) {
            kf.m176a(3, this.f147e, "Time threshold reached. Sending callback logging reports");
            m28j();
        }
        String str = this.f147e;
        StringBuilder stringBuilder = new StringBuilder("Restoring ");
        stringBuilder.append(imVar.f156c);
        stringBuilder.append(" report to PulseCallbackManager. Number of stored completed callbacks: ");
        stringBuilder.append(f143c.get());
        kf.m176a(3, str, stringBuilder.toString());
    }

    /* renamed from: c */
    private synchronized void m21c(int i) {
        String str = this.f147e;
        StringBuilder stringBuilder = new StringBuilder("Removing report ");
        stringBuilder.append(i);
        stringBuilder.append(" from PulseCallbackManager");
        kf.m176a(3, str, stringBuilder.toString());
        f146g.remove(Integer.valueOf(i));
    }

    /* renamed from: c */
    public static List<im> m20c() {
        return new ArrayList(f146g.values());
    }

    /* renamed from: a */
    public final synchronized void m32a(final ij ijVar) {
        String str = this.f147e;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(ijVar.f128l.f525m.f156c);
        stringBuilder.append(" report sent successfully to ");
        stringBuilder.append(ijVar.f128l.f523k);
        kf.m176a(3, str, stringBuilder.toString());
        ijVar.f122f = ik.COMPLETE;
        ijVar.f123g = "";
        m22c(ijVar);
        if (kf.m184c() <= 3 && kf.m189d()) {
            jr.m114a().m118a(new Runnable(this) {
                /* renamed from: b */
                final /* synthetic */ il f139b;

                public final void run() {
                    Context context = jr.m114a().f293a;
                    StringBuilder stringBuilder = new StringBuilder("PulseCallbackReportInfo HTTP Response Code: ");
                    stringBuilder.append(ijVar.f121e);
                    stringBuilder.append(" for url: ");
                    stringBuilder.append(ijVar.f128l.f366r);
                    Toast.makeText(context, stringBuilder.toString(), 1).show();
                }
            });
        }
    }

    /* renamed from: a */
    public final synchronized boolean m34a(ij ijVar, String str) {
        ijVar.f124h++;
        ijVar.f125i = System.currentTimeMillis();
        if (!(ijVar.f124h > ijVar.f128l.f516d)) {
            if (!TextUtils.isEmpty(str)) {
                String str2 = this.f147e;
                StringBuilder stringBuilder = new StringBuilder("Report to ");
                stringBuilder.append(ijVar.f128l.f523k);
                stringBuilder.append(" redirecting to url: ");
                stringBuilder.append(str);
                kf.m176a(3, str2, stringBuilder.toString());
                ijVar.f128l.f366r = str;
                m38d();
                return true;
            }
        }
        str = this.f147e;
        StringBuilder stringBuilder2 = new StringBuilder("Maximum number of redirects attempted. Aborting: ");
        stringBuilder2.append(ijVar.f128l.f525m.f156c);
        stringBuilder2.append(" report to ");
        stringBuilder2.append(ijVar.f128l.f523k);
        kf.m176a(3, str, stringBuilder2.toString());
        ijVar.f122f = ik.INVALID_RESPONSE;
        ijVar.f123g = "";
        m22c(ijVar);
        return false;
    }

    /* renamed from: b */
    public final synchronized void m35b(ij ijVar) {
        String str = this.f147e;
        StringBuilder stringBuilder = new StringBuilder("Maximum number of attempts reached. Aborting: ");
        stringBuilder.append(ijVar.f128l.f525m.f156c);
        kf.m176a(3, str, stringBuilder.toString());
        ijVar.f122f = ik.TIMEOUT;
        ijVar.f125i = System.currentTimeMillis();
        ijVar.f123g = "";
        m22c(ijVar);
    }

    /* renamed from: b */
    public final synchronized boolean m37b(ij ijVar, String str) {
        boolean z;
        ijVar.f122f = ik.INVALID_RESPONSE;
        ijVar.f125i = System.currentTimeMillis();
        if (str == null) {
            str = "";
        }
        ijVar.f123g = str;
        str = ijVar.f128l;
        z = false;
        StringBuilder stringBuilder;
        if ((str.f364p >= str.f515c ? 1 : null) != null) {
            str = this.f147e;
            stringBuilder = new StringBuilder("Maximum number of attempts reached. Aborting: ");
            stringBuilder.append(ijVar.f128l.f525m.f156c);
            stringBuilder.append(" report to ");
            stringBuilder.append(ijVar.f128l.f523k);
            kf.m176a(3, str, stringBuilder.toString());
            m22c(ijVar);
        } else if (ly.m347h(ijVar.f128l.f366r) == null) {
            str = this.f147e;
            stringBuilder = new StringBuilder("Url: ");
            stringBuilder.append(ijVar.f128l.f366r);
            stringBuilder.append(" is invalid.");
            kf.m176a(3, str, stringBuilder.toString());
            m22c(ijVar);
        } else {
            str = this.f147e;
            StringBuilder stringBuilder2 = new StringBuilder("Retrying callback to ");
            stringBuilder2.append(ijVar.f128l.f525m.f156c);
            stringBuilder2.append(" in: ");
            stringBuilder2.append(ijVar.f128l.f519g / 1000);
            stringBuilder2.append(" seconds.");
            kf.m176a(3, str, stringBuilder2.toString());
            ijVar.m12a();
            f143c.incrementAndGet();
            m38d();
            m25g();
            z = true;
        }
        return z;
    }

    /* renamed from: d */
    public final void m38d() {
        jr.m114a().m120b(new C04795(this));
    }

    /* renamed from: e */
    public static List<im> m23e() {
        if (f144d == null) {
            m31m();
        }
        return (List) f144d.m145a();
    }

    /* renamed from: c */
    private void m22c(ij ijVar) {
        ijVar.f120d = true;
        ijVar.m12a();
        f143c.incrementAndGet();
        ijVar.f128l.m459c();
        String str = this.f147e;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(ijVar.f128l.f525m.f156c);
        stringBuilder.append(" report to ");
        stringBuilder.append(ijVar.f128l.f523k);
        stringBuilder.append(" finalized.");
        kf.m176a(3, str, stringBuilder.toString());
        m38d();
        m25g();
    }

    /* renamed from: g */
    private void m25g() {
        if (m26h() || m27i()) {
            kf.m176a(3, this.f147e, "Threshold reached. Sending callback logging reports");
            m28j();
        }
    }

    /* renamed from: h */
    private static boolean m26h() {
        return f143c.intValue() >= f141a;
    }

    /* renamed from: i */
    private boolean m27i() {
        return System.currentTimeMillis() > this.f149i;
    }

    /* renamed from: j */
    private void m28j() {
        Iterator it = m20c().iterator();
        while (true) {
            int i = 0;
            if (!it.hasNext()) {
                break;
            }
            im imVar = (im) it.next();
            for (ii iiVar : imVar.m54a()) {
                Iterator it2 = iiVar.f513a.iterator();
                while (it2.hasNext()) {
                    ij ijVar = (ij) it2.next();
                    if (ijVar.f126j) {
                        it2.remove();
                    } else if (!ijVar.f122f.equals(ik.PENDING_COMPLETION)) {
                        ijVar.f126j = true;
                        i = 1;
                    }
                }
            }
            if (i != 0) {
                in.m58a().m64a(imVar);
            }
        }
        in.m58a().m65b();
        this.f149i = System.currentTimeMillis() + ((long) f142b);
        m29k();
        List c = m20c();
        for (int i2 = 0; i2 < c.size(); i2++) {
            im imVar2 = (im) c.get(i2);
            if (imVar2.m55b()) {
                m21c(imVar2.f155b);
            } else {
                List a = imVar2.m54a();
                for (int i3 = 0; i3 < a.size(); i3++) {
                    ii iiVar2 = (ii) a.get(i3);
                    if (iiVar2.f524l) {
                        imVar2.f157d.remove(Long.valueOf(iiVar2.f514b));
                    } else {
                        Iterator it3 = iiVar2.f513a.iterator();
                        while (it3.hasNext()) {
                            if (((ij) it3.next()).f126j) {
                                it3.remove();
                            }
                        }
                    }
                }
            }
        }
        f143c = new AtomicInteger(0);
        m38d();
    }

    /* renamed from: k */
    private void m29k() {
        Editor edit = jr.m114a().f293a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).edit();
        edit.putLong("timeToSendNextPulseReport", this.f149i);
        edit.commit();
    }

    /* renamed from: l */
    private synchronized int m30l() {
        return this.f148h.incrementAndGet();
    }

    /* renamed from: m */
    private static void m31m() {
        f144d = new jy(jr.m114a().f293a.getFileStreamPath(".yflurryanongoingpulsecallbackreporter"), ".yflurryanongoingpulsecallbackreporter", 2, new C10956());
    }
}
