package com.flurry.sdk;

import android.content.Context;
import com.flurry.sdk.jk.C0495a;

public class jd implements ki {
    /* renamed from: a */
    private static final String f599a = "jd";

    /* renamed from: a */
    public static synchronized jd m535a() {
        jd jdVar;
        synchronized (jd.class) {
            jdVar = (jd) jr.m114a().m117a(jd.class);
        }
        return jdVar;
    }

    /* renamed from: a */
    public final void mo1366a(Context context) {
        ld.m259a(jq.class);
        kb.m151a();
        lm.m271a();
        li.m651a();
        jt.m125a();
        jk.m92a();
        je.m79a();
        jl.m99a();
        ji.m552a();
        je.m79a();
        jn.m564a();
        jh.m90a();
        jp.m576a();
    }

    /* renamed from: b */
    public final void mo1367b() {
        jp.m577b();
        jh.f257a = null;
        jn.m566b();
        je.m82b();
        ji.m554b();
        jl.m100b();
        je.m82b();
        jk.m94b();
        jt.m126b();
        li.m652b();
        lm.m272b();
        kb.m152b();
        ld.m260b(jq.class);
    }

    /* renamed from: c */
    public static String m536c() {
        jq i = m542i();
        return i != null ? Long.toString(i.f282c) : null;
    }

    /* renamed from: d */
    public static long m537d() {
        jq i = m542i();
        return i != null ? i.f282c : 0;
    }

    /* renamed from: e */
    public static long m538e() {
        jq i = m542i();
        return i != null ? i.f283d : 0;
    }

    /* renamed from: f */
    public static long m539f() {
        jq i = m542i();
        return i != null ? i.f284e : -1;
    }

    /* renamed from: g */
    public static long m540g() {
        jq i = m542i();
        return i != null ? i.m110c() : 0;
    }

    /* renamed from: h */
    public static C0495a m541h() {
        return jk.m92a().m98c();
    }

    /* renamed from: i */
    public static jq m542i() {
        ld c = lf.m634a().m646c();
        return c == null ? null : (jq) c.m261c(jq.class);
    }
}
