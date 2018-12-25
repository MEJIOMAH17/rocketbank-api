package ru.rocketbank.r2d2.activities;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.event.LockEvent;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.RegistrationStatus;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import ru.rocketbank.core.model.dto.ResponseData;
import ru.rocketbank.core.network.exception.RocketResponseException;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.fragments.CodeInputDialogFragment;
import ru.rocketbank.r2d2.manager.SecurityManager;
import ru.rocketbank.r2d2.utils.ImageUpload;

/* compiled from: SecuredActivity.kt */
public abstract class SecuredActivity extends AbstractActivity {
    public static final Companion Companion = new Companion();
    private static final String KEEP_UNLOCKED = "KEEP_UNLOCKED";
    private static final String LOCK_SCREEN_TAG = "CodeInputDialog";
    private static final String TAG = "SecuredActivity";
    private HashMap _$_findViewCache;
    private boolean keepUnlocked;
    private final SecurityManager securityManager = SecurityManager.Companion.getInstance();

    /* compiled from: SecuredActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getLOCK_SCREEN_TAG() {
            return SecuredActivity.LOCK_SCREEN_TAG;
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

    protected void onStart() {
        boolean areEqual = Intrinsics.areEqual(RegistrationStatus.LeadStatus, RocketApplication.Companion.getInjector().getAuthorization().getStatus());
        this.securityManager.onStart();
        if (this.securityManager.isLocked(this.keepUnlocked) && !areEqual) {
            lockScreen();
            Log.v(TAG, "lock screen by SecurityManager");
        }
        this.keepUnlocked = false;
        super.onStart();
    }

    protected void onPause() {
        this.securityManager.onPause();
        super.onPause();
    }

    protected void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "savedInstanceState");
        this.securityManager.onSaveInstanceState(bundle);
        bundle.putBoolean(KEEP_UNLOCKED, this.keepUnlocked);
        super.onSaveInstanceState(bundle);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.keepUnlocked = bundle.getBoolean(KEEP_UNLOCKED, false);
            this.securityManager.onRestoreInstance(bundle);
        }
    }

    public final void onEvent(LockEvent lockEvent) {
        Intrinsics.checkParameterIsNotNull(lockEvent, "lockEvent");
        lockScreen();
        Log.v(TAG, "lock screen by LockEvent");
    }

    public final void lockScreen() {
        this.authorization.resetToken();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        if (supportFragmentManager.findFragmentByTag(LOCK_SCREEN_TAG) == null) {
            supportFragmentManager.beginTransaction().add((Fragment) new CodeInputDialogFragment(), LOCK_SCREEN_TAG).commitAllowingStateLoss();
            supportFragmentManager.executePendingTransactions();
        }
    }

    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        if (((ImageUpload.INSTANCE.getFROM_CAMERA() & i) | (ImageUpload.INSTANCE.getFROM_GALLERY() & i)) != 0 || i == 10) {
            keepUnlocked();
        }
        try {
            super.startActivityForResult(intent, i, bundle);
        } catch (Intent intent2) {
            AnalyticsManager.logException(intent2);
        }
    }

    public final void keepUnlocked() {
        this.keepUnlocked = true;
    }

    protected final void setToolbarActionBar(Toolbar toolbar) {
        Intrinsics.checkParameterIsNotNull(toolbar, "toolbar");
        try {
            setSupportActionBar(toolbar);
            toolbar = getSupportActionBar();
            if (toolbar != null) {
                toolbar.setDisplayHomeAsUpEnabled(true);
            }
        } catch (Toolbar toolbar2) {
            Log.e(TAG, "Oh, no!", toolbar2);
            AnalyticsManager.logException(toolbar2);
        }
    }

    public final String getErrorString(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        if (th instanceof RocketResponseException) {
            RocketResponseException rocketResponseException = (RocketResponseException) th;
            GenericRequestResponseData genericRequestResponseData = rocketResponseException.getGenericRequestResponseData();
            if (genericRequestResponseData != null) {
                ResponseData response = genericRequestResponseData.getResponse();
                if (response != null && response.getShowIt()) {
                    th = rocketResponseException.getDescription();
                    if (th == null) {
                        th = getResources().getString(C0859R.string.error_occur);
                    }
                    Intrinsics.checkExpressionValueIsNotNull(th, "if (genericRequestRespon…rror_occur)\n            }");
                    return th;
                }
            }
            th = getString(C0859R.string.error_occur);
            Intrinsics.checkExpressionValueIsNotNull(th, "if (genericRequestRespon…rror_occur)\n            }");
            return th;
        }
        th = getString(C0859R.string.error_occur);
        Intrinsics.checkExpressionValueIsNotNull(th, "getString(R.string.error_occur)");
        return th;
    }

    protected void setToolbarSize(Toolbar toolbar, int i) {
        Intrinsics.checkParameterIsNotNull(toolbar, "toolbar");
        LayoutParams layoutParams = toolbar.getLayoutParams();
        layoutParams.height += i;
        toolbar.setPadding(0, i, 0, 0);
        toolbar.setLayoutParams(layoutParams);
    }

    protected final void setupDefaultToolbar(View view, int i) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        view = view.findViewById(i);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.Toolbar");
        }
        Toolbar toolbar = (Toolbar) view;
        setToolbarSize(toolbar, getStatusBarHeight());
        setToolbarActionBar(toolbar);
    }

    protected final void setupDefaultToolbar(int i) {
        i = findViewById(i);
        if (i == 0) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.Toolbar");
        }
        Toolbar toolbar = (Toolbar) i;
        setToolbarSize(toolbar, getStatusBarHeight());
        setToolbarActionBar(toolbar);
    }
}
