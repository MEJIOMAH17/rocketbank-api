package com.google.android.gms.internal;

public abstract class zzaca<T> {
    private static String READ_PERMISSION = "com.google.android.providers.gsf.permission.READ_GSERVICES";
    private static zza zzaDC;
    private static int zzaDD;
    private static final Object zztX = new Object();
    protected final String zzAX;
    protected final T zzAY;
    private T zzaDE = null;

    private interface zza {
    }

    /* renamed from: com.google.android.gms.internal.zzaca$1 */
    class C11951 extends zzaca<Boolean> {
        C11951(String str, Boolean bool) {
            super(str, bool);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaca$2 */
    class C11962 extends zzaca<Long> {
        C11962(String str, Long l) {
            super(str, l);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaca$3 */
    class C11973 extends zzaca<Integer> {
        C11973(String str, Integer num) {
            super(str, num);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaca$4 */
    class C11984 extends zzaca<Float> {
        C11984(String str, Float f) {
            super(str, f);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaca$5 */
    class C11995 extends zzaca<String> {
        C11995(String str, String str2) {
            super(str, str2);
        }
    }

    protected zzaca(String str, T t) {
        this.zzAX = str;
        this.zzAY = t;
    }

    public static zzaca<String> zzB(String str, String str2) {
        return new C11995(str, str2);
    }

    public static zzaca<Float> zza(String str, Float f) {
        return new C11984(str, f);
    }

    public static zzaca<Integer> zza(String str, Integer num) {
        return new C11973(str, num);
    }

    public static zzaca<Long> zza(String str, Long l) {
        return new C11962(str, l);
    }

    public static zzaca<Boolean> zzj(String str, boolean z) {
        return new C11951(str, Boolean.valueOf(z));
    }
}
