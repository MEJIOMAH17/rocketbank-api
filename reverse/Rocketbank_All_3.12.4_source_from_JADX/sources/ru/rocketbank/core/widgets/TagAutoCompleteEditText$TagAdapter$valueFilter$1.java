package ru.rocketbank.core.widgets;

import android.widget.Filter;
import android.widget.Filter.FilterResults;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.TagAutoCompleteEditText.TagAdapter;

/* compiled from: TagAutoCompleteEditText.kt */
public final class TagAutoCompleteEditText$TagAdapter$valueFilter$1 extends Filter {
    final /* synthetic */ TagAdapter this$0;

    TagAutoCompleteEditText$TagAdapter$valueFilter$1(TagAdapter tagAdapter) {
        this.this$0 = tagAdapter;
    }

    public final CharSequence convertResultToString(Object obj) {
        Intrinsics.checkParameterIsNotNull(obj, "resultValue");
        return obj.toString();
    }

    protected final FilterResults performFiltering(CharSequence charSequence) {
        FilterResults filterResults = new FilterResults();
        if (charSequence != null) {
            filterResults.values = this.this$0.getItems();
            filterResults.count = this.this$0.getItems().size();
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
