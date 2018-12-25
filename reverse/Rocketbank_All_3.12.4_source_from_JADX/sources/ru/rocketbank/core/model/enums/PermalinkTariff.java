package ru.rocketbank.core.model.enums;

public enum PermalinkTariff {
    METROPOLIS("metropolis"),
    ROCKET("rocketbank_free"),
    ZP_METROPOLIS("zp_metropolis"),
    ZP_METROPOLIS_COZY_PLATINUM("zp_metropolis_cozy_platinum"),
    TOCHKA_METROPOLIS_COZY_PLATINUM("tochka_metropolis_cozy_platinum"),
    TOCHKA_METROPOLIS("tochka_metropolis"),
    ONETWOTRIP("onetwotrip");
    
    private String value;

    private PermalinkTariff(String str) {
        this.value = str;
    }

    public static PermalinkTariff fromString(String str) {
        for (PermalinkTariff permalinkTariff : values()) {
            if (permalinkTariff.value.equalsIgnoreCase(str)) {
                return permalinkTariff;
            }
        }
        return ROCKET;
    }

    public final String toString() {
        return this.value;
    }
}
