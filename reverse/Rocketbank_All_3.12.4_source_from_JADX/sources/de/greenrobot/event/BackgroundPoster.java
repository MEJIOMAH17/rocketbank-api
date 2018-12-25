package de.greenrobot.event;

import android.util.Log;

final class BackgroundPoster implements Runnable {
    private final EventBus eventBus;
    private volatile boolean executorRunning;
    private final PendingPostQueue queue = new PendingPostQueue();

    BackgroundPoster(EventBus eventBus) {
        this.eventBus = eventBus;
    }

    public final void enqueue(Subscription subscription, Object obj) {
        subscription = PendingPost.obtainPendingPost(subscription, obj);
        synchronized (this) {
            this.queue.enqueue(subscription);
            if (this.executorRunning == null) {
                this.executorRunning = true;
                this.eventBus.getExecutorService().execute(this);
            }
        }
    }

    public final void run() {
        while (true) {
            try {
                PendingPost poll$2bd60b69 = this.queue.poll$2bd60b69();
                if (poll$2bd60b69 == null) {
                    synchronized (this) {
                        poll$2bd60b69 = this.queue.poll();
                        if (poll$2bd60b69 == null) {
                            this.executorRunning = false;
                            this.executorRunning = false;
                            return;
                        }
                    }
                }
                this.eventBus.invokeSubscriber(poll$2bd60b69);
            } catch (Throwable e) {
                try {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(Thread.currentThread().getName());
                    stringBuilder.append(" was interruppted");
                    Log.w("Event", stringBuilder.toString(), e);
                    return;
                } finally {
                    this.executorRunning = false;
                }
            }
        }
    }
}
