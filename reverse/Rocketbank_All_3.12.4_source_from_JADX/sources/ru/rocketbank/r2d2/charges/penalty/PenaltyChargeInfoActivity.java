package ru.rocketbank.r2d2.charges.penalty;

import android.content.Context;
import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.text.SpannableStringBuilder;
import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.charge.ChargeModel;
import ru.rocketbank.core.model.charge.ChargeModel.Requisites;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.charges.ChargeInfoActivity;
import ru.rocketbank.r2d2.charges.ChargesListActivity;
import ru.rocketbank.r2d2.charges.ChargesListActivity.Companion;
import ru.rocketbank.r2d2.databinding.ActivityPenaltyChargeBinding;

/* compiled from: PenaltyChargeInfoActivity.kt */
public final class PenaltyChargeInfoActivity extends ChargeInfoActivity {
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
        bundle = DataBindingUtil.setContentView(this, C0859R.layout.activity_penalty_charge);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "DataBindingUtil.setConte….activity_penalty_charge)");
        ActivityPenaltyChargeBinding activityPenaltyChargeBinding = (ActivityPenaltyChargeBinding) bundle;
        setSupportActionBar((Toolbar) _$_findCachedViewById(C0859R.id.toolbar));
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
        }
        ChargeModel chargeModel = (ChargeModel) getIntent().getParcelableExtra(ChargeInfoActivity.Companion.getKEY_CHARGE());
        Object[] objArr = new Object[1];
        Requisites requisites = chargeModel.getRequisites();
        objArr[0] = requisites != null ? requisites.getUin() : null;
        setTitle(getString(C0859R.string.penalty_charge_title, objArr));
        activityPenaltyChargeBinding.setChargeModel(chargeModel);
        bundle = new SpannableStringBuilder(getString(C0859R.string.penalty_sum)).append(" ");
        RocketTextView rocketTextView = (RocketTextView) _$_findCachedViewById(C0859R.id.textViewFineSum);
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "textViewFineSum");
        Companion companion = ChargesListActivity.Companion;
        Context context = this;
        Intrinsics.checkExpressionValueIsNotNull(chargeModel, "chargeModel");
        rocketTextView.setText(bundle.append(companion.createChargeSumText(context, chargeModel, C0859R.color.charge_sum_text_color, Integer.valueOf(20))));
    }
}
