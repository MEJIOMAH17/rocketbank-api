package ru.rocketbank.core.utils;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: AppConfig.kt */
public final class AppConfig {
    private String applicationId = "ru.rocketbank.core";

    public final String getApplicationId() {
        return this.applicationId;
    }

    public final void setApplicationId(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.applicationId = str;
    }
}
