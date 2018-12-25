package ru.rocketbank.r2d2.activities.operation.model;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: Mode.kt */
public final class Mode {
    private String text = "";

    public final String getText() {
        return this.text;
    }

    public final void setText(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.text = str;
    }
}
