package com.crashlytics.android.answers;

import io.fabric.sdk.android.Fabric;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

final class AnswersAttributes {
    final Map<String, Object> attributes = new ConcurrentHashMap();
    final AnswersEventValidator validator;

    public AnswersAttributes(AnswersEventValidator answersEventValidator) {
        this.validator = answersEventValidator;
    }

    final void put(String str, String str2) {
        if (!this.validator.isNull(str, "key")) {
            if (!this.validator.isNull(str2, "value")) {
                str = this.validator.limitStringLength(str);
                str2 = this.validator.limitStringLength(str2);
                AnswersEventValidator answersEventValidator = this.validator;
                Map map = this.attributes;
                int i = 0;
                if (map.size() >= 20 && !map.containsKey(str)) {
                    Throwable illegalArgumentException = new IllegalArgumentException(String.format(Locale.US, "Limit of %d attributes reached, skipping attribute", new Object[]{Integer.valueOf(20)}));
                    if (answersEventValidator.failFast) {
                        throw illegalArgumentException;
                    }
                    Fabric.getLogger().mo771e("Answers", "Invalid user input detected", illegalArgumentException);
                    i = 1;
                }
                if (i == 0) {
                    this.attributes.put(str, str2);
                }
            }
        }
    }

    public final String toString() {
        return new JSONObject(this.attributes).toString();
    }
}
