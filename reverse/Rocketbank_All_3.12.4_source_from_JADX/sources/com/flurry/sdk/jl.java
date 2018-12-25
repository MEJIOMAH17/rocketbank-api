package com.flurry.sdk;

import android.telephony.TelephonyManager;

public class jl {
    /* renamed from: a */
    private static jl f269a = null;
    /* renamed from: b */
    private static final String f270b = "jl";

    /* renamed from: a */
    public static synchronized jl m99a() {
        jl jlVar;
        synchronized (jl.class) {
            if (f269a == null) {
                f269a = new jl();
            }
            jlVar = f269a;
        }
        return jlVar;
    }

    /* renamed from: b */
    public static void m100b() {
        f269a = null;
    }

    private jl() {
    }

    /* renamed from: c */
    public static String m101c() {
        TelephonyManager telephonyManager = (TelephonyManager) jr.m114a().f293a.getSystemService("phone");
        if (telephonyManager == null) {
            return null;
        }
        return telephonyManager.getNetworkOperatorName();
    }

    /* renamed from: d */
    public static String m102d() {
        TelephonyManager telephonyManager = (TelephonyManager) jr.m114a().f293a.getSystemService("phone");
        if (telephonyManager == null) {
            return null;
        }
        return telephonyManager.getNetworkOperator();
    }
}
