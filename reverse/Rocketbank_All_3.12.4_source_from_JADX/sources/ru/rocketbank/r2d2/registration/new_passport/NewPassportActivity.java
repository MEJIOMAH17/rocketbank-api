package ru.rocketbank.r2d2.registration.new_passport;

import android.app.Activity;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.view.View;
import java.util.HashMap;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.NewPassportOperation;
import ru.rocketbank.core.manager.PresenterManager;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.PresenterSecuredActivity;
import ru.rocketbank.r2d2.databinding.ActivityNewPassportBinding;

/* compiled from: NewPassportActivity.kt */
public final class NewPassportActivity extends PresenterSecuredActivity<NewPassportPresenter> {
    public static final Companion Companion = new Companion();
    public static final String KEY_OPERATION = "OPERATION";
    private HashMap _$_findViewCache;
    private ActivityNewPassportBinding binding;
    private int currentStep;
    private final NewPassportData data = new NewPassportData();
    private NewPassportOperation operation;

    /* compiled from: NewPassportActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final void startForResult(Activity activity, NewPassportOperation newPassportOperation, int i) {
            Intrinsics.checkParameterIsNotNull(activity, "activity");
            Intent intent = new Intent(activity, NewPassportActivity.class);
            intent.putExtra(NewPassportActivity.KEY_OPERATION, newPassportOperation);
            activity.startActivityForResult(intent, i, null);
        }
    }

    public static final void startForResult(Activity activity, NewPassportOperation newPassportOperation, int i) {
        Companion.startForResult(activity, newPassportOperation, i);
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

    public final NewPassportPresenter createPresenter() {
        PresenterManager presenterManager = PresenterManager.INSTANCE;
        UUID fromString = UUID.fromString("6e74114d-d970-41bc-8eab-055e33accfba");
        Intrinsics.checkExpressionValueIsNotNull(fromString, "UUID.fromString(\"6e74114…-41bc-8eab-055e33accfba\")");
        return (NewPassportPresenter) PresenterManager.getOrCreatePresenter(fromString, NewPassportPresenter.class);
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        bundle = DataBindingUtil.setContentView(this, C0859R.layout.activity_new_passport);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "DataBindingUtil.setConte…ut.activity_new_passport)");
        this.binding = (ActivityNewPassportBinding) bundle;
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle.setData(this.data);
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        setSupportActionBar(bundle.toolbar);
        bundle = getSupportActionBar();
        if (bundle != null) {
            bundle.setDisplayHomeAsUpEnabled(true);
            bundle.setTitle("Паспорт");
        }
        this.operation = (NewPassportOperation) getIntent().getParcelableExtra(KEY_OPERATION);
        nextStep$App_prodRelease(1);
        setResult(null);
    }

    public final void nextStep$App_prodRelease(int i) {
        NewPassportStepFragment mainPassportFragment;
        switch (i) {
            case 1:
                mainPassportFragment = new MainPassportFragment();
                break;
            case 2:
                mainPassportFragment = new NewRegistrationPassportFragment();
                break;
            case 3:
                mainPassportFragment = new NewPage18PassportFragment();
                break;
            case 4:
                ru.rocketbank.r2d2.registration.new_passport.NewPassportReadyFragment.Companion companion = NewPassportReadyFragment.Companion;
                NewPassportOperation newPassportOperation = this.operation;
                mainPassportFragment = companion.newInstance(newPassportOperation != null ? newPassportOperation.getId() : 0);
                break;
            default:
                mainPassportFragment = new MainPassportFragment();
                break;
        }
        getSupportFragmentManager().beginTransaction().setCustomAnimations(C0859R.anim.slide_in_right, C0859R.anim.slide_out_left).replace(C0859R.id.container, mainPassportFragment).commitAllowingStateLoss();
        this.currentStep = i;
        this.data.getStep().set(i);
    }

    public final void showResult$App_prodRelease(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "path");
        getSupportFragmentManager().beginTransaction().setCustomAnimations(C0859R.anim.slide_in_right, C0859R.anim.slide_out_left).replace(C0859R.id.container, ImageResultFragment.Companion.newInstance(this.currentStep, str, str2)).addToBackStack("result").commitAllowingStateLoss();
    }

    public final void setResultAndClose$App_prodRelease() {
        Intent intent = new Intent();
        NewPassportOperation newPassportOperation = this.operation;
        if (newPassportOperation != null) {
            intent.putExtra(KEY_OPERATION, newPassportOperation);
        }
        setResult(-1, intent);
        finish();
    }
}
