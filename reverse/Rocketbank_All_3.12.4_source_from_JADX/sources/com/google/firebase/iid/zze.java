package com.google.firebase.iid;

public final class zze {
    private static final Object zztX = new Object();
    private final zzh zzclx;

    zze(zzh zzh) {
        this.zzclx = zzh;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    final java.lang.String zzabU() {
        /*
        r5 = this;
        r0 = zztX;
        monitor-enter(r0);
        r1 = r5.zzclx;	 Catch:{ all -> 0x0028 }
        r1 = r1.zzbif;	 Catch:{ all -> 0x0028 }
        r2 = "topic_operaion_queue";
        r3 = 0;
        r1 = r1.getString(r2, r3);	 Catch:{ all -> 0x0028 }
        if (r1 == 0) goto L_0x0026;
    L_0x0010:
        r2 = ",";
        r1 = r1.split(r2);	 Catch:{ all -> 0x0028 }
        r2 = r1.length;	 Catch:{ all -> 0x0028 }
        r4 = 1;
        if (r2 <= r4) goto L_0x0026;
    L_0x001a:
        r2 = r1[r4];	 Catch:{ all -> 0x0028 }
        r2 = android.text.TextUtils.isEmpty(r2);	 Catch:{ all -> 0x0028 }
        if (r2 != 0) goto L_0x0026;
    L_0x0022:
        r1 = r1[r4];	 Catch:{ all -> 0x0028 }
        monitor-exit(r0);	 Catch:{ all -> 0x0028 }
        return r1;
    L_0x0026:
        monitor-exit(r0);	 Catch:{ all -> 0x0028 }
        return r3;
    L_0x0028:
        r1 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0028 }
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.zze.zzabU():java.lang.String");
    }

    final boolean zzjx(String str) {
        synchronized (zztX) {
            String string = this.zzclx.zzbif.getString("topic_operaion_queue", "");
            String valueOf = String.valueOf(",");
            String valueOf2 = String.valueOf(str);
            if (string.startsWith(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf))) {
                valueOf = String.valueOf(",");
                str = String.valueOf(str);
                this.zzclx.zzbif.edit().putString("topic_operaion_queue", string.substring((str.length() != 0 ? valueOf.concat(str) : new String(valueOf)).length())).apply();
                return true;
            }
            return null;
        }
    }
}
