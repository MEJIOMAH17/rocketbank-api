package com.flurry.sdk;

import android.content.Context;
import android.os.Build.VERSION;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class kh {
    /* renamed from: a */
    private static final String f340a = "kh";
    /* renamed from: b */
    private static final Map<Class<? extends ki>, kg> f341b = new LinkedHashMap();
    /* renamed from: c */
    private final Map<Class<? extends ki>, ki> f342c = new LinkedHashMap();

    /* renamed from: a */
    public static void m191a(Class<? extends ki> cls) {
        if (cls != null) {
            synchronized (f341b) {
                f341b.put(cls, new kg(cls));
            }
        }
    }

    /* renamed from: a */
    public final synchronized void m194a(Context context) {
        if (context == null) {
            kf.m176a(5, f340a, "Null context.");
            return;
        }
        synchronized (f341b) {
            List<kg> arrayList = new ArrayList(f341b.values());
        }
        for (kg kgVar : arrayList) {
            try {
                Object obj = (kgVar.f338a == null || VERSION.SDK_INT < kgVar.f339b) ? null : 1;
                if (obj != null) {
                    ki kiVar = (ki) kgVar.f338a.newInstance();
                    kiVar.mo1366a(context);
                    this.f342c.put(kgVar.f338a, kiVar);
                }
            } catch (Throwable e) {
                String str = f340a;
                StringBuilder stringBuilder = new StringBuilder("Flurry Module for class ");
                stringBuilder.append(kgVar.f338a);
                stringBuilder.append(" is not available:");
                kf.m177a(5, str, stringBuilder.toString(), e);
            }
        }
        lf.m634a().m643a(context);
        jv.m130a();
    }

    /* renamed from: a */
    public final synchronized void m193a() {
        jv.m131b();
        lf.m638b();
        List b = m192b();
        for (int size = b.size() - 1; size >= 0; size--) {
            try {
                ((ki) this.f342c.remove(((ki) b.get(size)).getClass())).mo1367b();
            } catch (Throwable e) {
                kf.m177a(5, f340a, "Error destroying module:", e);
            }
        }
    }

    /* renamed from: b */
    public final ki m195b(Class<? extends ki> cls) {
        if (cls == null) {
            return null;
        }
        synchronized (this.f342c) {
            ki kiVar = (ki) this.f342c.get(cls);
        }
        if (kiVar != null) {
            return kiVar;
        }
        throw new IllegalStateException("Module was not registered/initialized. ".concat(String.valueOf(cls)));
    }

    /* renamed from: b */
    private List<ki> m192b() {
        List<ki> arrayList = new ArrayList();
        synchronized (this.f342c) {
            arrayList.addAll(this.f342c.values());
        }
        return arrayList;
    }
}
