package ru.rocketbank.r2d2.root.operation;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.MoneyData;
import ru.rocketbank.core.model.card.LinkedCard;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.model.dto.operations.Operation.ExchangeDetails;
import ru.rocketbank.core.model.dto.operations.OperationAnalytics;
import ru.rocketbank.core.network.model.MilesCompensation;
import ru.rocketbank.core.network.model.operation.OperationContextType;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.utils.MoneyFormatter.Companion;
import ru.rocketbank.r2d2.root.operation.data.OperationViewInputData;
import ru.rocketbank.r2d2.root.operation.data.SourceViewData;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;

/* compiled from: OperationPresenter.kt */
public final class OperationPresenter extends AbstractOperationPresenter {
    private Subscription compensationSubsriotion;
    private Subscription contextSubscription;
    private final Operation operation;
    private Operation operationFetched;
    private final long operationId = this.operation.getId();

    public OperationPresenter(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        this.operation = operation;
    }

    public final Operation getOperation() {
        return this.operation;
    }

    public final boolean isOperationFetched() {
        return this.operationFetched == null && this.contextSubscription == null;
    }

    public final long getOperationId() {
        return this.operationId;
    }

    public final Operation getOperationFetched() {
        return this.operationFetched;
    }

    public final void setOperationFetched(Operation operation) {
        this.operationFetched = operation;
    }

    public final void requestOperationDetail() {
        this.contextSubscription = getOperationApi().getContext(getOperationId()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new OperationPresenter$requestOperationDetail$1(this));
    }

    private final void refreshData() {
        OperationViewInputData operationViewInputData = new OperationViewInputData(this.operation);
        Operation operation = this.operationFetched;
        if (operation != null) {
            ArrayList arrayList = new ArrayList();
            OperationAnalytics analytics = operation.getAnalytics();
            if (analytics != null) {
                ArrayList months = analytics.getMerchant().getMonths();
                if (months != null) {
                    arrayList = months;
                }
            }
            operationViewInputData.setTotal(prepareAdapterData(operation, operationViewInputData));
            operationViewInputData.getMonthValues().addAll(arrayList);
        }
        operationViewInputData.setOperationContext(this.operationFetched);
        prepareBaseData(operationViewInputData);
        updateMoney();
        OperationDataUpdateListener updateListener = getUpdateListener();
        if (updateListener != null) {
            updateListener.onOperationUpdate(operationViewInputData);
        }
    }

    private final void sourceData(OperationViewInputData operationViewInputData) {
        if (this.operation.getContextType() == OperationContextType.Card2CardCashIn) {
            String details = this.operation.getDetails();
            if (details != null) {
                LinkedCard linkedCard = this.operation.getLinkedCard();
                operationViewInputData.setSourceData(new SourceViewData(linkedCard != null ? linkedCard.getFeedIconUrl() : null, details));
            }
        }
    }

    public final void compensate() {
        OperationDataUpdateListener updateListener = getUpdateListener();
        if (updateListener != null) {
            updateListener.dispatchShowProgress();
        }
        if (this.compensationSubsriotion != null) {
            Subscription subscription = this.compensationSubsriotion;
            if (subscription == null) {
                Intrinsics.throwNpe();
            }
            if (!subscription.isUnsubscribed()) {
                return;
            }
        }
        MilesCompensation milesCompensation = new MilesCompensation();
        milesCompensation.setId(this.operation.getId());
        this.compensationSubsriotion = getRocketApi().convertFromMiles(this.operation.getId(), milesCompensation).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new OperationPresenter$compensate$1(this));
    }

    private final void prepareBaseData(OperationViewInputData operationViewInputData) {
        sourceData(operationViewInputData);
        operationViewInputData.setDateString(getSimpleDateFormat().format(this.operation.getHappenedAtCalendar().getTime()));
        operationViewInputData.setPlaceName(this.operation.getDetails());
    }

    public final void updateMoney() {
        String str = "";
        String str2 = "";
        String str3 = "";
        Operation operation = this.operationFetched;
        ExchangeDetails exchangeDetails = null;
        String format;
        if ((operation != null ? operation.getExchangeDetails() : null) != null) {
            Operation operation2 = this.operationFetched;
            if (operation2 != null) {
                exchangeDetails = operation2.getExchangeDetails();
            }
            if (exchangeDetails == null) {
                Intrinsics.throwNpe();
            }
            str = getMoneyFormatter().format(exchangeDetails.getFrom_amount(), exchangeDetails.getFrom_currency(), isFullMoney());
            format = getMoneyFormatter().format(exchangeDetails.getTo_amount(), exchangeDetails.getTo_currency(), isFullMoney());
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append('→');
            stringBuilder.append(format);
            str = stringBuilder.toString();
        } else {
            MoneyFormatter moneyFormatter;
            operation = this.operationFetched;
            if (operation != null) {
                MoneyData displayMoney = operation.getDisplayMoney();
                if (displayMoney != null) {
                    MoneyFormatter moneyFormatter2 = getMoneyFormatter();
                    double amount = displayMoney.getAmount();
                    str3 = displayMoney.getCurrencyCode();
                    Intrinsics.checkExpressionValueIsNotNull(str3, "displayMoney.currencyCode");
                    str = moneyFormatter2.format(amount, str3, isFullMoney());
                    MoneyFormatter moneyFormatter3 = getMoneyFormatter();
                    amount = displayMoney.getAmount();
                    String currencyCode = displayMoney.getCurrencyCode();
                    Intrinsics.checkExpressionValueIsNotNull(currencyCode, "displayMoney.currencyCode");
                    str3 = moneyFormatter3.format(amount, currencyCode, false);
                    Operation operation3 = this.operationFetched;
                    if (operation3 != null) {
                        MoneyData money = operation3.getMoney();
                        if (!(money == null || ((Intrinsics.areEqual(displayMoney.getCurrencyCode(), money.getCurrencyCode()) ^ 1) == 0 && displayMoney.getAmount() == money.getAmount()))) {
                            moneyFormatter = getMoneyFormatter();
                            double amount2 = money.getAmount();
                            format = money.getCurrencyCode();
                            Intrinsics.checkExpressionValueIsNotNull(format, "money.currencyCode");
                            str2 = moneyFormatter.format(amount2, format, isFullMoney());
                        }
                    }
                }
            }
            operation = this.operationFetched;
            if ((operation != null ? operation.getMimimiles() : 0.0d) != 0.0d) {
                moneyFormatter = getMoneyFormatter();
                operation = this.operationFetched;
                if (operation == null) {
                    Intrinsics.throwNpe();
                }
                double mimimiles = operation.getMimimiles();
                Companion companion = MoneyFormatter.Companion;
                str2 = moneyFormatter.formatWithSign(mimimiles, MoneyFormatter.access$getCURRENCY_ROCKET$cp(), isFullRocketMoney());
            }
        }
        OperationDataUpdateListener updateListener = getUpdateListener();
        if (updateListener != null) {
            updateListener.updateText(str, str2, str3);
        }
    }
}
