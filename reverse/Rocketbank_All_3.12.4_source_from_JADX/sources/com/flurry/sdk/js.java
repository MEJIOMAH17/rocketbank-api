package com.flurry.sdk;

import java.util.Locale;

public class js {
    /* renamed from: a */
    private static final String f299a = "js";

    /* renamed from: a */
    public static int m122a() {
        int intValue = ((Integer) li.m651a().m266a("AgentVersion")).intValue();
        kf.m176a(4, f299a, "getAgentVersion() = ".concat(String.valueOf(intValue)));
        return intValue;
    }

    /* renamed from: c */
    private static String m124c() {
        return (String) li.m651a().m266a("ReleaseBetaVersion");
    }

    /* renamed from: b */
    public static String m123b() {
        String str = m124c().length() > 0 ? "." : "";
        return String.format(Locale.getDefault(), "Flurry_Android_%d_%d.%d.%d%s%s", new Object[]{Integer.valueOf(m122a()), Integer.valueOf(((Integer) li.m651a().m266a("ReleaseMajorVersion")).intValue()), Integer.valueOf(((Integer) li.m651a().m266a("ReleaseMinorVersion")).intValue()), Integer.valueOf(((Integer) li.m651a().m266a("ReleasePatchVersion")).intValue()), str, m124c()});
    }
}
