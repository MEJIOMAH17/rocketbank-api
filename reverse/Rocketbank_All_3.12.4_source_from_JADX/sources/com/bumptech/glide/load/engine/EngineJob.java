package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.request.ResourceCallback;
import com.bumptech.glide.util.Util;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

class EngineJob implements EngineRunnableManager {
    private static final EngineResourceFactory DEFAULT_FACTORY = new EngineResourceFactory();
    private static final Handler MAIN_THREAD_HANDLER = new Handler(Looper.getMainLooper(), new MainThreadCallback());
    private final List<ResourceCallback> cbs;
    private final ExecutorService diskCacheService;
    private EngineResource<?> engineResource;
    private final EngineResourceFactory engineResourceFactory;
    private EngineRunnable engineRunnable;
    private Exception exception;
    private volatile Future<?> future;
    private boolean hasException;
    private boolean hasResource;
    private Set<ResourceCallback> ignoredCallbacks;
    private final boolean isCacheable;
    private boolean isCancelled;
    private final Key key;
    private final EngineJobListener listener;
    private Resource<?> resource;
    private final ExecutorService sourceService;

    static class EngineResourceFactory {
        EngineResourceFactory() {
        }
    }

    static class MainThreadCallback implements Callback {
        private MainThreadCallback() {
        }

        public final boolean handleMessage(Message message) {
            if (1 != message.what) {
                if (2 != message.what) {
                    return null;
                }
            }
            EngineJob engineJob = (EngineJob) message.obj;
            if (1 == message.what) {
                EngineJob.access$100(engineJob);
            } else {
                EngineJob.access$200(engineJob);
            }
            return true;
        }
    }

    public EngineJob(Key key, ExecutorService executorService, ExecutorService executorService2, boolean z, EngineJobListener engineJobListener) {
        this(key, executorService, executorService2, z, engineJobListener, DEFAULT_FACTORY);
    }

    private EngineJob(Key key, ExecutorService executorService, ExecutorService executorService2, boolean z, EngineJobListener engineJobListener, EngineResourceFactory engineResourceFactory) {
        this.cbs = new ArrayList();
        this.key = key;
        this.diskCacheService = executorService;
        this.sourceService = executorService2;
        this.isCacheable = z;
        this.listener = engineJobListener;
        this.engineResourceFactory = engineResourceFactory;
    }

    public final void start(EngineRunnable engineRunnable) {
        this.engineRunnable = engineRunnable;
        this.future = this.diskCacheService.submit(engineRunnable);
    }

    public final void submitForSource(EngineRunnable engineRunnable) {
        this.future = this.sourceService.submit(engineRunnable);
    }

    public final void addCallback(ResourceCallback resourceCallback) {
        Util.assertMainThread();
        if (this.hasResource) {
            resourceCallback.onResourceReady(this.engineResource);
        } else if (this.hasException) {
            resourceCallback.onException(this.exception);
        } else {
            this.cbs.add(resourceCallback);
        }
    }

    public final void removeCallback(ResourceCallback resourceCallback) {
        Util.assertMainThread();
        if (!this.hasResource) {
            if (!this.hasException) {
                this.cbs.remove(resourceCallback);
                if (this.cbs.isEmpty() != null && this.hasException == null && this.hasResource == null) {
                    if (this.isCancelled == null) {
                        this.engineRunnable.cancel();
                        resourceCallback = this.future;
                        if (resourceCallback != null) {
                            resourceCallback.cancel(true);
                        }
                        this.isCancelled = true;
                        this.listener.onEngineJobCancelled(this, this.key);
                        return;
                    }
                }
                return;
            }
        }
        if (this.ignoredCallbacks == null) {
            this.ignoredCallbacks = new HashSet();
        }
        this.ignoredCallbacks.add(resourceCallback);
    }

    public final void onResourceReady(Resource<?> resource) {
        this.resource = resource;
        MAIN_THREAD_HANDLER.obtainMessage(1, this).sendToTarget();
    }

    public final void onException(Exception exception) {
        this.exception = exception;
        MAIN_THREAD_HANDLER.obtainMessage(2, this).sendToTarget();
    }

    static /* synthetic */ void access$100(EngineJob engineJob) {
        if (engineJob.isCancelled) {
            engineJob.resource.recycle();
        } else if (engineJob.cbs.isEmpty()) {
            throw new IllegalStateException("Received a resource without any callbacks to notify");
        } else {
            engineJob.engineResource = new EngineResource(engineJob.resource, engineJob.isCacheable);
            engineJob.hasResource = true;
            engineJob.engineResource.acquire();
            engineJob.listener.onEngineJobComplete(engineJob.key, engineJob.engineResource);
            for (ResourceCallback resourceCallback : engineJob.cbs) {
                boolean z = engineJob.ignoredCallbacks != null && engineJob.ignoredCallbacks.contains(resourceCallback);
                if (!z) {
                    engineJob.engineResource.acquire();
                    resourceCallback.onResourceReady(engineJob.engineResource);
                }
            }
            engineJob.engineResource.release();
        }
    }

    static /* synthetic */ void access$200(EngineJob engineJob) {
        if (!engineJob.isCancelled) {
            if (engineJob.cbs.isEmpty()) {
                throw new IllegalStateException("Received an exception without any callbacks to notify");
            }
            engineJob.hasException = true;
            engineJob.listener.onEngineJobComplete(engineJob.key, null);
            for (ResourceCallback resourceCallback : engineJob.cbs) {
                boolean z = engineJob.ignoredCallbacks != null && engineJob.ignoredCallbacks.contains(resourceCallback);
                if (!z) {
                    resourceCallback.onException(engineJob.exception);
                }
            }
        }
    }
}
