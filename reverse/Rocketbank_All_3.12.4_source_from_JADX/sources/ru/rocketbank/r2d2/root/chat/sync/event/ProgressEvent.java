package ru.rocketbank.r2d2.root.chat.sync.event;

import kotlin.jvm.internal.Ref;

/* compiled from: ProgressEvent.kt */
public final class ProgressEvent extends MessageEvent {
    private final boolean loading;

    public final boolean getLoading() {
        return this.loading;
    }

    public /* synthetic */ ProgressEvent(boolean z, MessageEvent messageEvent, int i, Ref ref) {
        if ((i & 2) != 0) {
            messageEvent = null;
        }
        this(z, messageEvent);
    }

    public ProgressEvent(boolean z, MessageEvent messageEvent) {
        super(messageEvent);
        this.loading = z;
    }
}
