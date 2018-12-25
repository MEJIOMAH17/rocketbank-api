package ru.rocketbank.core.model;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: ValueRequest.kt */
public final class ValueRequest {
    private String value;

    public ValueRequest(String str) {
        Intrinsics.checkParameterIsNotNull(str, "value");
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }

    public final void setValue(String str) {
        this.value = str;
    }
}
