package io.realm.internal;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;

final class NativeObjectReference extends PhantomReference<NativeObject> {
    private static ReferencePool referencePool = new ReferencePool();
    private final NativeContext context;
    private final long nativeFinalizerPtr;
    private final long nativePtr;
    private NativeObjectReference next;
    private NativeObjectReference prev;

    static class ReferencePool {
        NativeObjectReference head;

        private ReferencePool() {
        }

        final synchronized void add(NativeObjectReference nativeObjectReference) {
            nativeObjectReference.prev = null;
            nativeObjectReference.next = this.head;
            if (this.head != null) {
                this.head.prev = nativeObjectReference;
            }
            this.head = nativeObjectReference;
        }

        final synchronized void remove(NativeObjectReference nativeObjectReference) {
            NativeObjectReference access$100 = nativeObjectReference.next;
            NativeObjectReference access$000 = nativeObjectReference.prev;
            nativeObjectReference.next = null;
            nativeObjectReference.prev = null;
            if (access$000 != null) {
                access$000.next = access$100;
            } else {
                this.head = access$100;
            }
            if (access$100 != null) {
                access$100.prev = access$000;
            }
        }
    }

    private static native void nativeCleanUp(long j, long j2);

    NativeObjectReference(NativeContext nativeContext, NativeObject nativeObject, ReferenceQueue<? super NativeObject> referenceQueue) {
        super(nativeObject, referenceQueue);
        this.nativePtr = nativeObject.getNativePtr();
        this.nativeFinalizerPtr = nativeObject.getNativeFinalizerPtr();
        this.context = nativeContext;
        referencePool.add(this);
    }

    final void cleanup() {
        synchronized (this.context) {
            nativeCleanUp(this.nativeFinalizerPtr, this.nativePtr);
        }
        referencePool.remove(this);
    }
}
