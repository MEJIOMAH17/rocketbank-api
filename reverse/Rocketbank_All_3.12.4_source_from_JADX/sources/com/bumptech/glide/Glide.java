package com.bumptech.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.support.graphics.drawable.AnimationUtilsCompat;
import android.support.mediacompat.C0907R.color;
import android.support.mediacompat.C0907R.id;
import android.support.percent.C0908R;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.graphics.PathParser;
import android.support.v4.graphics.TypefaceCompatUtil;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.os.TraceCompat;
import android.util.Log;
import android.view.View;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.engine.prefill.BitmapPreFiller;
import com.bumptech.glide.load.model.GenericLoaderFactory;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.ImageVideoWrapper;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.file_descriptor.FileDescriptorFileLoader.Factory;
import com.bumptech.glide.load.model.file_descriptor.FileDescriptorResourceLoader;
import com.bumptech.glide.load.model.file_descriptor.FileDescriptorStringLoader;
import com.bumptech.glide.load.model.file_descriptor.FileDescriptorUriLoader;
import com.bumptech.glide.load.model.stream.HttpUrlGlideUrlLoader;
import com.bumptech.glide.load.model.stream.StreamByteArrayLoader;
import com.bumptech.glide.load.model.stream.StreamFileLoader;
import com.bumptech.glide.load.model.stream.StreamResourceLoader;
import com.bumptech.glide.load.model.stream.StreamStringLoader;
import com.bumptech.glide.load.model.stream.StreamUriLoader;
import com.bumptech.glide.load.model.stream.StreamUrlLoader;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.bumptech.glide.load.resource.bitmap.FitCenter;
import com.bumptech.glide.load.resource.bitmap.GlideBitmapDrawable;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.load.resource.file.StreamFileDataLoadProvider;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gifbitmap.GifBitmapWrapper;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.load.resource.transcode.TranscoderRegistry;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.bumptech.glide.module.GlideModule;
import com.bumptech.glide.module.ManifestParser;
import com.bumptech.glide.provider.DataLoadProvider;
import com.bumptech.glide.provider.DataLoadProviderRegistry;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.target.ViewTarget;
import com.bumptech.glide.util.Util;
import com.mikepenz.materialdrawer.DrawerUtils;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.util.Collections;
import java.util.Iterator;

public class Glide {
    private static volatile Glide glide = null;
    private static boolean modulesEnabled = true;
    private final CenterCrop bitmapCenterCrop;
    private final FitCenter bitmapFitCenter;
    private final BitmapPool bitmapPool;
    private final BitmapPreFiller bitmapPreFiller;
    private final DataLoadProviderRegistry dataLoadProviderRegistry;
    private final DecodeFormat decodeFormat;
    private final DrawerUtils drawableCenterCrop$6dda16d5;
    private final DrawerUtils drawableFitCenter$6dda16d5;
    private final Engine engine;
    private final TraceCompat imageViewTargetFactory$5eef9609 = new TraceCompat();
    private final GenericLoaderFactory loaderFactory;
    private final Handler mainHandler;
    private final MemoryCache memoryCache;
    private final TranscoderRegistry transcoderRegistry = new TranscoderRegistry();

    static class ClearTarget extends ViewTarget<View, Object> {
        public final void onLoadCleared(Drawable drawable) {
        }

        public final void onLoadFailed(Exception exception, Drawable drawable) {
        }

        public final void onLoadStarted(Drawable drawable) {
        }

        public final void onResourceReady(Object obj, GlideAnimation<? super Object> glideAnimation) {
        }

        public ClearTarget(View view) {
            super(view);
        }
    }

    public static Glide get(Context context) {
        if (glide == null) {
            synchronized (Glide.class) {
                if (glide == null) {
                    context = context.getApplicationContext();
                    GlideBuilder glideBuilder = new GlideBuilder(context);
                    if (modulesEnabled) {
                        context = new ManifestParser(context).parse();
                    } else {
                        context = Collections.emptyList();
                    }
                    Iterator it = r4.iterator();
                    while (it.hasNext()) {
                        it.next();
                    }
                    glide = glideBuilder.createGlide();
                    for (GlideModule registerComponents$6690f2bc : r4) {
                        registerComponents$6690f2bc.registerComponents$6690f2bc(glide);
                    }
                }
            }
        }
        return glide;
    }

    Glide(Engine engine, MemoryCache memoryCache, BitmapPool bitmapPool, Context context, DecodeFormat decodeFormat) {
        this.engine = engine;
        this.bitmapPool = bitmapPool;
        this.memoryCache = memoryCache;
        this.decodeFormat = decodeFormat;
        this.loaderFactory = new GenericLoaderFactory(context);
        this.mainHandler = new Handler(Looper.getMainLooper());
        this.bitmapPreFiller = new BitmapPreFiller(memoryCache, bitmapPool, decodeFormat);
        this.dataLoadProviderRegistry = new DataLoadProviderRegistry();
        engine = new id(bitmapPool, decodeFormat);
        this.dataLoadProviderRegistry.register(InputStream.class, Bitmap.class, engine);
        memoryCache = new AnimationUtilsCompat(bitmapPool, decodeFormat);
        this.dataLoadProviderRegistry.register(ParcelFileDescriptor.class, Bitmap.class, memoryCache);
        decodeFormat = new color(engine, memoryCache);
        this.dataLoadProviderRegistry.register(ImageVideoWrapper.class, Bitmap.class, decodeFormat);
        engine = new C0908R(context, bitmapPool);
        this.dataLoadProviderRegistry.register(InputStream.class, GifDrawable.class, engine);
        this.dataLoadProviderRegistry.register(ImageVideoWrapper.class, GifBitmapWrapper.class, new PathParser(decodeFormat, engine, bitmapPool));
        this.dataLoadProviderRegistry.register(InputStream.class, File.class, new StreamFileDataLoadProvider());
        decodeFormat = new Factory();
        this.loaderFactory.register(File.class, ParcelFileDescriptor.class, decodeFormat);
        decodeFormat = new StreamFileLoader.Factory();
        this.loaderFactory.register(File.class, InputStream.class, decodeFormat);
        decodeFormat = new FileDescriptorResourceLoader.Factory();
        this.loaderFactory.register(Integer.TYPE, ParcelFileDescriptor.class, decodeFormat);
        decodeFormat = new StreamResourceLoader.Factory();
        this.loaderFactory.register(Integer.TYPE, InputStream.class, decodeFormat);
        decodeFormat = new FileDescriptorResourceLoader.Factory();
        this.loaderFactory.register(Integer.class, ParcelFileDescriptor.class, decodeFormat);
        decodeFormat = new StreamResourceLoader.Factory();
        this.loaderFactory.register(Integer.class, InputStream.class, decodeFormat);
        decodeFormat = new FileDescriptorStringLoader.Factory();
        this.loaderFactory.register(String.class, ParcelFileDescriptor.class, decodeFormat);
        decodeFormat = new StreamStringLoader.Factory();
        this.loaderFactory.register(String.class, InputStream.class, decodeFormat);
        decodeFormat = new FileDescriptorUriLoader.Factory();
        this.loaderFactory.register(Uri.class, ParcelFileDescriptor.class, decodeFormat);
        decodeFormat = new StreamUriLoader.Factory();
        this.loaderFactory.register(Uri.class, InputStream.class, decodeFormat);
        decodeFormat = new StreamUrlLoader.Factory();
        this.loaderFactory.register(URL.class, InputStream.class, decodeFormat);
        decodeFormat = new HttpUrlGlideUrlLoader.Factory();
        this.loaderFactory.register(GlideUrl.class, InputStream.class, decodeFormat);
        decodeFormat = new StreamByteArrayLoader.Factory();
        this.loaderFactory.register(byte[].class, InputStream.class, decodeFormat);
        this.transcoderRegistry.register(Bitmap.class, GlideBitmapDrawable.class, new DrawableCompat(context.getResources(), bitmapPool));
        this.transcoderRegistry.register(GifBitmapWrapper.class, GlideDrawable.class, new TypefaceCompatUtil(new DrawableCompat(context.getResources(), bitmapPool)));
        this.bitmapCenterCrop = new CenterCrop(bitmapPool);
        this.drawableCenterCrop$6dda16d5 = new DrawerUtils(bitmapPool, this.bitmapCenterCrop);
        this.bitmapFitCenter = new FitCenter(bitmapPool);
        this.drawableFitCenter$6dda16d5 = new DrawerUtils(bitmapPool, this.bitmapFitCenter);
    }

    public final BitmapPool getBitmapPool() {
        return this.bitmapPool;
    }

    final <Z, R> ResourceTranscoder<Z, R> buildTranscoder(Class<Z> cls, Class<R> cls2) {
        return this.transcoderRegistry.get(cls, cls2);
    }

    final <T, Z> DataLoadProvider<T, Z> buildDataProvider(Class<T> cls, Class<Z> cls2) {
        return this.dataLoadProviderRegistry.get(cls, cls2);
    }

    final Engine getEngine() {
        return this.engine;
    }

    final CenterCrop getBitmapCenterCrop() {
        return this.bitmapCenterCrop;
    }

    final FitCenter getBitmapFitCenter() {
        return this.bitmapFitCenter;
    }

    final DrawerUtils getDrawableCenterCrop$481ff18a() {
        return this.drawableCenterCrop$6dda16d5;
    }

    final DrawerUtils getDrawableFitCenter$481ff18a() {
        return this.drawableFitCenter$6dda16d5;
    }

    final Handler getMainHandler() {
        return this.mainHandler;
    }

    final DecodeFormat getDecodeFormat() {
        return this.decodeFormat;
    }

    public final void clearMemory() {
        Util.assertMainThread();
        this.memoryCache.clearMemory();
        this.bitmapPool.clearMemory();
    }

    public final void trimMemory(int i) {
        Util.assertMainThread();
        this.memoryCache.trimMemory(i);
        this.bitmapPool.trimMemory(i);
    }

    public static void clear(Target<?> target) {
        Util.assertMainThread();
        Request request = target.getRequest();
        if (request != null) {
            request.clear();
            target.setRequest(null);
        }
    }

    public static void clear(View view) {
        Target clearTarget = new ClearTarget(view);
        Util.assertMainThread();
        view = clearTarget.getRequest();
        if (view != null) {
            view.clear();
            clearTarget.setRequest(null);
        }
    }

    public final <T, Y> void register(Class<T> cls, Class<Y> cls2, ModelLoaderFactory<T, Y> modelLoaderFactory) {
        this.loaderFactory.register(cls, cls2, modelLoaderFactory);
    }

    private static <T, Y> ModelLoader<T, Y> buildModelLoader(Class<T> cls, Class<Y> cls2, Context context) {
        if (cls != null) {
            return get(context).loaderFactory.buildModelLoader(cls, cls2);
        }
        if (Log.isLoggable("Glide", 3) != null) {
            Log.d("Glide", "Unable to load null model, setting placeholder only");
        }
        return null;
    }

    public static <T> ModelLoader<T, InputStream> buildStreamModelLoader(Class<T> cls, Context context) {
        return buildModelLoader(cls, InputStream.class, context);
    }

    public static <T> ModelLoader<T, ParcelFileDescriptor> buildFileDescriptorModelLoader(Class<T> cls, Context context) {
        return buildModelLoader(cls, ParcelFileDescriptor.class, context);
    }

    public static RequestManager with(Context context) {
        return RequestManagerRetriever.get().get(context);
    }

    public static RequestManager with(FragmentActivity fragmentActivity) {
        return RequestManagerRetriever.get().get(fragmentActivity);
    }

    public static RequestManager with(Fragment fragment) {
        return RequestManagerRetriever.get().get(fragment);
    }
}
