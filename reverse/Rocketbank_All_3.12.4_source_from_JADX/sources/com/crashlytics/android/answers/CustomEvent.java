package com.crashlytics.android.answers;

import kotlin.text.Typography;

public final class CustomEvent extends AnswersEvent<CustomEvent> {
    private final String eventName;

    public CustomEvent(String str) {
        this.eventName = this.validator.limitStringLength(str);
    }

    final String getCustomType() {
        return this.eventName;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("{eventName:\"");
        stringBuilder.append(this.eventName);
        stringBuilder.append(Typography.quote);
        stringBuilder.append(", customAttributes:");
        stringBuilder.append(this.customAttributes);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }
}
