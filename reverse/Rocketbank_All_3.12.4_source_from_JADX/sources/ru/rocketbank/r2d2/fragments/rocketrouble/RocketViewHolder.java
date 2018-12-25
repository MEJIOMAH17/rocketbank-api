package ru.rocketbank.r2d2.fragments.rocketrouble;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.widget.TextView;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: RocketViewHolder.kt */
public class RocketViewHolder extends ViewHolder {
    private final TextView dayTitleView;

    public RocketViewHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        this.dayTitleView = (TextView) view.findViewById(C0859R.id.dayTitle);
        if (this.dayTitleView != null) {
            this.dayTitleView.setVisibility(8);
        }
    }

    public final TextView getDayTitleView() {
        return this.dayTitleView;
    }
}
