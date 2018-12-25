package ru.rocketbank.r2d2.activities.operation.model;

import android.databinding.ObservableField;
import ru.rocketbank.r2d2.data.binding.parallax.ParallaxData;
import rx.Subscription;

/* compiled from: OperationReceiptModel.kt */
public final class OperationReceiptModel extends ParallaxData {
    private final ObservableField<String> amountValue = new ObservableField();
    private Subscription compensationSubsriotion;
    private final ObservableField<String> dataValue = new ObservableField();
    private int headerHeight;
    private boolean isFullMode;
    private boolean isFullMoneyMode;
    private boolean isRocketFullMode;
    private String lastTextString;
    private final ObservableField<String> placeName = new ObservableField();
    private String receiptUrl;
    private final ObservableField<String> rocketAmountValue = new ObservableField();
    private final ObservableField<String> titleAmountValue = new ObservableField();
    private float zoomLevel = 16.0f;

    public final boolean isFullMode() {
        return this.isFullMode;
    }

    public final void setFullMode(boolean z) {
        this.isFullMode = z;
    }

    public final boolean isRocketFullMode() {
        return this.isRocketFullMode;
    }

    public final void setRocketFullMode(boolean z) {
        this.isRocketFullMode = z;
    }

    public final boolean isFullMoneyMode() {
        return this.isFullMoneyMode;
    }

    public final void setFullMoneyMode(boolean z) {
        this.isFullMoneyMode = z;
    }

    public final String getLastTextString() {
        return this.lastTextString;
    }

    public final void setLastTextString(String str) {
        this.lastTextString = str;
    }

    public final int getHeaderHeight() {
        return this.headerHeight;
    }

    public final void setHeaderHeight(int i) {
        this.headerHeight = i;
    }

    public final Subscription getCompensationSubsriotion() {
        return this.compensationSubsriotion;
    }

    public final void setCompensationSubsriotion(Subscription subscription) {
        this.compensationSubsriotion = subscription;
    }

    public final String getReceiptUrl() {
        return this.receiptUrl;
    }

    public final void setReceiptUrl(String str) {
        this.receiptUrl = str;
    }

    public final float getZoomLevel() {
        return this.zoomLevel;
    }

    public final void setZoomLevel(float f) {
        this.zoomLevel = f;
    }

    public final ObservableField<String> getPlaceName() {
        return this.placeName;
    }

    public final ObservableField<String> getDataValue() {
        return this.dataValue;
    }

    public final ObservableField<String> getAmountValue() {
        return this.amountValue;
    }

    public final ObservableField<String> getRocketAmountValue() {
        return this.rocketAmountValue;
    }

    public final ObservableField<String> getTitleAmountValue() {
        return this.titleAmountValue;
    }
}
