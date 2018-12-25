package ru.rocketbank.r2d2.root.devidepayment.ap;

import ru.rocketbank.r2d2.root.devidepayment.BaseDevicePaymentView;

/* compiled from: APAddCardView.kt */
public interface APAddCardView extends BaseDevicePaymentView {
    void onCardDataReady(String str, String str2, String str3);

    void showError(String str);
}
