package ru.rocketbank.r2d2.root.devidepayment.ap;

import android.app.Activity;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;
import java.util.HashMap;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.PresenterManager;
import ru.rocketbank.core.pay.google.UiTapAndPay;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.ap.APManageCardData;
import ru.rocketbank.r2d2.data.binding.ap.APManageCardListener;
import ru.rocketbank.r2d2.databinding.ActivityApManageCardBinding;
import rx.Subscription;
import rx.functions.Action1;
import rx.subscriptions.Subscriptions;

/* compiled from: APManageCardActivity.kt */
public final class APManageCardActivity extends APBaseActivity<APManageCardPresenter, ActivityApManageCardBinding> implements APManageCardListener, APManageCardView {
    public static final Companion Companion = new Companion();
    public static final String KEY_ANDROID_PAY_TOKEN = "KEY_CARD";
    public static final String KEY_IS_DEFAULT = "IS_DEFAULT";
    public static final String KEY_IS_DELETE = "KEY_DELETE";
    public static final int REQUEST_DEFAULT = 29013;
    public static final int REQUEST_DELETE = 29014;
    private static final String TAG = "APManageCardActivity";
    private HashMap _$_findViewCache;
    private final APManageCardData dataB = new APManageCardData();
    private Subscription deleteSubscription = Subscriptions.empty();
    private Subscription makeDefaultSubscription = Subscriptions.empty();
    private final Intent resultIntent = new Intent();
    private final UiTapAndPay uiTapAndPay = getInjector().getUiTapAndPay();

    /* compiled from: APManageCardActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public static /* bridge */ /* synthetic */ void startForResult$default(Companion companion, Activity activity, String str, boolean z, int i, int i2, Object obj) {
            if ((i2 & 4) != 0) {
                z = false;
            }
            companion.startForResult(activity, str, z, i);
        }

        public final void startForResult(Activity activity, String str, boolean z, int i) {
            Intrinsics.checkParameterIsNotNull(activity, "activity");
            Intrinsics.checkParameterIsNotNull(str, "androidPayToken");
            Intent intent = new Intent(activity, APManageCardActivity.class);
            intent.putExtra(APManageCardActivity.KEY_ANDROID_PAY_TOKEN, str);
            intent.putExtra(APManageCardActivity.KEY_IS_DEFAULT, z);
            activity.startActivityForResult(intent, i);
        }
    }

    public static final void startForResult(Activity activity, String str, boolean z, int i) {
        Companion.startForResult(activity, str, z, i);
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

    public final APManageCardPresenter createPresenter() {
        PresenterManager presenterManager = PresenterManager.INSTANCE;
        UUID fromString = UUID.fromString("df70c5a4-2074-462a-92ec-7fe1663bf185");
        Intrinsics.checkExpressionValueIsNotNull(fromString, "UUID.fromString(\"df70c5a…-462a-92ec-7fe1663bf185\")");
        return (APManageCardPresenter) PresenterManager.getOrCreatePresenter(fromString, APManageCardPresenter.class);
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        bundle = DataBindingUtil.setContentView(this, C0859R.layout.activity_ap_manage_card);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "DataBindingUtil.setConte….activity_ap_manage_card)");
        setBinding(bundle);
        ((ActivityApManageCardBinding) getBinding()).setData(this.dataB);
        bundle = getIntent();
        String stringExtra = bundle.getStringExtra(KEY_ANDROID_PAY_TOKEN);
        APManageCardPresenter aPManageCardPresenter = (APManageCardPresenter) getPresenter();
        Intrinsics.checkExpressionValueIsNotNull(stringExtra, "tur");
        aPManageCardPresenter.onCreate(stringExtra);
        this.dataB.getAndroidPayToken().set(stringExtra);
        this.dataB.getDefaultEnabled().set(bundle.getBooleanExtra(KEY_IS_DEFAULT, false));
        bundle = getSupportActionBar();
        if (bundle != null) {
            Intrinsics.checkExpressionValueIsNotNull(bundle, "it");
            bundle.setTitle(getString(C0859R.string.card_added));
            bundle.setDisplayHomeAsUpEnabled(true);
        }
        setResult(0);
    }

    protected final void onStart() {
        super.onStart();
        ((ActivityApManageCardBinding) getBinding()).setListener(this);
        ((APManageCardPresenter) getPresenter()).onAttach(this);
    }

    protected final void onStop() {
        ((ActivityApManageCardBinding) getBinding()).setListener(null);
        ((APManageCardPresenter) getPresenter()).onDetach();
        super.onStop();
    }

    protected final void onDestroy() {
        unsubscribe(this.makeDefaultSubscription);
        unsubscribe(this.deleteSubscription);
        super.onDestroy();
    }

    protected final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1) {
            switch (i) {
                case REQUEST_DEFAULT /*29013*/:
                    this.resultIntent.putExtra(KEY_IS_DELETE, false);
                    AnalyticsManager.cardDefaultGooglePay();
                    setResult(-1, this.resultIntent);
                    finish();
                    return;
                case REQUEST_DELETE /*29014*/:
                    this.resultIntent.putExtra(KEY_IS_DELETE, true);
                    AnalyticsManager.cardDeletedFromGooglePay();
                    this.dataB.getDefaultEnabled().set(false);
                    ((APManageCardPresenter) getPresenter()).deleteTur();
                    break;
                default:
                    break;
            }
        }
    }

    public final void onTurDeleted() {
        setResult(-1, this.resultIntent);
        finish();
    }

    public final void onDeleteError() {
        Toast.makeText(this, "Что-то пошло не так", 0).show();
    }

    public final void makeDefaultClicked(String str) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        this.makeDefaultSubscription = this.uiTapAndPay.selectDefault$2e873f09(this, str).subscribe((Action1) new APManageCardActivity$makeDefaultClicked$1(this), (Action1) new APManageCardActivity$makeDefaultClicked$2(this));
    }

    public final void deleteCardClicked(String str) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        this.deleteSubscription = this.uiTapAndPay.deleteCard$2e873f09(this, str).subscribe((Action1) new APManageCardActivity$deleteCardClicked$1(this), (Action1) new APManageCardActivity$deleteCardClicked$2(this));
    }
}
