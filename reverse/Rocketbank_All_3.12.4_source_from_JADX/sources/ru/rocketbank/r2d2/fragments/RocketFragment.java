package ru.rocketbank.r2d2.fragments;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.DragEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import com.facebook.share.internal.ShareConstants;
import de.greenrobot.event.EventBus;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.dagger.component.RocketComponent;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.activities.MainActivity;
import ru.rocketbank.r2d2.fragments.dialogs.ProgressDialogFragment;
import rx.Subscriber;
import rx.Subscription;

/* compiled from: RocketFragment.kt */
public class RocketFragment extends Fragment {
    public static final Companion Companion = new Companion();
    private static final String TAG = "RocketFragment";
    private HashMap _$_findViewCache;
    private ProgressDialogFragment _dialogSpinner;
    private final RocketComponent injector = RocketApplication.Companion.getInjector();
    private final EventBus localEventBus = EventBus.getDefault();
    private Subscription userSubsctiption;

    /* compiled from: RocketFragment.kt */
    public static final class Companion {
        private Companion() {
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
        if (view == null) {
            view = getView();
            if (view == null) {
                return null;
            }
            view = view.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view);
        }
        return view;
    }

    public boolean canBack() {
        return false;
    }

    public boolean isCanPopBack() {
        return true;
    }

    public void moveBack() {
    }

    public boolean onBackPressed() {
        return false;
    }

    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final void onEvent(DragEvent dragEvent) {
        Intrinsics.checkParameterIsNotNull(dragEvent, "obj");
    }

    public void onUserModel(UserModel userModel) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
    }

    protected final void showSpinner() {
        showSpinner$default(this, 0, 1, null);
    }

    protected final void showSpinnerText() {
        showSpinnerText$default(this, null, 1, null);
    }

    protected final EventBus getLocalEventBus() {
        return this.localEventBus;
    }

    public final RocketComponent getInjector() {
        return this.injector;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        Log.v("Create fragment ", getClass().getName());
    }

    private final void subscribeToUser() {
        this.userSubsctiption = this.injector.getAuthorization().getUser().subscribe((Subscriber) new RocketFragment$subscribeToUser$1(this));
    }

    public void onResume() {
        super.onResume();
        subscribeToUser();
        registerEventBus();
    }

    public void onPause() {
        super.onPause();
        Log.v(TAG, "Unregister event bus");
        unregisterEventBus();
        Log.v(TAG, "Unsubsribe user subscription");
        unsubscribe(this.userSubsctiption);
        Log.v(TAG, "Done go to super");
    }

    public final void unsubscribe(Subscription subscription) {
        if (subscription != null && !subscription.isUnsubscribed()) {
            subscription.unsubscribe();
        }
    }

    protected final void registerEventBus() {
        if (!this.localEventBus.isRegistered(this)) {
            this.localEventBus.registerSticky(this);
        }
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
    }

    protected final void unregisterEventBus() {
        if (this.localEventBus.isRegistered(this)) {
            this.localEventBus.unregister(this);
        }
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
    }

    public static /* bridge */ /* synthetic */ void showSpinner$default(RocketFragment rocketFragment, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showSpinner");
        }
        if ((i2 & 1) != 0) {
            i = C0859R.string.please_wait;
        }
        rocketFragment.showSpinner(i);
    }

    protected final void showSpinner(int i) {
        if (getActivity() != null) {
            try {
                AppCompatActivity appCompatActivity = (AppCompatActivity) getActivity();
                if (appCompatActivity != null) {
                    FragmentManager supportFragmentManager = appCompatActivity.getSupportFragmentManager();
                    if (supportFragmentManager != null) {
                        if (this._dialogSpinner == null) {
                            this._dialogSpinner = ProgressDialogFragment.Companion.newInstance(i);
                            i = this._dialogSpinner;
                            if (i == 0) {
                                Intrinsics.throwNpe();
                            }
                            i.show(supportFragmentManager, null);
                        }
                    }
                }
            } catch (int i2) {
                AnalyticsManager.logException(i2);
            }
        }
    }

    public static /* bridge */ /* synthetic */ void showSpinnerText$default(RocketFragment rocketFragment, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showSpinnerText");
        }
        if ((i & 1) != 0) {
            str = null;
        }
        rocketFragment.showSpinnerText(str);
    }

    protected final void showSpinnerText(String str) {
        AppCompatActivity appCompatActivity = (AppCompatActivity) getActivity();
        FragmentManager supportFragmentManager = appCompatActivity != null ? appCompatActivity.getSupportFragmentManager() : null;
        if (supportFragmentManager != null && this._dialogSpinner == null) {
            ru.rocketbank.r2d2.fragments.dialogs.ProgressDialogFragment.Companion companion = ProgressDialogFragment.Companion;
            if (str == null) {
                str = getResources().getString(C0859R.string.please_wait);
                Intrinsics.checkExpressionValueIsNotNull(str, "resources.getString(R.string.please_wait)");
            }
            this._dialogSpinner = companion.newInstance(str);
            str = this._dialogSpinner;
            if (str == null) {
                Intrinsics.throwNpe();
            }
            str.show(supportFragmentManager, null);
        }
    }

    protected final void hideSpinner() {
        try {
            if (this._dialogSpinner != null) {
                ProgressDialogFragment progressDialogFragment = this._dialogSpinner;
                if (progressDialogFragment == null) {
                    Intrinsics.throwNpe();
                }
                progressDialogFragment.dismissAllowingStateLoss();
                this._dialogSpinner = null;
            }
        } catch (Throwable th) {
            Log.e(TAG, "Log hide spinner ", th);
        }
    }

    protected final void showAlert(String str) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        if (getFragmentManager() != null) {
            str = AlertDialogFragment.create(str);
            FragmentActivity activity = getActivity();
            if (activity == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
            str.show(activity.getSupportFragmentManager(), "dialog");
        }
    }

    protected final void setToolbarActionBar(Toolbar toolbar) {
        AppCompatActivity appCompatActivity = (AppCompatActivity) getActivity();
        if (appCompatActivity != null) {
            appCompatActivity.setSupportActionBar(toolbar);
        }
        toolbar = appCompatActivity != null ? appCompatActivity.getSupportActionBar() : null;
        if (toolbar != null) {
            toolbar.setDisplayHomeAsUpEnabled(true);
        }
        if ((appCompatActivity instanceof MainActivity) != null) {
            ((MainActivity) appCompatActivity).setActionButtonIcon();
        }
    }

    protected int setToolbarSize(Toolbar toolbar, int i) {
        if (toolbar == null) {
            return 0;
        }
        LayoutParams layoutParams = toolbar.getLayoutParams();
        layoutParams.height += i;
        toolbar.setPadding(0, i, 0, 0);
        toolbar.setLayoutParams(layoutParams);
        return layoutParams.height;
    }

    protected int getStatusBarHeight() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", AbstractSpiCall.ANDROID_CLIENT_TYPE);
        return identifier > 0 ? getResources().getDimensionPixelSize(identifier) : 0;
    }

    public final OnClickListener getNavigationClick() {
        return new RocketFragment$navigationClick$1(this);
    }

    public final int setupDefaultToolbar(View view, int i, boolean z) {
        int i2 = 0;
        if (view == null) {
            return 0;
        }
        view = view.findViewById(i);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.Toolbar");
        }
        Toolbar toolbar = (Toolbar) view;
        if (z) {
            i2 = getStatusBarHeight();
        }
        i = setToolbarSize(toolbar, i2);
        setToolbarActionBar(toolbar);
        return i;
    }

    protected final int setupDefaultToolbar(View view, int i) {
        return setupDefaultToolbar(view, i, true);
    }

    public final FragmentManager getSupportFragmentManager() {
        FragmentActivity activity = getActivity();
        return activity != null ? activity.getSupportFragmentManager() : null;
    }
}
