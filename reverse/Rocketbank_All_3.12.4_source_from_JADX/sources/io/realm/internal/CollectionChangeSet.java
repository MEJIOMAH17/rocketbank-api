package io.realm.internal;

import android.support.v4.content.Loader.OnLoadCompleteListener;

public class CollectionChangeSet implements OnLoadCompleteListener, NativeObject {
    private static long finalizerPtr = nativeGetFinalizerPtr();
    private final long nativePtr;

    private static native long nativeGetFinalizerPtr();

    private static native int[] nativeGetIndices(long j, int i);

    private static native int[] nativeGetRanges(long j, int i);

    public CollectionChangeSet(long j) {
        this.nativePtr = j;
        NativeContext.dummyContext.addReference(this);
    }

    public long getNativePtr() {
        return this.nativePtr;
    }

    public long getNativeFinalizerPtr() {
        return finalizerPtr;
    }
}
