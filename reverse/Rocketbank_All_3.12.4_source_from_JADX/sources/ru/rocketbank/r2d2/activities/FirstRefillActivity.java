package ru.rocketbank.r2d2.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.os.Bundle;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.CardData;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.enums.Status;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.core.widgets.CreditCardView;
import ru.rocketbank.core.widgets.listener.CardNumberListener;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.activities.c2c.CardRefillAmountActivity;
import ru.rocketbank.r2d2.data.binding.FirstRefillHandler;
import ru.rocketbank.r2d2.data.binding.card.CardAbilityData;
import ru.rocketbank.r2d2.data.binding.card.CardAbilityHandler;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonData;
import ru.rocketbank.r2d2.databinding.ActivityFirstRefillBinding;
import ru.rocketbank.r2d2.utils.NfcInputCard;
import rx.Observable;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;

/* compiled from: FirstRefillActivity.kt */
public final class FirstRefillActivity extends SecuredActivity implements CardNumberListener, FirstRefillHandler, CardAbilityHandler {
    public static final Companion Companion = new Companion();
    private HashMap _$_findViewCache;
    private ActivityFirstRefillBinding binding;
    private CreditCardView creditCard;
    private NfcInputCard nfcInputCard;
    private Subscription refreshSubscription;

    /* compiled from: FirstRefillActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final void start(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            context.startActivity(new Intent(context, FirstRefillActivity.class));
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

    public final void binReady(String str) {
        Intrinsics.checkParameterIsNotNull(str, "cardNumber");
    }

    public final void cancelBin() {
    }

    public final void cardChanged() {
    }

    public final void cardNumberIsInvalid(String str) {
        Intrinsics.checkParameterIsNotNull(str, "cardNumber");
    }

    public final void cardNumberIsValid(String str) {
        Intrinsics.checkParameterIsNotNull(str, "cardNumber");
    }

    public final void cvvIsInvalid() {
    }

    public final void cvvIsValid() {
    }

    public final void dateIsInvalid() {
    }

    public final void dateIsValid() {
    }

    public final void onBackPressed() {
    }

    public final void onSupportPressed(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        SupportChatActivity.Companion.start(this);
    }

    public final void onReqPressed(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        startActivity(new Intent(this, AccountDetailsActivity.class));
    }

    public final void onCashPressed(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        CashRefillActivity.Companion.start(this);
    }

    public final void nextPressed(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        view = this.creditCard;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("creditCard");
        }
        view = view.getCardNumber();
        CreditCardView creditCardView = this.creditCard;
        if (creditCardView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("creditCard");
        }
        String validThru = creditCardView.getValidThru();
        CreditCardView creditCardView2 = this.creditCard;
        if (creditCardView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("creditCard");
        }
        CardRefillAmountActivity.Companion.newInstance(this, new CardData(view, validThru, creditCardView2.getCvv()), null);
    }

    public final void onPressedPhoto(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        takeAShot();
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        bundle = RocketApplication.Companion.getInjector().getAnalyticsManager();
        bundle.noob();
        bundle.logStartFirstRefillFacebook();
        bundle = new CardAbilityData();
        Activity activity = this;
        ViewDataBinding contentView = DataBindingUtil.setContentView(activity, C0859R.layout.activity_first_refill);
        Intrinsics.checkExpressionValueIsNotNull(contentView, "DataBindingUtil.setConte…ut.activity_first_refill)");
        this.binding = (ActivityFirstRefillBinding) contentView;
        ActivityFirstRefillBinding activityFirstRefillBinding = this.binding;
        if (activityFirstRefillBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activityFirstRefillBinding.setToolbarBinding(new ToolbarWithButtonData(getString(C0859R.string.first_refill), getString(C0859R.string.next_cap), false, 0, 8, null));
        activityFirstRefillBinding = this.binding;
        if (activityFirstRefillBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activityFirstRefillBinding.setActions(this);
        activityFirstRefillBinding = this.binding;
        if (activityFirstRefillBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activityFirstRefillBinding.setHandler(this);
        activityFirstRefillBinding = this.binding;
        if (activityFirstRefillBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activityFirstRefillBinding.setAbility(bundle);
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle = bundle.cardAction;
        if (bundle == null) {
            Intrinsics.throwNpe();
        }
        bundle = bundle.creditCard;
        Intrinsics.checkExpressionValueIsNotNull(bundle, "binding.cardAction!!.creditCard");
        this.creditCard = bundle;
        bundle = this.creditCard;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("creditCard");
        }
        bundle.setCardNumberListener(this);
        bundle = this.creditCard;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("creditCard");
        }
        bundle = bundle.newCard;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("newCard");
        }
        bundle.setText(C0859R.string.another_bank_card);
        bundle = getSystemService("input_method");
        if (bundle == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        }
        InputMethodManager inputMethodManager = (InputMethodManager) bundle;
        activityFirstRefillBinding = this.binding;
        if (activityFirstRefillBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activityFirstRefillBinding.scroll.setOnTouchListener(new FirstRefillActivity$onCreate$1(this, inputMethodManager));
        this.nfcInputCard = new NfcInputCard(activity, getClass());
    }

    protected final void onPause() {
        super.onPause();
        NfcInputCard nfcInputCard = this.nfcInputCard;
        if (nfcInputCard == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nfcInputCard");
        }
        nfcInputCard.onStop();
        Subscription subscription = this.refreshSubscription;
        if (subscription != null && !subscription.isUnsubscribed()) {
            subscription.unsubscribe();
        }
    }

    protected final void onResume() {
        super.onResume();
        openFeedIfNotNew();
        NfcInputCard nfcInputCard = this.nfcInputCard;
        if (nfcInputCard == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nfcInputCard");
        }
        nfcInputCard.onCreate();
        PackageManager packageManager = getPackageManager();
        ActivityFirstRefillBinding activityFirstRefillBinding = this.binding;
        if (activityFirstRefillBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        CardAbilityData ability = activityFirstRefillBinding.getAbility();
        if (ability == null) {
            Intrinsics.throwNpe();
        }
        ability.updateAbility(packageManager.hasSystemFeature("android.hardware.nfc"), packageManager.hasSystemFeature("android.hardware.camera"));
        this.refreshSubscription = Observable.timer(10, TimeUnit.SECONDS).observeOn(AndroidSchedulers.mainThread()).subscribe(new FirstRefillActivity$onResume$1(this));
    }

    public final void onUserModel(UserModel userModel) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        super.onUserModel(userModel);
        openFeedIfNotNew();
    }

    private final void openFeedIfNotNew() {
        UserModel userImmediate = this.authorization.getUserImmediate();
        if (userImmediate != null && userImmediate.getStatus() != Status.NEW) {
            startActivity(new Intent(this, MainActivity.class));
            finish();
        }
    }

    public final void allCardIsValid(String str, String str2, String str3) {
        Intrinsics.checkParameterIsNotNull(str, "cardNumber");
        Intrinsics.checkParameterIsNotNull(str2, ProviderField.DATE);
        Intrinsics.checkParameterIsNotNull(str3, "cvv");
        str = this.binding;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        str = str.getToolbarBinding();
        if (str == null) {
            Intrinsics.throwNpe();
        }
        str.getButtonEnabled().set(true);
    }

    public final void cardInvalid() {
        ActivityFirstRefillBinding activityFirstRefillBinding = this.binding;
        if (activityFirstRefillBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ToolbarWithButtonData toolbarBinding = activityFirstRefillBinding.getToolbarBinding();
        if (toolbarBinding == null) {
            Intrinsics.throwNpe();
        }
        toolbarBinding.getButtonEnabled().set(false);
    }
}
