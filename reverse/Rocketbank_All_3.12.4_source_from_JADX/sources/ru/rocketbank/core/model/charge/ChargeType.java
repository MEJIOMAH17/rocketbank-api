package ru.rocketbank.core.model.charge;

/* compiled from: ChargeType.kt */
public enum ChargeType {
    ;
    
    private final int activityTitle;
    private final int buttonText;
    private final int providerID;
    private final int providerName;

    protected ChargeType(int i, int i2, int i3, int i4) {
        this.activityTitle = i;
        this.buttonText = i2;
        this.providerName = i3;
        this.providerID = i4;
    }

    public final int getActivityTitle() {
        return this.activityTitle;
    }

    public final int getButtonText() {
        return this.buttonText;
    }

    public final int getProviderID() {
        return this.providerID;
    }

    public final int getProviderName() {
        return this.providerName;
    }
}
