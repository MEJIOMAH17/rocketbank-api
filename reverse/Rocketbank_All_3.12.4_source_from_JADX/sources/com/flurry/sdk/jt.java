package com.flurry.sdk;

import java.util.HashMap;
import java.util.Map;

public class jt {
    /* renamed from: a */
    private static jt f300a = null;
    /* renamed from: b */
    private static final String f301b = "jt";
    /* renamed from: c */
    private static final HashMap<String, Map<String, String>> f302c = new HashMap();

    /* renamed from: a */
    public static synchronized jt m125a() {
        jt jtVar;
        synchronized (jt.class) {
            if (f300a == null) {
                f300a = new jt();
            }
            jtVar = f300a;
        }
        return jtVar;
    }

    /* renamed from: b */
    public static synchronized void m126b() {
        synchronized (jt.class) {
            f300a = null;
        }
    }

    /* renamed from: a */
    public final synchronized void m127a(String str, String str2, Map<String, String> map) {
        if (map == null) {
            map = new HashMap();
        }
        if (map.size() >= 10) {
            str = f301b;
            str2 = new StringBuilder("MaxOriginParams exceeded: ");
            str2.append(map.size());
            kf.m190e(str, str2.toString());
            return;
        }
        map.put("flurryOriginVersion", str2);
        synchronized (f302c) {
            if (f302c.size() < 10 || f302c.containsKey(str)) {
                f302c.put(str, map);
                return;
            }
            str = f301b;
            map = new StringBuilder("MaxOrigins exceeded: ");
            map.append(f302c.size());
            kf.m190e(str, map.toString());
        }
    }

    /* renamed from: c */
    public final synchronized HashMap<String, Map<String, String>> m128c() {
        HashMap<String, Map<String, String>> hashMap;
        synchronized (f302c) {
            hashMap = new HashMap(f302c);
        }
        return hashMap;
    }
}
