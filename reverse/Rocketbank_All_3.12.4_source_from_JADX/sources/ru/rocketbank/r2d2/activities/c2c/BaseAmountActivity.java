package ru.rocketbank.r2d2.activities.c2c;

import android.content.Context;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.ViewSwitcher;
import com.bumptech.glide.Glide;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.share.internal.ShareConstants;
import com.jakewharton.rxbinding.widget.RxTextView;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.CardData;
import ru.rocketbank.core.model.CardModel;
import ru.rocketbank.core.model.dto.BinResponseData;
import ru.rocketbank.core.model.facade.Account;
import ru.rocketbank.core.model.response.CommissionStringResponse;
import ru.rocketbank.core.utils.rx.TextObserverToDouble;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.PresenterSecuredActivity;
import ru.rocketbank.r2d2.data.binding.AmountCardBinding;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonData;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonHandler;
import ru.rocketbank.r2d2.databinding.ActivityCardTransferAmountBinding;
import ru.rocketbank.r2d2.helpers.UIHelper;
import ru.rocketbank.r2d2.widget.AccountWidget;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;

/* compiled from: BaseAmountActivity.kt */
public abstract class BaseAmountActivity extends PresenterSecuredActivity<TransferAmountPresenter> implements ToolbarWithButtonHandler {
    private static final String CARD_DATA_EXTRA = "CARD_DATA_EXTRA";
    private static final String CARD_EXTRA = "CARD_EXTRA";
    public static final Companion Companion = new Companion();
    private static final int STATE_COMMISSION_LOADED = 0;
    private static final int STATE_COMMISSION_LOADING = 1;
    private HashMap _$_findViewCache;
    private Account accountFrom;
    protected ActivityCardTransferAmountBinding activityCardTransferAmountBinding;
    private double amount;
    protected AmountCardBinding amountCardBinding;
    private CardData cardData;
    private CardModel cardModel;
    private final Action1<Double> changeAmountSubscriber = new BaseAmountActivity$changeAmountSubscriber$1(this);
    private boolean enoughMoney;
    private Subscription selectAccountSubscription;
    private Subscription textAmountSubscription;
    protected ToolbarWithButtonData toolbarBindingData;

    /* compiled from: BaseAmountActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getCARD_EXTRA() {
            return BaseAmountActivity.CARD_EXTRA;
        }

        public final String getCARD_DATA_EXTRA() {
            return BaseAmountActivity.CARD_DATA_EXTRA;
        }

        public final void newInstance(Context context, CardModel cardModel, CardData cardData) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intent intent = new Intent(context, CardTransferAmountActivity.class);
            Companion companion = this;
            intent.putExtra(getCARD_EXTRA(), cardModel);
            intent.putExtra(getCARD_DATA_EXTRA(), cardData);
            context.startActivity(intent);
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

    public abstract void onNextPressed();

    public abstract void requestComission();

    public abstract void updateBin(BinResponseData binResponseData);

    protected final CardModel getCardModel() {
        return this.cardModel;
    }

    protected final void setCardModel(CardModel cardModel) {
        this.cardModel = cardModel;
    }

    protected final CardData getCardData() {
        return this.cardData;
    }

    protected final void setCardData(CardData cardData) {
        this.cardData = cardData;
    }

    protected final double getAmount() {
        return this.amount;
    }

    protected final void setAmount(double d) {
        this.amount = d;
    }

    protected final AmountCardBinding getAmountCardBinding() {
        AmountCardBinding amountCardBinding = this.amountCardBinding;
        if (amountCardBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("amountCardBinding");
        }
        return amountCardBinding;
    }

    protected final void setAmountCardBinding(AmountCardBinding amountCardBinding) {
        Intrinsics.checkParameterIsNotNull(amountCardBinding, "<set-?>");
        this.amountCardBinding = amountCardBinding;
    }

    protected final ToolbarWithButtonData getToolbarBindingData() {
        ToolbarWithButtonData toolbarWithButtonData = this.toolbarBindingData;
        if (toolbarWithButtonData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbarBindingData");
        }
        return toolbarWithButtonData;
    }

    protected final void setToolbarBindingData(ToolbarWithButtonData toolbarWithButtonData) {
        Intrinsics.checkParameterIsNotNull(toolbarWithButtonData, "<set-?>");
        this.toolbarBindingData = toolbarWithButtonData;
    }

    protected final ActivityCardTransferAmountBinding getActivityCardTransferAmountBinding() {
        ActivityCardTransferAmountBinding activityCardTransferAmountBinding = this.activityCardTransferAmountBinding;
        if (activityCardTransferAmountBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferAmountBinding");
        }
        return activityCardTransferAmountBinding;
    }

    protected final void setActivityCardTransferAmountBinding(ActivityCardTransferAmountBinding activityCardTransferAmountBinding) {
        Intrinsics.checkParameterIsNotNull(activityCardTransferAmountBinding, "<set-?>");
        this.activityCardTransferAmountBinding = activityCardTransferAmountBinding;
    }

    protected final String extractBin() {
        String extractPan = extractPan();
        if (extractPan == null || extractPan.length() < 6) {
            return null;
        }
        extractPan = extractPan.substring(0, 6);
        Intrinsics.checkExpressionValueIsNotNull(extractPan, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return extractPan;
    }

    protected void setEnoughMoney(boolean z) {
        this.enoughMoney = z;
    }

    protected boolean getEnoughMoney() {
        Account account = this.accountFrom;
        if (account != null) {
            double balance = account.getBalance();
            double d = this.amount;
            boolean z = d >= 0.0d && d <= balance;
            if (z) {
                return true;
            }
        }
        return false;
    }

    protected final String extractPan() {
        CardModel cardModel = this.cardModel;
        if (cardModel != null) {
            return cardModel.getPan();
        }
        CardData cardData = this.cardData;
        return cardData != null ? cardData.getPan() : null;
    }

    public final void init(String str, String str2, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(str, "actionName");
        Intrinsics.checkParameterIsNotNull(str2, ShareConstants.WEB_DIALOG_PARAM_TITLE);
        this.amountCardBinding = new AmountCardBinding(str2);
        this.toolbarBindingData = new ToolbarWithButtonData(getString(C0859R.string.amount_title), str, false, 0);
        this.cardModel = (CardModel) getIntent().getParcelableExtra(CARD_EXTRA);
        this.cardData = (CardData) getIntent().getParcelableExtra(CARD_DATA_EXTRA);
        str = DataBindingUtil.setContentView(this, C0859R.layout.activity_card_transfer_amount);
        Intrinsics.checkExpressionValueIsNotNull(str, "DataBindingUtil.setConte…ity_card_transfer_amount)");
        this.activityCardTransferAmountBinding = (ActivityCardTransferAmountBinding) str;
        str = this.activityCardTransferAmountBinding;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferAmountBinding");
        }
        str.setHandler(this);
        str = this.activityCardTransferAmountBinding;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferAmountBinding");
        }
        str2 = this.toolbarBindingData;
        if (str2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbarBindingData");
        }
        str.setToolbarBinding(str2);
        str = this.activityCardTransferAmountBinding;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferAmountBinding");
        }
        str2 = this.amountCardBinding;
        if (str2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("amountCardBinding");
        }
        str.setAmountBinding(str2);
        str = this.activityCardTransferAmountBinding;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferAmountBinding");
        }
        str = str.toolbarBlock;
        if (str == null) {
            Intrinsics.throwNpe();
        }
        str = str.toolbar;
        Intrinsics.checkExpressionValueIsNotNull(str, "activityCardTransferAmou…ng.toolbarBlock!!.toolbar");
        setSupportActionBar(str);
        str = getSupportActionBar();
        if (str != null) {
            str.setDisplayHomeAsUpEnabled(true);
        }
        str = this.activityCardTransferAmountBinding;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferAmountBinding");
        }
        AccountWidget.setup$default(str.accountWidget, getSupportFragmentManager(), null, 2, null);
        setTransferInfo();
        updateBin();
        str = this.activityCardTransferAmountBinding;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferAmountBinding");
        }
        str = str.amount;
        Intrinsics.checkExpressionValueIsNotNull(str, "activityCardTransferAmountBinding.amount");
        str.addTextChangedListener((TextWatcher) new BaseAmountActivity$init$1(str, (EditText) str));
        if (bundle == null) {
            str.setText(AppEventsConstants.EVENT_PARAM_VALUE_NO);
        }
    }

    private final void onSelectAccount(Account account) {
        this.accountFrom = account;
        checkAmount();
    }

    private final void checkAmount() {
        ToolbarWithButtonData toolbarWithButtonData;
        ActivityCardTransferAmountBinding activityCardTransferAmountBinding = this.activityCardTransferAmountBinding;
        if (activityCardTransferAmountBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferAmountBinding");
        }
        ViewSwitcher viewSwitcher = activityCardTransferAmountBinding.commissionSwitcher;
        ((AccountWidget) _$_findCachedViewById(C0859R.id.accountWidget)).highlightAmount(getEnoughMoney() ? C0859R.color.rocketBlack : C0859R.color.coral);
        if (this.amount != 0.0d) {
            if (getEnoughMoney()) {
                Intrinsics.checkExpressionValueIsNotNull(viewSwitcher, "commissionSwitcher");
                viewSwitcher.setVisibility(0);
                viewSwitcher.setDisplayedChild(STATE_COMMISSION_LOADING);
                toolbarWithButtonData = this.toolbarBindingData;
                if (toolbarWithButtonData == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("toolbarBindingData");
                }
                toolbarWithButtonData.getButtonEnabled().set(false);
                requestComission();
                return;
            }
        }
        Intrinsics.checkExpressionValueIsNotNull(viewSwitcher, "commissionSwitcher");
        viewSwitcher.setDisplayedChild(STATE_COMMISSION_LOADED);
        viewSwitcher.setVisibility(8);
        AmountCardBinding amountCardBinding = this.amountCardBinding;
        if (amountCardBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("amountCardBinding");
        }
        amountCardBinding.getCommission().set("");
        toolbarWithButtonData = this.toolbarBindingData;
        if (toolbarWithButtonData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbarBindingData");
        }
        toolbarWithButtonData.getButtonEnabled().set(false);
    }

    public void nextPressed(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Context context = this;
        AmountCardBinding amountCardBinding = this.amountCardBinding;
        if (amountCardBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("amountCardBinding");
        }
        String str = (String) amountCardBinding.getCommission().get();
        ToolbarWithButtonData toolbarWithButtonData = this.toolbarBindingData;
        if (toolbarWithButtonData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbarBindingData");
        }
        UIHelper.showAlertDialog(context, str, (String) toolbarWithButtonData.getButton().get(), new BaseAmountActivity$nextPressed$1(this), null);
    }

    public final void onBinResponseFailed(Throwable th) {
        th = this.amountCardBinding;
        if (th == null) {
            Intrinsics.throwUninitializedPropertyAccessException("amountCardBinding");
        }
        th.getCommentVisibility().set(8);
    }

    public final void onBinResponse(BinResponseData binResponseData) {
        Intrinsics.checkParameterIsNotNull(binResponseData, "binResponseData");
        String str = binResponseData.small2xUrl;
        if (this.cardModel == null) {
            updateCardView(str);
        }
        updateBin(binResponseData);
    }

    protected final void updateBin() {
        String extractPan = extractPan();
        if (extractPan != null) {
            ((TransferAmountPresenter) getPresenter()).binRequest(extractPan, BaseAmountActivity$updateBin$1.INSTANCE, BaseAmountActivity$updateBin$2.INSTANCE);
        } else {
            AmountCardBinding amountCardBinding = this.amountCardBinding;
            if (amountCardBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("amountCardBinding");
            }
            amountCardBinding.getCommentVisibility().set(8);
        }
        CardModel cardModel = this.cardModel;
        if (cardModel != null) {
            updateCardViewFromModel(cardModel);
        }
    }

    public final void onCommissionFailed(Throwable th) {
        Log.e(CARD_EXTRA, "Failed commission", th);
        th = this.amountCardBinding;
        if (th == null) {
            Intrinsics.throwUninitializedPropertyAccessException("amountCardBinding");
        }
        th.getCommission().set(getString(C0859R.string.ta_commission_failed));
        th = this.activityCardTransferAmountBinding;
        if (th == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferAmountBinding");
        }
        th = th.commissionSwitcher;
        Intrinsics.checkExpressionValueIsNotNull(th, "commissionSwitcher");
        th.setDisplayedChild(STATE_COMMISSION_LOADED);
        th = this.toolbarBindingData;
        if (th == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbarBindingData");
        }
        th.getButtonEnabled().set(true);
    }

    public final void onCommissionResult(CommissionStringResponse commissionStringResponse) {
        Intrinsics.checkParameterIsNotNull(commissionStringResponse, "commissionStringResponse");
        ActivityCardTransferAmountBinding activityCardTransferAmountBinding = this.activityCardTransferAmountBinding;
        if (activityCardTransferAmountBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferAmountBinding");
        }
        ViewSwitcher viewSwitcher = activityCardTransferAmountBinding.commissionSwitcher;
        AmountCardBinding amountCardBinding = this.amountCardBinding;
        if (amountCardBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("amountCardBinding");
        }
        ObservableField commission = amountCardBinding.getCommission();
        String text = commissionStringResponse.getText();
        if (text == null) {
            Intrinsics.throwNpe();
        }
        commission.set(StringsKt__StringsJVMKt.replace$default(text, "ђ", "₽", false, 4, null));
        Intrinsics.checkExpressionValueIsNotNull(viewSwitcher, "commissionSwitcher");
        viewSwitcher.setDisplayedChild(STATE_COMMISSION_LOADED);
        if (commissionStringResponse.getStatus() != null) {
            ToolbarWithButtonData toolbarWithButtonData = this.toolbarBindingData;
            if (toolbarWithButtonData == null) {
                Intrinsics.throwUninitializedPropertyAccessException("toolbarBindingData");
            }
            ObservableBoolean buttonEnabled = toolbarWithButtonData.getButtonEnabled();
            boolean z = true;
            if (getEnoughMoney()) {
                if (!StringsKt__StringsJVMKt.equals(commissionStringResponse.getStatus(), "OK", true)) {
                    if (Intrinsics.areEqual(commissionStringResponse.getStatus(), "WARNING") != null) {
                    }
                }
                buttonEnabled.set(z);
            }
            z = false;
            buttonEnabled.set(z);
        }
    }

    protected final void requestIncomeComeComission() {
        String token;
        if (this.cardModel != null) {
            CardModel cardModel = this.cardModel;
            if (cardModel == null) {
                Intrinsics.throwNpe();
            }
            token = cardModel.getToken();
        } else {
            token = null;
        }
        String str = token;
        ((TransferAmountPresenter) getPresenter()).incomeCommission(this.amount, extractBin(), str, BaseAmountActivity$requestIncomeComeComission$1.INSTANCE, BaseAmountActivity$requestIncomeComeComission$2.INSTANCE);
    }

    protected final void requestOutComeComission() {
        String token;
        if (this.cardModel != null) {
            CardModel cardModel = this.cardModel;
            if (cardModel == null) {
                Intrinsics.throwNpe();
            }
            token = cardModel.getToken();
        } else {
            token = null;
        }
        String str = token;
        ((TransferAmountPresenter) getPresenter()).outcomeCommission(this.amount, extractBin(), str, BaseAmountActivity$requestOutComeComission$1.INSTANCE, BaseAmountActivity$requestOutComeComission$2.INSTANCE);
    }

    protected void onResume() {
        super.onResume();
        ActivityCardTransferAmountBinding activityCardTransferAmountBinding = this.activityCardTransferAmountBinding;
        if (activityCardTransferAmountBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferAmountBinding");
        }
        this.selectAccountSubscription = activityCardTransferAmountBinding.accountWidget.getOnAccountSelected().observeOn(AndroidSchedulers.mainThread()).subscribe(new BaseAmountActivity$onResume$1(this));
        updateBin();
        getWindow().setSoftInputMode(4);
        activityCardTransferAmountBinding = this.activityCardTransferAmountBinding;
        if (activityCardTransferAmountBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferAmountBinding");
        }
        RocketEditText rocketEditText = activityCardTransferAmountBinding.amount;
        Intrinsics.checkExpressionValueIsNotNull(rocketEditText, "activityCardTransferAmountBinding.amount");
        this.textAmountSubscription = RxTextView.afterTextChangeEvents(rocketEditText).map(new TextObserverToDouble()).subscribe(this.changeAmountSubscriber);
    }

    private final void updateCardView(String str) {
        ActivityCardTransferAmountBinding activityCardTransferAmountBinding;
        if (str != null) {
            if ((((CharSequence) str).length() == 0 ? 1 : null) == null) {
                str = Glide.with((FragmentActivity) this).load(str);
                activityCardTransferAmountBinding = this.activityCardTransferAmountBinding;
                if (activityCardTransferAmountBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferAmountBinding");
                }
                str.into(activityCardTransferAmountBinding.backround);
                return;
            }
        }
        str = Glide.with((FragmentActivity) this).load(Integer.valueOf(C0859R.drawable.userfeed_refill_card_card_bg));
        activityCardTransferAmountBinding = this.activityCardTransferAmountBinding;
        if (activityCardTransferAmountBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferAmountBinding");
        }
        str.into(activityCardTransferAmountBinding.backround);
    }

    private final void updateCardViewFromModel(CardModel cardModel) {
        ActivityCardTransferAmountBinding activityCardTransferAmountBinding;
        String small2xUrl = cardModel.getSmall2xUrl();
        if (small2xUrl != null) {
            if ((((CharSequence) small2xUrl).length() == 0 ? 1 : null) == null) {
                cardModel = Glide.with((FragmentActivity) this).load(small2xUrl);
                activityCardTransferAmountBinding = this.activityCardTransferAmountBinding;
                if (activityCardTransferAmountBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferAmountBinding");
                }
                cardModel.into(activityCardTransferAmountBinding.backround);
                return;
            }
        }
        cardModel = Glide.with((FragmentActivity) this).load(Integer.valueOf(C0859R.drawable.userfeed_refill_card_card_bg));
        activityCardTransferAmountBinding = this.activityCardTransferAmountBinding;
        if (activityCardTransferAmountBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferAmountBinding");
        }
        cardModel.into(activityCardTransferAmountBinding.backround);
    }

    private final void setTransferInfo() {
        AmountCardBinding amountCardBinding;
        Object string;
        String extractPan = extractPan();
        if (extractPan != null) {
            int length = extractPan.length() - 4;
            if (length < 0) {
                length = 0;
            }
            extractPan = extractPan.substring(length, extractPan.length());
            Intrinsics.checkExpressionValueIsNotNull(extractPan, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            amountCardBinding = this.amountCardBinding;
            if (amountCardBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("amountCardBinding");
            }
            amountCardBinding.getCardNumber().set(extractPan);
        }
        if (this.cardModel == null) {
            string = getString(C0859R.string.new_card_card2card);
        } else {
            CardModel cardModel = this.cardModel;
            if (cardModel == null) {
                Intrinsics.throwNpe();
            }
            string = cardModel.getTitle();
        }
        amountCardBinding = this.amountCardBinding;
        if (amountCardBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("amountCardBinding");
        }
        amountCardBinding.getCardName().set(string);
    }

    protected void onPause() {
        super.onPause();
        unsubscribe(this.textAmountSubscription);
        unsubscribe(this.selectAccountSubscription);
    }
}
