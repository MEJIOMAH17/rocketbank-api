package com.google.android.gms.internal;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class zzt {
    public static boolean DEBUG = Log.isLoggable("Volley", 2);
    public static String TAG = "Volley";

    static class zza {
        public static final boolean zzaj = zzt.DEBUG;
        private final List<zza> zzak = new ArrayList();
        private boolean zzal = false;

        private static class zza {
            public final String name;
            public final long time;
            public final long zzam;

            public zza(String str, long j, long j2) {
                this.name = str;
                this.zzam = j;
                this.time = j2;
            }
        }

        zza() {
        }

        private long getTotalDuration() {
            if (this.zzak.size() == 0) {
                return 0;
            }
            return ((zza) this.zzak.get(this.zzak.size() - 1)).time - ((zza) this.zzak.get(0)).time;
        }

        protected void finalize() throws Throwable {
            if (!this.zzal) {
                zzd("Request on the loose");
                zzt.zzc("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }

        public synchronized void zza(String str, long j) {
            if (this.zzal) {
                throw new IllegalStateException("Marker added to finished log");
            }
            this.zzak.add(new zza(str, j, SystemClock.elapsedRealtime()));
        }

        public synchronized void zzd(String str) {
            this.zzal = true;
            if (getTotalDuration() > 0) {
                long j = ((zza) this.zzak.get(0)).time;
                zzt.zzb("(%-4d ms) %s", Long.valueOf(r1), str);
                for (zza zza : this.zzak) {
                    zzt.zzb("(+%-4d) [%2d] %s", Long.valueOf(zza.time - j), Long.valueOf(zza.zzam), zza.name);
                    j = zza.time;
                }
            }
        }
    }

    public static void zza(String str, Object... objArr) {
        if (DEBUG) {
            Log.v(TAG, zzd(str, objArr));
        }
    }

    public static void zza(Throwable th, String str, Object... objArr) {
        Log.e(TAG, zzd(str, objArr), th);
    }

    public static void zzb(String str, Object... objArr) {
        Log.d(TAG, zzd(str, objArr));
    }

    public static void zzc(String str, Object... objArr) {
        Log.e(TAG, zzd(str, objArr));
    }

    private static String zzd(String str, Object... objArr) {
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        String str2 = "<unknown>";
        for (int i = 2; i < stackTrace.length; i++) {
            if (!stackTrace[i].getClass().equals(zzt.class)) {
                str2 = stackTrace[i].getClassName();
                str2 = str2.substring(str2.lastIndexOf(46) + 1);
                str2 = str2.substring(str2.lastIndexOf(36) + 1);
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(str2);
                stringBuilder.append(".");
                stringBuilder.append(stackTrace[i].getMethodName());
                str2 = stringBuilder.toString();
                break;
            }
        }
        return String.format(Locale.US, "[%d] %s: %s", new Object[]{Long.valueOf(Thread.currentThread().getId()), str2, str});
    }
}
