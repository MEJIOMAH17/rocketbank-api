package com.google.android.gms.common.data;

import android.content.ContentValues;
import android.database.CharArrayBuffer;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzc;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

@KeepName
public final class DataHolder extends com.google.android.gms.common.internal.safeparcel.zza implements Closeable {
    public static final Creator<DataHolder> CREATOR = new zze();
    private static final zza zzaDW = new C11591(new String[0], null);
    boolean mClosed;
    private final String[] zzaDP;
    Bundle zzaDQ;
    private final CursorWindow[] zzaDR;
    private final Bundle zzaDS;
    int[] zzaDT;
    int zzaDU;
    private boolean zzaDV;
    final int zzaiI;
    private final int zzavD;

    public static class zza {
        private final String[] zzaDP;
        private final ArrayList<HashMap<String, Object>> zzaDX;
        private final String zzaDY;
        private final HashMap<Object, Integer> zzaDZ;
        private boolean zzaEa;
        private String zzaEb;

        private zza(String[] strArr, String str) {
            this.zzaDP = (String[]) zzac.zzw(strArr);
            this.zzaDX = new ArrayList();
            this.zzaDY = str;
            this.zzaDZ = new HashMap();
            this.zzaEa = false;
            this.zzaEb = null;
        }

        private int zzb(HashMap<String, Object> hashMap) {
            if (this.zzaDY == null) {
                return -1;
            }
            Object obj = hashMap.get(this.zzaDY);
            if (obj == null) {
                return -1;
            }
            Integer num = (Integer) this.zzaDZ.get(obj);
            if (num != null) {
                return num.intValue();
            }
            this.zzaDZ.put(obj, Integer.valueOf(this.zzaDX.size()));
            return -1;
        }

        public zza zza(ContentValues contentValues) {
            zzc.zzt(contentValues);
            HashMap hashMap = new HashMap(contentValues.size());
            for (Entry entry : contentValues.valueSet()) {
                hashMap.put((String) entry.getKey(), entry.getValue());
            }
            return zza(hashMap);
        }

        public zza zza(HashMap<String, Object> hashMap) {
            zzc.zzt(hashMap);
            int zzb = zzb((HashMap) hashMap);
            if (zzb == -1) {
                this.zzaDX.add(hashMap);
            } else {
                this.zzaDX.remove(zzb);
                this.zzaDX.add(zzb, hashMap);
            }
            this.zzaEa = false;
            return this;
        }

        public DataHolder zzcK(int i) {
            return new DataHolder(this, i, null);
        }
    }

    public static class zzb extends RuntimeException {
        public zzb(String str) {
            super(str);
        }
    }

    /* renamed from: com.google.android.gms.common.data.DataHolder$1 */
    class C11591 extends zza {
        C11591(String[] strArr, String str) {
            super(strArr, str);
        }

        public final zza zza(ContentValues contentValues) {
            throw new UnsupportedOperationException("Cannot add data to empty builder");
        }

        public final zza zza(HashMap<String, Object> hashMap) {
            throw new UnsupportedOperationException("Cannot add data to empty builder");
        }
    }

    DataHolder(int i, String[] strArr, CursorWindow[] cursorWindowArr, int i2, Bundle bundle) {
        this.mClosed = false;
        this.zzaDV = true;
        this.zzaiI = i;
        this.zzaDP = strArr;
        this.zzaDR = cursorWindowArr;
        this.zzavD = i2;
        this.zzaDS = bundle;
    }

    private DataHolder(zza zza, int i, Bundle bundle) {
        this(zza.zzaDP, zza(zza, -1), i, bundle);
    }

    public DataHolder(String[] strArr, CursorWindow[] cursorWindowArr, int i, Bundle bundle) {
        this.mClosed = false;
        this.zzaDV = true;
        this.zzaiI = 1;
        this.zzaDP = (String[]) zzac.zzw(strArr);
        this.zzaDR = (CursorWindow[]) zzac.zzw(cursorWindowArr);
        this.zzavD = i;
        this.zzaDS = bundle;
        zzxk();
    }

    public static DataHolder zza(int i, Bundle bundle) {
        return new DataHolder(zzaDW, i, bundle);
    }

    private static CursorWindow[] zza(zza zza, int i) {
        int i2 = 0;
        if (zza.zzaDP.length == 0) {
            return new CursorWindow[0];
        }
        List subList;
        int size;
        CursorWindow cursorWindow;
        ArrayList arrayList;
        int i3;
        CursorWindow cursorWindow2;
        int i4;
        Map map;
        boolean z;
        int i5;
        String str;
        Object obj;
        long longValue;
        if (i >= 0) {
            if (i < zza.zzaDX.size()) {
                subList = zza.zzaDX.subList(0, i);
                size = subList.size();
                cursorWindow = new CursorWindow(false);
                arrayList = new ArrayList();
                arrayList.add(cursorWindow);
                cursorWindow.setNumColumns(zza.zzaDP.length);
                i3 = 0;
                cursorWindow2 = cursorWindow;
                i4 = i3;
                while (i4 < size) {
                    try {
                        if (!cursorWindow2.allocRow()) {
                            StringBuilder stringBuilder = new StringBuilder(72);
                            stringBuilder.append("Allocating additional cursor window for large data set (row ");
                            stringBuilder.append(i4);
                            stringBuilder.append(")");
                            Log.d("DataHolder", stringBuilder.toString());
                            cursorWindow2 = new CursorWindow(false);
                            cursorWindow2.setStartPosition(i4);
                            cursorWindow2.setNumColumns(zza.zzaDP.length);
                            arrayList.add(cursorWindow2);
                            if (!cursorWindow2.allocRow()) {
                                Log.e("DataHolder", "Unable to allocate row to hold data.");
                                arrayList.remove(cursorWindow2);
                                return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
                            }
                        }
                        map = (Map) subList.get(i4);
                        z = true;
                        for (i5 = 0; i5 < zza.zzaDP.length && z; i5++) {
                            str = zza.zzaDP[i5];
                            obj = map.get(str);
                            if (obj == null) {
                                z = cursorWindow2.putNull(i4, i5);
                            } else if (obj instanceof String) {
                                if (obj instanceof Long) {
                                    longValue = ((Long) obj).longValue();
                                } else if (obj instanceof Integer) {
                                    z = cursorWindow2.putLong((long) ((Integer) obj).intValue(), i4, i5);
                                } else if (obj instanceof Boolean) {
                                    longValue = ((Boolean) obj).booleanValue() ? 1 : 0;
                                } else if (obj instanceof byte[]) {
                                    z = cursorWindow2.putBlob((byte[]) obj, i4, i5);
                                } else if (obj instanceof Double) {
                                    z = cursorWindow2.putDouble(((Double) obj).doubleValue(), i4, i5);
                                } else if (obj instanceof Float) {
                                    String valueOf = String.valueOf(obj);
                                    StringBuilder stringBuilder2 = new StringBuilder((32 + String.valueOf(str).length()) + String.valueOf(valueOf).length());
                                    stringBuilder2.append("Unsupported object for column ");
                                    stringBuilder2.append(str);
                                    stringBuilder2.append(": ");
                                    stringBuilder2.append(valueOf);
                                    throw new IllegalArgumentException(stringBuilder2.toString());
                                } else {
                                    z = cursorWindow2.putDouble((double) ((Float) obj).floatValue(), i4, i5);
                                }
                                z = cursorWindow2.putLong(longValue, i4, i5);
                            } else {
                                z = cursorWindow2.putString((String) obj, i4, i5);
                            }
                        }
                        if (!z) {
                            i3 = 0;
                        } else if (i3 == 0) {
                            throw new zzb("Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle.");
                        } else {
                            StringBuilder stringBuilder3 = new StringBuilder(74);
                            stringBuilder3.append("Couldn't populate window data for row ");
                            stringBuilder3.append(i4);
                            stringBuilder3.append(" - allocating new window.");
                            Log.d("DataHolder", stringBuilder3.toString());
                            cursorWindow2.freeLastRow();
                            cursorWindow2 = new CursorWindow(false);
                            cursorWindow2.setStartPosition(i4);
                            cursorWindow2.setNumColumns(zza.zzaDP.length);
                            arrayList.add(cursorWindow2);
                            i4--;
                            i3 = 1;
                        }
                        i4++;
                    } catch (RuntimeException e) {
                        i = arrayList.size();
                        while (i2 < i) {
                            ((CursorWindow) arrayList.get(i2)).close();
                            i2++;
                        }
                        throw e;
                    }
                }
                return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
            }
        }
        subList = zza.zzaDX;
        size = subList.size();
        cursorWindow = new CursorWindow(false);
        arrayList = new ArrayList();
        arrayList.add(cursorWindow);
        cursorWindow.setNumColumns(zza.zzaDP.length);
        i3 = 0;
        cursorWindow2 = cursorWindow;
        i4 = i3;
        while (i4 < size) {
            if (cursorWindow2.allocRow()) {
                StringBuilder stringBuilder4 = new StringBuilder(72);
                stringBuilder4.append("Allocating additional cursor window for large data set (row ");
                stringBuilder4.append(i4);
                stringBuilder4.append(")");
                Log.d("DataHolder", stringBuilder4.toString());
                cursorWindow2 = new CursorWindow(false);
                cursorWindow2.setStartPosition(i4);
                cursorWindow2.setNumColumns(zza.zzaDP.length);
                arrayList.add(cursorWindow2);
                if (cursorWindow2.allocRow()) {
                    Log.e("DataHolder", "Unable to allocate row to hold data.");
                    arrayList.remove(cursorWindow2);
                    return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
                }
            }
            map = (Map) subList.get(i4);
            z = true;
            for (i5 = 0; i5 < zza.zzaDP.length; i5++) {
                str = zza.zzaDP[i5];
                obj = map.get(str);
                if (obj == null) {
                    z = cursorWindow2.putNull(i4, i5);
                } else if (obj instanceof String) {
                    if (obj instanceof Long) {
                        longValue = ((Long) obj).longValue();
                    } else if (obj instanceof Integer) {
                        z = cursorWindow2.putLong((long) ((Integer) obj).intValue(), i4, i5);
                    } else if (obj instanceof Boolean) {
                        if (((Boolean) obj).booleanValue()) {
                        }
                    } else if (obj instanceof byte[]) {
                        z = cursorWindow2.putBlob((byte[]) obj, i4, i5);
                    } else if (obj instanceof Double) {
                        z = cursorWindow2.putDouble(((Double) obj).doubleValue(), i4, i5);
                    } else if (obj instanceof Float) {
                        String valueOf2 = String.valueOf(obj);
                        StringBuilder stringBuilder22 = new StringBuilder((32 + String.valueOf(str).length()) + String.valueOf(valueOf2).length());
                        stringBuilder22.append("Unsupported object for column ");
                        stringBuilder22.append(str);
                        stringBuilder22.append(": ");
                        stringBuilder22.append(valueOf2);
                        throw new IllegalArgumentException(stringBuilder22.toString());
                    } else {
                        z = cursorWindow2.putDouble((double) ((Float) obj).floatValue(), i4, i5);
                    }
                    z = cursorWindow2.putLong(longValue, i4, i5);
                } else {
                    z = cursorWindow2.putString((String) obj, i4, i5);
                }
            }
            if (!z) {
                i3 = 0;
            } else if (i3 == 0) {
                StringBuilder stringBuilder32 = new StringBuilder(74);
                stringBuilder32.append("Couldn't populate window data for row ");
                stringBuilder32.append(i4);
                stringBuilder32.append(" - allocating new window.");
                Log.d("DataHolder", stringBuilder32.toString());
                cursorWindow2.freeLastRow();
                cursorWindow2 = new CursorWindow(false);
                cursorWindow2.setStartPosition(i4);
                cursorWindow2.setNumColumns(zza.zzaDP.length);
                arrayList.add(cursorWindow2);
                i4--;
                i3 = 1;
            } else {
                throw new zzb("Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle.");
            }
            i4++;
        }
        return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
    }

    public static zza zzc(String[] strArr) {
        return new zza(strArr, null);
    }

    public static DataHolder zzcJ(int i) {
        return zza(i, null);
    }

    private void zzi(String str, int i) {
        if (this.zzaDQ != null) {
            if (this.zzaDQ.containsKey(str)) {
                if (isClosed()) {
                    throw new IllegalArgumentException("Buffer is closed.");
                }
                if (i >= 0) {
                    if (i < this.zzaDU) {
                        return;
                    }
                }
                throw new CursorIndexOutOfBoundsException(i, this.zzaDU);
            }
        }
        String str2 = "No such column: ";
        str = String.valueOf(str);
        throw new IllegalArgumentException(str.length() != 0 ? str2.concat(str) : new String(str2));
    }

    public final void close() {
        synchronized (this) {
            if (!this.mClosed) {
                this.mClosed = true;
                for (CursorWindow close : this.zzaDR) {
                    close.close();
                }
            }
        }
    }

    protected final void finalize() throws Throwable {
        try {
            if (this.zzaDV && this.zzaDR.length > 0 && !isClosed()) {
                close();
                String valueOf = String.valueOf(toString());
                StringBuilder stringBuilder = new StringBuilder(178 + String.valueOf(valueOf).length());
                stringBuilder.append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ");
                stringBuilder.append(valueOf);
                stringBuilder.append(")");
                Log.e("DataBuffer", stringBuilder.toString());
            }
            super.finalize();
        } catch (Throwable th) {
            super.finalize();
        }
    }

    public final int getCount() {
        return this.zzaDU;
    }

    public final int getStatusCode() {
        return this.zzavD;
    }

    public final boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.mClosed;
        }
        return z;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }

    public final void zza(String str, int i, int i2, CharArrayBuffer charArrayBuffer) {
        zzi(str, i);
        this.zzaDR[i2].copyStringToBuffer(i, this.zzaDQ.getInt(str), charArrayBuffer);
    }

    public final long zzb(String str, int i, int i2) {
        zzi(str, i);
        return this.zzaDR[i2].getLong(i, this.zzaDQ.getInt(str));
    }

    public final int zzc(String str, int i, int i2) {
        zzi(str, i);
        return this.zzaDR[i2].getInt(i, this.zzaDQ.getInt(str));
    }

    public final int zzcI(int i) {
        int i2 = 0;
        boolean z = i >= 0 && i < this.zzaDU;
        zzac.zzav(z);
        while (i2 < this.zzaDT.length) {
            if (i < this.zzaDT[i2]) {
                i2--;
                break;
            }
            i2++;
        }
        return i2 == this.zzaDT.length ? i2 - 1 : i2;
    }

    public final String zzd(String str, int i, int i2) {
        zzi(str, i);
        return this.zzaDR[i2].getString(i, this.zzaDQ.getInt(str));
    }

    public final boolean zzdf(String str) {
        return this.zzaDQ.containsKey(str);
    }

    public final boolean zze(String str, int i, int i2) {
        zzi(str, i);
        return this.zzaDR[i2].getLong(i, this.zzaDQ.getInt(str)) == 1;
    }

    public final float zzf(String str, int i, int i2) {
        zzi(str, i);
        return this.zzaDR[i2].getFloat(i, this.zzaDQ.getInt(str));
    }

    public final byte[] zzg(String str, int i, int i2) {
        zzi(str, i);
        return this.zzaDR[i2].getBlob(i, this.zzaDQ.getInt(str));
    }

    public final Uri zzh(String str, int i, int i2) {
        str = zzd(str, i, i2);
        return str == null ? null : Uri.parse(str);
    }

    public final boolean zzi(String str, int i, int i2) {
        zzi(str, i);
        return this.zzaDR[i2].isNull(i, this.zzaDQ.getInt(str));
    }

    public final Bundle zzxf() {
        return this.zzaDS;
    }

    public final void zzxk() {
        int i;
        this.zzaDQ = new Bundle();
        int i2 = 0;
        for (i = 0; i < this.zzaDP.length; i++) {
            this.zzaDQ.putInt(this.zzaDP[i], i);
        }
        this.zzaDT = new int[this.zzaDR.length];
        i = 0;
        while (i2 < this.zzaDR.length) {
            this.zzaDT[i2] = i;
            i += this.zzaDR[i2].getNumRows() - (i - this.zzaDR[i2].getStartPosition());
            i2++;
        }
        this.zzaDU = i;
    }

    final String[] zzxl() {
        return this.zzaDP;
    }

    final CursorWindow[] zzxm() {
        return this.zzaDR;
    }
}
