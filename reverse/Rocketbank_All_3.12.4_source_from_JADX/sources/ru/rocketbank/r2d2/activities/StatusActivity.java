package ru.rocketbank.r2d2.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.codetail.animation.SupportAnimator;
import io.codetail.animation.ViewAnimationUtils;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import ru.rocketbank.core.model.dto.ResponseData;
import ru.rocketbank.core.network.exception.RocketResponseException;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.core.widgets.RocketLoader;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import rx.Observable;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;

/* compiled from: StatusActivity.kt */
public abstract class StatusActivity<T extends GenericRequestResponseData> extends SecuredActivity {
    public static final Companion Companion = new Companion();
    private static final String KEY_TITLE = "KEY_TITLE";
    private HashMap _$_findViewCache;
    private final int contentView = C0859R.layout.activity_status;
    private Subscription subscription;
    private final int successStatusText = C0859R.string.ok;

    /* compiled from: StatusActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        protected final String getKEY_TITLE() {
            return StatusActivity.KEY_TITLE;
        }

        public final Intent createIntent(Context context, Class<? extends StatusActivity<?>> cls, int i) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(cls, "activityClass");
            return new Intent(context, cls).putExtra(getKEY_TITLE(), i);
        }
    }

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
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

    protected abstract Observable<T> getOperation();

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(getContentView());
        Toolbar toolbar = (Toolbar) _$_findCachedViewById(C0859R.id.toolbar);
        Intrinsics.checkExpressionValueIsNotNull(toolbar, "toolbar");
        setToolbarActionBar(toolbar);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setTitle(getIntent().getIntExtra(KEY_TITLE, C0859R.string.app_name));
        }
        supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDefaultDisplayHomeAsUpEnabled(true);
        }
        supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
        }
        if (bundle == null) {
            execute();
            return;
        }
        setResult(-1);
        finish();
    }

    protected int getContentView() {
        return this.contentView;
    }

    protected final void execute() {
        if (this.subscription != null) {
            Subscription subscription = this.subscription;
            if (subscription == null) {
                Intrinsics.throwNpe();
            }
            if (!subscription.isUnsubscribed()) {
                return;
            }
        }
        this.subscription = getOperation().observeOn(AndroidSchedulers.mainThread()).doOnSubscribe(new StatusActivity$execute$1(this)).subscribe(new StatusActivity$execute$2(this), new StatusActivity$execute$3(this));
    }

    private final void onSubscribe() {
        ((RocketLoader) _$_findCachedViewById(C0859R.id.rocketLoader)).resetAnimation();
        RocketButton rocketButton = (RocketButton) _$_findCachedViewById(C0859R.id.buttonTop);
        Intrinsics.checkExpressionValueIsNotNull(rocketButton, "buttonTop");
        rocketButton.setVisibility(8);
        rocketButton = (RocketButton) _$_findCachedViewById(C0859R.id.buttonBottom);
        Intrinsics.checkExpressionValueIsNotNull(rocketButton, "buttonBottom");
        rocketButton.setVisibility(8);
        RocketTextView rocketTextView = (RocketTextView) _$_findCachedViewById(C0859R.id.textViewStatus);
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "textViewStatus");
        rocketTextView.setVisibility(4);
    }

    protected void onNext(T t) {
        Intrinsics.checkParameterIsNotNull(t, "genericRequestResponseData");
        ((RocketLoader) _$_findCachedViewById(C0859R.id.rocketLoader)).setOnEndAnimation(new StatusActivity$onNext$1(this, t));
        ((RocketLoader) _$_findCachedViewById(C0859R.id.rocketLoader)).setSuccess();
        setResult(-1);
        unsubscribe();
        if (t.getResponse() != null) {
            RocketTextView rocketTextView = (RocketTextView) _$_findCachedViewById(C0859R.id.textViewStatus);
            Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "textViewStatus");
            t = t.getResponse();
            if (t != null) {
                t = t.getDescription();
                if (t != null) {
                    rocketTextView.setText((CharSequence) t);
                    return;
                }
            }
            t = "";
            rocketTextView.setText((CharSequence) t);
            return;
        }
        ((RocketTextView) _$_findCachedViewById(C0859R.id.textViewStatus)).setText(getSuccessStatusText());
    }

    protected int getSuccessStatusText() {
        return this.successStatusText;
    }

    protected final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        unsubscribe();
        if (th instanceof RocketResponseException) {
            ((RocketLoader) _$_findCachedViewById(C0859R.id.rocketLoader)).setOnEndAnimation(new StatusActivity$onError$1(this));
            int i = 0;
            if (!((RocketLoader) _$_findCachedViewById(C0859R.id.rocketLoader)).hasError()) {
                ((RocketLoader) _$_findCachedViewById(C0859R.id.rocketLoader)).setError();
                setResult(0);
            }
            RocketResponseException rocketResponseException = (RocketResponseException) th;
            if (rocketResponseException.isNetworkError()) {
                ((RocketTextView) _$_findCachedViewById(C0859R.id.textViewStatus)).setText(C0859R.string.status_activity_error);
                return;
            }
            th = rocketResponseException.getGenericRequestResponseData();
            if (!(th == null || th.getResponse() == null)) {
                ResponseData response = th.getResponse();
                if (response != null) {
                    i = response.getShowIt();
                }
                if (i != 0) {
                    th = th.getResponse();
                    RocketTextView rocketTextView = (RocketTextView) _$_findCachedViewById(C0859R.id.textViewStatus);
                    Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "textViewStatus");
                    if (th != null) {
                        th = th.getDescription();
                        if (th != null) {
                            rocketTextView.setText((CharSequence) th);
                            return;
                        }
                    }
                    th = "";
                    rocketTextView.setText((CharSequence) th);
                    return;
                }
            }
            ((RocketTextView) _$_findCachedViewById(C0859R.id.textViewStatus)).setText(C0859R.string.status_activity_error);
            return;
        }
        setResult(-1);
        AnalyticsManager.logException(th);
        ((RocketTextView) _$_findCachedViewById(C0859R.id.textViewStatus)).setText(C0859R.string.unknown_error);
    }

    private final void onEndAnimation(boolean z, T t) {
        if (z) {
            onFail();
        } else {
            if (t == null) {
                Intrinsics.throwNpe();
            }
            onSuccess(t);
        }
        try {
            z = _$_findCachedViewById(C0859R.id.backgroundView);
            Intrinsics.checkExpressionValueIsNotNull(z, "backgroundView");
            enterReveal(z);
        } catch (boolean z2) {
            AnalyticsManager.logException((Throwable) z2);
        }
    }

    protected final void onRetry() {
        try {
            View _$_findCachedViewById = _$_findCachedViewById(C0859R.id.backgroundView);
            Intrinsics.checkExpressionValueIsNotNull(_$_findCachedViewById, "backgroundView");
            exitReveal$App_prodRelease(_$_findCachedViewById);
        } catch (Exception e) {
            AnalyticsManager.logException(e);
        }
        execute();
    }

    protected final void onFail() {
        RocketTextView rocketTextView = (RocketTextView) _$_findCachedViewById(C0859R.id.textViewStatus);
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "textViewStatus");
        rocketTextView.setVisibility(0);
        RocketButton rocketButton = (RocketButton) _$_findCachedViewById(C0859R.id.buttonTop);
        Intrinsics.checkExpressionValueIsNotNull(rocketButton, "buttonTop");
        rocketButton.setVisibility(0);
        ((RocketButton) _$_findCachedViewById(C0859R.id.buttonTop)).setText(C0859R.string.close_cap);
        ((RocketButton) _$_findCachedViewById(C0859R.id.buttonTop)).setOnClickListener(new StatusActivity$onFail$1(this));
        rocketButton = (RocketButton) _$_findCachedViewById(C0859R.id.buttonBottom);
        Intrinsics.checkExpressionValueIsNotNull(rocketButton, "buttonBottom");
        rocketButton.setVisibility(8);
        ((RocketButton) _$_findCachedViewById(C0859R.id.buttonBottom)).setOnClickListener(new StatusActivity$onFail$2(this));
        _$_findCachedViewById(C0859R.id.backgroundView).setBackgroundColor(-727322);
    }

    protected void onSuccess(T t) {
        Intrinsics.checkParameterIsNotNull(t, "genericRequestResponseData");
        RocketTextView rocketTextView = (RocketTextView) _$_findCachedViewById(C0859R.id.textViewStatus);
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "textViewStatus");
        rocketTextView.setVisibility(0);
        RocketButton rocketButton = (RocketButton) _$_findCachedViewById(C0859R.id.buttonTop);
        Intrinsics.checkExpressionValueIsNotNull(rocketButton, "buttonTop");
        rocketButton.setVisibility(0);
        ((RocketButton) _$_findCachedViewById(C0859R.id.buttonTop)).setText(C0859R.string.done);
        ((RocketButton) _$_findCachedViewById(C0859R.id.buttonTop)).setOnClickListener(new StatusActivity$onSuccess$1(this));
        rocketButton = (RocketButton) _$_findCachedViewById(C0859R.id.buttonBottom);
        Intrinsics.checkExpressionValueIsNotNull(rocketButton, "buttonBottom");
        rocketButton.setVisibility(8);
        _$_findCachedViewById(C0859R.id.backgroundView).setBackgroundColor(-1379861);
    }

    private final void enterReveal(View view) {
        RocketLoader rocketLoader = (RocketLoader) _$_findCachedViewById(C0859R.id.rocketLoader);
        Intrinsics.checkExpressionValueIsNotNull(rocketLoader, "rocketLoader");
        int i = rocketLoader.getLayoutParams().width;
        int[] iArr = new int[2];
        ((RocketLoader) _$_findCachedViewById(C0859R.id.rocketLoader)).getLocationInWindow(iArr);
        i /= 2;
        int i2 = iArr[0] + i;
        int i3 = iArr[1];
        Toolbar toolbar = (Toolbar) _$_findCachedViewById(C0859R.id.toolbar);
        Intrinsics.checkExpressionValueIsNotNull(toolbar, "toolbar");
        i3 = (i3 - (toolbar.getHeight() + getStatusBarHeight())) + i;
        float hypot = (float) Math.hypot((double) Math.max(i2, view.getWidth() - i2), (double) Math.max(i3, view.getHeight() - i3));
        view.setVisibility(0);
        view = ViewAnimationUtils.createCircularReveal(view, i2, i3, (float) i, hypot);
        Intrinsics.checkExpressionValueIsNotNull(view, "animator");
        view.setInterpolator(new AccelerateDecelerateInterpolator());
        view.setDuration(150);
        view.start();
    }

    public final void exitReveal$App_prodRelease(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        RocketLoader rocketLoader = (RocketLoader) _$_findCachedViewById(C0859R.id.rocketLoader);
        Intrinsics.checkExpressionValueIsNotNull(rocketLoader, "rocketLoader");
        int i = rocketLoader.getLayoutParams().width;
        int[] iArr = new int[2];
        ((RocketLoader) _$_findCachedViewById(C0859R.id.rocketLoader)).getLocationInWindow(iArr);
        i /= 2;
        int i2 = iArr[0] + i;
        int i3 = iArr[1];
        Toolbar toolbar = (Toolbar) _$_findCachedViewById(C0859R.id.toolbar);
        Intrinsics.checkExpressionValueIsNotNull(toolbar, "toolbar");
        SupportAnimator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i2, (i3 - (toolbar.getHeight() + getStatusBarHeight())) + i, (float) i, BitmapDescriptorFactory.HUE_RED);
        createCircularReveal.addListener(new StatusActivity$exitReveal$1(view));
        createCircularReveal.start();
    }

    protected void onDestroy() {
        unsubscribe();
        super.onDestroy();
    }

    private final void unsubscribe() {
        if (this.subscription != null) {
            Subscription subscription = this.subscription;
            if (subscription == null) {
                Intrinsics.throwNpe();
            }
            if (!subscription.isUnsubscribed()) {
                subscription = this.subscription;
                if (subscription == null) {
                    Intrinsics.throwNpe();
                }
                subscription.unsubscribe();
            }
        }
    }
}
