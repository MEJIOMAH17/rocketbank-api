package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class zzaa {

    public static final class zza {
        private final Object zzYG;
        private final List<String> zzaGv;

        private zza(Object obj) {
            this.zzYG = zzac.zzw(obj);
            this.zzaGv = new ArrayList();
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder(100);
            stringBuilder.append(this.zzYG.getClass().getSimpleName());
            stringBuilder.append('{');
            int size = this.zzaGv.size();
            for (int i = 0; i < size; i++) {
                stringBuilder.append((String) this.zzaGv.get(i));
                if (i < size - 1) {
                    stringBuilder.append(", ");
                }
            }
            stringBuilder.append('}');
            return stringBuilder.toString();
        }

        public final zza zzg(String str, Object obj) {
            List list = this.zzaGv;
            str = (String) zzac.zzw(str);
            String valueOf = String.valueOf(String.valueOf(obj));
            StringBuilder stringBuilder = new StringBuilder((1 + String.valueOf(str).length()) + String.valueOf(valueOf).length());
            stringBuilder.append(str);
            stringBuilder.append("=");
            stringBuilder.append(valueOf);
            list.add(stringBuilder.toString());
            return this;
        }
    }

    public static boolean equal(Object obj, Object obj2) {
        if (obj != obj2) {
            if (obj == null || !obj.equals(obj2)) {
                return false;
            }
        }
        return true;
    }

    public static int hashCode(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static zza zzv(Object obj) {
        return new zza(obj);
    }
}
