package com.flurry.sdk;

import java.util.Comparator;

public class kc implements Comparator<Runnable> {
    /* renamed from: a */
    private static final String f325a = "kc";

    public /* synthetic */ int compare(Object obj, Object obj2) {
        Runnable runnable = (Runnable) obj2;
        obj = m161a((Runnable) obj);
        obj2 = m161a(runnable);
        if (obj < obj2) {
            return -1;
        }
        return obj > obj2 ? 1 : null;
    }

    /* renamed from: a */
    private static int m161a(Runnable runnable) {
        if (runnable == null) {
            return ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        }
        if (runnable instanceof kd) {
            lx lxVar = (lx) ((kd) runnable).m162a();
            if (lxVar != null) {
                return lxVar.f717w;
            }
            return ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        } else if (runnable instanceof lx) {
            return ((lx) runnable).f717w;
        } else {
            String str = f325a;
            StringBuilder stringBuilder = new StringBuilder("Unknown runnable class: ");
            stringBuilder.append(runnable.getClass().getName());
            kf.m176a(6, str, stringBuilder.toString());
            return ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        }
    }
}
