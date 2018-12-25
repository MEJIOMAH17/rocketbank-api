package ru.rocketbank.r2d2.root.card.binding;

import kotlin.Pair;

/* compiled from: CardDetailView.kt */
public interface CardDetailView {
    void addCardToSp();

    void addCardToSpWithGreenWay();

    void addCartToApWithGreenWay();

    void createAndroidPayPWallet();

    void destroyNotificationDialog();

    void hideLoader();

    void onViewInput(DetailCardViewInputModel detailCardViewInputModel);

    void openRefill(String str);

    void openTransfers();

    void showLoader();

    void showSpaySetupDialog();

    void showSpayUpdateDialog();

    void startCanDeleteOnly(String str);

    void startManageAndroidPay(String str, boolean z);

    void updateBalance(String str);

    void updateCardStatus(Pair<Boolean, Boolean> pair);
}
