package ru.rocketbank.r2d2.activities.c2c;

import android.content.Context;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v7.app.ActionBar;
import android.util.Log;
import android.view.View;
import java.util.HashMap;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.PresenterManager;
import ru.rocketbank.core.model.card.Card2CardRefillResponseData;
import ru.rocketbank.core.network.exception.RocketResponseException;
import ru.rocketbank.core.network.model.CardBody;
import ru.rocketbank.core.utils.presenter.SingleCallRestartedException;
import ru.rocketbank.core.widgets.RocketLoader;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.PresenterSecuredActivity;
import ru.rocketbank.r2d2.data.binding.ProcessActivityData;
import ru.rocketbank.r2d2.data.binding.ProcessHandler;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonData;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonHandler;
import ru.rocketbank.r2d2.databinding.ActivityCardTransferProcessBinding;
import ru.rocketbank.r2d2.databinding.LayoutToolbarWithButtonBinding;

/* compiled from: CardRefillActivity.kt */
public final class CardRefillActivity extends PresenterSecuredActivity<RefillPresenter> implements ProcessHandler, ToolbarWithButtonHandler {
    private static final String AMOUNT = "AMOUNT";
    private static final String CARD_BODY = "CARD_BODY";
    public static final Companion Companion = new Companion();
    private static final String PROCESSING_EXECUTED = "PROC_EXECED";
    private static final int STATUS_APPROVED = 1;
    private static final int STATUS_ERROR = 0;
    private static final int STATUS_PROCESSING = 2;
    private static final int STATUS_UNKNOWN = 4;
    private static final int STATUS_WTF = 3;
    private static final String TAG = "CardRefill";
    private HashMap _$_findViewCache;
    private ActivityCardTransferProcessBinding activityCardTransferProcess;
    private double amount;
    private CardBody cardBody;
    private ProcessActivityData processActivityData;
    private boolean processingExecuted;
    private ToolbarWithButtonData toolbarBindingData;

    /* compiled from: CardRefillActivity.kt */
    public static final class Companion {
        public static /* synthetic */ void AMOUNT$annotations() {
        }

        public static /* synthetic */ void CARD_BODY$annotations() {
        }

        public static /* synthetic */ void PROCESSING_EXECUTED$annotations() {
        }

        public static /* synthetic */ void STATUS_APPROVED$annotations() {
        }

        public static /* synthetic */ void STATUS_ERROR$annotations() {
        }

        public static /* synthetic */ void STATUS_PROCESSING$annotations() {
        }

        public static /* synthetic */ void STATUS_UNKNOWN$annotations() {
        }

        public static /* synthetic */ void STATUS_WTF$annotations() {
        }

        public static /* synthetic */ void TAG$annotations() {
        }

        private Companion() {
        }

        public final String getTAG() {
            return CardRefillActivity.TAG;
        }

        public final String getPROCESSING_EXECUTED() {
            return CardRefillActivity.PROCESSING_EXECUTED;
        }

        public final int getSTATUS_ERROR() {
            return CardRefillActivity.STATUS_ERROR;
        }

        public final int getSTATUS_APPROVED() {
            return CardRefillActivity.STATUS_APPROVED;
        }

        public final int getSTATUS_PROCESSING() {
            return CardRefillActivity.STATUS_PROCESSING;
        }

        public final int getSTATUS_WTF() {
            return CardRefillActivity.STATUS_WTF;
        }

        public final int getSTATUS_UNKNOWN() {
            return CardRefillActivity.STATUS_UNKNOWN;
        }

        public final String getAMOUNT() {
            return CardRefillActivity.AMOUNT;
        }

        public final String getCARD_BODY() {
            return CardRefillActivity.CARD_BODY;
        }

        public final void newInstance(Context context, double d, CardBody cardBody) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(cardBody, "cardBody");
            Intent intent = new Intent(context, CardRefillActivity.class);
            Companion companion = this;
            intent.putExtra(getAMOUNT(), d);
            intent.putExtra(getCARD_BODY(), cardBody);
            context.startActivity(intent);
        }
    }

    public static final String getAMOUNT() {
        return AMOUNT;
    }

    public static final String getCARD_BODY() {
        return CARD_BODY;
    }

    public static final String getPROCESSING_EXECUTED() {
        return PROCESSING_EXECUTED;
    }

    public static final int getSTATUS_APPROVED() {
        return STATUS_APPROVED;
    }

    public static final int getSTATUS_ERROR() {
        return STATUS_ERROR;
    }

    public static final int getSTATUS_PROCESSING() {
        return STATUS_PROCESSING;
    }

    public static final int getSTATUS_UNKNOWN() {
        return STATUS_UNKNOWN;
    }

    public static final int getSTATUS_WTF() {
        return STATUS_WTF;
    }

    public static final String getTAG() {
        return TAG;
    }

    public static final void newInstance(Context context, double d, CardBody cardBody) {
        Companion.newInstance(context, d, cardBody);
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

    public final void onClosePressed(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        finish();
    }

    public final void onRetryPressed(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        retryRefill();
    }

    public final RefillPresenter createPresenter() {
        PresenterManager presenterManager = PresenterManager.INSTANCE;
        UUID fromString = UUID.fromString("c07235a5-e20e-4dc0-b47b-a1b9d6402171");
        Intrinsics.checkExpressionValueIsNotNull(fromString, "UUID.fromString(\"c07235a…-4dc0-b47b-a1b9d6402171\")");
        return (RefillPresenter) PresenterManager.getOrCreatePresenter(fromString, RefillPresenter.class);
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.processActivityData = new ProcessActivityData(8, 8);
        this.toolbarBindingData = new ToolbarWithButtonData(getString(C0859R.string.refill_cap), "", false, 8);
        ViewDataBinding contentView = DataBindingUtil.setContentView(this, C0859R.layout.activity_card_transfer_process);
        Intrinsics.checkExpressionValueIsNotNull(contentView, "DataBindingUtil.setConte…ty_card_transfer_process)");
        this.activityCardTransferProcess = (ActivityCardTransferProcessBinding) contentView;
        ActivityCardTransferProcessBinding activityCardTransferProcessBinding = this.activityCardTransferProcess;
        if (activityCardTransferProcessBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferProcess");
        }
        activityCardTransferProcessBinding.setProcessHandler(this);
        activityCardTransferProcessBinding = this.activityCardTransferProcess;
        if (activityCardTransferProcessBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferProcess");
        }
        activityCardTransferProcessBinding.setHandler(this);
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
        activityCardTransferProcessBinding = this.activityCardTransferProcess;
        if (activityCardTransferProcessBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferProcess");
        }
        LayoutToolbarWithButtonBinding layoutToolbarWithButtonBinding = activityCardTransferProcessBinding.include;
        if (layoutToolbarWithButtonBinding == null) {
            Intrinsics.throwNpe();
        }
        setSupportActionBar(layoutToolbarWithButtonBinding.toolbar);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
        }
        this.amount = getIntent().getDoubleExtra(AMOUNT, 0.0d);
        Parcelable parcelableExtra = getIntent().getParcelableExtra(CARD_BODY);
        Intrinsics.checkExpressionValueIsNotNull(parcelableExtra, "intent.getParcelableExtra(CARD_BODY)");
        this.cardBody = (CardBody) parcelableExtra;
        if (bundle != null) {
            this.processingExecuted = bundle.getBoolean(PROCESSING_EXECUTED, false);
        }
    }

    protected final void onResume() {
        super.onResume();
        startCall();
    }

    public final void startCall() {
        RefillPresenter refillPresenter = (RefillPresenter) getPresenter();
        double d = this.amount;
        CardBody cardBody = this.cardBody;
        if (cardBody == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardBody");
        }
        refillPresenter.askMoney(d, cardBody, CardRefillActivity$startCall$1.INSTANCE, CardRefillActivity$startCall$2.INSTANCE, CardRefillActivity$startCall$3.INSTANCE);
    }

    public final void onRestore(Card2CardRefillResponseData card2CardRefillResponseData) {
        Intrinsics.checkParameterIsNotNull(card2CardRefillResponseData, "cardTransfer");
        Log.v(TAG, "transfer recevied");
        handleResult(card2CardRefillResponseData, true);
    }

    public final void onSuccess(Card2CardRefillResponseData card2CardRefillResponseData) {
        Intrinsics.checkParameterIsNotNull(card2CardRefillResponseData, "cardTransfer");
        handleResult(card2CardRefillResponseData, false);
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

    public final void handleResult(Card2CardRefillResponseData card2CardRefillResponseData, boolean z) {
        boolean z2;
        Intrinsics.checkParameterIsNotNull(card2CardRefillResponseData, "cardTransfer");
        String status = card2CardRefillResponseData.getStatus();
        String errors = card2CardRefillResponseData.getErrors();
        String html = card2CardRefillResponseData.getHtml();
        card2CardRefillResponseData = card2CardRefillResponseData.getId();
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
            Enter3dSecActivity.Companion.startActivity(this, card2CardRefillResponseData, html);
        }
    }

    public static /* bridge */ /* synthetic */ void showResult$default(CardRefillActivity cardRefillActivity, int i, String str, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str = null;
        }
        cardRefillActivity.showResult(i, str);
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

    public final void retryRefill() {
        ActivityCardTransferProcessBinding activityCardTransferProcessBinding = this.activityCardTransferProcess;
        if (activityCardTransferProcessBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardTransferProcess");
        }
        RocketLoader rocketLoader = activityCardTransferProcessBinding.loader;
        Intrinsics.checkExpressionValueIsNotNull(rocketLoader, "activityCardTransferProcess.loader");
        rocketLoader.resetAnimation();
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
        ((RefillPresenter) getPresenter()).resetAskMoney();
        this.processingExecuted = false;
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
            Intrinsics.checkExpressionValueIsNotNull(i, "resultStatus");
            errorResult(i);
        }
    }

    protected final void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(PROCESSING_EXECUTED, this.processingExecuted);
    }
}
