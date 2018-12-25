package ru.rocketbank.r2d2.shop.order;

import android.widget.ProgressBar;
import com.jakewharton.rxbinding.widget.TextViewAfterTextChangeEvent;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import rx.functions.Action1;

/* compiled from: ShopOrderActivity.kt */
final class ShopOrderActivity$onResume$2<T> implements Action1<TextViewAfterTextChangeEvent> {
    final /* synthetic */ ShopOrderActivity this$0;

    ShopOrderActivity$onResume$2(ShopOrderActivity shopOrderActivity) {
        this.this$0 = shopOrderActivity;
    }

    public final void call(TextViewAfterTextChangeEvent textViewAfterTextChangeEvent) {
        textViewAfterTextChangeEvent = textViewAfterTextChangeEvent.editable().toString();
        ShopOrderActivity.Companion.setAddressData(this.this$0.getArrayAdapter().find(textViewAfterTextChangeEvent));
        this.this$0.data.setAddressIsValid(ShopOrderActivity.Companion.getAddressData() != null);
        if (this.this$0.data.getAddressIsValid()) {
            this.this$0.checkAddress();
            return;
        }
        ProgressBar progressBar = (ProgressBar) this.this$0._$_findCachedViewById(C0859R.id.addressProgressBar);
        Intrinsics.checkExpressionValueIsNotNull(progressBar, "addressProgressBar");
        progressBar.setVisibility(0);
        ((ShopOrderPresenter) this.this$0.getPresenter()).onAddressTyped(textViewAfterTextChangeEvent);
        ShopOrderActivity.Companion.setAddressData(null);
    }
}
