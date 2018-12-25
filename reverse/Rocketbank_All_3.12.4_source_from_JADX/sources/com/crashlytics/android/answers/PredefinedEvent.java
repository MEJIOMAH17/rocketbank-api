package com.crashlytics.android.answers;

import kotlin.text.Typography;

public abstract class PredefinedEvent<T extends PredefinedEvent> extends AnswersEvent<T> {
    final AnswersAttributes predefinedAttributes = new AnswersAttributes(this.validator);

    abstract String getPredefinedType();

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("{type:\"");
        stringBuilder.append(getPredefinedType());
        stringBuilder.append(Typography.quote);
        stringBuilder.append(", predefinedAttributes:");
        stringBuilder.append(this.predefinedAttributes);
        stringBuilder.append(", customAttributes:");
        stringBuilder.append(this.customAttributes);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }
}
