package ru.rocketbank.r2d2.root.chat.sync.event;

import kotlin.jvm.internal.Ref;

/* compiled from: ReadEvent.kt */
public final class ReadEvent extends MessageEvent {
    private final long id;
    private final long time;

    public final long getId() {
        return this.id;
    }

    public final long getTime() {
        return this.time;
    }

    public /* synthetic */ ReadEvent(long j, long j2, MessageEvent messageEvent, int i, Ref ref) {
        if ((i & 4) != 0) {
            messageEvent = null;
        }
        this(j, j2, messageEvent);
    }

    public ReadEvent(long j, long j2, MessageEvent messageEvent) {
        super(messageEvent);
        this.id = j;
        this.time = j2;
    }
}
