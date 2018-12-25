package ru.rocketbank.r2d2.activities;

import android.animation.FloatEvaluator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.graphics.drawable.TintAwareDrawable;
import android.support.v4.view.ViewCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.graphics.drawable.DrawerArrowDrawable;
import android.support.v7.widget.Toolbar;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.github.ksoichiro.android.observablescrollview.ObservableScrollView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.AgentResponse;
import ru.rocketbank.core.utils.ImageHelper;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.helpers.UIHelper;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;

/* compiled from: AdminProfileActivity.kt */
public final class AdminProfileActivity extends SecuredActivity {
    public static final Companion Companion = new Companion();
    private static final String KEY_PERMALINK = "permalink";
    private HashMap _$_findViewCache;
    private Subscription agentSubscription;
    private float height;
    private boolean isScroll;

    /* compiled from: AdminProfileActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final void start(Context context, String str) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(str, AdminProfileActivity.KEY_PERMALINK);
            Intent intent = new Intent(context, AdminProfileActivity.class);
            intent.putExtra(AdminProfileActivity.KEY_PERMALINK, str);
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

    protected final void setToolbarSize(Toolbar toolbar, int i) {
        Intrinsics.checkParameterIsNotNull(toolbar, "toolbar");
        LayoutParams layoutParams = toolbar.getLayoutParams();
        layoutParams.height += i;
        toolbar.setPadding(0, i, 0, 0);
        toolbar.setLayoutParams(layoutParams);
    }

    protected final int getStatusBarHeight() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", AbstractSpiCall.ANDROID_CLIENT_TYPE);
        return identifier > 0 ? getResources().getDimensionPixelSize(identifier) : 0;
    }

    protected final void onCreate(Bundle bundle) {
        Window window = getWindow();
        Intrinsics.checkExpressionValueIsNotNull(window, "window");
        View decorView = window.getDecorView();
        Intrinsics.checkExpressionValueIsNotNull(decorView, "window.decorView");
        decorView.setSystemUiVisibility(1280);
        super.onCreate(bundle);
        setContentView((int) C0859R.layout.activity_admin_profile);
        ImageView imageView = (ImageView) findViewById(C0859R.id.avatarImageView);
        ObservableScrollView observableScrollView = (ObservableScrollView) findViewById(C0859R.id.observableScrollView);
        DrawerArrowDrawable drawerArrowDrawable = new DrawerArrowDrawable(this);
        drawerArrowDrawable.setColor(-1);
        drawerArrowDrawable.setProgress(1.0f);
        Drawable wrap = DrawableCompat.wrap(drawerArrowDrawable);
        if (wrap != null) {
            drawerArrowDrawable.mutate();
            if (VERSION.SDK_INT >= 21) {
                wrap.setTint(-1);
            } else if (wrap instanceof TintAwareDrawable) {
                ((TintAwareDrawable) wrap).setTint(-1);
            }
        }
        Toolbar toolbar = (Toolbar) findViewById(C0859R.id.toolbar);
        if (toolbar == null) {
            Intrinsics.throwNpe();
        }
        toolbar.setTitleTextColor(-1);
        toolbar.setNavigationIcon(wrap);
        setToolbarSize(toolbar, getStatusBarHeight());
        setSupportActionBar(toolbar);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
        }
        setTitle(getString(C0859R.string.admin_profile));
        if (observableScrollView == null) {
            Intrinsics.throwNpe();
        }
        observableScrollView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        observableScrollView.setClipToPadding(false);
        observableScrollView.setOnTouchListener(new AdminProfileActivity$onCreate$2(this));
        observableScrollView.setPadding(0, 0, 0, UIHelper.getBottom());
        observableScrollView.setScrollViewCallbacks(new AdminProfileActivity$onCreate$3(this, imageView, toolbar));
        observableScrollView.setVerticalScrollBarEnabled(false);
        observableScrollView.post(new AdminProfileActivity$onCreate$4(this, imageView, toolbar));
    }

    public final void onResume() {
        super.onResume();
        this.agentSubscription = getRocketApi().getAgents(getIntent().getStringExtra(KEY_PERMALINK)).observeOn(AndroidSchedulers.mainThread()).subscribe(new AdminProfileActivity$onResume$1(this));
    }

    public final void onPause() {
        if (this.agentSubscription != null) {
            Subscription subscription = this.agentSubscription;
            if (subscription == null) {
                Intrinsics.throwNpe();
            }
            if (!subscription.isUnsubscribed()) {
                subscription = this.agentSubscription;
                if (subscription == null) {
                    Intrinsics.throwNpe();
                }
                subscription.unsubscribe();
            }
        }
        super.onPause();
    }

    private final void showAgent(AgentResponse agentResponse) {
        ImageView imageView = (ImageView) findViewById(C0859R.id.avatarImageView);
        ImageView imageView2 = (ImageView) findViewById(C0859R.id.starsImageView);
        ProgressBar progressBar = (ProgressBar) findViewById(C0859R.id.progressBar);
        TextView textView = (TextView) findViewById(C0859R.id.infoTextView);
        TextView textView2 = (TextView) findViewById(C0859R.id.nameTextView);
        TextView textView3 = (TextView) findViewById(C0859R.id.timeTextView);
        ObservableScrollView observableScrollView = (ObservableScrollView) findViewById(C0859R.id.observableScrollView);
        Toolbar toolbar = (Toolbar) findViewById(C0859R.id.toolbar);
        agentResponse = agentResponse.getAgent();
        if (agentResponse != null) {
            ColorDrawable colorDrawable = new ColorDrawable(ContextCompat.getColor(this, C0859R.color.black_12));
            ProgressBar progressBar2 = (ProgressBar) findView(C0859R.id.image_progress_bar);
            Intrinsics.checkExpressionValueIsNotNull(progressBar2, "imageProgressBar");
            progressBar2.setVisibility(0);
            ImageHelper imageHelper = ImageHelper.INSTANCE;
            if (imageView == null) {
                Intrinsics.throwNpe();
            }
            imageHelper.loadWithListener(imageView, agentResponse.getAvatarUrl(), colorDrawable, new AdminProfileActivity$showAgent$1(imageView, progressBar2));
            if (textView == null) {
                Intrinsics.throwNpe();
            }
            textView.setText(agentResponse.getInfo());
            if (textView2 == null) {
                Intrinsics.throwNpe();
            }
            textView2.setText(agentResponse.getName());
            float rate = agentResponse.getRate();
            Resources resources = getResources();
            Intrinsics.checkExpressionValueIsNotNull(resources, "resources");
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            if (imageView2 == null) {
                Intrinsics.throwNpe();
            }
            imageView2.getLayoutParams().width = (int) (((8.0f * ((float) ((int) rate))) * displayMetrics.density) + ((19.0f * rate) * displayMetrics.density));
            imageView2.requestLayout();
            if (textView3 == null) {
                Intrinsics.throwNpe();
            }
            StringBuilder stringBuilder = new StringBuilder("В Рокетбанке уже ");
            agentResponse = agentResponse.getTime();
            if (agentResponse == null) {
                Intrinsics.throwNpe();
            }
            stringBuilder.append(agentResponse);
            textView3.setText(stringBuilder.toString());
        }
        if (observableScrollView == null) {
            Intrinsics.throwNpe();
        }
        observableScrollView.animate().alpha(1.0f).setListener(new AdminProfileActivity$showAgent$2(this));
        if (progressBar == null) {
            Intrinsics.throwNpe();
        }
        progressBar.animate().alpha(BitmapDescriptorFactory.HUE_RED);
        agentResponse = ValueAnimator.ofObject((TypeEvaluator) new FloatEvaluator(), new Object[]{Float.valueOf(1.0f), Float.valueOf(BitmapDescriptorFactory.HUE_RED)});
        agentResponse.addUpdateListener(new AdminProfileActivity$showAgent$3(this, toolbar));
        agentResponse.start();
    }

    private final void setToolbar(Toolbar toolbar, float f) {
        toolbar.setBackgroundColor((Math.min(255, Math.max(0, (int) (f * 255.0f))) << 24) + (ContextCompat.getColor(this, C0859R.color.orange) & ViewCompat.MEASURED_SIZE_MASK));
    }
}
