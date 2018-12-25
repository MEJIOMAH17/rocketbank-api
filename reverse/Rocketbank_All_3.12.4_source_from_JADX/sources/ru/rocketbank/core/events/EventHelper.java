package ru.rocketbank.core.events;

import de.greenrobot.event.EventBus;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EventHelper.kt */
public final class EventHelper {
    public static final EventHelper INSTANCE = new EventHelper();
    private static final EventBus eventBus = EventBus.getDefault();

    /* compiled from: EventHelper.kt */
    public interface IEvent {
    }

    private EventHelper() {
    }

    public static void send(IEvent iEvent) {
        Intrinsics.checkParameterIsNotNull(iEvent, "iEvent");
        eventBus.post(iEvent);
    }
}
