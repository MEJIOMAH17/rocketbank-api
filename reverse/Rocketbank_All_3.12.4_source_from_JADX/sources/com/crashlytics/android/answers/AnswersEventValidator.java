package com.crashlytics.android.answers;

import io.fabric.sdk.android.Fabric;
import java.util.Locale;

final class AnswersEventValidator {
    boolean failFast;
    final int maxNumAttributes = 20;
    final int maxStringLength = 100;

    public AnswersEventValidator(boolean z) {
        this.failFast = z;
    }

    public final String limitStringLength(String str) {
        if (str.length() <= 100) {
            return str;
        }
        Throwable illegalArgumentException = new IllegalArgumentException(String.format(Locale.US, "String is too long, truncating to %d characters", new Object[]{Integer.valueOf(100)}));
        if (this.failFast) {
            throw illegalArgumentException;
        }
        Fabric.getLogger().mo771e("Answers", "Invalid user input detected", illegalArgumentException);
        return str.substring(0, 100);
    }

    public final boolean isNull(Object obj, String str) {
        if (obj != null) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(" must not be null");
        obj = new NullPointerException(stringBuilder.toString());
        if (this.failFast != null) {
            throw obj;
        }
        Fabric.getLogger().mo771e("Answers", "Invalid user input detected", obj);
        return true;
    }
}
