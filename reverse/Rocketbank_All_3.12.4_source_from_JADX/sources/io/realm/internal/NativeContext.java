package io.realm.internal;

import java.lang.ref.ReferenceQueue;

public final class NativeContext {
    static final NativeContext dummyContext = new NativeContext();
    private static final Thread finalizingThread = new Thread(new FinalizerRunnable(referenceQueue));
    private static final ReferenceQueue<NativeObject> referenceQueue = new ReferenceQueue();

    static {
        finalizingThread.setName("RealmFinalizingDaemon");
        finalizingThread.start();
    }

    final void addReference(NativeObject nativeObject) {
        NativeObjectReference nativeObjectReference = new NativeObjectReference(this, nativeObject, referenceQueue);
    }
}
