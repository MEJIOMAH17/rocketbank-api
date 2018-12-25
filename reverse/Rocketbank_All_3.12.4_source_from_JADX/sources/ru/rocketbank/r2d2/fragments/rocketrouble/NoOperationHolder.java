package ru.rocketbank.r2d2.fragments.rocketrouble;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: NoOperationHolder.kt */
public final class NoOperationHolder extends RocketViewHolder {
    private RocketTextView leftView;

    public NoOperationHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        view = view.findViewById(C0859R.id.left);
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView.findViewById(R.id.left)");
        this.leftView = (RocketTextView) view;
    }

    public final RocketTextView getLeftView() {
        return this.leftView;
    }

    public final void setLeftView(RocketTextView rocketTextView) {
        Intrinsics.checkParameterIsNotNull(rocketTextView, "<set-?>");
        this.leftView = rocketTextView;
    }

    public final void hide() {
        this.leftView.setVisibility(8);
    }

    public final void setLeftText(String str) {
        Intrinsics.checkParameterIsNotNull(str, ProviderField.TEXT);
        this.leftView.setText(str);
        this.leftView.setVisibility(0);
    }
}
