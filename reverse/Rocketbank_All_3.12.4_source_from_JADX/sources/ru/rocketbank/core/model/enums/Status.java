package ru.rocketbank.core.model.enums;

public enum Status {
    ACTIVE("active"),
    BLOCKED("blocked"),
    NEW("new"),
    HARD_BLOCKED("hard_blocked"),
    FRAUD_BLOCKED("fraud_blocked");
    
    private String value;

    private Status(String str) {
        this.value = str;
    }

    public static Status fromString(String str) {
        Status[] values = values();
        for (Status status : values) {
            if (status.value.equalsIgnoreCase(str)) {
                return status;
            }
        }
        return null;
    }

    public final String toString() {
        return this.value;
    }
}
