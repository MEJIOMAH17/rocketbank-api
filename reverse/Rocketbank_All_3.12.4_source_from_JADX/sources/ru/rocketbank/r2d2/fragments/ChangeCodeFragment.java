package ru.rocketbank.r2d2.fragments;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.DataManager;
import ru.rocketbank.core.model.dto.ActivationResponse;
import ru.rocketbank.core.network.api.PlasticsApi;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.widgets.RocketPinEntryView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.activities.AbstractActivity;
import ru.rocketbank.r2d2.activities.ChangeCodeActivity;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonData;
import ru.rocketbank.r2d2.databinding.FragmentChangeBinding;
import rx.Observable;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;

/* compiled from: ChangeCodeFragment.kt */
public final class ChangeCodeFragment extends RocketFragment {
    private HashMap _$_findViewCache;
    public Authorization authorization;
    private FragmentChangeBinding binding;
    private boolean change;
    private String code;
    private Subscription codeSubscription;
    public DataManager dataManager;
    private boolean isActivation;
    private boolean isCode;
    private boolean isFirst = true;
    private Subscription pinSubscription;
    private String pinText;
    private RocketPinEntryView pinView;
    private String plasticToken;
    private String plastic_check_id;
    public PlasticsApi plasticsApi;
    private TextWatcher textWatcher;
    private WeakReference<TextWatcher> weakWatcher;

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

    public final /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public static final /* synthetic */ RocketPinEntryView access$getPinView$p(ChangeCodeFragment changeCodeFragment) {
        changeCodeFragment = changeCodeFragment.pinView;
        if (changeCodeFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pinView");
        }
        return changeCodeFragment;
    }

    public final Authorization getAuthorization() {
        Authorization authorization = this.authorization;
        if (authorization == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authorization");
        }
        return authorization;
    }

    public final void setAuthorization(Authorization authorization) {
        Intrinsics.checkParameterIsNotNull(authorization, "<set-?>");
        this.authorization = authorization;
    }

    public final PlasticsApi getPlasticsApi() {
        PlasticsApi plasticsApi = this.plasticsApi;
        if (plasticsApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("plasticsApi");
        }
        return plasticsApi;
    }

    public final void setPlasticsApi(PlasticsApi plasticsApi) {
        Intrinsics.checkParameterIsNotNull(plasticsApi, "<set-?>");
        this.plasticsApi = plasticsApi;
    }

    public final DataManager getDataManager() {
        DataManager dataManager = this.dataManager;
        if (dataManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataManager");
        }
        return dataManager;
    }

    public final void setDataManager(DataManager dataManager) {
        Intrinsics.checkParameterIsNotNull(dataManager, "<set-?>");
        this.dataManager = dataManager;
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        bundle = getArguments();
        if (bundle != null) {
            this.pinText = bundle.getString(ChangeCodeActivity.KEY_PIN_TEXT);
            this.isActivation = bundle.getBoolean(ChangeCodeActivity.KEY_IS_ACTIVATION);
            this.isCode = bundle.getBoolean(ChangeCodeActivity.KEY_IS_CODE);
            this.plasticToken = bundle.getString("key_token_plastic");
            this.change = bundle.getBoolean(ChangeCodeActivity.KEY_CHANGE);
            this.plastic_check_id = bundle.getString("KEY_PLASTIC_CHECK_ID");
        }
        this.authorization = getInjector().getAuthorization();
        this.plasticsApi = getInjector().getPlasticApi();
        this.dataManager = getInjector().getDataManager();
        layoutInflater = FragmentChangeBinding.inflate(layoutInflater, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "FragmentChangeBinding.in…flater, container, false)");
        this.binding = layoutInflater;
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater.setToolbarBinding(new ToolbarWithButtonData(getString(C0859R.string.new_password), "", false, 8));
        layoutInflater = getActivity();
        if (layoutInflater == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.activities.AbstractActivity");
        }
        AbstractActivity abstractActivity = (AbstractActivity) layoutInflater;
        viewGroup = this.binding;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        viewGroup = viewGroup.toolbarInclude;
        if (viewGroup == null) {
            Intrinsics.throwNpe();
        }
        abstractActivity.setSupportActionBar(viewGroup.toolbar);
        layoutInflater = abstractActivity.getSupportActionBar();
        if (layoutInflater != null) {
            layoutInflater.setDisplayHomeAsUpEnabled(true);
        }
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return layoutInflater.getRoot();
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        init(view);
    }

    private final void init(View view) {
        FragmentChangeBinding fragmentChangeBinding = this.binding;
        if (fragmentChangeBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        RocketPinEntryView rocketPinEntryView = fragmentChangeBinding.editText;
        Intrinsics.checkExpressionValueIsNotNull(rocketPinEntryView, "binding.editText");
        this.pinView = rocketPinEntryView;
        fragmentChangeBinding = this.binding;
        if (fragmentChangeBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        RocketTextView rocketTextView = fragmentChangeBinding.textView;
        FragmentChangeBinding fragmentChangeBinding2 = this.binding;
        if (fragmentChangeBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        RocketTextView rocketTextView2 = fragmentChangeBinding2.textViewDescription;
        FragmentChangeBinding fragmentChangeBinding3 = this.binding;
        if (fragmentChangeBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        RocketTextView rocketTextView3 = fragmentChangeBinding3.textViewErrors;
        RocketPinEntryView rocketPinEntryView2 = this.pinView;
        if (rocketPinEntryView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pinView");
        }
        rocketPinEntryView2.clearText();
        if (this.textWatcher != null) {
            rocketPinEntryView2 = this.pinView;
            if (rocketPinEntryView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pinView");
            }
            rocketPinEntryView2.removeTextChangedListener(this.textWatcher);
        }
        this.textWatcher = new ChangeCodeFragment$init$1(this, view, rocketTextView3);
        this.weakWatcher = new WeakReference(this.textWatcher);
        view = this.weakWatcher;
        if (view == null) {
            Intrinsics.throwNpe();
        }
        TextWatcher textWatcher = (TextWatcher) view.get();
        RocketPinEntryView rocketPinEntryView3 = this.pinView;
        if (rocketPinEntryView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pinView");
        }
        rocketPinEntryView3.addTextChangedListener(textWatcher);
        view = getActivity();
        if (view != null) {
            Utils.closeKeyboardIfExists((Activity) view);
            Object systemService = view.getSystemService("input_method");
            if (systemService == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
            }
            ((InputMethodManager) systemService).toggleSoftInput(2, 0);
            rocketPinEntryView3 = this.pinView;
            if (rocketPinEntryView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pinView");
            }
            rocketPinEntryView3.post(new ChangeCodeFragment$init$$inlined$run$lambda$1(this, rocketTextView, rocketTextView2));
            if (this.isCode) {
                view.setTitle(C0859R.string.new_password);
                Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "textView");
                rocketTextView.setText(view.getString(this.isFirst ? C0859R.string.enter_new_app_pass : C0859R.string.repear_app_pass));
                return;
            }
            if (this.isActivation) {
                view.setTitle(C0859R.string.activation_step_2);
            } else {
                view.setTitle(C0859R.string.title_new_pin);
            }
            rocketTextView.setText(this.isFirst != null ? C0859R.string.enter_new_pin : C0859R.string.repeat_card_pin);
            if (this.pinText != null) {
                Intrinsics.checkExpressionValueIsNotNull(rocketTextView2, "textViewDescription");
                rocketTextView2.setText((CharSequence) this.pinText);
            }
        }
    }

    private final void reset(View view) {
        this.code = null;
        this.isFirst = true;
        init(view);
    }

    public final void onPause() {
        unsubscribe(this.pinSubscription);
        unsubscribe(this.codeSubscription);
        super.onPause();
    }

    private final ChangeCodeActivity getChangeActivity() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            return (ChangeCodeActivity) activity;
        }
        throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.activities.ChangeCodeActivity");
    }

    private final Observable<ActivationResponse> getCodeObservable(String str, String str2) {
        PlasticsApi plasticsApi = this.plasticsApi;
        if (plasticsApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("plasticsApi");
        }
        str = plasticsApi.changeShortCode(str2, str).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkExpressionValueIsNotNull(str, "plasticsApi.changeShortC…dSchedulers.mainThread())");
        return str;
    }

    public final Observable<ActivationResponse> getPinObservable(boolean z, String str, String str2, String str3) {
        Intrinsics.checkParameterIsNotNull(str, "plastic_check_id");
        Intrinsics.checkParameterIsNotNull(str2, "code");
        Intrinsics.checkParameterIsNotNull(str3, "plasticToken");
        if (z) {
            z = this.plasticsApi;
            if (!z) {
                Intrinsics.throwUninitializedPropertyAccessException("plasticsApi");
            }
            z = z.activate(str3, str, str2).observeOn(AndroidSchedulers.mainThread());
            Intrinsics.checkExpressionValueIsNotNull(z, "plasticsApi.activate(pla…dSchedulers.mainThread())");
            return z;
        }
        z = this.plasticsApi;
        if (!z) {
            Intrinsics.throwUninitializedPropertyAccessException("plasticsApi");
        }
        z = z.changePin(str3, str, str2).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkExpressionValueIsNotNull(z, "plasticsApi.changePin(pl…dSchedulers.mainThread())");
        return z;
    }
}
