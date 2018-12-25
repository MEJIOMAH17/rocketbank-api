package ru.rocketbank.r2d2.shop.order;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.AutoCompleteTextView;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: ShopOrderActivity.kt */
final class ShopOrderActivity$onCreate$3 implements OnFocusChangeListener {
    final /* synthetic */ ShopOrderActivity this$0;

    ShopOrderActivity$onCreate$3(ShopOrderActivity shopOrderActivity) {
        this.this$0 = shopOrderActivity;
    }

    public final void onFocusChange(View view, boolean z) {
        if (z) {
            RocketTextView rocketTextView;
            view = this.this$0.data.getAddress();
            CharSequence charSequence = (CharSequence) (view != null ? view.getValue() : null);
            if (charSequence != null) {
                if (charSequence.length() != null) {
                    view = null;
                    if (view == null) {
                        rocketTextView = (RocketTextView) this.this$0._$_findCachedViewById(C0859R.id.addressError);
                        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "addressError");
                        rocketTextView.setVisibility(true);
                        ((AutoCompleteTextView) this.this$0._$_findCachedViewById(C0859R.id.address)).showDropDown();
                        return;
                    }
                }
            }
            view = true;
            if (view == null) {
                rocketTextView = (RocketTextView) this.this$0._$_findCachedViewById(C0859R.id.addressError);
                Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "addressError");
                rocketTextView.setVisibility(true);
                ((AutoCompleteTextView) this.this$0._$_findCachedViewById(C0859R.id.address)).showDropDown();
                return;
            }
        }
        this.this$0.checkAddress();
    }
}
