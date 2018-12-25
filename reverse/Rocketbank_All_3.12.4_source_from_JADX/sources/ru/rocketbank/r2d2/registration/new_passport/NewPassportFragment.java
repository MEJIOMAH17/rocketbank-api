package ru.rocketbank.r2d2.registration.new_passport;

import android.content.Context;
import android.databinding.ObservableField;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.AppCompatImageView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.PresenterManager;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.databinding.FragmentNewPassportStepBinding;
import ru.rocketbank.r2d2.fragments.PresenterFragment;
import ru.rocketbank.r2d2.helpers.UIHelper;
import ru.rocketbank.r2d2.registration.new_passport.OnButtonsClickListener.DefaultImpls;

/* compiled from: NewPassportFragment.kt */
public abstract class NewPassportFragment extends PresenterFragment<NewPassportStepPresenter> implements NewPassportStepView, OnButtonsClickListener {
    private HashMap _$_findViewCache;
    protected FragmentNewPassportStepBinding binding;
    private final NewPassportStepData data = new NewPassportStepData();

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

    protected String getBottomButtonText() {
        return null;
    }

    protected String getHelpText() {
        return null;
    }

    protected abstract String getMainButtonText();

    protected int getStepImgRes() {
        return 0;
    }

    protected abstract String getStepTitle();

    public void bottomButtonClicked(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        DefaultImpls.bottomButtonClicked(this, view);
    }

    public void mainClicked(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        DefaultImpls.mainClicked(this, view);
    }

    protected final FragmentNewPassportStepBinding getBinding() {
        FragmentNewPassportStepBinding fragmentNewPassportStepBinding = this.binding;
        if (fragmentNewPassportStepBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return fragmentNewPassportStepBinding;
    }

    protected final void setBinding(FragmentNewPassportStepBinding fragmentNewPassportStepBinding) {
        Intrinsics.checkParameterIsNotNull(fragmentNewPassportStepBinding, "<set-?>");
        this.binding = fragmentNewPassportStepBinding;
    }

    protected final NewPassportStepData getData() {
        return this.data;
    }

    public NewPassportStepPresenter createPresenter() {
        PresenterManager presenterManager = PresenterManager.INSTANCE;
        UUID fromString = UUID.fromString("0e74114d-d970-41bc-8eab-055e33accfba");
        Intrinsics.checkExpressionValueIsNotNull(fromString, "UUID.fromString(\"0e74114…-41bc-8eab-055e33accfba\")");
        return (NewPassportStepPresenter) PresenterManager.getOrCreatePresenter(fromString, NewPassportStepPresenter.class);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = FragmentNewPassportStepBinding.inflate(layoutInflater, viewGroup, null);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "FragmentNewPassportStepB…flater, container, false)");
        this.binding = layoutInflater;
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater.setData(this.data);
        init();
        ((NewPassportStepPresenter) getPresenter()).onAttach(this);
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return layoutInflater.getRoot();
    }

    public void onStart() {
        super.onStart();
        FragmentNewPassportStepBinding fragmentNewPassportStepBinding = this.binding;
        if (fragmentNewPassportStepBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        fragmentNewPassportStepBinding.setListener(this);
    }

    public void onStop() {
        FragmentNewPassportStepBinding fragmentNewPassportStepBinding = this.binding;
        if (fragmentNewPassportStepBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        fragmentNewPassportStepBinding.setListener(null);
        super.onStop();
    }

    public void onDestroyView() {
        ((NewPassportStepPresenter) getPresenter()).onDetach();
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    protected void init() {
        FragmentNewPassportStepBinding fragmentNewPassportStepBinding;
        int stepImgRes = getStepImgRes();
        if (stepImgRes != 0) {
            ObservableField image = this.data.getImage();
            Context context = getContext();
            if (context == null) {
                Intrinsics.throwNpe();
            }
            image.set(ContextCompat.getDrawable(context, stepImgRes));
            fragmentNewPassportStepBinding = this.binding;
            if (fragmentNewPassportStepBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            AppCompatImageView appCompatImageView = fragmentNewPassportStepBinding.imageView3;
            Context context2 = getContext();
            if (context2 == null) {
                Intrinsics.throwNpe();
            }
            appCompatImageView.setColorFilter(ContextCompat.getColor(context2, C0859R.color.orange));
        }
        fragmentNewPassportStepBinding = this.binding;
        if (fragmentNewPassportStepBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        fragmentNewPassportStepBinding.button.setBackgroundResource(C0859R.drawable.orange_button_background);
        this.data.getHelpText().set(getHelpText());
        this.data.getPhotoTitle().set(getStepTitle());
        this.data.getMainButtonText().set(getMainButtonText());
        this.data.getBottomButtonText().set(getBottomButtonText());
    }

    public void showError(String str) {
        Intrinsics.checkParameterIsNotNull(str, ProviderField.TEXT);
        UIHelper.makeSnack(getView(), str).show();
    }

    public void showProgress() {
        showSpinner(C0859R.string.loading);
    }

    public void hideProgress() {
        hideSpinner();
    }

    public void onReady() {
        FragmentActivity activity = getActivity();
        if (activity instanceof NewPassportActivity) {
            ((NewPassportActivity) activity).setResultAndClose$App_prodRelease();
        }
    }

    public void changeButtonsEnabled(boolean z) {
        this.data.getButtonsEnabled().set(z);
    }

    public void nextStep(int i) {
        FragmentActivity activity = getActivity();
        if (activity instanceof NewPassportActivity) {
            activity.onBackPressed();
            ((NewPassportActivity) activity).nextStep$App_prodRelease(i);
        }
    }
}
