package ru.rocketbank.r2d2.root.operation;

import android.annotation.SuppressLint;
import android.content.Context;
import com.facebook.share.internal.ShareConstants;
import java.security.InvalidParameterException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.FeedManager;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.network.api.OperationApi;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.root.operation.OperationContract.Presenter;
import ru.rocketbank.r2d2.root.operation.data.OperationViewInputData;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.statistics.StatisticItem;
import rx.Subscriber;
import rx.android.schedulers.AndroidSchedulers;

/* compiled from: AbstractOperationPresenter.kt */
public abstract class AbstractOperationPresenter implements Presenter {
    private FeedManager feedManager = RocketApplication.Companion.getInjector().getFeedManager();
    private boolean isFullMoney;
    private boolean isFullRocketMoney;
    private MoneyFormatter moneyFormatter = RocketApplication.Companion.getInjector().getMoneyFormatter();
    private OperationApi operationApi = RocketApplication.Companion.getInjector().getOperationApi();
    private boolean pendingClose;
    private RocketAPI rocketApi = RocketApplication.Companion.getInjector().getRocketApi();
    @SuppressLint({"SimpleDateFormat"})
    private final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd MMMM, HH:mm");
    private OperationDataUpdateListener updateListener;

    public void compensate() {
    }

    public abstract long getOperationId();

    public abstract boolean isOperationFetched();

    public void requestOperationDetail() {
    }

    public void updateMoney() {
    }

    public void onMoneyPressed() {
        updateMoneyState(this.isFullMoney ^ 1);
    }

    public void onRocketMoneyPressed() {
        updateRocketMoneyState(this.isFullRocketMoney ^ 1);
    }

    public final OperationApi getOperationApi() {
        return this.operationApi;
    }

    public final void setOperationApi(OperationApi operationApi) {
        Intrinsics.checkParameterIsNotNull(operationApi, "<set-?>");
        this.operationApi = operationApi;
    }

    public final RocketAPI getRocketApi() {
        return this.rocketApi;
    }

    public final void setRocketApi(RocketAPI rocketAPI) {
        Intrinsics.checkParameterIsNotNull(rocketAPI, "<set-?>");
        this.rocketApi = rocketAPI;
    }

    public final FeedManager getFeedManager() {
        return this.feedManager;
    }

    public final void setFeedManager(FeedManager feedManager) {
        Intrinsics.checkParameterIsNotNull(feedManager, "<set-?>");
        this.feedManager = feedManager;
    }

    public final MoneyFormatter getMoneyFormatter() {
        return this.moneyFormatter;
    }

    public final void setMoneyFormatter(MoneyFormatter moneyFormatter) {
        Intrinsics.checkParameterIsNotNull(moneyFormatter, "<set-?>");
        this.moneyFormatter = moneyFormatter;
    }

    public final OperationDataUpdateListener getUpdateListener() {
        return this.updateListener;
    }

    public final void setUpdateListener(OperationDataUpdateListener operationDataUpdateListener) {
        this.updateListener = operationDataUpdateListener;
    }

    public final boolean isFullMoney() {
        return this.isFullMoney;
    }

    public final void setFullMoney(boolean z) {
        this.isFullMoney = z;
    }

    public final boolean isFullRocketMoney() {
        return this.isFullRocketMoney;
    }

    public final void setFullRocketMoney(boolean z) {
        this.isFullRocketMoney = z;
    }

    public final SimpleDateFormat getSimpleDateFormat() {
        return this.simpleDateFormat;
    }

    public void onStart(OperationDataUpdateListener operationDataUpdateListener) {
        Intrinsics.checkParameterIsNotNull(operationDataUpdateListener, "listener");
        this.updateListener = operationDataUpdateListener;
        if (this.pendingClose != null) {
            closeActivity();
        } else if (isOperationFetched() != null) {
            requestOperationDetail();
        } else {
            requestOperationDetail();
        }
        updateMoney();
    }

    public void updateMoneyState(boolean z) {
        this.isFullMoney = z;
        updateMoney();
    }

    public void updateRocketMoneyState(boolean z) {
        this.isFullRocketMoney = z;
        updateMoney();
    }

    public void refresh() {
        requestOperationDetail();
    }

    public void onStop() {
        OperationDataUpdateListener operationDataUpdateListener = this.updateListener;
        if (operationDataUpdateListener != null) {
            operationDataUpdateListener.dispatchHideProgress();
        }
        this.updateListener = null;
    }

    public final StatisticItem prepareAdapterData(Operation operation, OperationViewInputData operationViewInputData) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        Intrinsics.checkParameterIsNotNull(operationViewInputData, ShareConstants.WEB_DIALOG_PARAM_DATA);
        if (operation.getAnalytics() == null) {
            return null;
        }
        Calendar instance = Calendar.getInstance();
        operation = operation.getAnalytics();
        if (operation != null) {
            operation = operation.getMerchant();
            if (operation != null) {
                AbstractOperationPresenter abstractOperationPresenter = this;
                Calendar instance2 = Calendar.getInstance();
                ArrayList months = operation.getMonths();
                if (months == null) {
                    Intrinsics.throwNpe();
                }
                Iterator it = months.iterator();
                while (it.hasNext()) {
                    Float f = (Float) it.next();
                    Intrinsics.checkExpressionValueIsNotNull(instance2, "monthCalendar");
                    Intrinsics.checkExpressionValueIsNotNull(instance, "todayCalendar");
                    Intrinsics.checkExpressionValueIsNotNull(f, "month");
                    operationViewInputData.getFullListValues().add(buildMonth(instance2, instance, f.floatValue()));
                    instance2.add(2, -1);
                }
                instance2 = Calendar.getInstance();
                ArrayList months2 = operation.getMonths();
                if (months2 == null) {
                    Intrinsics.throwNpe();
                }
                int min = Math.min(3, months2.size()) - 1;
                if (min >= 0) {
                    int i = 0;
                    while (true) {
                        ArrayList months3 = operation.getMonths();
                        if (months3 == null) {
                            Intrinsics.throwNpe();
                        }
                        Float f2 = (Float) months3.get(i);
                        Intrinsics.checkExpressionValueIsNotNull(instance2, "monthCalendar");
                        Intrinsics.checkExpressionValueIsNotNull(instance, "todayCalendar");
                        Intrinsics.checkExpressionValueIsNotNull(f2, "month");
                        operationViewInputData.getShortListValues().add(buildMonth(instance2, instance, f2.floatValue()));
                        instance2.add(2, -1);
                        if (i == min) {
                            break;
                        }
                        i++;
                    }
                }
                operationViewInputData = RocketApplication.Companion.getContext();
                operation = this.moneyFormatter.format((double) operation.getTotal(), "rub", false);
                operationViewInputData = operationViewInputData.getString(C0859R.string.for_all_time);
                Intrinsics.checkExpressionValueIsNotNull(operationViewInputData, "forAllTime");
                return new StatisticItem(operationViewInputData, operation);
            }
        }
        return null;
    }

    public void saveOperationComment(String str) {
        Intrinsics.checkParameterIsNotNull(str, "comment");
        this.operationApi.comment(getOperationId(), str).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new AbstractOperationPresenter$saveOperationComment$1(this, str));
    }

    public StatisticItem buildMonth(Calendar calendar, Calendar calendar2, float f) {
        Intrinsics.checkParameterIsNotNull(calendar, "calendar");
        Intrinsics.checkParameterIsNotNull(calendar2, "todayCalendar");
        String forAMonth = forAMonth(calendar.get(2) + 1);
        calendar = calendar.get(1);
        if (calendar != calendar2.get(1)) {
            calendar2 = new StringBuilder();
            calendar2.append(forAMonth);
            calendar2.append(" ");
            calendar2.append(calendar);
            forAMonth = calendar2.toString();
        }
        if (forAMonth == null) {
            forAMonth = "";
        }
        return new StatisticItem(forAMonth, this.moneyFormatter.format((double) f, "rub", false));
    }

    private final String forAMonth(int i) {
        Context context = RocketApplication.Companion.getContext();
        switch (i) {
            case 1:
                return context.getString(C0859R.string.for_month_jan);
            case 2:
                return context.getString(C0859R.string.for_month_feb);
            case 3:
                return context.getString(C0859R.string.for_month_mar);
            case 4:
                return context.getString(C0859R.string.for_month_apr);
            case 5:
                return context.getString(C0859R.string.for_month_may);
            case 6:
                return context.getString(C0859R.string.for_month_jun);
            case 7:
                return context.getString(C0859R.string.for_month_jul);
            case 8:
                return context.getString(C0859R.string.for_month_aug);
            case 9:
                return context.getString(C0859R.string.for_month_set);
            case 10:
                return context.getString(C0859R.string.for_month_oct);
            case 11:
                return context.getString(C0859R.string.for_month_nov);
            case 12:
                return context.getString(C0859R.string.for_month_dec);
            default:
                throw new InvalidParameterException("Invalid month ".concat(String.valueOf(i)));
        }
    }

    public void scrollToPosition(int i) {
        OperationDataUpdateListener operationDataUpdateListener = this.updateListener;
        if (operationDataUpdateListener != null) {
            operationDataUpdateListener.scrollToPosition(i);
        }
    }

    public void hideKeyboard() {
        OperationDataUpdateListener operationDataUpdateListener = this.updateListener;
        if (operationDataUpdateListener != null) {
            operationDataUpdateListener.hideKeyboard();
        }
    }

    private final void closeActivity() {
        OperationDataUpdateListener operationDataUpdateListener = this.updateListener;
        if (operationDataUpdateListener != null) {
            operationDataUpdateListener.dispatchHideProgress();
            operationDataUpdateListener.dispatchClose();
            return;
        }
        this.pendingClose = true;
    }

    public void cancelOutOperation() {
        OperationDataUpdateListener operationDataUpdateListener = this.updateListener;
        if (operationDataUpdateListener != null) {
            operationDataUpdateListener.dispatchShowProgress();
        }
        this.feedManager.cancelMoneyToFriend(getOperationId()).subscribeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new AbstractOperationPresenter$cancelOutOperation$1(this));
    }

    public void confirm() {
        OperationDataUpdateListener operationDataUpdateListener = this.updateListener;
        if (operationDataUpdateListener != null) {
            operationDataUpdateListener.dispatchShowProgress();
        }
        this.feedManager.sendMoneyToFriend(getOperationId()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new AbstractOperationPresenter$confirm$1(this));
    }

    public void decline() {
        OperationDataUpdateListener operationDataUpdateListener = this.updateListener;
        if (operationDataUpdateListener != null) {
            operationDataUpdateListener.dispatchShowProgress();
        }
        this.feedManager.declineMoneyToFriend(getOperationId()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new AbstractOperationPresenter$decline$1(this));
    }
}
