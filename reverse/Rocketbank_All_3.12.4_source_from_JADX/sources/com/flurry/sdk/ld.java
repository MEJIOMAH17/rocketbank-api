package com.flurry.sdk;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class ld {
    /* renamed from: b */
    private static final List<Class<?>> f399b = new ArrayList();
    /* renamed from: a */
    private final String f400a = ld.class.getSimpleName();
    /* renamed from: c */
    private final Map<Class<?>, Object> f401c = new LinkedHashMap();

    /* renamed from: a */
    public static void m259a(Class<?> cls) {
        synchronized (f399b) {
            f399b.add(cls);
        }
    }

    /* renamed from: b */
    public static void m260b(Class<?> cls) {
        synchronized (f399b) {
            f399b.remove(cls);
        }
    }

    public ld() {
        synchronized (f399b) {
            List<Class> arrayList = new ArrayList(f399b);
        }
        for (Class cls : arrayList) {
            try {
                Object newInstance = cls.newInstance();
                synchronized (this.f401c) {
                    this.f401c.put(cls, newInstance);
                }
            } catch (Throwable e) {
                String str = this.f400a;
                StringBuilder stringBuilder = new StringBuilder("Module data ");
                stringBuilder.append(cls);
                stringBuilder.append(" is not available:");
                kf.m177a(5, str, stringBuilder.toString(), e);
            }
        }
    }

    /* renamed from: c */
    public final Object m261c(Class<?> cls) {
        synchronized (this.f401c) {
            cls = this.f401c.get(cls);
        }
        return cls;
    }
}
