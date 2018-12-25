package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.engine.executor.Prioritized;
import com.bumptech.glide.request.ResourceCallback;

final class EngineRunnable implements Prioritized, Runnable {
    private final DecodeJob<?, ?, ?> decodeJob;
    private volatile boolean isCancelled;
    private final EngineRunnableManager manager;
    private final Priority priority;
    private Stage stage = Stage.CACHE;

    private enum Stage {
        CACHE,
        SOURCE
    }

    interface EngineRunnableManager extends ResourceCallback {
        void submitForSource(EngineRunnable engineRunnable);
    }

    public EngineRunnable(EngineRunnableManager engineRunnableManager, DecodeJob<?, ?, ?> decodeJob, Priority priority) {
        this.manager = engineRunnableManager;
        this.decodeJob = decodeJob;
        this.priority = priority;
    }

    public final void cancel() {
        this.isCancelled = true;
        this.decodeJob.cancel();
    }

    public final void run() {
        if (!this.isCancelled) {
            Exception exception;
            Object obj = null;
            Resource resource = null;
            try {
                Resource decodeFromCache;
                if ((this.stage == Stage.CACHE ? 1 : null) != null) {
                    decodeFromCache = decodeFromCache();
                } else {
                    decodeFromCache = this.decodeJob.decodeFromSource();
                }
                exception = null;
                resource = decodeFromCache;
            } catch (Throwable e) {
                if (Log.isLoggable("EngineRunnable", 2)) {
                    Log.v("EngineRunnable", "Out Of Memory Error decoding", e);
                }
                exception = new ErrorWrappingGlideException(e);
            } catch (Throwable e2) {
                if (Log.isLoggable("EngineRunnable", 2)) {
                    Log.v("EngineRunnable", "Exception decoding", e2);
                }
                exception = e2;
            }
            if (this.isCancelled) {
                if (resource != null) {
                    resource.recycle();
                }
            } else if (resource == null) {
                if (this.stage == Stage.CACHE) {
                    obj = 1;
                }
                if (obj != null) {
                    this.stage = Stage.SOURCE;
                    this.manager.submitForSource(this);
                    return;
                }
                this.manager.onException(exception);
            } else {
                this.manager.onResourceReady(resource);
            }
        }
    }

    private Resource<?> decodeFromCache() throws Exception {
        Resource<?> decodeResultFromCache;
        try {
            decodeResultFromCache = this.decodeJob.decodeResultFromCache();
        } catch (Exception e) {
            if (Log.isLoggable("EngineRunnable", 3)) {
                Log.d("EngineRunnable", "Exception decoding result from cache: ".concat(String.valueOf(e)));
            }
            decodeResultFromCache = null;
        }
        return decodeResultFromCache == null ? this.decodeJob.decodeSourceFromCache() : decodeResultFromCache;
    }

    public final int getPriority() {
        return this.priority.ordinal();
    }
}
