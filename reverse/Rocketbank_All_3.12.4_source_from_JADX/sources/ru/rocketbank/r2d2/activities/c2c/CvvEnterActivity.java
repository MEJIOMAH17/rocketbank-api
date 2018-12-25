package ru.rocketbank.r2d2.activities.c2c;

import android.content.Context;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.view.View;
import com.mikepenz.materialize.util.KeyboardUtil;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.CardData;
import ru.rocketbank.core.model.CardModel;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.core.widgets.listener.CardNumberListener;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.SecuredActivity;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonData;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonHandler;
import ru.rocketbank.r2d2.databinding.ActivityEnterCvvBinding;

/* compiled from: CvvEnterActivity.kt */
public final class CvvEnterActivity extends SecuredActivity implements CardNumberListener, ToolbarWithButtonHandler {
    private static final String CARD_EXTRA = "CARD_EXTRA";
    public static final Companion Companion = new Companion();
    private HashMap _$_findViewCache;
    private ActivityEnterCvvBinding activityBinidng;
    private CardModel cardModel;
    private String cvv = "";
    private ToolbarWithButtonData toolbarBinding;

    /* compiled from: CvvEnterActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getCARD_EXTRA() {
            return CvvEnterActivity.CARD_EXTRA;
        }

        public final void newInstance(Context context, CardModel cardModel) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intent intent = new Intent(context, CvvEnterActivity.class);
            intent.putExtra(getCARD_EXTRA(), cardModel);
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

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.toolbarBinding = new ToolbarWithButtonData(getString(C0859R.string.fragment_userfeed_refill_card_cvv), getString(C0859R.string.next_cap), false, 0, 8, null);
        bundle = DataBindingUtil.setContentView(this, C0859R.layout.activity_enter_cvv);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "DataBindingUtil.setConte…ayout.activity_enter_cvv)");
        this.activityBinidng = (ActivityEnterCvvBinding) bundle;
        bundle = this.activityBinidng;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityBinidng");
        }
        bundle.setHandler(this);
        bundle = this.activityBinidng;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityBinidng");
        }
        ToolbarWithButtonData toolbarWithButtonData = this.toolbarBinding;
        if (toolbarWithButtonData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbarBinding");
        }
        bundle.setToolbarBinding(toolbarWithButtonData);
        bundle = this.activityBinidng;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityBinidng");
        }
        bundle = bundle.toolbarBlock;
        if (bundle == null) {
            Intrinsics.throwNpe();
        }
        bundle = bundle.toolbar;
        Intrinsics.checkExpressionValueIsNotNull(bundle, "activityBinidng.toolbarBlock!!.toolbar");
        setSupportActionBar(bundle);
        bundle = getSupportActionBar();
        if (bundle != null) {
            bundle.setDisplayHomeAsUpEnabled(true);
        }
        bundle = getIntent().getParcelableExtra(CARD_EXTRA);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "intent.getParcelableExtra(CARD_EXTRA)");
        this.cardModel = (CardModel) bundle;
        bundle = this.activityBinidng;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityBinidng");
        }
        bundle = bundle.creditCard;
        Intrinsics.checkExpressionValueIsNotNull(bundle, "activityBinidng.creditCard");
        CardModel cardModel = this.cardModel;
        if (cardModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardModel");
        }
        bundle.setCardNumber(cardModel.getPan());
        bundle.setCardNumberListener(this);
    }

    public final void nextPressed(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        view = new CardData("", "", this.cvv);
        KeyboardUtil.hideKeyboard(this);
        ru.rocketbank.r2d2.activities.c2c.CardRefillAmountActivity.Companion companion = CardRefillAmountActivity.Companion;
        Context context = this;
        CardModel cardModel = this.cardModel;
        if (cardModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardModel");
        }
        companion.newInstance(context, view, cardModel);
        finish();
    }

    public final void allCardIsValid(String str, String str2, String str3) {
        Intrinsics.checkParameterIsNotNull(str, "cardNumber");
        Intrinsics.checkParameterIsNotNull(str2, ProviderField.DATE);
        Intrinsics.checkParameterIsNotNull(str3, "cvv");
        this.cvv = str3;
        str = this.toolbarBinding;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbarBinding");
        }
        str.getButtonEnabled().set(true);
    }

    public final void cardInvalid() {
        ToolbarWithButtonData toolbarWithButtonData = this.toolbarBinding;
        if (toolbarWithButtonData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbarBinding");
        }
        toolbarWithButtonData.getButtonEnabled().set(false);
    }
}
