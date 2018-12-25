package com.bumptech.glide.load.engine;

import android.os.Looper;
import android.os.MessageQueue.IdleHandler;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.DiskCache.Factory;
import com.bumptech.glide.load.engine.cache.DiskCacheAdapter;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.engine.cache.MemoryCache.ResourceRemovedListener;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.provider.DataLoadProvider;
import com.bumptech.glide.request.ResourceCallback;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Util;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;

public final class Engine implements EngineJobListener, ResourceListener, ResourceRemovedListener {
    private final Map<Key, WeakReference<EngineResource<?>>> activeResources;
    private final MemoryCache cache;
    private final LazyDiskCacheProvider diskCacheProvider;
    private final EngineJobFactory engineJobFactory;
    private final Map<Key, EngineJob> jobs;
    private final EngineKeyFactory keyFactory;
    private final ResourceRecycler resourceRecycler;
    private ReferenceQueue<EngineResource<?>> resourceReferenceQueue;

    static class EngineJobFactory {
        private final ExecutorService diskCacheService;
        private final EngineJobListener listener;
        private final ExecutorService sourceService;

        public EngineJobFactory(ExecutorService executorService, ExecutorService executorService2, EngineJobListener engineJobListener) {
            this.diskCacheService = executorService;
            this.sourceService = executorService2;
            this.listener = engineJobListener;
        }

        public final EngineJob build(Key key, boolean z) {
            return new EngineJob(key, this.diskCacheService, this.sourceService, z, this.listener);
        }
    }

    public static class LoadStatus {
        private final ResourceCallback cb;
        private final EngineJob engineJob;

        public LoadStatus(ResourceCallback resourceCallback, EngineJob engineJob) {
            this.cb = resourceCallback;
            this.engineJob = engineJob;
        }

        public final void cancel() {
            this.engineJob.removeCallback(this.cb);
        }
    }

    static class RefQueueIdleHandler implements IdleHandler {
        private final Map<Key, WeakReference<EngineResource<?>>> activeResources;
        private final ReferenceQueue<EngineResource<?>> queue;

        public RefQueueIdleHandler(Map<Key, WeakReference<EngineResource<?>>> map, ReferenceQueue<EngineResource<?>> referenceQueue) {
            this.activeResources = map;
            this.queue = referenceQueue;
        }

        public final boolean queueIdle() {
            ResourceWeakReference resourceWeakReference = (ResourceWeakReference) this.queue.poll();
            if (resourceWeakReference != null) {
                this.activeResources.remove(resourceWeakReference.key);
            }
            return true;
        }
    }

    static class ResourceWeakReference extends WeakReference<EngineResource<?>> {
        private final Key key;

        public ResourceWeakReference(Key key, EngineResource<?> engineResource, ReferenceQueue<? super EngineResource<?>> referenceQueue) {
            super(engineResource, referenceQueue);
            this.key = key;
        }
    }

    static class LazyDiskCacheProvider implements DiskCacheProvider {
        private volatile DiskCache diskCache;
        private final Factory factory;

        public LazyDiskCacheProvider(Factory factory) {
            this.factory = factory;
        }

        public final DiskCache getDiskCache() {
            if (this.diskCache == null) {
                synchronized (this) {
                    if (this.diskCache == null) {
                        this.diskCache = this.factory.build();
                    }
                    if (this.diskCache == null) {
                        this.diskCache = new DiskCacheAdapter();
                    }
                }
            }
            return this.diskCache;
        }
    }

    public Engine(MemoryCache memoryCache, Factory factory, ExecutorService executorService, ExecutorService executorService2) {
        this(memoryCache, factory, executorService, executorService2, (byte) 0);
    }

    private Engine(MemoryCache memoryCache, Factory factory, ExecutorService executorService, ExecutorService executorService2, byte b) {
        this.cache = memoryCache;
        this.diskCacheProvider = new LazyDiskCacheProvider(factory);
        this.activeResources = new HashMap();
        this.keyFactory = new EngineKeyFactory();
        this.jobs = new HashMap();
        this.engineJobFactory = new EngineJobFactory(executorService, executorService2, this);
        this.resourceRecycler = new ResourceRecycler();
        memoryCache.setResourceRemovedListener(this);
    }

    public final <T, Z, R> LoadStatus load(Key key, int i, int i2, DataFetcher<T> dataFetcher, DataLoadProvider<T, Z> dataLoadProvider, Transformation<Z> transformation, ResourceTranscoder<Z, R> resourceTranscoder, Priority priority, boolean z, DiskCacheStrategy diskCacheStrategy, ResourceCallback resourceCallback) {
        Resource remove;
        Engine engine = this;
        boolean z2 = z;
        ResourceCallback resourceCallback2 = resourceCallback;
        Util.assertMainThread();
        long logTime = LogTime.getLogTime();
        EngineKey engineKey = r5;
        EngineKey engineKey2 = new EngineKey(dataFetcher.getId(), key, i, i2, dataLoadProvider.getCacheDecoder(), dataLoadProvider.getSourceDecoder(), transformation, dataLoadProvider.getEncoder$743e27e$2e726854(), resourceTranscoder, dataLoadProvider.getSourceEncoder$2e726854());
        if (z2) {
            remove = engine.cache.remove(engineKey);
            if (remove == null) {
                remove = null;
            } else if (remove instanceof EngineResource) {
                remove = (EngineResource) remove;
            } else {
                remove = new EngineResource(remove, true);
            }
            if (remove != null) {
                remove.acquire();
                engine.activeResources.put(engineKey, new ResourceWeakReference(engineKey, remove, getReferenceQueue()));
            }
        } else {
            remove = null;
        }
        if (remove != null) {
            resourceCallback2.onResourceReady(remove);
            if (Log.isLoggable("Engine", 2)) {
                logWithTimeAndKey("Loaded resource from cache", logTime, engineKey);
            }
            return null;
        }
        EngineJob engineJob;
        long j = logTime;
        if (z2) {
            WeakReference weakReference = (WeakReference) engine.activeResources.get(engineKey);
            if (weakReference != null) {
                remove = (EngineResource) weakReference.get();
                if (remove != null) {
                    remove.acquire();
                } else {
                    engine.activeResources.remove(engineKey);
                }
                if (remove == null) {
                    resourceCallback2.onResourceReady(remove);
                    if (Log.isLoggable("Engine", 2)) {
                        logWithTimeAndKey("Loaded resource from active resources", j, engineKey);
                    }
                    return null;
                }
                engineJob = (EngineJob) engine.jobs.get(engineKey);
                if (engineJob == null) {
                    engineJob.addCallback(resourceCallback2);
                    if (Log.isLoggable("Engine", 2)) {
                        logWithTimeAndKey("Added to existing load", j, engineKey);
                    }
                    return new LoadStatus(resourceCallback2, engineJob);
                }
                EngineJob build = engine.engineJobFactory.build(engineKey, z2);
                EngineRunnable engineRunnable = new EngineRunnable(build, new DecodeJob(engineKey, i, i2, dataFetcher, dataLoadProvider, transformation, resourceTranscoder, engine.diskCacheProvider, diskCacheStrategy, priority), priority);
                engine.jobs.put(engineKey, build);
                build.addCallback(resourceCallback2);
                build.start(engineRunnable);
                if (Log.isLoggable("Engine", 2)) {
                    logWithTimeAndKey("Started new load", j, engineKey);
                }
                return new LoadStatus(resourceCallback2, build);
            }
        }
        remove = null;
        if (remove == null) {
            engineJob = (EngineJob) engine.jobs.get(engineKey);
            if (engineJob == null) {
                EngineJob build2 = engine.engineJobFactory.build(engineKey, z2);
                EngineRunnable engineRunnable2 = new EngineRunnable(build2, new DecodeJob(engineKey, i, i2, dataFetcher, dataLoadProvider, transformation, resourceTranscoder, engine.diskCacheProvider, diskCacheStrategy, priority), priority);
                engine.jobs.put(engineKey, build2);
                build2.addCallback(resourceCallback2);
                build2.start(engineRunnable2);
                if (Log.isLoggable("Engine", 2)) {
                    logWithTimeAndKey("Started new load", j, engineKey);
                }
                return new LoadStatus(resourceCallback2, build2);
            }
            engineJob.addCallback(resourceCallback2);
            if (Log.isLoggable("Engine", 2)) {
                logWithTimeAndKey("Added to existing load", j, engineKey);
            }
            return new LoadStatus(resourceCallback2, engineJob);
        }
        resourceCallback2.onResourceReady(remove);
        if (Log.isLoggable("Engine", 2)) {
            logWithTimeAndKey("Loaded resource from active resources", j, engineKey);
        }
        return null;
    }

    private static void logWithTimeAndKey(String str, long j, Key key) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(" in ");
        stringBuilder.append(LogTime.getElapsedMillis(j));
        stringBuilder.append("ms, key: ");
        stringBuilder.append(key);
        Log.v("Engine", stringBuilder.toString());
    }

    public static void release(Resource resource) {
        Util.assertMainThread();
        if (resource instanceof EngineResource) {
            ((EngineResource) resource).release();
            return;
        }
        throw new IllegalArgumentException("Cannot release anything but an EngineResource");
    }

    public final void onEngineJobComplete(Key key, EngineResource<?> engineResource) {
        Util.assertMainThread();
        if (engineResource != null) {
            engineResource.setResourceListener(key, this);
            if (engineResource.isCacheable()) {
                this.activeResources.put(key, new ResourceWeakReference(key, engineResource, getReferenceQueue()));
            }
        }
        this.jobs.remove(key);
    }

    public final void onEngineJobCancelled(EngineJob engineJob, Key key) {
        Util.assertMainThread();
        if (engineJob.equals((EngineJob) this.jobs.get(key)) != null) {
            this.jobs.remove(key);
        }
    }

    public final void onResourceRemoved(Resource<?> resource) {
        Util.assertMainThread();
        this.resourceRecycler.recycle(resource);
    }

    public final void onResourceReleased(Key key, EngineResource engineResource) {
        Util.assertMainThread();
        this.activeResources.remove(key);
        if (engineResource.isCacheable()) {
            this.cache.put(key, engineResource);
        } else {
            this.resourceRecycler.recycle(engineResource);
        }
    }

    private ReferenceQueue<EngineResource<?>> getReferenceQueue() {
        if (this.resourceReferenceQueue == null) {
            this.resourceReferenceQueue = new ReferenceQueue();
            Looper.myQueue().addIdleHandler(new RefQueueIdleHandler(this.activeResources, this.resourceReferenceQueue));
        }
        return this.resourceReferenceQueue;
    }
}
