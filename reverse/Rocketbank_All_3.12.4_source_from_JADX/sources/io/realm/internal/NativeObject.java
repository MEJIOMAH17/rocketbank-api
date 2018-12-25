package io.realm.internal;

public interface NativeObject {
    long getNativeFinalizerPtr();

    long getNativePtr();
}
