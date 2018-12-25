package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.DiskCache.Writer;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.provider.DataLoadProvider;
import com.bumptech.glide.util.LogTime;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;
import java.io.File;
import java.io.IOException;

final class DecodeJob<A, T, Z> {
    private static final FileOpener DEFAULT_FILE_OPENER = new FileOpener();
    private final DiskCacheProvider diskCacheProvider;
    private final DiskCacheStrategy diskCacheStrategy;
    private final DataFetcher<A> fetcher;
    private final FileOpener fileOpener;
    private final int height;
    private volatile boolean isCancelled;
    private final DataLoadProvider<A, T> loadProvider;
    private final Priority priority;
    private final EngineKey resultKey;
    private final ResourceTranscoder<T, Z> transcoder;
    private final Transformation<T> transformation;
    private final int width;

    interface DiskCacheProvider {
        DiskCache getDiskCache();
    }

    static class FileOpener {
        FileOpener() {
        }
    }

    class SourceWriter<DataType> implements Writer {
        private final DataType data;
        private final AnimatorUpdateListener<DataType> encoder$527e0935;

        public SourceWriter(AnimatorUpdateListener<DataType> animatorUpdateListener, DataType dataType) {
            this.encoder$527e0935 = animatorUpdateListener;
            this.data = dataType;
        }

        public final boolean write(java.io.File r4) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r3 = this;
            r0 = 0;
            r1 = com.bumptech.glide.load.engine.DecodeJob.this;	 Catch:{ FileNotFoundException -> 0x0024 }
            r1.fileOpener;	 Catch:{ FileNotFoundException -> 0x0024 }
            r1 = new java.io.BufferedOutputStream;	 Catch:{ FileNotFoundException -> 0x0024 }
            r2 = new java.io.FileOutputStream;	 Catch:{ FileNotFoundException -> 0x0024 }
            r2.<init>(r4);	 Catch:{ FileNotFoundException -> 0x0024 }
            r1.<init>(r2);	 Catch:{ FileNotFoundException -> 0x0024 }
            r4 = r3.encoder$527e0935;	 Catch:{ FileNotFoundException -> 0x001f, all -> 0x001c }
            r0 = r3.data;	 Catch:{ FileNotFoundException -> 0x001f, all -> 0x001c }
            r4 = r4.encode(r0, r1);	 Catch:{ FileNotFoundException -> 0x001f, all -> 0x001c }
            r1.close();	 Catch:{ IOException -> 0x003b }
            goto L_0x003b;
        L_0x001c:
            r4 = move-exception;
            r0 = r1;
            goto L_0x003c;
        L_0x001f:
            r4 = move-exception;
            r0 = r1;
            goto L_0x0025;
        L_0x0022:
            r4 = move-exception;
            goto L_0x003c;
        L_0x0024:
            r4 = move-exception;
        L_0x0025:
            r1 = "DecodeJob";	 Catch:{ all -> 0x0022 }
            r2 = 3;	 Catch:{ all -> 0x0022 }
            r1 = android.util.Log.isLoggable(r1, r2);	 Catch:{ all -> 0x0022 }
            if (r1 == 0) goto L_0x0035;	 Catch:{ all -> 0x0022 }
        L_0x002e:
            r1 = "DecodeJob";	 Catch:{ all -> 0x0022 }
            r2 = "Failed to find file to write to disk cache";	 Catch:{ all -> 0x0022 }
            android.util.Log.d(r1, r2, r4);	 Catch:{ all -> 0x0022 }
        L_0x0035:
            if (r0 == 0) goto L_0x003a;
        L_0x0037:
            r0.close();	 Catch:{ IOException -> 0x003a }
        L_0x003a:
            r4 = 0;
        L_0x003b:
            return r4;
        L_0x003c:
            if (r0 == 0) goto L_0x0041;
        L_0x003e:
            r0.close();	 Catch:{ IOException -> 0x0041 }
        L_0x0041:
            throw r4;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.DecodeJob.SourceWriter.write(java.io.File):boolean");
        }
    }

    public DecodeJob(EngineKey engineKey, int i, int i2, DataFetcher<A> dataFetcher, DataLoadProvider<A, T> dataLoadProvider, Transformation<T> transformation, ResourceTranscoder<T, Z> resourceTranscoder, DiskCacheProvider diskCacheProvider, DiskCacheStrategy diskCacheStrategy, Priority priority) {
        this(engineKey, i, i2, dataFetcher, dataLoadProvider, transformation, resourceTranscoder, diskCacheProvider, diskCacheStrategy, priority, DEFAULT_FILE_OPENER);
    }

    private DecodeJob(EngineKey engineKey, int i, int i2, DataFetcher<A> dataFetcher, DataLoadProvider<A, T> dataLoadProvider, Transformation<T> transformation, ResourceTranscoder<T, Z> resourceTranscoder, DiskCacheProvider diskCacheProvider, DiskCacheStrategy diskCacheStrategy, Priority priority, FileOpener fileOpener) {
        this.resultKey = engineKey;
        this.width = i;
        this.height = i2;
        this.fetcher = dataFetcher;
        this.loadProvider = dataLoadProvider;
        this.transformation = transformation;
        this.transcoder = resourceTranscoder;
        this.diskCacheProvider = diskCacheProvider;
        this.diskCacheStrategy = diskCacheStrategy;
        this.priority = priority;
        this.fileOpener = fileOpener;
    }

    public final Resource<Z> decodeResultFromCache() throws Exception {
        Resource<Z> resource = null;
        if (!this.diskCacheStrategy.cacheResult()) {
            return null;
        }
        long logTime = LogTime.getLogTime();
        Resource loadFromCache = loadFromCache(this.resultKey);
        if (Log.isLoggable("DecodeJob", 2)) {
            logWithTimeAndKey("Decoded transformed from cache", logTime);
        }
        logTime = LogTime.getLogTime();
        if (loadFromCache != null) {
            resource = this.transcoder.transcode(loadFromCache);
        }
        if (Log.isLoggable("DecodeJob", 2)) {
            logWithTimeAndKey("Transcoded transformed from cache", logTime);
        }
        return resource;
    }

    public final Resource<Z> decodeSourceFromCache() throws Exception {
        if (!this.diskCacheStrategy.cacheSource()) {
            return null;
        }
        long logTime = LogTime.getLogTime();
        Resource loadFromCache = loadFromCache(this.resultKey.getOriginalKey());
        if (Log.isLoggable("DecodeJob", 2)) {
            logWithTimeAndKey("Decoded source from cache", logTime);
        }
        return transformEncodeAndTranscode(loadFromCache);
    }

    public final Resource<Z> decodeFromSource() throws Exception {
        return transformEncodeAndTranscode(decodeSource());
    }

    public final void cancel() {
        this.isCancelled = true;
        this.fetcher.cancel();
    }

    private Resource<Z> transformEncodeAndTranscode(Resource<T> resource) {
        long logTime = LogTime.getLogTime();
        resource = transform(resource);
        if (Log.isLoggable("DecodeJob", 2)) {
            logWithTimeAndKey("Transformed resource from source", logTime);
        }
        writeTransformedToCache(resource);
        logTime = LogTime.getLogTime();
        if (resource == null) {
            resource = null;
        } else {
            resource = this.transcoder.transcode(resource);
        }
        if (Log.isLoggable("DecodeJob", 2)) {
            logWithTimeAndKey("Transcoded transformed from source", logTime);
        }
        return resource;
    }

    private void writeTransformedToCache(Resource<T> resource) {
        if (resource != null) {
            if (this.diskCacheStrategy.cacheResult()) {
                long logTime = LogTime.getLogTime();
                this.diskCacheProvider.getDiskCache().put(this.resultKey, new SourceWriter(this.loadProvider.getEncoder$743e27e$2e726854(), resource));
                if (Log.isLoggable("DecodeJob", 2) != null) {
                    logWithTimeAndKey("Wrote transformed from source to cache", logTime);
                }
            }
        }
    }

    private Resource<T> decodeSource() throws Exception {
        try {
            long logTime = LogTime.getLogTime();
            Object loadData = this.fetcher.loadData(this.priority);
            if (Log.isLoggable("DecodeJob", 2)) {
                logWithTimeAndKey("Fetched data", logTime);
            }
            if (this.isCancelled) {
                return null;
            }
            Resource<T> loadFromCache;
            if (this.diskCacheStrategy.cacheSource()) {
                logTime = LogTime.getLogTime();
                this.diskCacheProvider.getDiskCache().put(this.resultKey.getOriginalKey(), new SourceWriter(this.loadProvider.getSourceEncoder$2e726854(), loadData));
                if (Log.isLoggable("DecodeJob", 2)) {
                    logWithTimeAndKey("Wrote source to cache", logTime);
                }
                logTime = LogTime.getLogTime();
                loadFromCache = loadFromCache(this.resultKey.getOriginalKey());
                if (Log.isLoggable("DecodeJob", 2) && loadFromCache != null) {
                    logWithTimeAndKey("Decoded source from cache", logTime);
                }
            } else {
                logTime = LogTime.getLogTime();
                loadFromCache = this.loadProvider.getSourceDecoder().decode(loadData, this.width, this.height);
                if (Log.isLoggable("DecodeJob", 2)) {
                    logWithTimeAndKey("Decoded from source", logTime);
                }
            }
            this.fetcher.cleanup();
            return loadFromCache;
        } finally {
            this.fetcher.cleanup();
        }
    }

    private Resource<T> loadFromCache(Key key) throws IOException {
        File file = this.diskCacheProvider.getDiskCache().get(key);
        if (file == null) {
            return null;
        }
        try {
            Resource<T> decode = this.loadProvider.getCacheDecoder().decode(file, this.width, this.height);
            if (decode == null) {
            }
            return decode;
        } finally {
            this.diskCacheProvider.getDiskCache().delete(key);
        }
    }

    private Resource<T> transform(Resource<T> resource) {
        if (resource == null) {
            return null;
        }
        Resource<T> transform = this.transformation.transform(resource, this.width, this.height);
        if (!resource.equals(transform)) {
            resource.recycle();
        }
        return transform;
    }

    private void logWithTimeAndKey(String str, long j) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(" in ");
        stringBuilder.append(LogTime.getElapsedMillis(j));
        stringBuilder.append(", key: ");
        stringBuilder.append(this.resultKey);
        Log.v("DecodeJob", stringBuilder.toString());
    }
}
