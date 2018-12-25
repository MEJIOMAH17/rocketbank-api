package ru.rocketbank.r2d2.fragments;

import android.app.ProgressDialog;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.app.AlertDialog.Builder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import java.security.InvalidParameterException;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.AvailableAccount;
import ru.rocketbank.core.model.enums.Currency;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.OpenSafeAccount;
import ru.rocketbank.r2d2.databinding.FragmentOpenSafeAccountBinding;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

/* compiled from: OpenSafeAccountFragment.kt */
public final class OpenSafeAccountFragment extends RocketFragment implements OnClickListener {
    private static final String CURRENCY_NAME = "CURRENCY_NAME";
    public static final Companion Companion = new Companion();
    private static final String DESCRIPTION = "DESCRIPTION";
    private static final String URL = "URL";
    private HashMap _$_findViewCache;
    public Authorization authorization;
    /* renamed from: createAcсountSubscription */
    private Subscription f769createAcountSubscription;
    private String currencyName;
    private String description;
    private FragmentOpenSafeAccountBinding fragmentOpenSafeAccountBinding;
    private ProgressDialog progressDialog;
    public RocketAPI rocketAPI;
    private String url;

    /* compiled from: OpenSafeAccountFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final OpenSafeAccountFragment newInstance(AvailableAccount availableAccount) {
            Intrinsics.checkParameterIsNotNull(availableAccount, "availableAccount");
            OpenSafeAccountFragment openSafeAccountFragment = new OpenSafeAccountFragment();
            Bundle bundle = new Bundle();
            bundle.putString(OpenSafeAccountFragment.CURRENCY_NAME, availableAccount.getCurrency());
            bundle.putString(OpenSafeAccountFragment.DESCRIPTION, availableAccount.getDescription());
            bundle.putString(OpenSafeAccountFragment.URL, availableAccount.getUrl());
            openSafeAccountFragment.setArguments(bundle);
            return openSafeAccountFragment;
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

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = FragmentOpenSafeAccountBinding.inflate(layoutInflater, viewGroup, null);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "FragmentOpenSafeAccountB…flater, container, false)");
        this.fragmentOpenSafeAccountBinding = layoutInflater;
        layoutInflater = this.fragmentOpenSafeAccountBinding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentOpenSafeAccountBinding");
        }
        layoutInflater.setData(new OpenSafeAccount());
        layoutInflater = this.fragmentOpenSafeAccountBinding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentOpenSafeAccountBinding");
        }
        return layoutInflater.getRoot();
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        this.rocketAPI = getInjector().getRocketApi();
        this.authorization = getInjector().getAuthorization();
        view = getArguments();
        if (view == null && bundle == null) {
            throw ((Throwable) new InvalidParameterException("No parameters for this fragment"));
        }
        if (view == null) {
            Intrinsics.throwNpe();
        }
        this.currencyName = view.getString(CURRENCY_NAME);
        this.description = view.getString(DESCRIPTION);
        this.url = view.getString(URL);
        Bundle fromString = Currency.fromString(this.currencyName);
        view = Currency.DOLLAR == fromString ? C0859R.string.safe_acc_usd : Currency.EURO == fromString ? C0859R.string.safe_acc_euro : Currency.ROUBLE == fromString ? C0859R.string.safe_acc_rub : C0859R.string.safe_acc;
        bundle = this.fragmentOpenSafeAccountBinding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentOpenSafeAccountBinding");
        }
        bundle = bundle.name;
        Intrinsics.checkExpressionValueIsNotNull(bundle, "fragmentOpenSafeAccountBinding.name");
        bundle.setText(getString(view));
        view = this.fragmentOpenSafeAccountBinding;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentOpenSafeAccountBinding");
        }
        OnClickListener onClickListener = this;
        view.open.setOnClickListener(onClickListener);
        view = this.fragmentOpenSafeAccountBinding;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentOpenSafeAccountBinding");
        }
        view.description.setText(this.description);
        view = this.fragmentOpenSafeAccountBinding;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentOpenSafeAccountBinding");
        }
        view.details.setOnClickListener(onClickListener);
    }

    public final void onClick(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        view = view.getId();
        if (view != C0859R.id.details) {
            if (view == C0859R.id.open) {
                openSafeAccount();
            }
            return;
        }
        openDetails();
    }

    public final void onDestroyView() {
        super.onDestroyView();
        hideProgress();
        if (this.f769createAcountSubscription != null) {
            Subscription subscription = this.f769createAcountSubscription;
            if (subscription == null) {
                Intrinsics.throwNpe();
            }
            if (!subscription.isUnsubscribed()) {
                subscription = this.f769createAcountSubscription;
                if (subscription == null) {
                    Intrinsics.throwNpe();
                }
                subscription.unsubscribe();
            }
        }
        _$_clearFindViewByIdCache();
    }

    private final void openSafeAccount() {
        showProgressExecution();
        FragmentOpenSafeAccountBinding fragmentOpenSafeAccountBinding = this.fragmentOpenSafeAccountBinding;
        if (fragmentOpenSafeAccountBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentOpenSafeAccountBinding");
        }
        CharSequence obj = fragmentOpenSafeAccountBinding.name.getText().toString();
        int length = obj.length() - 1;
        int i = 0;
        int i2 = i;
        while (i <= length) {
            int i3 = obj.charAt(i2 == 0 ? i : length) <= ' ' ? 1 : 0;
            if (i2 != 0) {
                if (i3 == 0) {
                    break;
                }
                length--;
            } else if (i3 == 0) {
                i2 = 1;
            } else {
                i++;
            }
        }
        String obj2 = obj.subSequence(i, length + 1).toString();
        if (obj2.length() > 0) {
            RocketAPI rocketAPI = this.rocketAPI;
            if (rocketAPI == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rocketAPI");
            }
            String str = this.currencyName;
            Authorization authorization = this.authorization;
            if (authorization == null) {
                Intrinsics.throwUninitializedPropertyAccessException("authorization");
            }
            this.f769createAcountSubscription = rocketAPI.accountsSafe(str, obj2, authorization.getToken()).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new OpenSafeAccountFragment$openSafeAccount$2(this));
            return;
        }
        showAlert(C0859R.string.empty_name);
        hideProgress();
    }

    private final void showAlert(int i) {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            new Builder(activity).setMessage(i).setPositiveButton(17039370, OpenSafeAccountFragment$showAlert$1$1.INSTANCE).show();
        }
    }

    private final void openDetails() {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.url));
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
        if (intent.resolveActivity(activity.getPackageManager()) != null) {
            startActivity(intent);
        }
    }

    private final void hideProgress() {
        if (this.progressDialog != null) {
            ProgressDialog progressDialog = this.progressDialog;
            if (progressDialog == null) {
                Intrinsics.throwNpe();
            }
            progressDialog.dismiss();
            this.progressDialog = null;
        }
    }

    private final void showProgressExecution() {
        this.progressDialog = new ProgressDialog(getActivity());
        ProgressDialog progressDialog = this.progressDialog;
        if (progressDialog != null) {
            progressDialog.setMessage(getResources().getString(C0859R.string.action_doing));
            progressDialog.setCancelable(false);
            progressDialog.setOnDismissListener(new C1521xc11d93e6(this));
            progressDialog.show();
        }
    }
}
