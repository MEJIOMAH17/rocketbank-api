package ru.rocketbank.r2d2.activities;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.bumptech.glide.DrawableTypeRequest;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.target.SimpleTarget;
import com.bumptech.glide.request.target.Target;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import com.facebook.share.internal.ShareConstants;
import java.io.File;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: PhotoViewActivity.kt */
public final class PhotoViewActivity extends SecuredActivity {
    public static final Companion Companion = new Companion();
    private static final String PHOTO_VIEW_URI = "PHOTO_VIEW_URI";
    private static final String PHOTO_VIEW_URL = "PHOTO_VIEW_URL";
    private HashMap _$_findViewCache;
    private SubsamplingScaleImageView imageView;
    private SimpleTarget<File> target;

    /* compiled from: PhotoViewActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getPHOTO_VIEW_URL() {
            return PhotoViewActivity.PHOTO_VIEW_URL;
        }

        public final String getPHOTO_VIEW_URI() {
            return PhotoViewActivity.PHOTO_VIEW_URI;
        }

        public final void start(Context context, Uri uri) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(uri, ShareConstants.MEDIA_URI);
            Intent intent = new Intent(context, PhotoViewActivity.class);
            intent.putExtra(getPHOTO_VIEW_URI(), uri);
            context.startActivity(intent);
        }

        public final void start(Context context, String str) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(str, "url");
            Intent intent = new Intent(context, PhotoViewActivity.class);
            intent.putExtra(getPHOTO_VIEW_URL(), str);
            context.startActivity(intent);
        }
    }

    public final void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public final View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        view = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), view);
        return view;
    }

    public static final /* synthetic */ SubsamplingScaleImageView access$getImageView$p(PhotoViewActivity photoViewActivity) {
        photoViewActivity = photoViewActivity.imageView;
        if (photoViewActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("imageView");
        }
        return photoViewActivity;
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) C0859R.layout.activity_photo_view);
        bundle = findViewById(C0859R.id.image);
        if (bundle == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView");
        }
        this.imageView = (SubsamplingScaleImageView) bundle;
        bundle = getSupportActionBar();
        if (bundle != null) {
            bundle.setDisplayHomeAsUpEnabled(true);
        }
    }

    protected final void onResume() {
        DrawableTypeRequest load;
        super.onResume();
        String stringExtra = getIntent().getStringExtra(PHOTO_VIEW_URL);
        Uri uri = (Uri) getIntent().getParcelableExtra(PHOTO_VIEW_URI);
        this.target = new PhotoViewActivity$onResume$1(this);
        if (uri == null) {
            load = Glide.with((FragmentActivity) this).load(stringExtra);
            Intrinsics.checkExpressionValueIsNotNull(load, "Glide.with(this).load(url)");
        } else {
            load = Glide.with((FragmentActivity) this).load(uri);
            Intrinsics.checkExpressionValueIsNotNull(load, "Glide.with(this).load(uri)");
        }
        SimpleTarget simpleTarget = this.target;
        if (simpleTarget == null) {
            Intrinsics.throwUninitializedPropertyAccessException("target");
        }
        load.downloadOnly(simpleTarget);
    }

    public final void onBackPressed() {
        keepUnlocked();
        super.onBackPressed();
    }

    protected final void onPause() {
        SimpleTarget simpleTarget = this.target;
        if (simpleTarget == null) {
            Intrinsics.throwUninitializedPropertyAccessException("target");
        }
        Glide.clear((Target) simpleTarget);
        super.onPause();
    }
}
