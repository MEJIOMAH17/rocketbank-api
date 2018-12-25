package ru.rocketbank.core.utils;

import java.util.UUID;

/* compiled from: Payments.kt */
public final class Payments {
    public static final Payments INSTANCE = new Payments();
    public static final String PAYMENT_HASH_PARAM = "app_uniq_timestamp_hash";

    private Payments() {
    }

    public final String newHash() {
        return UUID.randomUUID().toString();
    }
}
