package ru.rocketbank.r2d2.activities.c2c;

import android.content.Context;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.PresenterManager;
import ru.rocketbank.core.model.CardData;
import ru.rocketbank.core.model.CardModel;
import ru.rocketbank.core.model.transfers.card.Card2CardTransferResponseData;
import ru.rocketbank.core.network.exception.RocketResponseException;
import ru.rocketbank.core.network.model.SendMoneyBody;
import ru.rocketbank.core.utils.presenter.SingleCallRestartedException;
import ru.rocketbank.core.widgets.RocketLoader;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.PresenterSecuredActivity;
import ru.rocketbank.r2d2.data.binding.ProcessActivityData;
import ru.rocketbank.r2d2.data.binding.ProcessHandler;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonData;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonHandler;
import ru.rocketbank.r2d2.databinding.ActivityCardTransferProcessBinding;

/* compiled from: CardTransferProcessActivity.kt */
public final class CardTransferProcessActivity extends PresenterSecuredActivity<ProcessPresenter> implements ProcessHandler, ToolbarWithButtonHandler {
    private static final String CARD_DATA = "CARD_DATA";
    private static final String CARD_MODEL = "CARD_MODEL";
    public static final Companion Companion = new Companion();
    private static final String MONEY_BODY = "MONEY_BODY";
    private static final String PROCESSING_EXECUTED = "PROC_EXECED";
    private static final int REQUEST_PROCESSING = 0;
    private static final int STATUS_APPROVED = 1;
    private static final int STATUS_ERROR = 0;
    private static final int STATUS_PROCESSING = 2;
    private static final int STATUS_UNKNOWN = 4;
    private static final int STATUS_WTF = 3;
    private static final String TAG = "CardTransfer";
    private HashMap _$_findViewCache;
    private ActivityCardTransferProcessBinding activityCardTransferProcess;
    private CardData cardData;
    private CardModel cardModel;
    private ProcessActivityData processActivityData;
    private boolean processingExecuted;
    private SendMoneyBody sendMoney;
    private ToolbarWithButtonData toolbarBindingData;

    /* compiled from: CardTransferProcessActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getTAG() {
            return CardTransferProcessActivity.TAG;
        }

        public final int getREQUEST_PROCESSING() {
            return CardTransferProcessActivity.REQUEST_PROCESSING;
        }

        public final String getPROCESSING_EXECUTED() {
            return CardTransferProcessActivity.PROCESSING_EXECUTED;
        }

        public final int getSTATUS_ERROR() {
            return CardTransferProcessActivity.STATUS_ERROR;
        }

        public final int getSTATUS_APPROVED() {
            return CardTransferProcessActivity.STATUS_APPROVED;
        }

        public final int getSTATUS_PROCESSING() {
            return CardTransferProcessActivity.STATUS_PROCESSING;
        }

        public final int getSTATUS_WTF() {
            return CardTransferProcessActivity.STATUS_WTF;
        }

        public final int getSTATUS_UNKNOWN() {
            return CardTransferProcessActivity.STATUS_UNKNOWN;
        }

        public final String getCARD_DATA() {
            return CardTransferProcessActivity.CARD_DATA;
        }

        public final String getCARD_MODEL() {
            return CardTransferProcessActivity.CARD_MODEL;
        }

        public final String getMONEY_BODY() {
            return CardTransferProcessActivity.MONEY_BODY;
        }

        public final void newInstance(Context context, SendMoneyBody sendMoneyBody, CardModel cardModel, CardData cardData) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(sendMoneyBody, "sendMoneyBody");
            Intent intent = new Intent(context, CardTransferProcessActivity.class);
            Companion companion = this;
            intent.putExtra(getCARD_MODEL(), cardModel);
            intent.putExtra(getCARD_DATA(), cardData);
            intent.putExtra(getMONEY_BODY(), sendMoneyBody);
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

    public final void nextPressed(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
    }

    public final ProcessPresenter createPresenter() {
        PresenterManager presenterManager = PresenterManager.INSTANCE;
        return (ProcessPresenter) PresenterManager.getOrCreatePresenter(ProcessPresenter.presenterId, ProcessPresenter.class);
    }

    public final void onRetryPressed(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        retryTransfer();
    }

    public final void onClosePressed(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        finish();
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.processActivityData = new ProcessActivityData(8, 8);
        this.toolbarBindingData = new ToolbarWithButtonData(getString(C0859R.string.transfer_cap), "", false, 8);
        ViewDataBinding contentView = DataBindingUtil.setContentView(this, C0859R.layout.activity_card_transfer_process);
        Intrinsics.checkExpressionValueIsNotNull(contentView, "DataBindingUtil.setConte…ty_card_transfer_process)");
        this.activityCardTransferProcess = (ActivityCardTransferProcessBinding) contentView;
        ActivityCardTransferProcessBinding activityCardTransferProcessBinding = this.activityCardTransferProcess;
        if (activityCardTransferProcessBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferProcess");
        }
        activityCardTransferProcessBinding.setHandler(this);
        activityCardTransferProcessBinding = this.activityCardTransferProcess;
        if (activityCardTransferProcessBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferProcess");
        }
        activityCardTransferProcessBinding.setProcessHandler(this);
        activityCardTransferProcessBinding = this.activityCardTransferProcess;
        if (activityCardTransferProcessBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferProcess");
        }
        ToolbarWithButtonData toolbarWithButtonData = this.toolbarBindingData;
        if (toolbarWithButtonData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbarBindingData");
        }
        activityCardTransferProcessBinding.setToolbarBinding(toolbarWithButtonData);
        activityCardTransferProcessBinding = this.activityCardTransferProcess;
        if (activityCardTransferProcessBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferProcess");
        }
        ProcessActivityData processActivityData = this.processActivityData;
        if (processActivityData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("processActivityData");
        }
        activityCardTransferProcessBinding.setProcessData(processActivityData);
        this.cardData = (CardData) getIntent().getParcelableExtra(CARD_DATA);
        this.cardModel = (CardModel) getIntent().getParcelableExtra(CARD_MODEL);
        Parcelable parcelableExtra = getIntent().getParcelableExtra(MONEY_BODY);
        Intrinsics.checkExpressionValueIsNotNull(parcelableExtra, "intent.getParcelableExtra(MONEY_BODY)");
        this.sendMoney = (SendMoneyBody) parcelableExtra;
        if (bundle != null) {
            this.processingExecuted = bundle.getBoolean(PROCESSING_EXECUTED, false);
        }
    }

    protected final void onResume() {
        super.onResume();
        startCall();
    }

    private final void startCall() {
        ProcessPresenter processPresenter = (ProcessPresenter) getPresenter();
        SendMoneyBody sendMoneyBody = this.sendMoney;
        if (sendMoneyBody == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sendMoney");
        }
        processPresenter.sendMoney(sendMoneyBody, CardTransferProcessActivity$startCall$1.INSTANCE, CardTransferProcessActivity$startCall$2.INSTANCE, CardTransferProcessActivity$startCall$3.INSTANCE);
    }

    public final void onRestore(Card2CardTransferResponseData card2CardTransferResponseData) {
        Intrinsics.checkParameterIsNotNull(card2CardTransferResponseData, "cardTransfer");
        Log.v(TAG, "transfer recevied");
        handleResult(card2CardTransferResponseData, true);
    }

    public final void onSuccess(Card2CardTransferResponseData card2CardTransferResponseData) {
        Intrinsics.checkParameterIsNotNull(card2CardTransferResponseData, "cardTransfer");
        handleResult(card2CardTransferResponseData, false);
    }

    public final void onError(Throwable th) {
        if (th == null) {
            th = getString(C0859R.string.no_luck_try_again_later);
            Intrinsics.checkExpressionValueIsNotNull(th, "getString(R.string.no_luck_try_again_later)");
            errorResult(th);
        } else if (th instanceof SingleCallRestartedException) {
            th = getString(C0859R.string.request_is_interrupted);
            Intrinsics.checkExpressionValueIsNotNull(th, "getString(R.string.request_is_interrupted)");
            errorResult(th);
        } else {
            if (th instanceof RocketResponseException) {
                RocketResponseException rocketResponseException = (RocketResponseException) th;
                if (rocketResponseException.isNetworkError()) {
                    th = getString(C0859R.string.network_error);
                    Intrinsics.checkExpressionValueIsNotNull(th, "getString(R.string.network_error)");
                    errorResult(th);
                    return;
                }
                th = rocketResponseException.getGenericRequestResponseData();
                if (th != null) {
                    th = th.getResponse();
                    if (th == null || !th.getShowIt()) {
                        th = getString(C0859R.string.no_luck_try_again_later);
                        Intrinsics.checkExpressionValueIsNotNull(th, "getString(R.string.no_luck_try_again_later)");
                        errorResult(th);
                        return;
                    }
                    th = th.getDescription();
                    Intrinsics.checkExpressionValueIsNotNull(th, "response.description");
                    errorResult(th);
                    return;
                }
                th = getString(C0859R.string.no_luck_try_again_later);
                Intrinsics.checkExpressionValueIsNotNull(th, "getString(R.string.no_luck_try_again_later)");
                errorResult(th);
            }
        }
    }

    public final void handleResult(Card2CardTransferResponseData card2CardTransferResponseData, boolean z) {
        boolean z2;
        Intrinsics.checkParameterIsNotNull(card2CardTransferResponseData, "cardTransfer");
        String status = card2CardTransferResponseData.getStatus();
        String errors = card2CardTransferResponseData.getErrors();
        String html = card2CardTransferResponseData.getHtml();
        card2CardTransferResponseData = card2CardTransferResponseData.getId();
        if (status == null) {
            z2 = STATUS_WTF;
        } else if (Intrinsics.areEqual(status, "error")) {
            z2 = STATUS_ERROR;
        } else if (Intrinsics.areEqual(status, "approved")) {
            z2 = STATUS_APPROVED;
        } else if (Intrinsics.areEqual(status, "processing")) {
            z2 = STATUS_PROCESSING;
        } else {
            z2 = STATUS_UNKNOWN;
        }
        showResult(z2, errors);
        z = (z && this.processingExecuted) ? false : true;
        if (z && z2 == STATUS_PROCESSING && html != null) {
            this.processingExecuted = true;
            Enter3dSecActivity.Companion.startActivity(this, card2CardTransferResponseData, html);
        }
    }

    public static /* bridge */ /* synthetic */ void showResult$default(CardTransferProcessActivity cardTransferProcessActivity, int i, String str, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str = null;
        }
        cardTransferProcessActivity.showResult(i, str);
    }

    public final void showResult(int i, String str) {
        if (i == STATUS_APPROVED) {
            successResult();
            return;
        }
        if (i == STATUS_ERROR) {
            if (str == null) {
                str = "";
            }
            errorResult(str);
        }
    }

    public final void errorResult(String str) {
        Intrinsics.checkParameterIsNotNull(str, "errorMessage");
        ActivityCardTransferProcessBinding activityCardTransferProcessBinding = this.activityCardTransferProcess;
        if (activityCardTransferProcessBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferProcess");
        }
        RocketLoader rocketLoader = activityCardTransferProcessBinding.loader;
        Intrinsics.checkExpressionValueIsNotNull(rocketLoader, "activityCardTransferProcess.loader");
        rocketLoader.setError();
        ProcessActivityData processActivityData = this.processActivityData;
        if (processActivityData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("processActivityData");
        }
        processActivityData.getMessageText().set(str);
        str = this.processActivityData;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("processActivityData");
        }
        str.getButtonsVisible().set(0);
        str = this.processActivityData;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("processActivityData");
        }
        str.getRetryVisible().set(0);
    }

    public final void retryTransfer() {
        ProcessActivityData processActivityData = this.processActivityData;
        if (processActivityData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("processActivityData");
        }
        processActivityData.getMessageText().set("");
        processActivityData = this.processActivityData;
        if (processActivityData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("processActivityData");
        }
        processActivityData.getButtonsVisible().set(8);
        processActivityData = this.processActivityData;
        if (processActivityData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("processActivityData");
        }
        processActivityData.getRetryVisible().set(8);
        ((ProcessPresenter) getPresenter()).resetSendMoney();
        startCall();
    }

    public final void successResult() {
        ActivityCardTransferProcessBinding activityCardTransferProcessBinding = this.activityCardTransferProcess;
        if (activityCardTransferProcessBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferProcess");
        }
        RocketLoader rocketLoader = activityCardTransferProcessBinding.loader;
        Intrinsics.checkExpressionValueIsNotNull(rocketLoader, "activityCardTransferProcess.loader");
        rocketLoader.setSuccess();
        ProcessActivityData processActivityData = this.processActivityData;
        if (processActivityData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("processActivityData");
        }
        processActivityData.getMessageText().set(getString(C0859R.string.money_is_transfered));
        processActivityData = this.processActivityData;
        if (processActivityData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("processActivityData");
        }
        processActivityData.getButtonsVisible().set(0);
        processActivityData = this.processActivityData;
        if (processActivityData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("processActivityData");
        }
        processActivityData.getRetryVisible().set(8);
    }

    protected final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (intent != null) {
            if (intent.getIntExtra(Enter3dSecActivity.Companion.getRESULT(), Enter3dSecActivity.Companion.getRESULT_FAILED()) == Enter3dSecActivity.Companion.getRESULT_OK()) {
                successResult();
                return;
            }
            i = intent.getStringExtra(Enter3dSecActivity.Companion.getERROR());
            Intrinsics.checkExpressionValueIsNotNull(i, "resultNewStatus");
            errorResult(i);
        }
    }

    protected final void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(PROCESSING_EXECUTED, this.processingExecuted);
    }
}
