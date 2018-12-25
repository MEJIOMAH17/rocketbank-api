package ru.rocketbank.r2d2.root.devidepayment.ap;

import android.app.Activity;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.widget.Toast;
import java.util.HashMap;
import java.util.UUID;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.PresenterManager;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.pay.google.RxTapAndPay;
import ru.rocketbank.core.pay.google.UiTapAndPay;
import ru.rocketbank.core.widgets.RocketSnackbar;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.ap.AddCardData;
import ru.rocketbank.r2d2.data.binding.ap.AddCardListener;
import ru.rocketbank.r2d2.databinding.ActivityApAddCardBinding;
import rx.Subscription;
import rx.functions.Action1;
import rx.subscriptions.Subscriptions;

/* compiled from: APAddCardActivity.kt */
public final class APAddCardActivity extends APBaseActivity<APAddCardPresenter, ActivityApAddCardBinding> implements AddCardListener, APAddCardView {
    public static final Companion Companion = new Companion();
    private static final String KEY_CARD_TOKEN = "KEY_CARD_TOKEN";
    private static final String KEY_PAN = "PAN";
    private static final String KEY_TITLE = "TITLE";
    private static final int REQUEST_ADD_CARD = 10239;
    private HashMap _$_findViewCache;
    private Subscription addCardSubscription = Subscriptions.empty();
    private String cardTitle;
    private final AddCardData data = new AddCardData();
    private String phone;
    private final RxTapAndPay rxTapAndPay = getInjector().getRxTapAndPay();
    private final UiTapAndPay uiTapAndPay = getInjector().getUiTapAndPay();

    /* compiled from: APAddCardActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final void startForResult(Activity activity, String str, String str2, String str3, int i) {
            Intrinsics.checkParameterIsNotNull(activity, "activity");
            Intrinsics.checkParameterIsNotNull(str, "cardTitle");
            Intrinsics.checkParameterIsNotNull(str2, "pan");
            Intrinsics.checkParameterIsNotNull(str3, "cardToken");
            Intent intent = new Intent(activity, APAddCardActivity.class);
            intent.putExtra(APAddCardActivity.KEY_PAN, str2);
            intent.putExtra("TITLE", str);
            intent.putExtra(APAddCardActivity.KEY_CARD_TOKEN, str3);
            activity.startActivityForResult(intent, i);
        }
    }

    public static final void startForResult(Activity activity, String str, String str2, String str3, int i) {
        Companion.startForResult(activity, str, str2, str3, i);
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

    public final APAddCardPresenter createPresenter() {
        PresenterManager presenterManager = PresenterManager.INSTANCE;
        UUID fromString = UUID.fromString("686c1f06-5ddd-4a67-bd77-55447a4ea81d");
        Intrinsics.checkExpressionValueIsNotNull(fromString, "UUID.fromString(\"686c1f0…-4a67-bd77-55447a4ea81d\")");
        return (APAddCardPresenter) PresenterManager.getOrCreatePresenter(fromString, APAddCardPresenter.class);
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        bundle = DataBindingUtil.setContentView(this, C0859R.layout.activity_ap_add_card);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "DataBindingUtil.setConte…out.activity_ap_add_card)");
        setBinding(bundle);
        ((ActivityApAddCardBinding) getBinding()).setData(this.data);
        this.data.getCardToken().set(getIntent().getStringExtra(KEY_CARD_TOKEN));
        this.data.getPan().set(getIntent().getStringExtra(KEY_PAN));
        bundle = getIntent().getStringExtra("TITLE");
        Intrinsics.checkExpressionValueIsNotNull(bundle, "intent.getStringExtra(KEY_TITLE)");
        this.cardTitle = bundle;
        bundle = getSupportActionBar();
        if (bundle != null) {
            bundle.setDisplayHomeAsUpEnabled(true);
            Intrinsics.checkExpressionValueIsNotNull(bundle, "it");
            bundle.setTitle(getString(C0859R.string.add_to_ap));
        }
        ((APAddCardPresenter) getPresenter()).onAttach(this);
        setResult(null);
    }

    protected final void onStart() {
        super.onStart();
        ((ActivityApAddCardBinding) getBinding()).setListener(this);
    }

    protected final void onStop() {
        hideProgress();
        ((ActivityApAddCardBinding) getBinding()).setListener(null);
        super.onStop();
    }

    protected final void onDestroy() {
        ((APAddCardPresenter) getPresenter()).onDetach();
        super.onDestroy();
    }

    public final void onCardAddClicked(String str) {
        Intrinsics.checkParameterIsNotNull(str, "cardToken");
        showProgress();
        keepUnlocked();
        this.rxTapAndPay.getEnvironment().map(new APAddCardActivity$onCardAddClicked$1(this, str)).subscribe((Action1) APAddCardActivity$onCardAddClicked$2.INSTANCE, (Action1) APAddCardActivity$onCardAddClicked$3.INSTANCE);
    }

    public final void onUserModel(UserModel userModel) {
        super.onUserModel(userModel);
        if (userModel != null) {
            userModel = userModel.getPhone();
            Intrinsics.checkExpressionValueIsNotNull(userModel, "it.phone");
            userModel = userModel.getNumber();
            Intrinsics.checkExpressionValueIsNotNull(userModel, "it.phone.number");
            this.phone = userModel;
        }
    }

    public final void onCardDataReady(String str, String str2, String str3) {
        Intrinsics.checkParameterIsNotNull(str, "address");
        Intrinsics.checkParameterIsNotNull(str2, "postIndex");
        Intrinsics.checkParameterIsNotNull(str3, "opc");
        Object obj = this.data.getPan().get();
        if (obj == null) {
            Intrinsics.throwNpe();
        }
        String str4 = (String) obj;
        Intrinsics.checkExpressionValueIsNotNull(str4, "pan");
        int length = str4.length() - 5;
        int length2 = str4.length();
        if (str4 == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        String substring = str4.substring(length, length2);
        Intrinsics.checkExpressionValueIsNotNull(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        UiTapAndPay uiTapAndPay = this.uiTapAndPay;
        Activity activity = this;
        String str5 = this.cardTitle;
        if (str5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardTitle");
        }
        String str6 = this.phone;
        if (str6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("phone");
        }
        this.addCardSubscription = uiTapAndPay.addCard$56205205(activity, str5, str3, substring, str6, str, str2).subscribe();
    }

    public final void showError(String str) {
        Intrinsics.checkParameterIsNotNull(str, "error");
        RocketSnackbar.make(((ActivityApAddCardBinding) getBinding()).getRoot(), str, -1).setTextColor(ContextCompat.getColor(this, C0859R.color.rocketBlack)).show();
    }

    protected final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        hideProgress();
        if (i == REQUEST_ADD_CARD && i2 == -1) {
            setResult(-1);
            Toast.makeText(this, getString(C0859R.string.card_added), null).show();
        }
        this.addCardSubscription.unsubscribe();
        finish();
    }
}
