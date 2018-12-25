package ru.rocketbank.r2d2.root.devidepayment.sp;

import ru.rocketbank.r2d2.root.devidepayment.BaseDevicePaymentView;

/* compiled from: SPAddCardView.kt */
public interface SPAddCardView extends BaseDevicePaymentView {
    void onCardAdded();

    void onErrorAddCard(String str);

    void onUserCancelled();
}
