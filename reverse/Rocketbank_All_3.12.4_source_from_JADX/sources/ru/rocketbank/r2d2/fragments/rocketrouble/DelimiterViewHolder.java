package ru.rocketbank.r2d2.fragments.rocketrouble;

import android.view.View;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: DelimiterViewHolder.kt */
public final class DelimiterViewHolder extends RocketViewHolder {
    private final RocketTextView titleView;

    public DelimiterViewHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        view = view.findViewById(C0859R.id.title);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.titleView = (RocketTextView) view;
    }

    public final void setText(int i) {
        this.titleView.setText(i);
    }
}
