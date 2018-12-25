package ru.rocketbank.r2d2.charges;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.charge.ChargeModel;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.SecuredActivity;

/* compiled from: ChargeInfoActivity.kt */
public abstract class ChargeInfoActivity extends SecuredActivity {
    public static final Companion Companion = new Companion();
    private static final String KEY_CHARGE = "KEY_CHARGE";
    private static final int REQUEST_CODE = 0;
    private HashMap _$_findViewCache;
    public ChargeModel chargeModel;

    /* compiled from: ChargeInfoActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final int getREQUEST_CODE() {
            return ChargeInfoActivity.REQUEST_CODE;
        }

        public final String getKEY_CHARGE() {
            return ChargeInfoActivity.KEY_CHARGE;
        }

        public final Intent createIntent(Context context, Class<? extends ChargeInfoActivity> cls, ChargeModel chargeModel) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(cls, "activityClass");
            Intrinsics.checkParameterIsNotNull(chargeModel, "chargeModel");
            context = new Intent(context, cls).putExtra(getKEY_CHARGE(), chargeModel);
            Intrinsics.checkExpressionValueIsNotNull(context, "Intent(context, activity…(KEY_CHARGE, chargeModel)");
            return context;
        }
    }

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
        if (view != null) {
            return view;
        }
        view = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), view);
        return view;
    }

    public final ChargeModel getChargeModel() {
        ChargeModel chargeModel = this.chargeModel;
        if (chargeModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chargeModel");
        }
        return chargeModel;
    }

    public final void setChargeModel(ChargeModel chargeModel) {
        Intrinsics.checkParameterIsNotNull(chargeModel, "<set-?>");
        this.chargeModel = chargeModel;
    }

    protected void onCreate(Bundle bundle) {
        Parcelable parcelableExtra = getIntent().getParcelableExtra(ChargePaymentDetailsActivity.Companion.getKEY_CHARGE());
        Intrinsics.checkExpressionValueIsNotNull(parcelableExtra, "intent.getParcelableExtr…tailsActivity.KEY_CHARGE)");
        this.chargeModel = (ChargeModel) parcelableExtra;
        super.onCreate(bundle);
    }

    protected void onStart() {
        super.onStart();
        ((RocketButton) _$_findCachedViewById(C0859R.id.btnNext)).setText(C0859R.string.pay);
        ((RocketButton) _$_findCachedViewById(C0859R.id.btnNext)).setOnClickListener(new ChargeInfoActivity$onStart$1(this));
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == REQUEST_CODE && i2 == -1) {
            i2 = new Intent();
            intent = KEY_CHARGE;
            ChargeModel chargeModel = this.chargeModel;
            if (chargeModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chargeModel");
            }
            setResult(-1, i2.putExtra(intent, chargeModel));
            finish();
        }
    }
}
