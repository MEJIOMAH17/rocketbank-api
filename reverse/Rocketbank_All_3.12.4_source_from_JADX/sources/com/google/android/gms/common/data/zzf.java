package com.google.android.gms.common.data;

import java.util.ArrayList;

public abstract class zzf<T> extends AbstractDataBuffer<T> {
    private boolean zzaEc = false;
    private ArrayList<Integer> zzaEd;

    protected zzf(DataHolder dataHolder) {
        super(dataHolder);
    }

    private void zzxo() {
        synchronized (this) {
            if (!this.zzaEc) {
                int count = this.zzaBi.getCount();
                this.zzaEd = new ArrayList();
                if (count > 0) {
                    this.zzaEd.add(Integer.valueOf(0));
                    String zzxn = zzxn();
                    Object zzd = this.zzaBi.zzd(zzxn, 0, this.zzaBi.zzcI(0));
                    for (int i = 1; i < count; i++) {
                        int zzcI = this.zzaBi.zzcI(i);
                        String zzd2 = this.zzaBi.zzd(zzxn, i, zzcI);
                        if (zzd2 == null) {
                            StringBuilder stringBuilder = new StringBuilder(78 + String.valueOf(zzxn).length());
                            stringBuilder.append("Missing value for markerColumn: ");
                            stringBuilder.append(zzxn);
                            stringBuilder.append(", at row: ");
                            stringBuilder.append(i);
                            stringBuilder.append(", for window: ");
                            stringBuilder.append(zzcI);
                            throw new NullPointerException(stringBuilder.toString());
                        }
                        if (!zzd2.equals(zzd)) {
                            this.zzaEd.add(Integer.valueOf(i));
                            zzd = zzd2;
                        }
                    }
                }
                this.zzaEc = true;
            }
        }
    }

    public final T get(int i) {
        zzxo();
        return zzo(zzcM(i), zzcN(i));
    }

    public int getCount() {
        zzxo();
        return this.zzaEd.size();
    }

    int zzcM(int i) {
        if (i >= 0) {
            if (i < this.zzaEd.size()) {
                return ((Integer) this.zzaEd.get(i)).intValue();
            }
        }
        StringBuilder stringBuilder = new StringBuilder(53);
        stringBuilder.append("Position ");
        stringBuilder.append(i);
        stringBuilder.append(" is out of bounds for this buffer");
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    protected int zzcN(int i) {
        if (i < 0 || i == this.zzaEd.size()) {
            return 0;
        }
        int count = (i == this.zzaEd.size() - 1 ? this.zzaBi.getCount() : ((Integer) this.zzaEd.get(i + 1)).intValue()) - ((Integer) this.zzaEd.get(i)).intValue();
        if (count == 1) {
            i = zzcM(i);
            int zzcI = this.zzaBi.zzcI(i);
            String zzxp = zzxp();
            return (zzxp == null || this.zzaBi.zzd(zzxp, i, zzcI) != null) ? count : 0;
        }
    }

    protected abstract T zzo(int i, int i2);

    protected abstract String zzxn();

    protected String zzxp() {
        return null;
    }
}
