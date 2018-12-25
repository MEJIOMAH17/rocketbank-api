package com.bumptech.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.support.compat.C0886R.id;
import android.support.v4.os.BuildCompat;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.resource.UnitTransformation;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.provider.ChildLoadProvider;
import com.bumptech.glide.provider.LoadProvider;
import com.bumptech.glide.request.FutureTarget;
import com.bumptech.glide.request.GenericRequest;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.RequestFutureTarget;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.animation.GlideAnimationFactory;
import com.bumptech.glide.request.animation.NoAnimation;
import com.bumptech.glide.request.target.BitmapImageViewTarget;
import com.bumptech.glide.request.target.DrawableImageViewTarget;
import com.bumptech.glide.request.target.GlideDrawableImageViewTarget;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.signature.EmptySignature;
import com.bumptech.glide.util.Util;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;
import java.io.File;

public class GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> implements Cloneable {
    private GlideAnimationFactory<TranscodeType> animationFactory;
    protected final Context context;
    private DiskCacheStrategy diskCacheStrategy;
    private int errorId;
    private Drawable errorPlaceholder;
    protected final Glide glide;
    private boolean isCacheable;
    private boolean isModelSet;
    private boolean isTransformationSet;
    protected final Lifecycle lifecycle;
    private ChildLoadProvider<ModelType, DataType, ResourceType, TranscodeType> loadProvider;
    private ModelType model;
    protected final Class<ModelType> modelClass;
    private int overrideHeight;
    private int overrideWidth;
    private Drawable placeholderDrawable;
    private int placeholderId;
    private Priority priority;
    private RequestListener<? super ModelType, TranscodeType> requestListener;
    protected final BuildCompat requestTracker$293e145d;
    private Key signature;
    private Float sizeMultiplier;
    protected final Class<TranscodeType> transcodeClass;
    private Transformation<ResourceType> transformation;

    /* renamed from: com.bumptech.glide.GenericRequestBuilder$2 */
    static /* synthetic */ class C02962 {
        static final /* synthetic */ int[] $SwitchMap$android$widget$ImageView$ScaleType = new int[ScaleType.values().length];

        static {
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
            r0 = android.widget.ImageView.ScaleType.values();
            r0 = r0.length;
            r0 = new int[r0];
            $SwitchMap$android$widget$ImageView$ScaleType = r0;
            r0 = $SwitchMap$android$widget$ImageView$ScaleType;	 Catch:{ NoSuchFieldError -> 0x0014 }
            r1 = android.widget.ImageView.ScaleType.CENTER_CROP;	 Catch:{ NoSuchFieldError -> 0x0014 }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x0014 }
            r2 = 1;	 Catch:{ NoSuchFieldError -> 0x0014 }
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x0014 }
        L_0x0014:
            r0 = $SwitchMap$android$widget$ImageView$ScaleType;	 Catch:{ NoSuchFieldError -> 0x001f }
            r1 = android.widget.ImageView.ScaleType.FIT_CENTER;	 Catch:{ NoSuchFieldError -> 0x001f }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x001f }
            r2 = 2;	 Catch:{ NoSuchFieldError -> 0x001f }
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x001f }
        L_0x001f:
            r0 = $SwitchMap$android$widget$ImageView$ScaleType;	 Catch:{ NoSuchFieldError -> 0x002a }
            r1 = android.widget.ImageView.ScaleType.FIT_START;	 Catch:{ NoSuchFieldError -> 0x002a }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x002a }
            r2 = 3;	 Catch:{ NoSuchFieldError -> 0x002a }
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x002a }
        L_0x002a:
            r0 = $SwitchMap$android$widget$ImageView$ScaleType;	 Catch:{ NoSuchFieldError -> 0x0035 }
            r1 = android.widget.ImageView.ScaleType.FIT_END;	 Catch:{ NoSuchFieldError -> 0x0035 }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x0035 }
            r2 = 4;	 Catch:{ NoSuchFieldError -> 0x0035 }
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x0035 }
        L_0x0035:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.GenericRequestBuilder.2.<clinit>():void");
        }
    }

    void applyCenterCrop() {
    }

    void applyFitCenter() {
    }

    GenericRequestBuilder(LoadProvider<ModelType, DataType, ResourceType, TranscodeType> loadProvider, Class<TranscodeType> cls, GenericRequestBuilder<ModelType, ?, ?, ?> genericRequestBuilder) {
        this(genericRequestBuilder.context, genericRequestBuilder.modelClass, loadProvider, cls, genericRequestBuilder.glide, genericRequestBuilder.requestTracker$293e145d, genericRequestBuilder.lifecycle);
        this.model = genericRequestBuilder.model;
        this.isModelSet = genericRequestBuilder.isModelSet;
        this.signature = genericRequestBuilder.signature;
        this.diskCacheStrategy = genericRequestBuilder.diskCacheStrategy;
        this.isCacheable = genericRequestBuilder.isCacheable;
    }

    GenericRequestBuilder(Context context, Class<ModelType> cls, LoadProvider<ModelType, DataType, ResourceType, TranscodeType> loadProvider, Class<TranscodeType> cls2, Glide glide, BuildCompat buildCompat, Lifecycle lifecycle) {
        this.signature = EmptySignature.obtain();
        this.sizeMultiplier = Float.valueOf(1.0f);
        ChildLoadProvider childLoadProvider = null;
        this.priority = null;
        this.isCacheable = true;
        this.animationFactory = NoAnimation.getFactory();
        this.overrideHeight = -1;
        this.overrideWidth = -1;
        this.diskCacheStrategy = DiskCacheStrategy.RESULT;
        this.transformation = UnitTransformation.get();
        this.context = context;
        this.modelClass = cls;
        this.transcodeClass = cls2;
        this.glide = glide;
        this.requestTracker$293e145d = buildCompat;
        this.lifecycle = lifecycle;
        if (loadProvider != null) {
            childLoadProvider = new ChildLoadProvider(loadProvider);
        }
        this.loadProvider = childLoadProvider;
        if (context == null) {
            throw new NullPointerException("Context can't be null");
        } else if (cls != null && loadProvider == null) {
            throw new NullPointerException("LoadProvider must not be null");
        }
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> decoder(ResourceDecoder<DataType, ResourceType> resourceDecoder) {
        if (this.loadProvider != null) {
            this.loadProvider.setSourceDecoder(resourceDecoder);
        }
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> cacheDecoder(ResourceDecoder<File, ResourceType> resourceDecoder) {
        if (this.loadProvider != null) {
            this.loadProvider.setCacheDecoder(resourceDecoder);
        }
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> sourceEncoder$29772719(AnimatorUpdateListener<DataType> animatorUpdateListener) {
        if (this.loadProvider != null) {
            this.loadProvider.setSourceEncoder$2afe9be6(animatorUpdateListener);
        }
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> diskCacheStrategy(DiskCacheStrategy diskCacheStrategy) {
        this.diskCacheStrategy = diskCacheStrategy;
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> priority(Priority priority) {
        this.priority = priority;
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> transform(Transformation<ResourceType>... transformationArr) {
        this.isTransformationSet = true;
        if (transformationArr.length == 1) {
            this.transformation = transformationArr[0];
        } else {
            this.transformation = new id(transformationArr);
        }
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> dontTransform() {
        return transform(UnitTransformation.get());
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> dontAnimate() {
        return animate(NoAnimation.getFactory());
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> animate(GlideAnimationFactory<TranscodeType> glideAnimationFactory) {
        if (glideAnimationFactory == null) {
            throw new NullPointerException("Animation factory must not be null!");
        }
        this.animationFactory = glideAnimationFactory;
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> placeholder(int i) {
        this.placeholderId = i;
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> placeholder(Drawable drawable) {
        this.placeholderDrawable = drawable;
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> error(int i) {
        this.errorId = i;
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> error(Drawable drawable) {
        this.errorPlaceholder = drawable;
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> listener(RequestListener<? super ModelType, TranscodeType> requestListener) {
        this.requestListener = requestListener;
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> skipMemoryCache(boolean z) {
        this.isCacheable = z ^ 1;
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> override(int i, int i2) {
        if (Util.isValidDimensions(i, i2)) {
            this.overrideWidth = i;
            this.overrideHeight = i2;
            return this;
        }
        throw new IllegalArgumentException("Width and height must be Target#SIZE_ORIGINAL or > 0");
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> signature(Key key) {
        if (key == null) {
            throw new NullPointerException("Signature must not be null");
        }
        this.signature = key;
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> load(ModelType modelType) {
        this.model = modelType;
        this.isModelSet = true;
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> clone() {
        try {
            GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> genericRequestBuilder = (GenericRequestBuilder) super.clone();
            genericRequestBuilder.loadProvider = this.loadProvider != null ? this.loadProvider.clone() : null;
            return genericRequestBuilder;
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    public final <Y extends Target<TranscodeType>> Y into(Y y) {
        GenericRequestBuilder genericRequestBuilder = this;
        Y y2 = y;
        Util.assertMainThread();
        if (y2 == null) {
            throw new IllegalArgumentException("You must pass in a non null Target");
        } else if (genericRequestBuilder.isModelSet) {
            Request request = y.getRequest();
            if (request != null) {
                request.clear();
                genericRequestBuilder.requestTracker$293e145d.removeRequest(request);
                request.recycle();
            }
            if (genericRequestBuilder.priority == null) {
                genericRequestBuilder.priority = Priority.NORMAL;
            }
            float floatValue = genericRequestBuilder.sizeMultiplier.floatValue();
            Priority priority = genericRequestBuilder.priority;
            LoadProvider loadProvider = genericRequestBuilder.loadProvider;
            Object obj = genericRequestBuilder.model;
            Key key = genericRequestBuilder.signature;
            Context context = genericRequestBuilder.context;
            Drawable drawable = genericRequestBuilder.placeholderDrawable;
            int i = genericRequestBuilder.placeholderId;
            Drawable drawable2 = genericRequestBuilder.errorPlaceholder;
            int i2 = genericRequestBuilder.errorId;
            RequestListener requestListener = genericRequestBuilder.requestListener;
            Engine engine = genericRequestBuilder.glide.getEngine();
            Transformation transformation = genericRequestBuilder.transformation;
            Class cls = genericRequestBuilder.transcodeClass;
            Transformation transformation2 = transformation;
            boolean z = genericRequestBuilder.isCacheable;
            GlideAnimationFactory glideAnimationFactory = genericRequestBuilder.animationFactory;
            int i3 = genericRequestBuilder.overrideWidth;
            int i4 = genericRequestBuilder.overrideHeight;
            Class cls2 = cls;
            boolean z2 = z;
            DiskCacheStrategy diskCacheStrategy = genericRequestBuilder.diskCacheStrategy;
            Y y3 = y2;
            request = GenericRequest.obtain$4305c551$4df9a3d1(loadProvider, obj, key, context, priority, y2, floatValue, drawable, i, drawable2, i2, requestListener, engine, transformation2, cls2, z2, glideAnimationFactory, i3, i4, diskCacheStrategy);
            y3.setRequest(request);
            Y y4 = y3;
            this.lifecycle.addListener(y4);
            this.requestTracker$293e145d.runRequest(request);
            return y4;
        } else {
            throw new IllegalArgumentException("You must first set a model (try #load())");
        }
    }

    public Target<TranscodeType> into(ImageView imageView) {
        Util.assertMainThread();
        if (imageView == null) {
            throw new IllegalArgumentException("You must pass in a non null View");
        }
        Target glideDrawableImageViewTarget;
        if (!(this.isTransformationSet || imageView.getScaleType() == null)) {
            switch (C02962.$SwitchMap$android$widget$ImageView$ScaleType[imageView.getScaleType().ordinal()]) {
                case 1:
                    applyCenterCrop();
                    break;
                case 2:
                case 3:
                case 4:
                    applyFitCenter();
                    break;
                default:
                    break;
            }
        }
        Class cls = this.transcodeClass;
        if (GlideDrawable.class.isAssignableFrom(cls)) {
            glideDrawableImageViewTarget = new GlideDrawableImageViewTarget(imageView);
        } else if (Bitmap.class.equals(cls)) {
            glideDrawableImageViewTarget = new BitmapImageViewTarget(imageView);
        } else if (Drawable.class.isAssignableFrom(cls)) {
            glideDrawableImageViewTarget = new DrawableImageViewTarget(imageView);
        } else {
            StringBuilder stringBuilder = new StringBuilder("Unhandled class: ");
            stringBuilder.append(cls);
            stringBuilder.append(", try .as*(Class).transcode(ResourceTranscoder)");
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        return into(glideDrawableImageViewTarget);
    }

    public final FutureTarget<TranscodeType> into(int i, int i2) {
        final FutureTarget requestFutureTarget = new RequestFutureTarget(this.glide.getMainHandler(), i, i2);
        this.glide.getMainHandler().post(new Runnable() {
            public final void run() {
                if (!requestFutureTarget.isCancelled()) {
                    GenericRequestBuilder.this.into(requestFutureTarget);
                }
            }
        });
        return requestFutureTarget;
    }
}
