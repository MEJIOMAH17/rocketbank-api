package ru.rocketbank.r2d2.charges.tax;

import android.content.Context;
import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.charge.ChargeModel;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.charges.ChargeInfoActivity;
import ru.rocketbank.r2d2.charges.ChargesListActivity;
import ru.rocketbank.r2d2.charges.ChargesListActivity.Companion;
import ru.rocketbank.r2d2.databinding.ActivityTaxChargeBinding;

/* compiled from: TaxChargeInfoActivity.kt */
public final class TaxChargeInfoActivity extends ChargeInfoActivity {
    private HashMap _$_findViewCache;

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

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        bundle = DataBindingUtil.setContentView(this, C0859R.layout.activity_tax_charge);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "DataBindingUtil.setConte…yout.activity_tax_charge)");
        ActivityTaxChargeBinding activityTaxChargeBinding = (ActivityTaxChargeBinding) bundle;
        setSupportActionBar((Toolbar) _$_findCachedViewById(C0859R.id.toolbar));
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
        }
        ((RocketButton) _$_findCachedViewById(C0859R.id.btnNext)).setText(C0859R.string.pay);
        ChargeModel chargeModel = (ChargeModel) getIntent().getParcelableExtra(ChargeInfoActivity.Companion.getKEY_CHARGE());
        setTitle(C0859R.string.tax_charge_title);
        activityTaxChargeBinding.setChargeModel(chargeModel);
        RocketTextView rocketTextView = (RocketTextView) _$_findCachedViewById(C0859R.id.textViewSum);
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "textViewSum");
        Companion companion = ChargesListActivity.Companion;
        Context context = this;
        Intrinsics.checkExpressionValueIsNotNull(chargeModel, "chargeModel");
        rocketTextView.setText(Companion.createChargeSumText$default(companion, context, chargeModel, 0, null, 12, null));
    }
}
