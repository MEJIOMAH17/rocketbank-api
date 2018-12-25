package ru.rocketbank.core.model.enums;

import ru.rocketbank.core.model.RegistrationStatus;

public enum StatusDeposit {
    CLOSED("closed"),
    DECLINED("declined"),
    DELIVERED("delivered"),
    DELIVERY_SCHEDULED(RegistrationStatus.DeliveryScheduled),
    FAILED("failed"),
    FINISHED("finished"),
    OPENED("opened"),
    PENDING("pending"),
    STARTED("started"),
    STARTING("starting");
    
    private String value;

    private StatusDeposit(String str) {
        this.value = str;
    }

    public static StatusDeposit fromString(String str) {
        for (StatusDeposit statusDeposit : values()) {
            if (statusDeposit.value.equalsIgnoreCase(str)) {
                return statusDeposit;
            }
        }
        return null;
    }

    public final String toString() {
        return this.value;
    }
}
