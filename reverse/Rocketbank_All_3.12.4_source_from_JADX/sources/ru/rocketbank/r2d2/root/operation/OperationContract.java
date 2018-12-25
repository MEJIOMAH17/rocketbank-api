package ru.rocketbank.r2d2.root.operation;

import java.util.Calendar;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.statistics.StatisticItem;

/* compiled from: OperationContract.kt */
public interface OperationContract {

    /* compiled from: OperationContract.kt */
    public interface Presenter extends OperationActionHandler {
        StatisticItem buildMonth(Calendar calendar, Calendar calendar2, float f);

        void cancelOutOperation();

        void compensate();

        void confirm();

        void decline();

        void hideKeyboard();

        void onStart(OperationDataUpdateListener operationDataUpdateListener);

        void onStop();

        void refresh();

        void requestOperationDetail();

        void saveOperationComment(String str);

        void scrollToPosition(int i);

        void updateMoney();

        void updateMoneyState(boolean z);

        void updateRocketMoneyState(boolean z);
    }
}
