package ru.rocketbank.core.events;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.PlasticsCheckResponse;

/* compiled from: CheckCardEvent.kt */
public final class CheckCardEvent {
    private final Throwable exception;
    private final PlasticsCheckResponse plasticsCheckResponse;
    private View view;

    public final View getView() {
        return this.view;
    }

    public final Throwable getException() {
        return this.exception;
    }

    public final PlasticsCheckResponse getPlasticsCheckResponse() {
        return this.plasticsCheckResponse;
    }

    public CheckCardEvent(PlasticsCheckResponse plasticsCheckResponse, View view) {
        Intrinsics.checkParameterIsNotNull(plasticsCheckResponse, "plasticsCheckResponse");
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.plasticsCheckResponse = plasticsCheckResponse;
        this.view = view;
        this.exception = null;
    }

    public CheckCardEvent(Throwable th, View view) {
        Intrinsics.checkParameterIsNotNull(th, "exception");
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.plasticsCheckResponse = null;
        this.exception = th;
        this.view = view;
    }
}
