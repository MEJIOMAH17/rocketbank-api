package com.flurry.sdk;

import java.util.Locale;

public final class jh {
    /* renamed from: a */
    public static jh f257a;

    /* renamed from: a */
    public static synchronized jh m90a() {
        jh jhVar;
        synchronized (jh.class) {
            if (f257a == null) {
                f257a = new jh();
            }
            jhVar = f257a;
        }
        return jhVar;
    }

    private jh() {
    }

    /* renamed from: b */
    public static String m91b() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(Locale.getDefault().getLanguage());
        stringBuilder.append("_");
        stringBuilder.append(Locale.getDefault().getCountry());
        return stringBuilder.toString();
    }
}
