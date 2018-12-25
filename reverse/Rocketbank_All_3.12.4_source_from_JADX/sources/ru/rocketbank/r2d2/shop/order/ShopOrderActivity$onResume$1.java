package ru.rocketbank.r2d2.shop.order;

import com.jakewharton.rxbinding.widget.TextViewAfterTextChangeEvent;
import rx.functions.Func1;

/* compiled from: ShopOrderActivity.kt */
final class ShopOrderActivity$onResume$1<T, R> implements Func1<TextViewAfterTextChangeEvent, Boolean> {
    public static final ShopOrderActivity$onResume$1 INSTANCE = new ShopOrderActivity$onResume$1();

    ShopOrderActivity$onResume$1() {
    }

    public final boolean call(TextViewAfterTextChangeEvent textViewAfterTextChangeEvent) {
        return textViewAfterTextChangeEvent.toString().length() >= 3 ? true : null;
    }
}
