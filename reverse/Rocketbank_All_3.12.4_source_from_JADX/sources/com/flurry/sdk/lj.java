package com.flurry.sdk;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class lj {
    /* renamed from: a */
    private Map<String, Object> f412a = new HashMap();
    /* renamed from: b */
    private Map<String, List<C0520a>> f413b = new HashMap();

    /* renamed from: com.flurry.sdk.lj$a */
    public interface C0520a {
        /* renamed from: a */
        void mo1373a(String str, Object obj);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    /* renamed from: a */
    public final synchronized void m268a(java.lang.String r3, java.lang.Object r4) {
        /*
        r2 = this;
        monitor-enter(r2);
        r0 = android.text.TextUtils.isEmpty(r3);	 Catch:{ all -> 0x0052 }
        if (r0 == 0) goto L_0x0009;
    L_0x0007:
        monitor-exit(r2);
        return;
    L_0x0009:
        r0 = r2.f412a;	 Catch:{ all -> 0x0052 }
        r0 = r0.get(r3);	 Catch:{ all -> 0x0052 }
        if (r4 == r0) goto L_0x001c;
    L_0x0011:
        if (r4 == 0) goto L_0x001a;
    L_0x0013:
        r0 = r4.equals(r0);	 Catch:{ all -> 0x0052 }
        if (r0 == 0) goto L_0x001a;
    L_0x0019:
        goto L_0x001c;
    L_0x001a:
        r0 = 0;
        goto L_0x001d;
    L_0x001c:
        r0 = 1;
    L_0x001d:
        if (r0 != 0) goto L_0x0050;
    L_0x001f:
        if (r4 != 0) goto L_0x0027;
    L_0x0021:
        r0 = r2.f412a;	 Catch:{ all -> 0x0052 }
        r0.remove(r3);	 Catch:{ all -> 0x0052 }
        goto L_0x002c;
    L_0x0027:
        r0 = r2.f412a;	 Catch:{ all -> 0x0052 }
        r0.put(r3, r4);	 Catch:{ all -> 0x0052 }
    L_0x002c:
        r0 = r2.f413b;	 Catch:{ all -> 0x0052 }
        r0 = r0.get(r3);	 Catch:{ all -> 0x0052 }
        if (r0 == 0) goto L_0x0050;
    L_0x0034:
        r0 = r2.f413b;	 Catch:{ all -> 0x0052 }
        r0 = r0.get(r3);	 Catch:{ all -> 0x0052 }
        r0 = (java.util.List) r0;	 Catch:{ all -> 0x0052 }
        r0 = r0.iterator();	 Catch:{ all -> 0x0052 }
    L_0x0040:
        r1 = r0.hasNext();	 Catch:{ all -> 0x0052 }
        if (r1 == 0) goto L_0x0050;
    L_0x0046:
        r1 = r0.next();	 Catch:{ all -> 0x0052 }
        r1 = (com.flurry.sdk.lj.C0520a) r1;	 Catch:{ all -> 0x0052 }
        r1.mo1373a(r3, r4);	 Catch:{ all -> 0x0052 }
        goto L_0x0040;
    L_0x0050:
        monitor-exit(r2);
        return;
    L_0x0052:
        r3 = move-exception;
        monitor-exit(r2);
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.lj.a(java.lang.String, java.lang.Object):void");
    }

    /* renamed from: a */
    public final synchronized Object m266a(String str) {
        return this.f412a.get(str);
    }

    /* renamed from: a */
    public final synchronized void m267a(String str, C0520a c0520a) {
        if (!TextUtils.isEmpty(str)) {
            if (c0520a != null) {
                List list = (List) this.f413b.get(str);
                if (list == null) {
                    list = new LinkedList();
                }
                list.add(c0520a);
                this.f413b.put(str, list);
            }
        }
    }

    /* renamed from: b */
    public final synchronized boolean m269b(String str, C0520a c0520a) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (c0520a == null) {
            return false;
        }
        List list = (List) this.f413b.get(str);
        if (list == null) {
            return false;
        }
        return list.remove(c0520a);
    }

    /* renamed from: c */
    public final synchronized void m270c() {
        this.f413b.clear();
    }
}
