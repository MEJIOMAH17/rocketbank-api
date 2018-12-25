package ru.rocketbank.r2d2.activities.operation.viewholder;

import android.content.Context;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: OperationViewHolder.kt */
public class OperationViewHolder extends ViewHolder {
    public OperationViewHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
    }

    public final Context getContext() {
        View view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        return view.getContext();
    }
}
