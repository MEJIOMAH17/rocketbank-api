package ru.rocketbank.core.model.enums;

import ru.rocketbank.core.model.RegistrationStatus;

public enum StatusIssue {
    DELIVERY(RegistrationStatus.Delivery),
    DELIVERY_SCHEDULED(RegistrationStatus.DeliveryScheduled),
    ISSUING(RegistrationStatus.Issuing),
    PIN(RegistrationStatus.Pin);
    
    private String value;

    private StatusIssue(String str) {
        this.value = str;
    }

    public static StatusIssue fromString(String str) {
        for (StatusIssue statusIssue : values()) {
            if (statusIssue.value.equalsIgnoreCase(str)) {
                return statusIssue;
            }
        }
        return ISSUING;
    }

    public final String toString() {
        return this.value;
    }
}
