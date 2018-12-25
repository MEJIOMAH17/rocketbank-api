package ru.rocketbank.r2d2.charges;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.charge.ChargeModel;
import ru.rocketbank.core.model.charge.DocumentType;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.StatusActivity;
import rx.Observable;

/* compiled from: ChargePayStatusActivity.kt */
public final class ChargePayStatusActivity extends StatusActivity<GenericRequestResponseData> {
    public static final Companion Companion = new Companion();
    private static final String KEY_DATA = "KEY_DATA";
    private HashMap _$_findViewCache;
    private ChargeModel chargeModel;
    private final int successStatusText = C0859R.string.ok;

    /* compiled from: ChargePayStatusActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final Intent createIntent(Activity activity, ChargeModel chargeModel) {
            Intrinsics.checkParameterIsNotNull(activity, "context");
            Intrinsics.checkParameterIsNotNull(chargeModel, "chargeModel");
            activity = StatusActivity.Companion.createIntent(activity, ChargePayStatusActivity.class, chargeModel.getDocument_type() == DocumentType.ctc ? C0859R.string.penalty_charge_payment_title : C0859R.string.tax_charge_payment_title);
            activity.putExtra(ChargePayStatusActivity.KEY_DATA, chargeModel);
            Intrinsics.checkExpressionValueIsNotNull(activity, "intent");
            return activity;
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

    public final void onCreate(Bundle bundle) {
        Parcelable parcelableExtra = getIntent().getParcelableExtra(KEY_DATA);
        Intrinsics.checkExpressionValueIsNotNull(parcelableExtra, "intent.getParcelableExtra<ChargeModel>(KEY_DATA)");
        this.chargeModel = (ChargeModel) parcelableExtra;
        super.onCreate(bundle);
    }

    protected final int getSuccessStatusText() {
        return this.successStatusText;
    }

    protected final Observable<GenericRequestResponseData> getOperation() {
        RocketAPI rocketAPI = this.rocketApi;
        ChargeModel chargeModel = this.chargeModel;
        if (chargeModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chargeModel");
        }
        Integer id = chargeModel.getId();
        Observable<GenericRequestResponseData> chargesPay = rocketAPI.chargesPay(id != null ? id.intValue() : -1, "");
        Intrinsics.checkExpressionValueIsNotNull(chargesPay, "rocketApi.chargesPay(chargeModel.id ?: -1, \"\")");
        return chargesPay;
    }
}
