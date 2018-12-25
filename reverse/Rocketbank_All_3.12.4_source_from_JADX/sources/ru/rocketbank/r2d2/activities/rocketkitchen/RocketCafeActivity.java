package ru.rocketbank.r2d2.activities.rocketkitchen;

import android.content.Context;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.util.Log;
import android.view.View;
import android.view.Window;
import java.util.HashMap;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.PresenterManager;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.core.utils.ImageHelper;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.PresenterAbstractActivity;
import ru.rocketbank.r2d2.activities.SecuredActivity;
import ru.rocketbank.r2d2.data.binding.kitchen.RocketCafeData;
import ru.rocketbank.r2d2.data.binding.kitchen.RocketCafeListener;
import ru.rocketbank.r2d2.databinding.ActivityRocketCafeBinding;
import ru.rocketbank.r2d2.fragments.CodeInputDialogFragment;
import ru.rocketbank.r2d2.fragments.CodeInputDialogFragment.CodeInputListener;
import ru.rocketbank.r2d2.widgets.BackgroundImageView;

/* compiled from: RocketCafeActivity.kt */
public final class RocketCafeActivity extends PresenterAbstractActivity<RocketCafeActivityPresenter> implements RocketCafeView, RocketCafeListener, CodeInputListener {
    private static final String CAFE_URI_SCHEME = "rocketcafe://payStatus/";
    private static final String CANCEL_RESULT = "cancel";
    public static final Companion Companion = new Companion();
    private static final String ERROR_RESULT = "error";
    private static final String KEY_AMOUNT = "amount";
    private static final String OK_RESULT = "ok";
    private HashMap _$_findViewCache;
    private long amount;
    private ActivityRocketCafeBinding binding;
    private CodeInputDialogFragment codeFragment;
    private final RocketCafeData data = new RocketCafeData();

    /* compiled from: RocketCafeActivity.kt */
    public static final class Companion {
        private static /* synthetic */ void CAFE_URI_SCHEME$annotations() {
        }

        private static /* synthetic */ void CANCEL_RESULT$annotations() {
        }

        private static /* synthetic */ void ERROR_RESULT$annotations() {
        }

        private static /* synthetic */ void KEY_AMOUNT$annotations() {
        }

        private static /* synthetic */ void OK_RESULT$annotations() {
        }

        private Companion() {
        }

        public final void start(Context context, long j) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intent intent = new Intent(context, RocketCafeActivity.class);
            intent.putExtra(RocketCafeActivity.KEY_AMOUNT, j);
            context.startActivity(intent);
        }
    }

    public static final void start(Context context, long j) {
        Companion.start(context, j);
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

    public final RocketCafeActivityPresenter createPresenter() {
        PresenterManager presenterManager = PresenterManager.INSTANCE;
        UUID fromString = UUID.fromString("910548dc-73f3-4b5c-a16e-1d20080b5959");
        Intrinsics.checkExpressionValueIsNotNull(fromString, "UUID.fromString(\"910548d…-4b5c-a16e-1d20080b5959\")");
        return (RocketCafeActivityPresenter) PresenterManager.getOrCreatePresenter(fromString, RocketCafeActivityPresenter.class);
    }

    protected final void onCreate(Bundle bundle) {
        Window window = getWindow();
        Intrinsics.checkExpressionValueIsNotNull(window, "window");
        View decorView = window.getDecorView();
        Intrinsics.checkExpressionValueIsNotNull(decorView, "window.decorView");
        decorView.setSystemUiVisibility(1280);
        super.onCreate(bundle);
        ViewDataBinding contentView = DataBindingUtil.setContentView(this, C0859R.layout.activity_rocket_cafe);
        Intrinsics.checkExpressionValueIsNotNull(contentView, "DataBindingUtil.setConte…out.activity_rocket_cafe)");
        this.binding = (ActivityRocketCafeBinding) contentView;
        ActivityRocketCafeBinding activityRocketCafeBinding = this.binding;
        if (activityRocketCafeBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activityRocketCafeBinding.transferButton.setBackgroundResource(C0859R.drawable.orange_button_background);
        activityRocketCafeBinding = this.binding;
        if (activityRocketCafeBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activityRocketCafeBinding.setData(this.data);
        this.amount = getIntent().getLongExtra(KEY_AMOUNT, 0);
        ((RocketCafeActivityPresenter) getPresenter()).onCreate(bundle, this);
        if (((double) this.amount) > 0.0d) {
            this.data.getAmount().set(String.valueOf(this.amount));
            return;
        }
        throw ((Throwable) new IllegalStateException("amount must be > 0!"));
    }

    protected final void onStart() {
        super.onStart();
        ImageHelper imageHelper = ImageHelper.INSTANCE;
        ActivityRocketCafeBinding activityRocketCafeBinding = this.binding;
        if (activityRocketCafeBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        BackgroundImageView backgroundImageView = activityRocketCafeBinding.background;
        Intrinsics.checkExpressionValueIsNotNull(backgroundImageView, "binding.background");
        imageHelper.loadCover(backgroundImageView, this.authorization.getUserData());
        ActivityRocketCafeBinding activityRocketCafeBinding2 = this.binding;
        if (activityRocketCafeBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activityRocketCafeBinding2.setListener(this);
    }

    protected final void onStop() {
        super.onStop();
        ActivityRocketCafeBinding activityRocketCafeBinding = this.binding;
        if (activityRocketCafeBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activityRocketCafeBinding.setListener(null);
    }

    protected final void onDestroy() {
        ((RocketCafeActivityPresenter) getPresenter()).onDestroy();
        super.onDestroy();
    }

    public final void onBackPressed() {
        finishWithResult(CANCEL_RESULT);
    }

    private final void finishWithResult(String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(CAFE_URI_SCHEME);
        stringBuilder.append(str);
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(stringBuilder.toString()));
        if (getPackageManager().queryIntentActivities(intent, 0).size() > 0) {
            startActivity(intent);
        }
        CodeInputDialogFragment codeInputDialogFragment = this.codeFragment;
        if (codeInputDialogFragment != null) {
            codeInputDialogFragment.setCodeInputListener(null);
        }
        Log.w("RocketCafeActivity", "resilt=".concat(String.valueOf(str)));
        finish();
    }

    private final void lockScreen() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        if (supportFragmentManager.findFragmentByTag(SecuredActivity.Companion.getLOCK_SCREEN_TAG()) == null) {
            this.codeFragment = new CodeInputDialogFragment();
            CodeInputDialogFragment codeInputDialogFragment = this.codeFragment;
            if (codeInputDialogFragment == null) {
                Intrinsics.throwNpe();
            }
            codeInputDialogFragment.setCodeInputListener(this);
            supportFragmentManager.beginTransaction().add((Fragment) this.codeFragment, SecuredActivity.Companion.getLOCK_SCREEN_TAG()).commitAllowingStateLoss();
            supportFragmentManager.executePendingTransactions();
        }
    }

    public final void onCodeCorrect() {
        showProgressDialog();
        ((RocketCafeActivityPresenter) getPresenter()).fillSafe(this.amount);
    }

    public final void confirmButtonClicked() {
        lockScreen();
    }

    public final void cancelButtonClicked() {
        finishWithResult(CANCEL_RESULT);
    }

    public final void onRefillError(String str) {
        Intrinsics.checkParameterIsNotNull(str, ProviderField.TEXT);
        hideProgressDialog();
        finishWithResult(ERROR_RESULT);
    }

    public final void onRefillOk() {
        hideProgressDialog();
        finishWithResult(OK_RESULT);
    }
}
