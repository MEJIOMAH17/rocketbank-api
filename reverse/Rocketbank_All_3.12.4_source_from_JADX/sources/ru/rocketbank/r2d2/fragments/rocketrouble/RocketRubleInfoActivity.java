package ru.rocketbank.r2d2.fragments.rocketrouble;

import android.content.Context;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.support.constraint.ConstraintLayout;
import android.support.v7.widget.CardView;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.codetail.animation.SupportAnimator;
import io.codetail.animation.ViewAnimationUtils;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.activities.SecuredActivity;
import ru.rocketbank.r2d2.databinding.ActivityRocketRubleInfoBinding;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

/* compiled from: RocketRubleInfoActivity.kt */
public final class RocketRubleInfoActivity extends SecuredActivity {
    public static final Companion Companion = new Companion();
    private static final String KEY_REVEAL = "reveal";
    private static final String KEY_X = "x";
    private static final String KEY_Y = "y";
    private HashMap _$_findViewCache;
    private ActivityRocketRubleInfoBinding activityInviteFriendInfoBinding;
    private SupportAnimator animator;
    private View mContentView;
    private boolean reveal;
    public RocketAPI rocketAPI;
    private Subscription subscription;
    private String url;

    /* compiled from: RocketRubleInfoActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getKEY_REVEAL() {
            return RocketRubleInfoActivity.KEY_REVEAL;
        }

        public final String getKEY_X() {
            return RocketRubleInfoActivity.KEY_X;
        }

        public final String getKEY_Y() {
            return RocketRubleInfoActivity.KEY_Y;
        }

        public final void startActivity(Context context, boolean z, int i, int i2) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intent intent = new Intent(context, RocketRubleInfoActivity.class);
            Companion companion = this;
            intent.putExtra(getKEY_REVEAL(), z);
            intent.putExtra(getKEY_X(), i);
            intent.putExtra(getKEY_Y(), i2);
            context.startActivity(intent);
        }

        public final void startActivity(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            context.startActivity(new Intent(context, RocketRubleInfoActivity.class));
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

    public final RocketAPI getRocketAPI() {
        RocketAPI rocketAPI = this.rocketAPI;
        if (rocketAPI == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketAPI");
        }
        return rocketAPI;
    }

    public final void setRocketAPI(RocketAPI rocketAPI) {
        Intrinsics.checkParameterIsNotNull(rocketAPI, "<set-?>");
        this.rocketAPI = rocketAPI;
    }

    protected final void onCreate(Bundle bundle) {
        Window window = getWindow();
        Intrinsics.checkExpressionValueIsNotNull(window, "window");
        View decorView = window.getDecorView();
        Intrinsics.checkExpressionValueIsNotNull(decorView, "window.decorView");
        decorView.setSystemUiVisibility(1280);
        super.onCreate(bundle);
        this.rocketAPI = RocketApplication.Companion.getInjector().getRocketApi();
        this.activityInviteFriendInfoBinding = (ActivityRocketRubleInfoBinding) DataBindingUtil.setContentView(this, C0859R.layout.activity_rocket_ruble_info);
        ConstraintLayout constraintLayout = (ConstraintLayout) _$_findCachedViewById(C0859R.id.onetwotrip);
        Intrinsics.checkExpressionValueIsNotNull(constraintLayout, "onetwotrip");
        constraintLayout.setVisibility(8);
        constraintLayout = (ConstraintLayout) _$_findCachedViewById(C0859R.id.rocketrubles);
        Intrinsics.checkExpressionValueIsNotNull(constraintLayout, "rocketrubles");
        constraintLayout.setVisibility(8);
        ProgressBar progressBar = (ProgressBar) _$_findCachedViewById(C0859R.id.progressBar);
        Intrinsics.checkExpressionValueIsNotNull(progressBar, "progressBar");
        progressBar.setVisibility(0);
        RocketAPI rocketAPI = this.rocketAPI;
        if (rocketAPI == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketAPI");
        }
        this.subscription = rocketAPI.getRocketRoublesInfo().observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.io()).subscribe((Subscriber) new RocketRubleInfoActivity$onCreate$1(this));
        ((CardView) _$_findCachedViewById(C0859R.id.closeButton)).setOnClickListener(new RocketRubleInfoActivity$onCreate$2(this));
        this.mContentView = findViewById(C0859R.id.fullscreen_content);
        this.reveal = getIntent().getBooleanExtra(KEY_REVEAL, false);
        if (bundle == null && this.reveal != null) {
            bundle = this.mContentView;
            if (bundle == null) {
                Intrinsics.throwNpe();
            }
            bundle.post(new RocketRubleInfoActivity$onCreate$3(this));
        }
    }

    private final void refreshRocketScreen(String str) {
        String str2;
        String str3 = AppEventsConstants.EVENT_PARAM_VALUE_YES;
        boolean areEqual = Intrinsics.areEqual(str, "odin");
        int i = C0859R.string.rocket_title_return;
        if (areEqual) {
            str = 1;
            str2 = 0;
        } else {
            if (Intrinsics.areEqual(str, "poltora") != null) {
                str3 = "1.5";
                str = null;
            } else {
                i = C0859R.string.mrouble_title_return;
                str3 = "1.5";
                str = 1;
            }
            str2 = str;
        }
        LinearLayout linearLayout = (LinearLayout) _$_findCachedViewById(C0859R.id.inLovelyPlaces);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "inLovelyPlaces");
        linearLayout.setVisibility(str != null ? null : 4);
        RocketTextView rocketTextView = (RocketTextView) _$_findCachedViewById(C0859R.id.head);
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "head");
        rocketTextView.setText(getString(i, new Object[]{str3}));
        rocketTextView = (RocketTextView) _$_findCachedViewById(C0859R.id.head);
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "head");
        rocketTextView.setVisibility(0);
        ((RocketTextView) _$_findCachedViewById(C0859R.id.rocket)).setText(str2 != null ? C0859R.string.rouble_eq_mrouble : C0859R.string.rouble_eq_rocket);
    }

    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        Intrinsics.checkParameterIsNotNull(menuItem, "item");
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        reverseAnimation();
        return null;
    }

    public final void onBackPressed() {
        reverseAnimation();
    }

    protected final void onPause() {
        super.onPause();
        unsubscribe(this.subscription);
    }

    private final void reverseAnimation() {
        if (this.reveal) {
            if (this.animator == null) {
                View view = this.mContentView;
                if (view == null) {
                    Intrinsics.throwNpe();
                }
                this.animator = createAnimator(view);
            }
            SupportAnimator supportAnimator = this.animator;
            if (supportAnimator == null) {
                Intrinsics.throwNpe();
            }
            if (supportAnimator.isRunning()) {
                supportAnimator = this.animator;
                if (supportAnimator == null) {
                    Intrinsics.throwNpe();
                }
                supportAnimator.cancel();
                finish();
                return;
            }
            supportAnimator = this.animator;
            if (supportAnimator == null) {
                Intrinsics.throwNpe();
            }
            this.animator = supportAnimator.reverse();
            supportAnimator = this.animator;
            if (supportAnimator == null) {
                Intrinsics.throwNpe();
            }
            supportAnimator.addListener(new RocketRubleInfoActivity$reverseAnimation$1(this));
            supportAnimator = this.animator;
            if (supportAnimator == null) {
                Intrinsics.throwNpe();
            }
            supportAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
            supportAnimator = this.animator;
            if (supportAnimator == null) {
                Intrinsics.throwNpe();
            }
            supportAnimator.setDuration(500);
            supportAnimator = this.animator;
            if (supportAnimator == null) {
                Intrinsics.throwNpe();
            }
            supportAnimator.start();
            return;
        }
        finish();
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
