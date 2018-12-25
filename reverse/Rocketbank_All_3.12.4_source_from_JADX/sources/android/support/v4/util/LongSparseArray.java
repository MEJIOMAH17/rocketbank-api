package android.support.v4.util;

public class LongSparseArray<E> implements Cloneable {
    private static final Object DELETED = new Object();
    private boolean mGarbage;
    private long[] mKeys;
    private int mSize;
    private Object[] mValues;

    public LongSparseArray() {
        this((byte) 0);
    }

    private LongSparseArray(byte b) {
        this.mGarbage = false;
        int idealLongArraySize = ContainerHelpers.idealLongArraySize(10);
        this.mKeys = new long[idealLongArraySize];
        this.mValues = new Object[idealLongArraySize];
        this.mSize = 0;
    }

    private android.support.v4.util.LongSparseArray<E> clone() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r2 = this;
        r0 = super.clone();	 Catch:{ CloneNotSupportedException -> 0x001b }
        r0 = (android.support.v4.util.LongSparseArray) r0;	 Catch:{ CloneNotSupportedException -> 0x001b }
        r1 = r2.mKeys;	 Catch:{ CloneNotSupportedException -> 0x001c }
        r1 = r1.clone();	 Catch:{ CloneNotSupportedException -> 0x001c }
        r1 = (long[]) r1;	 Catch:{ CloneNotSupportedException -> 0x001c }
        r0.mKeys = r1;	 Catch:{ CloneNotSupportedException -> 0x001c }
        r1 = r2.mValues;	 Catch:{ CloneNotSupportedException -> 0x001c }
        r1 = r1.clone();	 Catch:{ CloneNotSupportedException -> 0x001c }
        r1 = (java.lang.Object[]) r1;	 Catch:{ CloneNotSupportedException -> 0x001c }
        r0.mValues = r1;	 Catch:{ CloneNotSupportedException -> 0x001c }
        goto L_0x001c;
    L_0x001b:
        r0 = 0;
    L_0x001c:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.util.LongSparseArray.clone():android.support.v4.util.LongSparseArray<E>");
    }

    public final void delete(long j) {
        j = ContainerHelpers.binarySearch(this.mKeys, this.mSize, j);
        if (j >= null && this.mValues[j] != DELETED) {
            this.mValues[j] = DELETED;
            this.mGarbage = 1;
        }
    }

    public final void removeAt(int i) {
        if (this.mValues[i] != DELETED) {
            this.mValues[i] = DELETED;
            this.mGarbage = true;
        }
    }

    private void gc() {
        int i = this.mSize;
        long[] jArr = this.mKeys;
        Object[] objArr = this.mValues;
        int i2 = 0;
        int i3 = i2;
        while (i2 < i) {
            Object obj = objArr[i2];
            if (obj != DELETED) {
                if (i2 != i3) {
                    jArr[i3] = jArr[i2];
                    objArr[i3] = obj;
                    objArr[i2] = null;
                }
                i3++;
            }
            i2++;
        }
        this.mGarbage = false;
        this.mSize = i3;
    }

    public final void put(long j, E e) {
        int binarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, j);
        if (binarySearch >= 0) {
            this.mValues[binarySearch] = e;
            return;
        }
        binarySearch ^= -1;
        if (binarySearch >= this.mSize || this.mValues[binarySearch] != DELETED) {
            Object obj;
            if (this.mGarbage && this.mSize >= this.mKeys.length) {
                gc();
                binarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, j) ^ -1;
            }
            if (this.mSize >= this.mKeys.length) {
                int idealLongArraySize = ContainerHelpers.idealLongArraySize(this.mSize + 1);
                Object obj2 = new long[idealLongArraySize];
                obj = new Object[idealLongArraySize];
                System.arraycopy(this.mKeys, 0, obj2, 0, this.mKeys.length);
                System.arraycopy(this.mValues, 0, obj, 0, this.mValues.length);
                this.mKeys = obj2;
                this.mValues = obj;
            }
            if (this.mSize - binarySearch != 0) {
                obj = this.mKeys;
                int i = binarySearch + 1;
                System.arraycopy(obj, binarySearch, obj, i, this.mSize - binarySearch);
                obj = this.mValues;
                System.arraycopy(obj, binarySearch, obj, i, this.mSize - binarySearch);
            }
            this.mKeys[binarySearch] = j;
            this.mValues[binarySearch] = e;
            this.mSize++;
            return;
        }
        this.mKeys[binarySearch] = j;
        this.mValues[binarySearch] = e;
    }

    public final int size() {
        if (this.mGarbage) {
            gc();
        }
        return this.mSize;
    }

    public final long keyAt(int i) {
        if (this.mGarbage) {
            gc();
        }
        return this.mKeys[i];
    }

    public final E valueAt(int i) {
        if (this.mGarbage) {
            gc();
        }
        return this.mValues[i];
    }

    public final int indexOfKey(long j) {
        if (this.mGarbage) {
            gc();
        }
        return ContainerHelpers.binarySearch(this.mKeys, this.mSize, j);
    }

    public final void clear() {
        int i = this.mSize;
        Object[] objArr = this.mValues;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.mSize = 0;
        this.mGarbage = false;
    }

    public final E get(long j) {
        j = ContainerHelpers.binarySearch(this.mKeys, this.mSize, j);
        if (j >= null) {
            if (this.mValues[j] != DELETED) {
                return this.mValues[j];
            }
        }
        return null;
    }

    public String toString() {
        if (this.mGarbage) {
            gc();
        }
        if (this.mSize <= 0) {
            return "{}";
        }
        StringBuilder stringBuilder = new StringBuilder(this.mSize * 28);
        stringBuilder.append('{');
        for (int i = 0; i < this.mSize; i++) {
            if (i > 0) {
                stringBuilder.append(", ");
            }
            stringBuilder.append(keyAt(i));
            stringBuilder.append('=');
            LongSparseArray valueAt = valueAt(i);
            if (valueAt != this) {
                stringBuilder.append(valueAt);
            } else {
                stringBuilder.append("(this Map)");
            }
        }
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}
