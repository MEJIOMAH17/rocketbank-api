package ru.rocketbank.core.model.enums;

public enum PermalinkOption {
    MALINA("enlarge_malina"),
    SMS("sms_notification");
    
    private String value;

    private PermalinkOption(String str) {
        this.value = str;
    }

    public static PermalinkOption fromString(String str) {
        for (PermalinkOption permalinkOption : values()) {
            if (permalinkOption.value.equalsIgnoreCase(str)) {
                return permalinkOption;
            }
        }
        return null;
    }

    public final String toString() {
        return this.value;
    }
}
