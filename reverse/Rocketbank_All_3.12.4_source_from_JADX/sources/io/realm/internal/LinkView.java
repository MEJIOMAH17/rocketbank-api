package io.realm.internal;

public class LinkView implements NativeObject {
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    final long columnIndexInParent;
    private final NativeContext context;
    private final long nativePtr;
    final Table parent;

    public static native void nativeAdd(long j, long j2);

    public static native void nativeClear(long j);

    private native long nativeFind(long j, long j2);

    private static native long nativeGetFinalizerPtr();

    private native long nativeGetTargetRowIndex(long j, long j2);

    private native long nativeGetTargetTable(long j);

    private native void nativeInsert(long j, long j2, long j3);

    private native boolean nativeIsAttached(long j);

    private native boolean nativeIsEmpty(long j);

    private native void nativeMove(long j, long j2, long j3);

    private native void nativeRemove(long j, long j2);

    private native void nativeRemoveAllTargetRows(long j);

    private native void nativeRemoveTargetRow(long j, long j2);

    private native void nativeSet(long j, long j2, long j3);

    private native long nativeSize(long j);

    native long nativeGetRow(long j, long j2);

    protected native long nativeWhere(long j);

    public LinkView(NativeContext nativeContext, Table table, long j, long j2) {
        this.context = nativeContext;
        this.parent = table;
        this.columnIndexInParent = j;
        this.nativePtr = j2;
        nativeContext.addReference(this);
    }

    public long getNativePtr() {
        return this.nativePtr;
    }

    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    public final long getTargetRowIndex(long j) {
        return nativeGetTargetRowIndex(this.nativePtr, j);
    }

    public final long size() {
        return nativeSize(this.nativePtr);
    }

    public final boolean isAttached() {
        return nativeIsAttached(this.nativePtr);
    }

    public final Table getTargetTable() {
        return new Table(this.parent, nativeGetTargetTable(this.nativePtr));
    }

    public final void add(long j) {
        if (this.parent.isImmutable()) {
            throw new IllegalStateException("Changing Realm data can only be done from inside a write transaction.");
        }
        nativeAdd(this.nativePtr, j);
    }

    public final void insert(long j, long j2) {
        if (this.parent.isImmutable()) {
            throw new IllegalStateException("Changing Realm data can only be done from inside a write transaction.");
        }
        nativeInsert(this.nativePtr, j, j2);
    }

    public final void set(long j, long j2) {
        if (this.parent.isImmutable()) {
            throw new IllegalStateException("Changing Realm data can only be done from inside a write transaction.");
        }
        nativeSet(this.nativePtr, j, j2);
    }

    public final void remove(long j) {
        if (this.parent.isImmutable()) {
            throw new IllegalStateException("Changing Realm data can only be done from inside a write transaction.");
        }
        nativeRemove(this.nativePtr, j);
    }

    public final void clear() {
        if (this.parent.isImmutable()) {
            throw new IllegalStateException("Changing Realm data can only be done from inside a write transaction.");
        }
        nativeClear(this.nativePtr);
    }
}
