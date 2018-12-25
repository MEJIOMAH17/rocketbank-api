package com.flurry.sdk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class kb {
    /* renamed from: a */
    private static kb f322a;
    /* renamed from: b */
    private final jw<String, ko<ka<?>>> f323b = new jw();
    /* renamed from: c */
    private final jw<ko<ka<?>>, String> f324c = new jw();

    /* renamed from: a */
    public static synchronized kb m151a() {
        kb kbVar;
        synchronized (kb.class) {
            if (f322a == null) {
                f322a = new kb();
            }
            kbVar = f322a;
        }
        return kbVar;
    }

    /* renamed from: b */
    public static synchronized void m152b() {
        synchronized (kb.class) {
            if (f322a != null) {
                f322a.m154c();
                f322a = null;
            }
        }
    }

    private kb() {
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    /* renamed from: a */
    public final synchronized void m158a(java.lang.String r3, com.flurry.sdk.ka<?> r4) {
        /*
        r2 = this;
        monitor-enter(r2);
        r0 = android.text.TextUtils.isEmpty(r3);	 Catch:{ all -> 0x002e }
        if (r0 != 0) goto L_0x002c;
    L_0x0007:
        if (r4 != 0) goto L_0x000a;
    L_0x0009:
        goto L_0x002c;
    L_0x000a:
        r0 = new com.flurry.sdk.ko;	 Catch:{ all -> 0x002e }
        r0.<init>(r4);	 Catch:{ all -> 0x002e }
        r4 = r2.f323b;	 Catch:{ all -> 0x002e }
        r1 = 0;
        r4 = r4.m135a(r3, r1);	 Catch:{ all -> 0x002e }
        if (r4 == 0) goto L_0x001c;
    L_0x0018:
        r1 = r4.contains(r0);	 Catch:{ all -> 0x002e }
    L_0x001c:
        if (r1 == 0) goto L_0x0020;
    L_0x001e:
        monitor-exit(r2);
        return;
    L_0x0020:
        r4 = r2.f323b;	 Catch:{ all -> 0x002e }
        r4.m138a(r3, r0);	 Catch:{ all -> 0x002e }
        r4 = r2.f324c;	 Catch:{ all -> 0x002e }
        r4.m138a(r0, r3);	 Catch:{ all -> 0x002e }
        monitor-exit(r2);
        return;
    L_0x002c:
        monitor-exit(r2);
        return;
    L_0x002e:
        r3 = move-exception;
        monitor-exit(r2);
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.kb.a(java.lang.String, com.flurry.sdk.ka):void");
    }

    /* renamed from: b */
    public final synchronized void m160b(String str, ka<?> kaVar) {
        if (!TextUtils.isEmpty(str)) {
            ko koVar = new ko(kaVar);
            this.f323b.m141b(str, koVar);
            this.f324c.m141b(koVar, str);
        }
    }

    /* renamed from: a */
    public final synchronized void m157a(String str) {
        if (!TextUtils.isEmpty(str)) {
            for (ko b : this.f323b.m134a((Object) str)) {
                this.f324c.m141b(b, str);
            }
            this.f323b.m140b(str);
        }
    }

    /* renamed from: a */
    public final synchronized void m156a(ka<?> kaVar) {
        if (kaVar != null) {
            Object koVar = new ko(kaVar);
            kaVar = this.f324c.m134a(koVar).iterator();
            while (kaVar.hasNext()) {
                this.f323b.m141b((String) kaVar.next(), koVar);
            }
            this.f324c.m140b(koVar);
        }
    }

    /* renamed from: c */
    private synchronized void m154c() {
        this.f323b.m136a();
        this.f324c.m136a();
    }

    /* renamed from: b */
    public final synchronized int m159b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f323b.m134a((Object) str).size();
    }

    /* renamed from: c */
    private synchronized List<ka<?>> m153c(String str) {
        if (TextUtils.isEmpty(str)) {
            return Collections.emptyList();
        }
        List<ka<?>> arrayList = new ArrayList();
        str = this.f323b.m134a((Object) str).iterator();
        while (str.hasNext()) {
            ka kaVar = (ka) ((ko) str.next()).get();
            if (kaVar == null) {
                str.remove();
            } else {
                arrayList.add(kaVar);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m155a(final jz jzVar) {
        if (jzVar != null) {
            for (final ka kaVar : m153c(jzVar.m148a())) {
                jr.m114a().m120b(new lw(this) {
                    /* renamed from: c */
                    final /* synthetic */ kb f632c;

                    /* renamed from: a */
                    public final void mo1370a() {
                        kaVar.mo1365a(jzVar);
                    }
                });
            }
        }
    }
}
