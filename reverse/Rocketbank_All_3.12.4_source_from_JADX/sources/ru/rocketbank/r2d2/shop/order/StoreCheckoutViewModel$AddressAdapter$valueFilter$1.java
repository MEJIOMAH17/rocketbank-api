package ru.rocketbank.r2d2.shop.order;

import android.widget.Filter;
import android.widget.Filter.FilterResults;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.shop.order.StoreCheckoutViewModel.AddressAdapter;

/* compiled from: ShopOrderActivity.kt */
public final class StoreCheckoutViewModel$AddressAdapter$valueFilter$1 extends Filter {
    final /* synthetic */ AddressAdapter this$0;

    StoreCheckoutViewModel$AddressAdapter$valueFilter$1(AddressAdapter addressAdapter) {
        this.this$0 = addressAdapter;
    }

    public final CharSequence convertResultToString(Object obj) {
        Intrinsics.checkParameterIsNotNull(obj, "resultValue");
        return obj.toString();
    }

    protected final FilterResults performFiltering(CharSequence charSequence) {
        FilterResults filterResults = new FilterResults();
        if (charSequence != null) {
            filterResults.values = this.this$0.getItems();
            filterResults.count = this.this$0.getItems().length;
        }
        return filterResults;
    }

    protected final void publishResults(CharSequence charSequence, FilterResults filterResults) {
        if ((filterResults != null ? filterResults.count : null) > null) {
            this.this$0.notifyDataSetChanged();
        } else {
            this.this$0.notifyDataSetInvalidated();
        }
    }
}
