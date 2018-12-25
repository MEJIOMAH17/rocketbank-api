package com.crashlytics.android.answers;

import io.fabric.sdk.android.Fabric;

public abstract class AnswersEvent<T extends AnswersEvent> {
    final AnswersAttributes customAttributes = new AnswersAttributes(this.validator);
    final AnswersEventValidator validator = new AnswersEventValidator(Fabric.isDebuggable());
}
