package de.greenrobot.event;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;

final class HandlerPoster extends Handler {
    private final EventBus eventBus;
    private boolean handlerActive;
    private final int maxMillisInsideHandleMessage = 10;
    private final PendingPostQueue queue = new PendingPostQueue();

    HandlerPoster(EventBus eventBus, Looper looper) {
        super(looper);
        this.eventBus = eventBus;
    }

    final void enqueue(Subscription subscription, Object obj) {
        subscription = PendingPost.obtainPendingPost(subscription, obj);
        synchronized (this) {
            this.queue.enqueue(subscription);
            if (this.handlerActive == null) {
                this.handlerActive = true;
                if (sendMessage(obtainMessage()) == null) {
                    throw new EventBusException("Could not send handler message");
                }
            }
        }
    }

    public final void handleMessage(Message message) {
        try {
            long uptimeMillis = SystemClock.uptimeMillis();
            do {
                PendingPost poll = this.queue.poll();
                if (poll == null) {
                    synchronized (this) {
                        poll = this.queue.poll();
                        if (poll == null) {
                            this.handlerActive = false;
                            this.handlerActive = false;
                            return;
                        }
                    }
                }
                this.eventBus.invokeSubscriber(poll);
            } while (SystemClock.uptimeMillis() - uptimeMillis < 10);
            if (sendMessage(obtainMessage())) {
                this.handlerActive = true;
                return;
            }
            throw new EventBusException("Could not send handler message");
        } catch (Throwable th) {
            this.handlerActive = false;
        }
    }
}
