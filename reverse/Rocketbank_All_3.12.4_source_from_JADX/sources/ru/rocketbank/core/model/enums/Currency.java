package ru.rocketbank.core.model.enums;

public enum Currency {
    EURO("EUR"),
    DOLLAR("USD"),
    ROUBLE("RUB");
    
    private String value;

    private Currency(String str) {
        this.value = str;
    }

    public static Currency fromString(String str) {
        for (Currency currency : values()) {
            if (currency.value.equalsIgnoreCase(str)) {
                return currency;
            }
        }
        return null;
    }

    public final String toString() {
        return this.value;
    }
}
