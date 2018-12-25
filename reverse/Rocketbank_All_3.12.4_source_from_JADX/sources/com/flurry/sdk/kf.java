package com.flurry.sdk;

import android.text.TextUtils;
import android.util.Log;

public final class kf {
    /* renamed from: a */
    private static boolean f335a = false;
    /* renamed from: b */
    private static int f336b = 5;
    /* renamed from: c */
    private static boolean f337c = false;

    /* renamed from: a */
    public static void m174a() {
        f335a = true;
    }

    /* renamed from: b */
    public static void m181b() {
        f335a = false;
    }

    /* renamed from: c */
    public static int m184c() {
        return f336b;
    }

    /* renamed from: d */
    public static boolean m189d() {
        return f337c;
    }

    /* renamed from: a */
    public static void m175a(int i) {
        f336b = i;
    }

    /* renamed from: a */
    public static void m180a(boolean z) {
        f337c = z;
    }

    /* renamed from: a */
    public static void m178a(String str, String str2) {
        m182b(3, str, str2);
    }

    /* renamed from: b */
    public static void m183b(String str, String str2) {
        m182b(6, str, str2);
    }

    /* renamed from: c */
    public static void m186c(String str, String str2) {
        m182b(4, str, str2);
    }

    /* renamed from: d */
    public static void m188d(String str, String str2) {
        m182b(2, str, str2);
    }

    /* renamed from: e */
    public static void m190e(String str, String str2) {
        m182b(5, str, str2);
    }

    /* renamed from: a */
    public static void m176a(int i, String str, String str2) {
        m185c(i, str, str2);
    }

    /* renamed from: b */
    private static void m182b(int i, String str, String str2) {
        if (!f335a && f336b <= i) {
            m187d(i, str, str2);
        }
    }

    /* renamed from: c */
    private static void m185c(int i, String str, String str2) {
        if (f337c) {
            m187d(i, str, str2);
        }
    }

    /* renamed from: d */
    private static void m187d(int i, String str, String str2) {
        if (!f337c) {
            str = "FlurryAgent";
        }
        int i2 = 0;
        int length = TextUtils.isEmpty(str2) ? 0 : str2.length();
        while (i2 < length) {
            int i3 = 4000 > length - i2 ? length : i2 + 4000;
            if (Log.println(i, str, str2.substring(i2, i3)) > 0) {
                i2 = i3;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public static void m179a(String str, String str2, Throwable th) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str2);
        stringBuilder.append('\n');
        stringBuilder.append(Log.getStackTraceString(th));
        m182b(6, str, stringBuilder.toString());
    }

    /* renamed from: a */
    public static void m177a(int i, String str, String str2, Throwable th) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str2);
        stringBuilder.append('\n');
        stringBuilder.append(Log.getStackTraceString(th));
        m185c(i, str, stringBuilder.toString());
    }
}
