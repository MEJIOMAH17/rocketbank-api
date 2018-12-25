package ru.rocketbank.core.utils;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.widget.ImageView;
import com.bumptech.glide.BitmapRequestBuilder;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.request.RequestListener;
import jp.wasabeef.glide.transformations.ColorFilterTransformation;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.enums.Cobrand;
import ru.rocketbank.core.realm.UserData;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: ImageHelper.kt */
public final class ImageHelper {
    public static final ImageHelper INSTANCE = new ImageHelper();

    /* compiled from: ImageHelper.kt */
    public interface ImageLoadListener {
        void onError(Exception exception);

        void onLoad(GlideDrawable glideDrawable);
    }

    private ImageHelper() {
    }

    public final void loadWithListener(ImageView imageView, String str, Drawable drawable, ImageLoadListener imageLoadListener) {
        Intrinsics.checkParameterIsNotNull(imageView, "imageView");
        Intrinsics.checkParameterIsNotNull(drawable, "placeholder");
        Intrinsics.checkParameterIsNotNull(imageLoadListener, "listener");
        Glide.with(imageView.getContext()).load(str).listener((RequestListener) new ImageHelper$loadWithListener$1(imageLoadListener)).placeholder(drawable).into(imageView);
    }

    public final void load(ImageView imageView, String str) {
        Intrinsics.checkParameterIsNotNull(imageView, "imageView");
        Drawable colorDrawable = new ColorDrawable(ContextCompat.getColor(imageView.getContext(), C0859R.color.black_12));
        Glide.with(imageView.getContext()).load(str).error(colorDrawable).placeholder(colorDrawable).into(imageView);
    }

    public final void load(ImageView imageView, String str, int i) {
        Intrinsics.checkParameterIsNotNull(imageView, "imageView");
        Context context = imageView.getContext();
        if (str != null) {
            Glide.with(context).load(str).placeholder((Drawable) new ColorDrawable(0)).error(i).centerCrop().into(imageView);
        } else {
            Glide.with(context).load(Integer.valueOf(i)).placeholder((Drawable) new ColorDrawable(0)).error(i).centerCrop().into(imageView);
        }
    }

    public final void loadNoPlaceholder(ImageView imageView, String str) {
        Intrinsics.checkParameterIsNotNull(imageView, "imageView");
        Intrinsics.checkParameterIsNotNull(str, "link");
        Glide.with(imageView.getContext()).load(str).into(imageView);
    }

    public final void load(ImageView imageView, String str, Drawable drawable) {
        Intrinsics.checkParameterIsNotNull(imageView, "imageView");
        Intrinsics.checkParameterIsNotNull(drawable, "drawable");
        Glide.with(imageView.getContext()).load(str).error(drawable).centerCrop().placeholder(drawable).into(imageView);
    }

    public final void load(android.widget.ImageView r2, java.lang.String r3, java.lang.String r4) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r1 = this;
        r0 = "imageView";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r2, r0);
        r0 = r4;
        r0 = (java.lang.CharSequence) r0;
        if (r0 == 0) goto L_0x0013;
    L_0x000a:
        r0 = r0.length();
        if (r0 != 0) goto L_0x0011;
    L_0x0010:
        goto L_0x0013;
    L_0x0011:
        r0 = 0;
        goto L_0x0014;
    L_0x0013:
        r0 = 1;
    L_0x0014:
        if (r0 != 0) goto L_0x0025;
    L_0x0016:
        r0 = new android.graphics.drawable.ColorDrawable;	 Catch:{ Exception -> 0x0025 }
        r4 = android.graphics.Color.parseColor(r4);	 Catch:{ Exception -> 0x0025 }
        r0.<init>(r4);	 Catch:{ Exception -> 0x0025 }
        r0 = (android.graphics.drawable.Drawable) r0;	 Catch:{ Exception -> 0x0025 }
        r1.load(r2, r3, r0);	 Catch:{ Exception -> 0x0025 }
        return;
    L_0x0025:
        r1.load(r2, r3);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.utils.ImageHelper.load(android.widget.ImageView, java.lang.String, java.lang.String):void");
    }

    public static final void loadRound(ImageView imageView, String str, int i, CropCircleTransformation cropCircleTransformation) {
        Intrinsics.checkParameterIsNotNull(imageView, "imageView");
        Intrinsics.checkParameterIsNotNull(cropCircleTransformation, "cropCircleTransformation");
        Context context = imageView.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(C0859R.dimen.feed_operation_image_size);
        Glide.with(context).load(str).override(dimensionPixelSize, dimensionPixelSize).placeholder(i).bitmapTransform(new Transformation[]{cropCircleTransformation}).into(imageView);
    }

    public static final void loadRound(ImageView imageView, String str, CropCircleTransformation cropCircleTransformation) {
        Intrinsics.checkParameterIsNotNull(imageView, "imageView");
        Intrinsics.checkParameterIsNotNull(cropCircleTransformation, "cropCircleTransformation");
        if (str != null) {
            Context context = imageView.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "context");
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(C0859R.dimen.feed_operation_image_size);
            Glide.with(context).load(str).override(dimensionPixelSize, dimensionPixelSize).bitmapTransform(cropCircleTransformation).into(imageView);
        }
    }

    public static /* bridge */ /* synthetic */ void loadFromRes$default(int i, ImageView imageView, int i2, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            i2 = C0859R.color.black;
        }
        loadFromRes(i, imageView, i2);
    }

    public static final void loadFromRes(int i, ImageView imageView, int i2) {
        Intrinsics.checkParameterIsNotNull(imageView, "imageView");
        Glide.with(imageView.getContext()).load(Integer.valueOf(i)).centerCrop().placeholder(i2).into(imageView);
    }

    public static final void loadRound(ImageView imageView, int i, CropCircleTransformation cropCircleTransformation) {
        Intrinsics.checkParameterIsNotNull(imageView, "imageView");
        Intrinsics.checkParameterIsNotNull(cropCircleTransformation, "cropCircleTransformation");
        Context context = imageView.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(C0859R.dimen.feed_operation_image_size);
        Glide.with(context).load(Integer.valueOf(i)).override(dimensionPixelSize, dimensionPixelSize).bitmapTransform(cropCircleTransformation).into(imageView);
    }

    public final void loadCover(ImageView imageView, UserData userData) {
        Intrinsics.checkParameterIsNotNull(imageView, "imageView");
        Intrinsics.checkParameterIsNotNull(userData, "userData");
        String realmGet$cover = userData.realmGet$cover();
        if (userData != null) {
            userData = Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName());
            if (userData != null) {
                load(imageView, realmGet$cover, userData.getDrawableResId());
            }
        }
        userData = Cobrand.ROCKETBANK;
        load(imageView, realmGet$cover, userData.getDrawableResId());
    }

    public final void loadDarkCover(ImageView imageView, UserData userData) {
        int drawableResId;
        Glide glide;
        Intrinsics.checkParameterIsNotNull(imageView, "imageView");
        Intrinsics.checkParameterIsNotNull(userData, "userData");
        String realmGet$cover = userData.realmGet$cover();
        Context context = imageView.getContext();
        if (userData != null) {
            userData = Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName());
            if (userData != null) {
                drawableResId = userData.getDrawableResId();
                if (realmGet$cover == null) {
                    BitmapRequestBuilder format = Glide.with(context).load(realmGet$cover).asBitmap().diskCacheStrategy(DiskCacheStrategy.ALL).format(DecodeFormat.PREFER_ARGB_8888);
                    Transformation[] transformationArr = new Transformation[2];
                    transformationArr[0] = new ColorFilterTransformation(context, Color.argb(170, 0, 0, 0));
                    glide = Glide.get(context);
                    Intrinsics.checkExpressionValueIsNotNull(glide, "Glide.get(context)");
                    transformationArr[1] = new CenterCrop(glide.getBitmapPool());
                    format.transform(transformationArr).dontAnimate().error(drawableResId).into(imageView);
                }
                userData = Glide.with(context).load(Integer.valueOf(drawableResId)).asBitmap().diskCacheStrategy(DiskCacheStrategy.ALL).format(DecodeFormat.PREFER_ARGB_8888);
                Transformation[] transformationArr2 = new Transformation[2];
                transformationArr2[0] = new ColorFilterTransformation(context, Color.argb(170, 0, 0, 0));
                glide = Glide.get(context);
                Intrinsics.checkExpressionValueIsNotNull(glide, "Glide.get(context)");
                transformationArr2[1] = new CenterCrop(glide.getBitmapPool());
                userData.transform(transformationArr2).dontAnimate().into(imageView);
                return;
            }
        }
        userData = Cobrand.ROCKETBANK;
        drawableResId = userData.getDrawableResId();
        if (realmGet$cover == null) {
            userData = Glide.with(context).load(Integer.valueOf(drawableResId)).asBitmap().diskCacheStrategy(DiskCacheStrategy.ALL).format(DecodeFormat.PREFER_ARGB_8888);
            Transformation[] transformationArr22 = new Transformation[2];
            transformationArr22[0] = new ColorFilterTransformation(context, Color.argb(170, 0, 0, 0));
            glide = Glide.get(context);
            Intrinsics.checkExpressionValueIsNotNull(glide, "Glide.get(context)");
            transformationArr22[1] = new CenterCrop(glide.getBitmapPool());
            userData.transform(transformationArr22).dontAnimate().into(imageView);
            return;
        }
        BitmapRequestBuilder format2 = Glide.with(context).load(realmGet$cover).asBitmap().diskCacheStrategy(DiskCacheStrategy.ALL).format(DecodeFormat.PREFER_ARGB_8888);
        Transformation[] transformationArr3 = new Transformation[2];
        transformationArr3[0] = new ColorFilterTransformation(context, Color.argb(170, 0, 0, 0));
        glide = Glide.get(context);
        Intrinsics.checkExpressionValueIsNotNull(glide, "Glide.get(context)");
        transformationArr3[1] = new CenterCrop(glide.getBitmapPool());
        format2.transform(transformationArr3).dontAnimate().error(drawableResId).into(imageView);
    }
}
