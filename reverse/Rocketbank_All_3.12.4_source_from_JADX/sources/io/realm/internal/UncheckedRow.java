package io.realm.internal;

import io.realm.RealmFieldType;
import java.util.Date;

public class UncheckedRow implements NativeObject, Row {
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private final NativeContext context;
    private final long nativePtr;
    private final Table parent;

    private static native long nativeGetFinalizerPtr();

    protected native boolean nativeGetBoolean(long j, long j2);

    protected native byte[] nativeGetByteArray(long j, long j2);

    protected native long nativeGetColumnCount(long j);

    protected native long nativeGetColumnIndex(long j, String str);

    protected native String nativeGetColumnName(long j, long j2);

    protected native int nativeGetColumnType(long j, long j2);

    protected native double nativeGetDouble(long j, long j2);

    protected native float nativeGetFloat(long j, long j2);

    protected native long nativeGetIndex(long j);

    protected native long nativeGetLink(long j, long j2);

    protected native long nativeGetLinkView(long j, long j2);

    protected native long nativeGetLong(long j, long j2);

    protected native String nativeGetString(long j, long j2);

    protected native long nativeGetTimestamp(long j, long j2);

    protected native boolean nativeHasColumn(long j, String str);

    protected native boolean nativeIsAttached(long j);

    protected native boolean nativeIsNull(long j, long j2);

    protected native boolean nativeIsNullLink(long j, long j2);

    protected native void nativeNullifyLink(long j, long j2);

    protected native void nativeSetBoolean(long j, long j2, boolean z);

    protected native void nativeSetByteArray(long j, long j2, byte[] bArr);

    protected native void nativeSetDouble(long j, long j2, double d);

    protected native void nativeSetFloat(long j, long j2, float f);

    protected native void nativeSetLink(long j, long j2, long j3);

    protected native void nativeSetLong(long j, long j2, long j3);

    protected native void nativeSetNull(long j, long j2);

    protected native void nativeSetString(long j, long j2, String str);

    protected native void nativeSetTimestamp(long j, long j2, long j3);

    UncheckedRow(NativeContext nativeContext, Table table, long j) {
        this.context = nativeContext;
        this.parent = table;
        this.nativePtr = j;
        nativeContext.addReference(this);
    }

    public long getNativePtr() {
        return this.nativePtr;
    }

    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    static UncheckedRow getByRowIndex(NativeContext nativeContext, Table table, long j) {
        return new UncheckedRow(nativeContext, table, table.nativeGetRowPtr(table.getNativePtr(), j));
    }

    static UncheckedRow getByRowPointer(NativeContext nativeContext, Table table, long j) {
        return new UncheckedRow(nativeContext, table, j);
    }

    public long getColumnCount() {
        return nativeGetColumnCount(this.nativePtr);
    }

    public String getColumnName(long j) {
        return nativeGetColumnName(this.nativePtr, j);
    }

    public long getColumnIndex(String str) {
        if (str != null) {
            return nativeGetColumnIndex(this.nativePtr, str);
        }
        throw new IllegalArgumentException("Column name can not be null.");
    }

    public RealmFieldType getColumnType(long j) {
        return RealmFieldType.fromNativeValue(nativeGetColumnType(this.nativePtr, j));
    }

    public Table getTable() {
        return this.parent;
    }

    public long getIndex() {
        return nativeGetIndex(this.nativePtr);
    }

    public long getLong(long j) {
        return nativeGetLong(this.nativePtr, j);
    }

    public boolean getBoolean(long j) {
        return nativeGetBoolean(this.nativePtr, j);
    }

    public float getFloat(long j) {
        return nativeGetFloat(this.nativePtr, j);
    }

    public double getDouble(long j) {
        return nativeGetDouble(this.nativePtr, j);
    }

    public Date getDate(long j) {
        return new Date(nativeGetTimestamp(this.nativePtr, j));
    }

    public String getString(long j) {
        return nativeGetString(this.nativePtr, j);
    }

    public byte[] getBinaryByteArray(long j) {
        return nativeGetByteArray(this.nativePtr, j);
    }

    public long getLink(long j) {
        return nativeGetLink(this.nativePtr, j);
    }

    public boolean isNullLink(long j) {
        return nativeIsNullLink(this.nativePtr, j);
    }

    public LinkView getLinkList(long j) {
        return new LinkView(this.context, this.parent, j, nativeGetLinkView(this.nativePtr, j));
    }

    public void setLong(long j, long j2) {
        this.parent.checkImmutable();
        getTable().checkIntValueIsLegal(j, getIndex(), j2);
        nativeSetLong(this.nativePtr, j, j2);
    }

    public void setBoolean(long j, boolean z) {
        this.parent.checkImmutable();
        nativeSetBoolean(this.nativePtr, j, z);
    }

    public void setFloat(long j, float f) {
        this.parent.checkImmutable();
        nativeSetFloat(this.nativePtr, j, f);
    }

    public void setDouble(long j, double d) {
        this.parent.checkImmutable();
        nativeSetDouble(this.nativePtr, j, d);
    }

    public void setString(long j, String str) {
        this.parent.checkImmutable();
        if (str == null) {
            getTable().checkDuplicatedNullForPrimaryKeyValue(j, getIndex());
            nativeSetNull(this.nativePtr, j);
            return;
        }
        String str2 = str;
        getTable().checkStringValueIsLegal(j, getIndex(), str2);
        nativeSetString(this.nativePtr, j, str2);
    }

    public void setBinaryByteArray(long j, byte[] bArr) {
        this.parent.checkImmutable();
        nativeSetByteArray(this.nativePtr, j, bArr);
    }

    public void setLink(long j, long j2) {
        this.parent.checkImmutable();
        nativeSetLink(this.nativePtr, j, j2);
    }

    public void nullifyLink(long j) {
        this.parent.checkImmutable();
        nativeNullifyLink(this.nativePtr, j);
    }

    public boolean isNull(long j) {
        return nativeIsNull(this.nativePtr, j);
    }

    public void setNull(long j) {
        this.parent.checkImmutable();
        getTable().checkDuplicatedNullForPrimaryKeyValue(j, getIndex());
        nativeSetNull(this.nativePtr, j);
    }

    public boolean isAttached() {
        return this.nativePtr != 0 && nativeIsAttached(this.nativePtr);
    }
}
