package ru.rocketbank.r2d2.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.codetail.animation.SupportAnimator;
import io.codetail.animation.ViewAnimationUtils;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: ProvidersActivity.kt */
public final class ProvidersActivity extends SecuredActivity {
    public static final Companion Companion = new Companion();
    private static final String KEY_REVEAL = "reveal";
    private static final String KEY_X = "x";
    private static final String KEY_Y = "y";
    private HashMap _$_findViewCache;
    private SupportAnimator animator;
    private boolean isReveal;
    private View rootView;

    /* compiled from: ProvidersActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getKEY_REVEAL() {
            return ProvidersActivity.KEY_REVEAL;
        }

        public final String getKEY_X() {
            return ProvidersActivity.KEY_X;
        }

        public final String getKEY_Y() {
            return ProvidersActivity.KEY_Y;
        }

        public final void startActivity(Context context, boolean z, int i, int i2) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intent intent = new Intent(context, ProvidersActivity.class);
            Companion companion = this;
            intent.putExtra(getKEY_REVEAL(), z);
            intent.putExtra(getKEY_X(), i);
            intent.putExtra(getKEY_Y(), i2);
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

    public static final /* synthetic */ View access$getRootView$p(ProvidersActivity providersActivity) {
        providersActivity = providersActivity.rootView;
        if (providersActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rootView");
        }
        return providersActivity;
    }

    protected final void onCreate(Bundle bundle) {
        Window window = getWindow();
        Intrinsics.checkExpressionValueIsNotNull(window, "window");
        View decorView = window.getDecorView();
        Intrinsics.checkExpressionValueIsNotNull(decorView, "window.decorView");
        decorView.setSystemUiVisibility(1280);
        super.onCreate(bundle);
        setContentView((int) C0859R.layout.activity_providers);
        setupDefaultToolbar(C0859R.id.toolbar);
        this.isReveal = getIntent().getBooleanExtra(KEY_REVEAL, false);
        decorView = findViewById(C0859R.id.root);
        if (decorView == null) {
            Intrinsics.throwNpe();
        }
        this.rootView = decorView;
        if (bundle == null && this.isReveal != null) {
            bundle = this.rootView;
            if (bundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rootView");
            }
            bundle.post(new ProvidersActivity$onCreate$1(this));
        }
    }

    private final SupportAnimator createAnimator(View view) {
        int intExtra = getIntent().getIntExtra(KEY_X, view.getRight());
        int intExtra2 = getIntent().getIntExtra(KEY_Y, view.getBottom());
        view = ViewAnimationUtils.createCircularReveal(view, intExtra, intExtra2, BitmapDescriptorFactory.HUE_RED, (float) Math.hypot((double) Math.max(intExtra, view.getWidth() - intExtra), (double) Math.max(intExtra2, view.getHeight() - intExtra2)));
        Intrinsics.checkExpressionValueIsNotNull(view, "animator");
        view.setInterpolator(new AccelerateDecelerateInterpolator());
        view.setDuration(500);
        return view;
    }
}
