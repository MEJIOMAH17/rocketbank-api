package com.flurry.sdk;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

public final class lv {

    /* renamed from: com.flurry.sdk.lv$a */
    public static class C0521a {
        /* renamed from: a */
        private final Object f432a;
        /* renamed from: b */
        private final String f433b;
        /* renamed from: c */
        private Class<?> f434c;
        /* renamed from: d */
        private List<Class<?>> f435d = new ArrayList();
        /* renamed from: e */
        private List<Object> f436e = new ArrayList();
        /* renamed from: f */
        private boolean f437f;
        /* renamed from: g */
        private boolean f438g;

        public C0521a(Object obj, String str) {
            this.f432a = obj;
            this.f433b = str;
            this.f434c = obj != null ? obj.getClass() : null;
        }

        /* renamed from: a */
        public final <T> C0521a m333a(Class<T> cls, T t) {
            this.f435d.add(cls);
            this.f436e.add(t);
            return this;
        }

        /* renamed from: a */
        public final C0521a m332a(Class<?> cls) {
            this.f438g = true;
            this.f434c = cls;
            return this;
        }

        /* renamed from: a */
        public final Object m334a() throws Exception {
            Method a = lv.m335a(this.f434c, this.f433b, (Class[]) this.f435d.toArray(new Class[this.f435d.size()]));
            if (this.f437f) {
                a.setAccessible(true);
            }
            return a.invoke(this.f438g ? null : this.f432a, this.f436e.toArray());
        }
    }

    /* renamed from: a */
    public static java.lang.reflect.Method m335a(java.lang.Class<?> r1, java.lang.String r2, java.lang.Class<?>... r3) throws java.lang.NoSuchMethodException {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
    L_0x0000:
        if (r1 == 0) goto L_0x000c;
    L_0x0002:
        r0 = r1.getDeclaredMethod(r2, r3);	 Catch:{ NoSuchMethodException -> 0x0007 }
        return r0;
    L_0x0007:
        r1 = r1.getSuperclass();
        goto L_0x0000;
    L_0x000c:
        r1 = new java.lang.NoSuchMethodException;
        r1.<init>();
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.lv.a(java.lang.Class, java.lang.String, java.lang.Class[]):java.lang.reflect.Method");
    }
}
