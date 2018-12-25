package com.google.android.gms.common.stats;

import android.os.PowerManager.WakeLock;
import android.os.Process;
import android.text.TextUtils;
import java.util.List;

public class zzc {
    static List<String> zzB(List<String> list) {
        return (list != null && list.size() == 1 && "com.google.android.gms".equals(list.get(0))) ? null : list;
    }

    public static String zza(WakeLock wakeLock, String str) {
        Object obj;
        String valueOf = String.valueOf(String.valueOf((((long) Process.myPid()) << 32) | ((long) System.identityHashCode(wakeLock))));
        if (TextUtils.isEmpty(str)) {
            obj = "";
        }
        str = String.valueOf(obj);
        return str.length() != 0 ? valueOf.concat(str) : new String(valueOf);
    }

    static String zzdx(String str) {
        return "com.google.android.gms".equals(str) ? null : str;
    }
}
