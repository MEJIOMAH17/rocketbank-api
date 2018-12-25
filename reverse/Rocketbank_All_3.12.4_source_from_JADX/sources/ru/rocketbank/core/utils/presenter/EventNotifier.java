package ru.rocketbank.core.utils.presenter;

import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EventNotifier.kt */
public final class EventNotifier<T> {
    private WeakReference<Object<T>> requestHandler = new WeakReference(null);

    public final WeakReference<Object<T>> getRequestHandler() {
        return this.requestHandler;
    }

    public final void setRequestHandler(WeakReference<Object<T>> weakReference) {
        Intrinsics.checkParameterIsNotNull(weakReference, "<set-?>");
        this.requestHandler = weakReference;
    }
}
