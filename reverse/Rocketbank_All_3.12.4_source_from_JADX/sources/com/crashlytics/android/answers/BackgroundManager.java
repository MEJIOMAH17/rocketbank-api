package com.crashlytics.android.answers;

import io.fabric.sdk.android.Fabric;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

class BackgroundManager {
    final AtomicReference<ScheduledFuture<?>> backgroundFutureRef = new AtomicReference();
    private final ScheduledExecutorService executorService;
    private volatile boolean flushOnBackground = true;
    boolean inBackground = true;
    private final List<Listener> listeners = new ArrayList();

    /* renamed from: com.crashlytics.android.answers.BackgroundManager$1 */
    class C03111 implements Runnable {
        C03111() {
        }

        public final void run() {
            BackgroundManager.this.backgroundFutureRef.set(null);
            BackgroundManager.access$000(BackgroundManager.this);
        }
    }

    public interface Listener {
        void onBackground();
    }

    public BackgroundManager(ScheduledExecutorService scheduledExecutorService) {
        this.executorService = scheduledExecutorService;
    }

    public final void setFlushOnBackground(boolean z) {
        this.flushOnBackground = z;
    }

    public final void registerListener(Listener listener) {
        this.listeners.add(listener);
    }

    public final void onActivityPaused() {
        if (this.flushOnBackground && !this.inBackground) {
            this.inBackground = true;
            try {
                this.backgroundFutureRef.compareAndSet(null, this.executorService.schedule(new C03111(), 5000, TimeUnit.MILLISECONDS));
            } catch (Throwable e) {
                Fabric.getLogger().mo769d("Answers", "Failed to schedule background detector", e);
            }
        }
    }

    static /* synthetic */ void access$000(BackgroundManager backgroundManager) {
        for (Listener onBackground : backgroundManager.listeners) {
            onBackground.onBackground();
        }
    }
}
