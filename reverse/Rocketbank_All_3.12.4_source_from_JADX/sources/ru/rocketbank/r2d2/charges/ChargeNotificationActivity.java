package ru.rocketbank.r2d2.charges;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.mikepenz.materialdrawer.util.KeyboardUtil;
import java.util.HashMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ru.rocketbank.core.network.api.UserApi;
import ru.rocketbank.core.network.model.PatchProfileBody;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.activities.SecuredActivity;
import ru.rocketbank.r2d2.charges.penalty.PenaltyChargeViewModel;
import ru.rocketbank.r2d2.charges.tax.TaxChargeViewModel;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;
import rx.Observable;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.schedulers.Schedulers;

/* compiled from: ChargeNotificationActivity.kt */
public final class ChargeNotificationActivity extends SecuredActivity {
    public static final Companion Companion = new Companion();
    public static final String KEY_CTC = "KEY_CTC";
    public static final String KEY_DRIVER_LICENCE = "KEY_DRIVER_LICENCE";
    public static final String KEY_INN = "KEY_INN";
    public static final String KEY_PENALTY_TAX_NOTIFICATION_ENABLED = "KEY_PENALTY_TAX_NOTIFICATION_ENABLED";
    private HashMap _$_findViewCache;
    private Subscription patchProfileSubscription;
    private PenaltyChargeViewModel penaltyCharge = new PenaltyChargeViewModel();
    private boolean penaltyTaxNotificationEnabled;
    private TaxChargeViewModel taxCharge = new TaxChargeViewModel();
    private UserApi userApi;
    private Subscription validSubscription;

    /* compiled from: ChargeNotificationActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public static /* bridge */ /* synthetic */ void start$default(Companion companion, Context context, boolean z, String str, String str2, String str3, int i, Object obj) {
            companion.start(context, z, (i & 4) != null ? null : str, (i & 8) != null ? null : str2, (i & 16) != null ? null : str3);
        }

        public final void start(Context context, boolean z, String str, String str2, String str3) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intent intent = new Intent(context, ChargeNotificationActivity.class);
            intent.putExtra(ChargeNotificationActivity.KEY_INN, str);
            intent.putExtra("KEY_CTC", str2);
            intent.putExtra(ChargeNotificationActivity.KEY_DRIVER_LICENCE, str3);
            intent.putExtra(ChargeNotificationActivity.KEY_PENALTY_TAX_NOTIFICATION_ENABLED, z);
            context.startActivity(intent);
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

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected final void onCreate(android.os.Bundle r6) {
        /*
        r5 = this;
        r0 = ru.rocketbank.r2d2.RocketApplication.Companion;
        r0 = r0.getInjector();
        r0 = r0.getUserApi();
        r5.userApi = r0;
        super.onCreate(r6);
        r0 = r5;
        r0 = (android.app.Activity) r0;
        r1 = 2131492913; // 0x7f0c0031 float:1.8609291E38 double:1.0530974227E-314;
        r0 = android.databinding.DataBindingUtil.setContentView(r0, r1);
        r1 = "DataBindingUtil.setConte…vity_charge_notification)";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1);
        r0 = (ru.rocketbank.r2d2.databinding.ActivityChargeNotificationBinding) r0;
        r1 = ru.rocketbank.r2d2.C0859R.id.toolbar;
        r1 = r5._$_findCachedViewById(r1);
        r1 = (android.support.v7.widget.Toolbar) r1;
        r5.setSupportActionBar(r1);
        r1 = r5.getSupportActionBar();
        if (r1 == 0) goto L_0x0035;
    L_0x0031:
        r2 = 1;
        r1.setDisplayHomeAsUpEnabled(r2);
    L_0x0035:
        r1 = r5.getSupportActionBar();
        if (r1 == 0) goto L_0x003e;
    L_0x003b:
        r1.setDisplayShowHomeEnabled$1385ff();
    L_0x003e:
        r1 = ru.rocketbank.r2d2.C0859R.id.toolbarShadow;
        r1 = r5._$_findCachedViewById(r1);
        r2 = "toolbarShadow";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2);
        r2 = android.os.Build.VERSION.SDK_INT;
        r3 = 21;
        r4 = 0;
        if (r2 < r3) goto L_0x0053;
    L_0x0050:
        r2 = 8;
        goto L_0x0054;
    L_0x0053:
        r2 = r4;
    L_0x0054:
        r1.setVisibility(r2);
        r1 = r5.penaltyCharge;
        r1 = r1.getCtc();
        if (r1 == 0) goto L_0x0076;
    L_0x005f:
        if (r6 == 0) goto L_0x0069;
    L_0x0061:
        r2 = "KEY_CTC";
        r2 = r6.getString(r2);
        if (r2 != 0) goto L_0x0073;
    L_0x0069:
        r2 = r5.getIntent();
        r3 = "KEY_CTC";
        r2 = r2.getStringExtra(r3);
    L_0x0073:
        r1.setValue(r2);
    L_0x0076:
        r1 = r5.penaltyCharge;
        r1 = r1.getDriver_licence();
        if (r1 == 0) goto L_0x0095;
    L_0x007e:
        if (r6 == 0) goto L_0x0088;
    L_0x0080:
        r2 = "KEY_DRIVER_LICENCE";
        r2 = r6.getString(r2);
        if (r2 != 0) goto L_0x0092;
    L_0x0088:
        r2 = r5.getIntent();
        r3 = "KEY_DRIVER_LICENCE";
        r2 = r2.getStringExtra(r3);
    L_0x0092:
        r1.setValue(r2);
    L_0x0095:
        r1 = r5.taxCharge;
        r1 = r1.getInn();
        if (r1 == 0) goto L_0x00b4;
    L_0x009d:
        if (r6 == 0) goto L_0x00a7;
    L_0x009f:
        r2 = "KEY_INN";
        r2 = r6.getString(r2);
        if (r2 != 0) goto L_0x00b1;
    L_0x00a7:
        r2 = r5.getIntent();
        r3 = "KEY_INN";
        r2 = r2.getStringExtra(r3);
    L_0x00b1:
        r1.setValue(r2);
    L_0x00b4:
        if (r6 == 0) goto L_0x00bd;
    L_0x00b6:
        r1 = "KEY_PENALTY_TAX_NOTIFICATION_ENABLED";
        r6 = r6.getBoolean(r1);
        goto L_0x00c7;
    L_0x00bd:
        r6 = r5.getIntent();
        r1 = "KEY_PENALTY_TAX_NOTIFICATION_ENABLED";
        r6 = r6.getBooleanExtra(r1, r4);
    L_0x00c7:
        r5.penaltyTaxNotificationEnabled = r6;
        r6 = r5.taxCharge;
        r0.setTaxCharge(r6);
        r6 = r5.penaltyCharge;
        r0.setPenaltyCharge(r6);
        r6 = r5.penaltyTaxNotificationEnabled;
        r6 = java.lang.Boolean.valueOf(r6);
        r0.setPenaltyTaxNotificationEnabled(r6);
        r6 = r0.switcherPenaltyTax;
        r1 = "binding.switcherPenaltyTax";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r6, r1);
        r1 = r5.penaltyTaxNotificationEnabled;
        r6.setChecked(r1);
        r6 = r0.switcherPenaltyTax;
        r0 = new ru.rocketbank.r2d2.charges.ChargeNotificationActivity$onCreate$1;
        r0.<init>(r5);
        r0 = (android.widget.CompoundButton.OnCheckedChangeListener) r0;
        r6.setOnCheckedChangeListener(r0);
        r6 = ru.rocketbank.r2d2.C0859R.id.editTextCtc;
        r6 = r5._$_findCachedViewById(r6);
        r6 = (ru.rocketbank.core.widgets.RocketEditText) r6;
        r0 = "dd SS dddddd";
        ru.rocketbank.r2d2.utils.PatternFormatter.setup(r6, r0);
        r6 = ru.rocketbank.r2d2.C0859R.id.editTextDriverLicence;
        r6 = r5._$_findCachedViewById(r6);
        r6 = (ru.rocketbank.core.widgets.RocketEditText) r6;
        r0 = "dd SS dddddd";
        ru.rocketbank.r2d2.utils.PatternFormatter.setup(r6, r0);
        r6 = ru.rocketbank.r2d2.C0859R.id.btnNext;
        r6 = r5._$_findCachedViewById(r6);
        r6 = (ru.rocketbank.core.widgets.RocketButton) r6;
        r0 = 2131821557; // 0x7f1103f5 float:1.927586E38 double:1.0532597944E-314;
        r6.setText(r0);
        r6 = ru.rocketbank.r2d2.C0859R.id.btnNext;
        r6 = r5._$_findCachedViewById(r6);
        r6 = (ru.rocketbank.core.widgets.RocketButton) r6;
        r0 = new ru.rocketbank.r2d2.charges.ChargeNotificationActivity$onCreate$2;
        r0.<init>(r5);
        r0 = (android.view.View.OnClickListener) r0;
        r6.setOnClickListener(r0);
        r6 = ru.rocketbank.r2d2.C0859R.id.buttonCheck;
        r6 = r5._$_findCachedViewById(r6);
        r6 = (ru.rocketbank.core.widgets.RocketButton) r6;
        r0 = new ru.rocketbank.r2d2.charges.ChargeNotificationActivity$onCreate$3;
        r0.<init>(r5);
        r0 = (android.view.View.OnClickListener) r0;
        r6.setOnClickListener(r0);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.charges.ChargeNotificationActivity.onCreate(android.os.Bundle):void");
    }

    private final void checkCharges() {
        ViewField driver_licence = this.penaltyCharge.getDriver_licence();
        String str = null;
        String cleanValue = driver_licence != null ? driver_licence.getCleanValue() : null;
        driver_licence = this.penaltyCharge.getCtc();
        String cleanValue2 = driver_licence != null ? driver_licence.getCleanValue() : null;
        driver_licence = this.taxCharge.getInn();
        if (driver_licence != null) {
            str = driver_licence.getCleanValue();
        }
        ChargesListActivity.Companion.start(this, "", cleanValue2, cleanValue, null, str);
    }

    public final void patchProfile() {
        Utils.closeKeyboardIfExists(this);
        showProgressDialog();
        ViewField driver_licence = this.penaltyCharge.getDriver_licence();
        String str = null;
        String cleanValue = driver_licence != null ? driver_licence.getCleanValue() : null;
        ViewField ctc = this.penaltyCharge.getCtc();
        String cleanValue2 = ctc != null ? ctc.getCleanValue() : null;
        ViewField inn = this.taxCharge.getInn();
        if (inn != null) {
            str = inn.getCleanValue();
        }
        PatchProfileBody patchProfileBody = new PatchProfileBody(cleanValue, cleanValue2, str, Boolean.valueOf(this.penaltyTaxNotificationEnabled));
        UserApi userApi = this.userApi;
        if (userApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("userApi");
        }
        this.patchProfileSubscription = userApi.patchProfile(patchProfileBody).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.io()).subscribe((Action1) new ChargeNotificationActivity$patchProfile$1(this), (Action1) new ChargeNotificationActivity$patchProfile$2(this));
    }

    protected final void onStart() {
        super.onStart();
        Utils.closeKeyboardIfExists(this);
    }

    protected final void onResume() {
        super.onResume();
        Observable subscribeOn = Observable.merge(this.penaltyCharge.getValidObservable(), this.taxCharge.getValidObservable()).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.io());
        Action1 chargeNotificationActivity$onResume$1 = new ChargeNotificationActivity$onResume$1(this);
        Function1 function1 = ChargeNotificationActivity$onResume$2.INSTANCE;
        if (function1 != null) {
            function1 = new ChargeNotificationActivity$sam$rx_functions_Action1$0(function1);
        }
        this.validSubscription = subscribeOn.subscribe(chargeNotificationActivity$onResume$1, (Action1) function1);
        updateNextButton();
    }

    protected final void onPause() {
        unsubscribe(this.patchProfileSubscription);
        unsubscribe(this.validSubscription);
        KeyboardUtil.hideKeyboard(this);
        super.onPause();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void updateNextButton() {
        /*
        r4 = this;
        r0 = ru.rocketbank.r2d2.C0859R.id.btnNext;
        r0 = r4._$_findCachedViewById(r0);
        r0 = (ru.rocketbank.core.widgets.RocketButton) r0;
        r1 = "btnNext";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1);
        r1 = r4.penaltyTaxNotificationEnabled;
        r2 = 0;
        if (r1 == 0) goto L_0x0075;
    L_0x0012:
        r1 = r4.taxCharge;
        r1 = r1.isValid();
        r3 = 0;
        if (r1 != 0) goto L_0x002f;
    L_0x001b:
        r1 = r4.taxCharge;
        r1 = r1.getInn();
        if (r1 == 0) goto L_0x0028;
    L_0x0023:
        r1 = r1.getValue();
        goto L_0x0029;
    L_0x0028:
        r1 = r3;
    L_0x0029:
        r1 = r4.isEmpty(r1);
        if (r1 == 0) goto L_0x0076;
    L_0x002f:
        r1 = r4.penaltyCharge;
        r1 = r1.getCtc();
        if (r1 == 0) goto L_0x003c;
    L_0x0037:
        r1 = r1.getValid();
        goto L_0x003d;
    L_0x003c:
        r1 = r2;
    L_0x003d:
        if (r1 != 0) goto L_0x0053;
    L_0x003f:
        r1 = r4.penaltyCharge;
        r1 = r1.getCtc();
        if (r1 == 0) goto L_0x004c;
    L_0x0047:
        r1 = r1.getValue();
        goto L_0x004d;
    L_0x004c:
        r1 = r3;
    L_0x004d:
        r1 = r4.isEmpty(r1);
        if (r1 == 0) goto L_0x0076;
    L_0x0053:
        r1 = r4.penaltyCharge;
        r1 = r1.getDriver_licence();
        if (r1 == 0) goto L_0x0060;
    L_0x005b:
        r1 = r1.getValid();
        goto L_0x0061;
    L_0x0060:
        r1 = r2;
    L_0x0061:
        if (r1 != 0) goto L_0x0075;
    L_0x0063:
        r1 = r4.penaltyCharge;
        r1 = r1.getDriver_licence();
        if (r1 == 0) goto L_0x006f;
    L_0x006b:
        r3 = r1.getValue();
    L_0x006f:
        r1 = r4.isEmpty(r3);
        if (r1 == 0) goto L_0x0076;
    L_0x0075:
        r2 = 1;
    L_0x0076:
        r0.setEnabled(r2);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.charges.ChargeNotificationActivity.updateNextButton():void");
    }

    private final boolean isEmpty(String str) {
        CharSequence charSequence = str;
        if (charSequence != null) {
            if (StringsKt.isBlank(charSequence) == null) {
                return null;
            }
        }
        return true;
    }

    protected final void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "savedInstanceState");
        super.onSaveInstanceState(bundle);
        String str = "KEY_CTC";
        ViewField ctc = this.penaltyCharge.getCtc();
        String str2 = null;
        bundle.putString(str, ctc != null ? ctc.getValue() : null);
        str = KEY_DRIVER_LICENCE;
        ctc = this.penaltyCharge.getDriver_licence();
        bundle.putString(str, ctc != null ? ctc.getValue() : null);
        str = KEY_INN;
        ctc = this.taxCharge.getInn();
        if (ctc != null) {
            str2 = ctc.getValue();
        }
        bundle.putString(str, str2);
        bundle.putBoolean(KEY_PENALTY_TAX_NOTIFICATION_ENABLED, this.penaltyTaxNotificationEnabled);
    }
}
