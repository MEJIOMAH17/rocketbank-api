package com.flurry.sdk;

import android.content.Context;
import java.lang.ref.WeakReference;

public final class le extends jz {
    /* renamed from: a */
    public WeakReference<Context> f678a;
    /* renamed from: b */
    public ld f679b;
    /* renamed from: c */
    public int f680c;
    /* renamed from: d */
    public long f681d;

    /* renamed from: com.flurry.sdk.le$a */
    public enum C0517a {
        ;

        static {
            f407f = new int[]{f402a, f403b, f404c, f405d, f406e};
        }

        /* renamed from: a */
        public static int[] m262a() {
            return (int[]) f407f.clone();
        }
    }

    public le() {
        super("com.flurry.android.sdk.FlurrySessionEvent");
    }
}
