package com.samsung.android.sdk.samsungpay.v2.card;

import android.os.Bundle;
import com.samsung.android.sdk.samsungpay.v2.SpaySdk.Brand;

public class TransitCard extends Card {
    public static final String ADDITIONAL_SERVICE_AAVS = "AAVS";
    public static final String ADDITIONAL_SERVICE_BALANCE_LIMIT = "BALANCE_LIMIT";
    public static final String ADDITIONAL_SERVICE_CHARGE = "CHARGE";
    private static final String ADDITIONAL_SERVICE_DATA = "SERVICE_DATA";
    private static final String ADDITIONAL_SERVICE_DESCRIPTION = "SERVICE_DESC";
    public static final String ADDITIONAL_SERVICE_ONLINE_PAY = "ONLINE_PAY";
    private static final String ADDITIONAL_SERVICE_TRANSACTION_DATA = "SERVICE_TRANSACTION_DATA";
    private static final String ADDITIONAL_SERVICE_TRANSACTION_ID = "SERVICE_TRANSACTION_ID";
    private static final String ADDITIONAL_SERVICE_TYPE = "SERVICE_TYPE";
    public static final String ADDITIONAL_SERVICE_WITHDRAW = "WITHDRAW";

    public TransitCard() {
        init();
    }

    public TransitCard(String str, String str2, Brand brand, Bundle bundle) {
        super(str, str2, brand, bundle);
        init();
    }

    private void init() {
        if (getCardInfo() == null) {
            setCardInfo(new Bundle());
        }
        getCardInfo().putString(Card.CARD_TYPE, Card.CARD_TYPE_TRANSIT);
    }

    public void setCardReferenceId(String str) {
        setCardId(str);
    }

    public void setAdditionalServiceType(String str) {
        getCardInfo().putString(ADDITIONAL_SERVICE_TYPE, str);
    }

    public void setAdditionalServiceData(String str) {
        getCardInfo().putString(ADDITIONAL_SERVICE_DATA, str);
    }

    public void setAdditionalServiceDescription(String str) {
        getCardInfo().putString(ADDITIONAL_SERVICE_DESCRIPTION, str);
    }

    public void setTransactionId(String str) {
        getCardInfo().putString(ADDITIONAL_SERVICE_TRANSACTION_ID, str);
    }

    public String getCardReferenceId() {
        return getCardId();
    }

    public String getAdditionalServiceType() {
        return getCardInfo() != null ? getCardInfo().getString(ADDITIONAL_SERVICE_TYPE, "") : "";
    }

    public String getAdditionalServiceData() {
        return getCardInfo() != null ? getCardInfo().getString(ADDITIONAL_SERVICE_DATA, "") : "";
    }

    public String getAdditionalServiceDescription() {
        return getCardInfo() != null ? getCardInfo().getString(ADDITIONAL_SERVICE_DESCRIPTION, "") : "";
    }

    public String getTransactionId() {
        return getCardInfo() != null ? getCardInfo().getString(ADDITIONAL_SERVICE_TRANSACTION_ID, "") : "";
    }
}
