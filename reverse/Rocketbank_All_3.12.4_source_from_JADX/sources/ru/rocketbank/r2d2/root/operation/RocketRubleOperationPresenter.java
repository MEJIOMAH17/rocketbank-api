package ru.rocketbank.r2d2.root.operation;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.MoneyData;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.model.dto.operations.OperationAnalytics;
import ru.rocketbank.core.network.model.ContextResponse;
import ru.rocketbank.core.network.model.operation.OperationContextType;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.utils.MoneyFormatter.Companion;
import ru.rocketbank.core.utils.MoneyFormatter.FormattedAmount;
import ru.rocketbank.r2d2.root.operation.data.OperationViewInputData;
import ru.rocketbank.r2d2.root.operation.data.RocketrubleViewInputData;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;

/* compiled from: RocketRubleOperationPresenter.kt */
public final class RocketRubleOperationPresenter extends AbstractOperationPresenter {
    private Subscription compensationSubsriotion;
    private ContextResponse contextResponseFetched;
    private Subscription contextSubscription;
    private final Operation operation;
    private Operation operationFetched;

    public RocketRubleOperationPresenter(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        this.operation = operation;
    }

    public final Operation getOperation() {
        return this.operation;
    }

    public final Operation getOperationFetched() {
        return this.operationFetched;
    }

    public final void setOperationFetched(Operation operation) {
        this.operationFetched = operation;
    }

    public final ContextResponse getContextResponseFetched() {
        return this.contextResponseFetched;
    }

    public final void setContextResponseFetched(ContextResponse contextResponse) {
        this.contextResponseFetched = contextResponse;
    }

    public final boolean isOperationFetched() {
        return this.operationFetched == null && this.contextSubscription == null;
    }

    public final long getOperationId() {
        return this.operation.getId();
    }

    public final void requestOperationDetail() {
        this.contextSubscription = getOperationApi().getContext(getOperationId()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new RocketRubleOperationPresenter$requestOperationDetail$1(this));
    }

    private final void refreshData() {
        RocketrubleViewInputData rocketrubleViewInputData = new RocketrubleViewInputData(this.operation);
        Operation operation = this.operationFetched;
        if (operation != null) {
            ArrayList arrayList = new ArrayList();
            if (operation.getContextType() == OperationContextType.MilesCashBack) {
                OperationAnalytics analytics = operation.getAnalytics();
                if (analytics != null) {
                    ArrayList months = analytics.getMerchant().getMonths();
                    if (months != null) {
                        arrayList = months;
                    }
                }
                rocketrubleViewInputData.setTotal(prepareAdapterData(operation, rocketrubleViewInputData));
            }
            rocketrubleViewInputData.getMonthValues().addAll(arrayList);
            rocketrubleViewInputData.setShopItems(operation.getShopItems());
            rocketrubleViewInputData.setDescription(operation.getDescription());
            rocketrubleViewInputData.setParentOperation(operation.getParent_operation());
        }
        rocketrubleViewInputData.setOperationContext(this.operationFetched);
        prepareBaseData(rocketrubleViewInputData);
        OperationDataUpdateListener updateListener = getUpdateListener();
        if (updateListener != null) {
            updateListener.onOperationUpdate(rocketrubleViewInputData);
        }
    }

    private final void prepareBaseData(RocketrubleViewInputData rocketrubleViewInputData) {
        sourceData(rocketrubleViewInputData);
        rocketrubleViewInputData.setDateString(getSimpleDateFormat().format(this.operation.getHappenedAtCalendar().getTime()));
        rocketrubleViewInputData.setPlaceName(this.operation.getDetails());
    }

    private final void sourceData(OperationViewInputData operationViewInputData) {
        if (this.operation.getContextType() == OperationContextType.Card2CardCashIn) {
            this.operation.getDetails();
        }
    }

    public final void updateMoney() {
        double mimimiles = this.operation.getMimimiles();
        if (this.operation.getContextType() == OperationContextType.MilesCashBack) {
            MoneyData displayMoney = this.operation.getDisplayMoney();
            if (displayMoney == null) {
                Intrinsics.throwNpe();
            }
            String currencyCode = displayMoney.getCurrencyCode();
            MoneyData displayMoney2 = this.operation.getDisplayMoney();
            double amount = displayMoney2 != null ? displayMoney2.getAmount() : 0.0d;
            MoneyFormatter moneyFormatter = getMoneyFormatter();
            Companion companion = MoneyFormatter.Companion;
            String formatWithSign = moneyFormatter.formatWithSign(mimimiles, MoneyFormatter.access$getCURRENCY_ROCKET$cp(), isFullRocketMoney());
            MoneyFormatter moneyFormatter2 = getMoneyFormatter();
            Intrinsics.checkExpressionValueIsNotNull(currencyCode, "currencyCode");
            String format = moneyFormatter2.format(amount, currencyCode, isFullMoney());
            currencyCode = getMoneyFormatter().format(amount, currencyCode, false);
            OperationDataUpdateListener updateListener = getUpdateListener();
            if (updateListener != null) {
                updateListener.updateText(format, formatWithSign, currencyCode);
            }
            return;
        }
        MoneyFormatter moneyFormatter3 = getMoneyFormatter();
        Companion companion2 = MoneyFormatter.Companion;
        FormattedAmount formatAmount = moneyFormatter3.formatAmount(mimimiles, MoneyFormatter.access$getCURRENCY_ROCKET$cp(), isFullMoney());
        OperationDataUpdateListener updateListener2 = getUpdateListener();
        if (updateListener2 != null) {
            updateListener2.updateText(formatAmount.getAmountString(), formatAmount.getSuffix(), formatAmount.toString());
        }
    }
}
