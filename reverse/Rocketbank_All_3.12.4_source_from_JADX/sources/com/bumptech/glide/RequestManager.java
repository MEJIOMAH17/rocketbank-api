package com.bumptech.glide;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.content.Loader.OnLoadCompleteListener;
import android.support.v4.os.BuildCompat;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.manager.ConnectivityMonitor.ConnectivityListener;
import com.bumptech.glide.manager.ConnectivityMonitorFactory;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.LifecycleListener;
import com.bumptech.glide.signature.ApplicationVersionSignature;
import com.bumptech.glide.util.Util;
import java.io.File;

public final class RequestManager implements LifecycleListener {
    private final Context context;
    private final Glide glide;
    private final Lifecycle lifecycle;
    private final RequestManager optionsApplier$56025085;
    private final BuildCompat requestTracker$293e145d;
    private final OnLoadCompleteListener treeNode$18af5158;

    public final class GenericModelRequest<A, T> {
        private final Class<T> dataClass;
        private final ModelLoader<A, T> modelLoader;

        public final class GenericTypeRequest {
            private final A model;
            private final Class<A> modelClass;
            private final boolean providedModel = true;

            GenericTypeRequest(A a) {
                GenericModelRequest genericModelRequest;
                this.model = a;
                if (a != null) {
                    genericModelRequest = a.getClass();
                } else {
                    genericModelRequest = null;
                }
                this.modelClass = genericModelRequest;
            }

            public final <Z> GenericTranscodeRequest<A, T, Z> as(Class<Z> cls) {
                GenericTranscodeRequest<A, T, Z> genericTranscodeRequest = new GenericTranscodeRequest(RequestManager.this.context, RequestManager.this.glide, this.modelClass, GenericModelRequest.this.modelLoader, GenericModelRequest.this.dataClass, cls, RequestManager.this.requestTracker$293e145d, RequestManager.this.lifecycle, RequestManager.this.optionsApplier$56025085);
                genericTranscodeRequest.load(this.model);
                return genericTranscodeRequest;
            }
        }

        GenericModelRequest(ModelLoader<A, T> modelLoader, Class<T> cls) {
            this.modelLoader = modelLoader;
            this.dataClass = cls;
        }

        public final GenericTypeRequest load(A a) {
            return new GenericTypeRequest(a);
        }
    }

    static class RequestManagerConnectivityListener implements ConnectivityListener {
        private final BuildCompat requestTracker$293e145d;

        public RequestManagerConnectivityListener(BuildCompat buildCompat) {
            this.requestTracker$293e145d = buildCompat;
        }

        public final void onConnectivityChanged(boolean z) {
            if (z) {
                this.requestTracker$293e145d.restartRequests();
            }
        }
    }

    public RequestManager(Context context, Lifecycle lifecycle, OnLoadCompleteListener onLoadCompleteListener) {
        BuildCompat buildCompat = new BuildCompat();
        ConnectivityMonitorFactory connectivityMonitorFactory = new ConnectivityMonitorFactory();
        this(context, lifecycle, onLoadCompleteListener, buildCompat);
    }

    private RequestManager(Context context, final Lifecycle lifecycle, OnLoadCompleteListener onLoadCompleteListener, BuildCompat buildCompat) {
        this.context = context.getApplicationContext();
        this.lifecycle = lifecycle;
        this.treeNode$18af5158 = onLoadCompleteListener;
        this.requestTracker$293e145d = buildCompat;
        this.glide = Glide.get(context);
        this.optionsApplier$56025085 = this;
        context = ConnectivityMonitorFactory.build(context, new RequestManagerConnectivityListener(buildCompat));
        if (Util.isOnBackgroundThread() != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() {
                public final void run() {
                    lifecycle.addListener(RequestManager.this);
                }
            });
        } else {
            lifecycle.addListener(this);
        }
        lifecycle.addListener(context);
    }

    public final void onTrimMemory(int i) {
        this.glide.trimMemory(i);
    }

    public final void onLowMemory() {
        this.glide.clearMemory();
    }

    public final void onDestroy() {
        this.requestTracker$293e145d.clearRequests();
    }

    public final <A, T> GenericModelRequest<A, T> using(ModelLoader<A, T> modelLoader, Class<T> cls) {
        return new GenericModelRequest(modelLoader, cls);
    }

    private <T> DrawableTypeRequest<T> loadGeneric(Class<T> cls) {
        ModelLoader buildStreamModelLoader = Glide.buildStreamModelLoader(cls, this.context);
        ModelLoader buildFileDescriptorModelLoader = Glide.buildFileDescriptorModelLoader(cls, this.context);
        if (cls != null && buildStreamModelLoader == null && buildFileDescriptorModelLoader == null) {
            StringBuilder stringBuilder = new StringBuilder("Unknown type ");
            stringBuilder.append(cls);
            stringBuilder.append(". You must provide a Model of a type for which there is a registered ModelLoader, if you are using a custom model, you must first call Glide#register with a ModelLoaderFactory for your custom model class");
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        return new DrawableTypeRequest(cls, buildStreamModelLoader, buildFileDescriptorModelLoader, this.context, this.glide, this.requestTracker$293e145d, this.lifecycle, this.optionsApplier$56025085);
    }

    public final void onStart() {
        Util.assertMainThread();
        this.requestTracker$293e145d.resumeRequests();
    }

    public final void onStop() {
        Util.assertMainThread();
        this.requestTracker$293e145d.pauseRequests();
    }

    public final DrawableTypeRequest<String> load(String str) {
        return (DrawableTypeRequest) loadGeneric(String.class).load((Object) str);
    }

    public final DrawableTypeRequest<Uri> load(Uri uri) {
        return (DrawableTypeRequest) loadGeneric(Uri.class).load((Object) uri);
    }

    public final DrawableTypeRequest<File> load(File file) {
        return (DrawableTypeRequest) loadGeneric(File.class).load((Object) file);
    }

    public final DrawableTypeRequest<Integer> load(Integer num) {
        return (DrawableTypeRequest) ((DrawableTypeRequest) loadGeneric(Integer.class).signature(ApplicationVersionSignature.obtain(this.context))).load((Object) num);
    }

    public final <T> DrawableTypeRequest<T> load(T t) {
        Class cls;
        if (t != null) {
            cls = t.getClass();
        } else {
            cls = null;
        }
        return (DrawableTypeRequest) loadGeneric(cls).load((Object) t);
    }
}
