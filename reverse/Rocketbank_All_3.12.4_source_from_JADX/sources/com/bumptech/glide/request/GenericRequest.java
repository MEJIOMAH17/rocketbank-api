package com.bumptech.glide.request;

import android.arch.lifecycle.GeneratedAdapter;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.Engine.LoadStatus;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.provider.LoadProvider;
import com.bumptech.glide.request.animation.GlideAnimationFactory;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Util;
import java.util.Queue;

public final class GenericRequest<A, T, Z, R> implements Request, ResourceCallback, SizeReadyCallback {
    private static final Queue<GenericRequest<?, ?, ?, ?>> REQUEST_POOL = Util.createQueue(0);
    private GlideAnimationFactory<R> animationFactory;
    private Context context;
    private DiskCacheStrategy diskCacheStrategy;
    private Engine engine;
    private Drawable errorDrawable;
    private int errorResourceId;
    private Drawable fallbackDrawable;
    private int fallbackResourceId;
    private boolean isMemoryCacheable;
    private LoadProvider<A, T, Z, R> loadProvider;
    private LoadStatus loadStatus;
    private boolean loadedFromMemoryCache;
    private A model;
    private int overrideHeight;
    private int overrideWidth;
    private Drawable placeholderDrawable;
    private int placeholderResourceId;
    private Priority priority;
    private GeneratedAdapter requestCoordinator$7e741047;
    private RequestListener<? super A, R> requestListener;
    private Resource<?> resource;
    private Key signature;
    private float sizeMultiplier;
    private long startTime;
    private Status status;
    private final String tag = String.valueOf(hashCode());
    private Target<R> target;
    private Class<R> transcodeClass;
    private Transformation<Z> transformation;

    private enum Status {
        PENDING,
        RUNNING,
        WAITING_FOR_SIZE,
        COMPLETE,
        FAILED,
        CANCELLED,
        CLEARED,
        PAUSED
    }

    public static <A, T, Z, R> GenericRequest<A, T, Z, R> obtain$4305c551$4df9a3d1(LoadProvider<A, T, Z, R> loadProvider, A a, Key key, Context context, Priority priority, Target<R> target, float f, Drawable drawable, int i, Drawable drawable2, int i2, RequestListener<? super A, R> requestListener, Engine engine, Transformation<Z> transformation, Class<R> cls, boolean z, GlideAnimationFactory<R> glideAnimationFactory, int i3, int i4, DiskCacheStrategy diskCacheStrategy) {
        A a2 = a;
        Transformation<Z> transformation2 = transformation;
        GenericRequest<A, T, Z, R> genericRequest = (GenericRequest) REQUEST_POOL.poll();
        if (genericRequest == null) {
            genericRequest = new GenericRequest();
        }
        GenericRequest<A, T, Z, R> genericRequest2 = genericRequest;
        LoadProvider<A, T, Z, R> loadProvider2 = loadProvider;
        genericRequest2.loadProvider = loadProvider2;
        genericRequest2.model = a2;
        genericRequest2.signature = key;
        genericRequest2.fallbackDrawable = null;
        genericRequest2.fallbackResourceId = 0;
        genericRequest2.context = context.getApplicationContext();
        genericRequest2.priority = priority;
        genericRequest2.target = target;
        genericRequest2.sizeMultiplier = f;
        genericRequest2.placeholderDrawable = drawable;
        genericRequest2.placeholderResourceId = i;
        genericRequest2.errorDrawable = drawable2;
        genericRequest2.errorResourceId = i2;
        genericRequest2.requestListener = requestListener;
        genericRequest2.requestCoordinator$7e741047 = null;
        genericRequest2.engine = engine;
        genericRequest2.transformation = transformation2;
        genericRequest2.transcodeClass = cls;
        genericRequest2.isMemoryCacheable = z;
        genericRequest2.animationFactory = glideAnimationFactory;
        genericRequest2.overrideWidth = i3;
        genericRequest2.overrideHeight = i4;
        genericRequest2.diskCacheStrategy = diskCacheStrategy;
        genericRequest2.status = Status.PENDING;
        if (a2 != null) {
            check("ModelLoader", loadProvider2.getModelLoader(), "try .using(ModelLoader)");
            check("Transcoder", loadProvider2.getTranscoder(), "try .as*(Class).transcode(ResourceTranscoder)");
            check("Transformation", transformation2, "try .transform(UnitTransformation.get())");
            if (diskCacheStrategy.cacheSource()) {
                check("SourceEncoder", loadProvider2.getSourceEncoder$2e726854(), "try .sourceEncoder(Encoder) or .diskCacheStrategy(NONE/RESULT)");
            } else {
                check("SourceDecoder", loadProvider2.getSourceDecoder(), "try .decoder/.imageDecoder/.videoDecoder(ResourceDecoder) or .diskCacheStrategy(ALL/SOURCE)");
            }
            if (diskCacheStrategy.cacheSource() || diskCacheStrategy.cacheResult()) {
                check("CacheDecoder", loadProvider2.getCacheDecoder(), "try .cacheDecoder(ResouceDecoder) or .diskCacheStrategy(NONE)");
            }
            if (diskCacheStrategy.cacheResult()) {
                check("Encoder", loadProvider2.getEncoder$743e27e$2e726854(), "try .encode(ResourceEncoder) or .diskCacheStrategy(NONE/SOURCE)");
            }
        }
        return genericRequest2;
    }

    private GenericRequest() {
    }

    public final void recycle() {
        this.loadProvider = null;
        this.model = null;
        this.context = null;
        this.target = null;
        this.placeholderDrawable = null;
        this.errorDrawable = null;
        this.fallbackDrawable = null;
        this.requestListener = null;
        this.requestCoordinator$7e741047 = null;
        this.transformation = null;
        this.animationFactory = null;
        this.loadedFromMemoryCache = false;
        this.loadStatus = null;
        REQUEST_POOL.offer(this);
    }

    private static void check(String str, Object obj, String str2) {
        if (obj == null) {
            obj = new StringBuilder(str);
            obj.append(" must not be null");
            obj.append(", ");
            obj.append(str2);
            throw new NullPointerException(obj.toString());
        }
    }

    public final void begin() {
        this.startTime = LogTime.getLogTime();
        if (this.model == null) {
            onException(null);
            return;
        }
        this.status = Status.WAITING_FOR_SIZE;
        if (Util.isValidDimensions(this.overrideWidth, this.overrideHeight)) {
            onSizeReady(this.overrideWidth, this.overrideHeight);
        } else {
            this.target.getSize(this);
        }
        Object obj = null;
        if ((this.status == Status.COMPLETE ? 1 : null) == null) {
            if (this.status == Status.FAILED) {
                obj = 1;
            }
            if (obj == null) {
                this.target.onLoadStarted(getPlaceholderDrawable());
            }
        }
        if (Log.isLoggable("GenericRequest", 2)) {
            StringBuilder stringBuilder = new StringBuilder("finished run method in ");
            stringBuilder.append(LogTime.getElapsedMillis(this.startTime));
            logV(stringBuilder.toString());
        }
    }

    public final void clear() {
        Util.assertMainThread();
        if (this.status != Status.CLEARED) {
            this.status = Status.CANCELLED;
            if (this.loadStatus != null) {
                this.loadStatus.cancel();
                this.loadStatus = null;
            }
            if (this.resource != null) {
                Engine.release(this.resource);
                this.resource = null;
            }
            this.target.onLoadCleared(getPlaceholderDrawable());
            this.status = Status.CLEARED;
        }
    }

    public final void pause() {
        clear();
        this.status = Status.PAUSED;
    }

    public final boolean isRunning() {
        if (this.status != Status.RUNNING) {
            if (this.status != Status.WAITING_FOR_SIZE) {
                return false;
            }
        }
        return true;
    }

    public final boolean isComplete() {
        return this.status == Status.COMPLETE;
    }

    public final boolean isCancelled() {
        if (this.status != Status.CANCELLED) {
            if (this.status != Status.CLEARED) {
                return false;
            }
        }
        return true;
    }

    private Drawable getPlaceholderDrawable() {
        if (this.placeholderDrawable == null && this.placeholderResourceId > 0) {
            this.placeholderDrawable = this.context.getResources().getDrawable(this.placeholderResourceId);
        }
        return this.placeholderDrawable;
    }

    public final void onSizeReady(int i, int i2) {
        GenericRequest genericRequest = this;
        if (Log.isLoggable("GenericRequest", 2)) {
            StringBuilder stringBuilder = new StringBuilder("Got onSizeReady in ");
            stringBuilder.append(LogTime.getElapsedMillis(genericRequest.startTime));
            logV(stringBuilder.toString());
        }
        if (genericRequest.status == Status.WAITING_FOR_SIZE) {
            genericRequest.status = Status.RUNNING;
            int round = Math.round(genericRequest.sizeMultiplier * ((float) i));
            int round2 = Math.round(genericRequest.sizeMultiplier * ((float) i2));
            DataFetcher resourceFetcher = genericRequest.loadProvider.getModelLoader().getResourceFetcher(genericRequest.model, round, round2);
            if (resourceFetcher == null) {
                StringBuilder stringBuilder2 = new StringBuilder("Failed to load model: '");
                stringBuilder2.append(genericRequest.model);
                stringBuilder2.append("'");
                onException(new Exception(stringBuilder2.toString()));
                return;
            }
            ResourceTranscoder transcoder = genericRequest.loadProvider.getTranscoder();
            if (Log.isLoggable("GenericRequest", 2)) {
                stringBuilder = new StringBuilder("finished setup for calling load in ");
                stringBuilder.append(LogTime.getElapsedMillis(genericRequest.startTime));
                logV(stringBuilder.toString());
            }
            boolean z = true;
            genericRequest.loadedFromMemoryCache = true;
            genericRequest.loadStatus = genericRequest.engine.load(genericRequest.signature, round, round2, resourceFetcher, genericRequest.loadProvider, genericRequest.transformation, transcoder, genericRequest.priority, genericRequest.isMemoryCacheable, genericRequest.diskCacheStrategy, genericRequest);
            if (genericRequest.resource == null) {
                z = false;
            }
            genericRequest.loadedFromMemoryCache = z;
            if (Log.isLoggable("GenericRequest", 2)) {
                stringBuilder = new StringBuilder("finished onSizeReady in ");
                stringBuilder.append(LogTime.getElapsedMillis(genericRequest.startTime));
                logV(stringBuilder.toString());
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onResourceReady(com.bumptech.glide.load.engine.Resource<?> r8) {
        /*
        r7 = this;
        if (r8 != 0) goto L_0x0020;
    L_0x0002:
        r8 = new java.lang.Exception;
        r0 = new java.lang.StringBuilder;
        r1 = "Expected to receive a Resource<R> with an object of ";
        r0.<init>(r1);
        r1 = r7.transcodeClass;
        r0.append(r1);
        r1 = " inside, but instead got null.";
        r0.append(r1);
        r0 = r0.toString();
        r8.<init>(r0);
        r7.onException(r8);
        return;
    L_0x0020:
        r0 = r8.get();
        if (r0 == 0) goto L_0x0096;
    L_0x0026:
        r1 = r7.transcodeClass;
        r2 = r0.getClass();
        r1 = r1.isAssignableFrom(r2);
        if (r1 != 0) goto L_0x0033;
    L_0x0032:
        goto L_0x0096;
    L_0x0033:
        r1 = com.bumptech.glide.request.GenericRequest.Status.COMPLETE;
        r7.status = r1;
        r7.resource = r8;
        r1 = r7.requestListener;
        if (r1 == 0) goto L_0x004d;
    L_0x003d:
        r1 = r7.requestListener;
        r3 = r7.model;
        r4 = r7.target;
        r5 = r7.loadedFromMemoryCache;
        r6 = 1;
        r2 = r0;
        r1 = r1.onResourceReady(r2, r3, r4, r5, r6);
        if (r1 != 0) goto L_0x005b;
    L_0x004d:
        r1 = r7.animationFactory;
        r2 = r7.loadedFromMemoryCache;
        r3 = 1;
        r1 = r1.build(r2, r3);
        r2 = r7.target;
        r2.onResourceReady(r0, r1);
    L_0x005b:
        r0 = "GenericRequest";
        r1 = 2;
        r0 = android.util.Log.isLoggable(r0, r1);
        if (r0 == 0) goto L_0x0095;
    L_0x0064:
        r0 = new java.lang.StringBuilder;
        r1 = "Resource ready in ";
        r0.<init>(r1);
        r1 = r7.startTime;
        r1 = com.bumptech.glide.util.LogTime.getElapsedMillis(r1);
        r0.append(r1);
        r1 = " size: ";
        r0.append(r1);
        r8 = r8.getSize();
        r1 = (double) r8;
        r3 = 4517110426252607488; // 0x3eb0000000000000 float:0.0 double:9.5367431640625E-7;
        r1 = r1 * r3;
        r0.append(r1);
        r8 = " fromCache: ";
        r0.append(r8);
        r8 = r7.loadedFromMemoryCache;
        r0.append(r8);
        r8 = r0.toString();
        r7.logV(r8);
    L_0x0095:
        return;
    L_0x0096:
        com.bumptech.glide.load.engine.Engine.release(r8);
        r1 = 0;
        r7.resource = r1;
        r1 = new java.lang.Exception;
        r2 = new java.lang.StringBuilder;
        r3 = "Expected to receive an object of ";
        r2.<init>(r3);
        r3 = r7.transcodeClass;
        r2.append(r3);
        r3 = " but instead got ";
        r2.append(r3);
        if (r0 == 0) goto L_0x00b6;
    L_0x00b1:
        r3 = r0.getClass();
        goto L_0x00b8;
    L_0x00b6:
        r3 = "";
    L_0x00b8:
        r2.append(r3);
        r3 = "{";
        r2.append(r3);
        r2.append(r0);
        r3 = "} inside Resource{";
        r2.append(r3);
        r2.append(r8);
        r8 = "}.";
        r2.append(r8);
        if (r0 == 0) goto L_0x00d8;
    L_0x00d5:
        r8 = "";
        goto L_0x00da;
    L_0x00d8:
        r8 = " To indicate failure return a null Resource object, rather than a Resource object containing null data.";
    L_0x00da:
        r2.append(r8);
        r8 = r2.toString();
        r1.<init>(r8);
        r7.onException(r1);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.request.GenericRequest.onResourceReady(com.bumptech.glide.load.engine.Resource):void");
    }

    public final void onException(Exception exception) {
        if (Log.isLoggable("GenericRequest", 3)) {
            Log.d("GenericRequest", "load failed", exception);
        }
        this.status = Status.FAILED;
        if (this.requestListener == null || !this.requestListener.onException(exception, this.model, this.target, true)) {
            setErrorPlaceholder(exception);
        }
    }

    private void logV(String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(" this: ");
        stringBuilder.append(this.tag);
        Log.v("GenericRequest", stringBuilder.toString());
    }

    private void setErrorPlaceholder(Exception exception) {
        if (this.errorDrawable == null && this.errorResourceId > 0) {
            this.errorDrawable = this.context.getResources().getDrawable(this.errorResourceId);
        }
        Drawable drawable = this.errorDrawable;
        if (drawable == null) {
            drawable = getPlaceholderDrawable();
        }
        this.target.onLoadFailed(exception, drawable);
    }
}
