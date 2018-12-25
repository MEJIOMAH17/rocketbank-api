package com.google.android.gms.common.util;

import java.util.regex.Pattern;

public class zzw {
    private static final Pattern zzaIp = Pattern.compile("\\$\\{(.*?)\\}");

    public static boolean zzdz(String str) {
        if (str != null) {
            if (!str.trim().isEmpty()) {
                return false;
            }
        }
        return true;
    }
}
