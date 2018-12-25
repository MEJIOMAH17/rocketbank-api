package de.greenrobot.event;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class EventBusBuilder {
    private static final ExecutorService DEFAULT_EXECUTOR_SERVICE = Executors.newCachedThreadPool();
    boolean eventInheritance = true;
    ExecutorService executorService = DEFAULT_EXECUTOR_SERVICE;
    boolean logNoSubscriberMessages = true;
    boolean logSubscriberExceptions = true;
    boolean sendNoSubscriberEvent = true;
    boolean sendSubscriberExceptionEvent = true;

    EventBusBuilder() {
    }
}
