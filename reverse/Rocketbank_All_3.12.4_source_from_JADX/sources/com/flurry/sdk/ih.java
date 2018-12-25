package com.flurry.sdk;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.flurry.sdk.ii.C1092a;
import com.flurry.sdk.kl.C0502a;
import com.flurry.sdk.kn.C0506a;
import java.net.SocketTimeoutException;
import java.util.List;
import java.util.Map;

public class ih extends kq<ii> {
    /* renamed from: a */
    public static long f509a = 0;
    /* renamed from: e */
    private static final String f510e = "ih";

    /* renamed from: com.flurry.sdk.ih$1 */
    class C10901 implements lc<List<ii>> {
        /* renamed from: a */
        final /* synthetic */ ih f505a;

        C10901(ih ihVar) {
            this.f505a = ihVar;
        }

        /* renamed from: a */
        public final kz<List<ii>> mo1372a(int i) {
            return new ky(new C1092a());
        }
    }

    /* renamed from: a */
    protected final /* synthetic */ void mo1375a(kp kpVar) {
        final ii iiVar = (ii) kpVar;
        String str = f510e;
        StringBuilder stringBuilder = new StringBuilder("Sending next pulse report to ");
        stringBuilder.append(iiVar.f523k);
        stringBuilder.append(" at: ");
        stringBuilder.append(iiVar.f366r);
        kf.m176a(3, str, stringBuilder.toString());
        jd.m535a();
        long d = jd.m537d();
        if (d == 0) {
            d = f509a;
        }
        long j = d;
        jd.m535a();
        d = jd.m540g();
        final ij ijVar = new ij(iiVar, j, d == 0 ? System.currentTimeMillis() - j : d, iiVar.f364p);
        lx klVar = new kl();
        klVar.f727f = iiVar.f366r;
        klVar.f717w = 100000;
        if (iiVar.f517e.equals(ip.POST)) {
            klVar.f747c = new kv();
            if (iiVar.f522j != null) {
                klVar.f746b = iiVar.f522j.getBytes();
            }
            klVar.f728g = C0506a.kPost;
        } else {
            klVar.f728g = C0506a.kGet;
        }
        klVar.f729h = iiVar.f520h * 1000;
        klVar.f730i = iiVar.f521i * 1000;
        klVar.f733l = true;
        klVar.f739r = true;
        klVar.f740s = (iiVar.f520h + iiVar.f521i) * 1000;
        Map map = iiVar.f518f;
        if (map != null) {
            for (String str2 : iiVar.f518f.keySet()) {
                klVar.m663a(str2, (String) map.get(str2));
            }
        }
        klVar.f731j = false;
        klVar.f745a = new C0502a<byte[], String>(this) {
            /* renamed from: c */
            final /* synthetic */ ih f508c;

            /* renamed from: a */
            public final /* synthetic */ void mo1371a(kl klVar, Object obj) {
                String str = (String) obj;
                String b = ih.f510e;
                StringBuilder stringBuilder = new StringBuilder("Pulse report to ");
                stringBuilder.append(iiVar.f523k);
                stringBuilder.append(" for ");
                stringBuilder.append(iiVar.f525m.f156c);
                stringBuilder.append(", HTTP status code is: ");
                stringBuilder.append(klVar.f737p);
                kf.m176a(3, b, stringBuilder.toString());
                int i = klVar.f737p;
                ij ijVar = ijVar;
                int i2 = (int) klVar.f735n;
                if (i2 >= 0) {
                    ijVar.f127k += (long) i2;
                } else if (ijVar.f127k <= 0) {
                    ijVar.f127k = 0;
                }
                ijVar.f121e = i;
                StringBuilder stringBuilder2;
                String b2;
                if (!klVar.m665c()) {
                    Exception exception = klVar.f736o;
                    Object obj2 = 1;
                    Object obj3 = (klVar.f736o == null || !(klVar.f736o instanceof SocketTimeoutException)) ? null : 1;
                    if (!klVar.f741t) {
                        if (obj3 == null) {
                            obj2 = null;
                        }
                    }
                    if (obj2 != null) {
                        if (klVar.m667e() != null) {
                            str = ih.f510e;
                            stringBuilder2 = new StringBuilder("Timeout occured when trying to connect to: ");
                            stringBuilder2.append(iiVar.f523k);
                            stringBuilder2.append(". Exception: ");
                            stringBuilder2.append(klVar.f736o.getMessage());
                            kf.m176a(3, str, stringBuilder2.toString());
                        } else {
                            b2 = ih.f510e;
                            obj = new StringBuilder("Manually managed http request timeout occured for: ");
                            obj.append(iiVar.f523k);
                            kf.m176a(3, b2, obj.toString());
                        }
                        ih.m435a(this.f508c, ijVar, iiVar);
                        return;
                    }
                    b2 = ih.f510e;
                    stringBuilder = new StringBuilder("Error occured when trying to connect to: ");
                    stringBuilder.append(iiVar.f523k);
                    stringBuilder.append(". Exception: ");
                    stringBuilder.append(exception.getMessage());
                    kf.m176a(3, b2, stringBuilder.toString());
                    ih.m437a(this.f508c, ijVar, iiVar, str);
                } else if (i >= Callback.DEFAULT_DRAG_ANIMATION_DURATION && i < 300) {
                    ih.m439b(this.f508c, ijVar, iiVar);
                } else if (i < 300 || i >= 400) {
                    b2 = ih.f510e;
                    stringBuilder2 = new StringBuilder();
                    stringBuilder2.append(iiVar.f525m.f156c);
                    stringBuilder2.append(" report failed sending to : ");
                    stringBuilder2.append(iiVar.f523k);
                    kf.m176a(3, b2, stringBuilder2.toString());
                    ih.m437a(this.f508c, ijVar, iiVar, str);
                } else {
                    ih.m436a(this.f508c, ijVar, iiVar, klVar);
                }
            }
        };
        jp.m576a().m171a((Object) this, klVar);
    }

    public ih() {
        kq.f369b = 30000;
    }

    /* renamed from: a */
    protected final jy<List<ii>> mo1374a() {
        return new jy(jr.m114a().f293a.getFileStreamPath(".yflurryanpulsecallbackreporter"), ".yflurryanpulsecallbackreporter", 2, new C10901(this));
    }

    /* renamed from: a */
    protected final synchronized void mo1376a(List<ii> list) {
        il.m14a().m38d();
    }

    /* renamed from: b */
    protected final synchronized void mo1377b(List<ii> list) {
        il.m14a();
        List<im> e = il.m23e();
        if (e != null) {
            if (e.size() != 0) {
                String str = f510e;
                StringBuilder stringBuilder = new StringBuilder("Restoring ");
                stringBuilder.append(e.size());
                stringBuilder.append(" from report queue.");
                kf.m176a(3, str, stringBuilder.toString());
                for (im b : e) {
                    il.m14a().m36b(b);
                }
                il.m14a();
                for (im a : il.m20c()) {
                    for (ii iiVar : a.m54a()) {
                        if (!iiVar.f524l) {
                            String str2 = f510e;
                            StringBuilder stringBuilder2 = new StringBuilder("Callback for ");
                            stringBuilder2.append(iiVar.f525m.f156c);
                            stringBuilder2.append(" to ");
                            stringBuilder2.append(iiVar.f523k);
                            stringBuilder2.append(" not completed.  Adding to reporter queue.");
                            kf.m176a(3, str2, stringBuilder2.toString());
                            list.add(iiVar);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m435a(ih ihVar, ij ijVar, ii iiVar) {
        il.m14a().m35b(ijVar);
        ihVar.m228c((kp) iiVar);
    }

    /* renamed from: a */
    static /* synthetic */ void m437a(ih ihVar, ij ijVar, ii iiVar, String str) {
        ijVar = il.m14a().m37b(ijVar, str);
        kf.m176a(3, f510e, "Failed report retrying: ".concat(String.valueOf(ijVar)));
        if (ijVar != null) {
            ihVar.m230d(iiVar);
        } else {
            ihVar.m228c((kp) iiVar);
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m439b(ih ihVar, ij ijVar, ii iiVar) {
        String str = f510e;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(iiVar.f525m.f156c);
        stringBuilder.append(" report sent successfully to : ");
        stringBuilder.append(iiVar.f523k);
        kf.m176a(3, str, stringBuilder.toString());
        il.m14a().m32a(ijVar);
        ihVar.m228c((kp) iiVar);
    }

    /* renamed from: a */
    static /* synthetic */ void m436a(ih ihVar, ij ijVar, ii iiVar, kl klVar) {
        List a = klVar.m661a("Location");
        String b = (a == null || a.size() <= 0) ? null : ly.m341b((String) a.get(0), iiVar.f365q);
        ijVar = il.m14a().m34a(ijVar, b);
        if (ijVar != null) {
            kf.m176a(3, f510e, "Received redirect url. Retrying: ".concat(String.valueOf(b)));
        } else {
            kf.m176a(3, f510e, "Received redirect url. Retrying: false");
        }
        if (ijVar != null) {
            iiVar.f366r = b;
            klVar.f727f = b;
            ijVar = "Location";
            if (!(klVar.f738q == null || klVar.f738q.f315a.containsKey(ijVar) == null)) {
                klVar.f738q.m140b(ijVar);
            }
            jp.m576a().m171a((Object) ihVar, (lx) klVar);
            return;
        }
        ihVar.m228c((kp) iiVar);
    }
}
