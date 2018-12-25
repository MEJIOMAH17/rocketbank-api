package ru.rocketbank.r2d2.root.operation.vh;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: DescriptionViewHolder.kt */
final class DescriptionViewHolder$bind$$inlined$let$lambda$1 implements OnClickListener {
    final /* synthetic */ DescriptionViewHolder this$0;

    DescriptionViewHolder$bind$$inlined$let$lambda$1(DescriptionViewHolder descriptionViewHolder) {
        this.this$0 = descriptionViewHolder;
    }

    public final void onClick(View view) {
        view = this.this$0.getItem();
        if (view != null) {
            view = view.getOnClick();
            if (view != null) {
                view.invoke(this.this$0.getItem());
            }
        }
    }
}
