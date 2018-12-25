package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

public class zzv {
    protected static final Comparator<byte[]> zzav = new C06221();
    private List<byte[]> zzar = new LinkedList();
    private List<byte[]> zzas = new ArrayList(64);
    private int zzat = 0;
    private final int zzau;

    /* renamed from: com.google.android.gms.internal.zzv$1 */
    static class C06221 implements Comparator<byte[]> {
        C06221() {
        }

        public final /* synthetic */ int compare(Object obj, Object obj2) {
            return zza((byte[]) obj, (byte[]) obj2);
        }

        public final int zza(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    }

    public zzv(int i) {
        this.zzau = i;
    }

    private synchronized void zzt() {
        while (this.zzat > this.zzau) {
            byte[] bArr = (byte[]) this.zzar.remove(0);
            this.zzas.remove(bArr);
            this.zzat -= bArr.length;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void zza(byte[] r3) {
        /*
        r2 = this;
        monitor-enter(r2);
        if (r3 == 0) goto L_0x002e;
    L_0x0003:
        r0 = r3.length;	 Catch:{ all -> 0x002b }
        r1 = r2.zzau;	 Catch:{ all -> 0x002b }
        if (r0 <= r1) goto L_0x0009;
    L_0x0008:
        goto L_0x002e;
    L_0x0009:
        r0 = r2.zzar;	 Catch:{ all -> 0x002b }
        r0.add(r3);	 Catch:{ all -> 0x002b }
        r0 = r2.zzas;	 Catch:{ all -> 0x002b }
        r1 = zzav;	 Catch:{ all -> 0x002b }
        r0 = java.util.Collections.binarySearch(r0, r3, r1);	 Catch:{ all -> 0x002b }
        if (r0 >= 0) goto L_0x001b;
    L_0x0018:
        r0 = -r0;
        r0 = r0 + -1;
    L_0x001b:
        r1 = r2.zzas;	 Catch:{ all -> 0x002b }
        r1.add(r0, r3);	 Catch:{ all -> 0x002b }
        r0 = r2.zzat;	 Catch:{ all -> 0x002b }
        r3 = r3.length;	 Catch:{ all -> 0x002b }
        r0 = r0 + r3;
        r2.zzat = r0;	 Catch:{ all -> 0x002b }
        r2.zzt();	 Catch:{ all -> 0x002b }
        monitor-exit(r2);
        return;
    L_0x002b:
        r3 = move-exception;
        monitor-exit(r2);
        throw r3;
    L_0x002e:
        monitor-exit(r2);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzv.zza(byte[]):void");
    }

    public synchronized byte[] zzb(int i) {
        for (int i2 = 0; i2 < this.zzas.size(); i2++) {
            byte[] bArr = (byte[]) this.zzas.get(i2);
            if (bArr.length >= i) {
                this.zzat -= bArr.length;
                this.zzas.remove(i2);
                this.zzar.remove(bArr);
                return bArr;
            }
        }
        return new byte[i];
    }
}
