package com.crashlytics.android.answers;

import java.math.BigDecimal;

public final class AddToCartEvent extends PredefinedEvent<AddToCartEvent> {
    static final BigDecimal MICRO_CONSTANT = BigDecimal.valueOf(1000000);

    final String getPredefinedType() {
        return "addToCart";
    }
}
