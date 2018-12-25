package ru.rocketbank.r2d2.fragments.transfers.viewholder;

import android.view.View;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: ItemViewHolder.kt */
public final class ItemViewHolder {
    private final RocketTextView accountBalance;
    private int position;
    private final RocketTextView textView;

    public ItemViewHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        View findViewById = view.findViewById(C0859R.id.text);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.textView = (RocketTextView) findViewById;
        view = view.findViewById(C0859R.id.account_balance);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.accountBalance = (RocketTextView) view;
    }

    public final RocketTextView getTextView() {
        return this.textView;
    }

    public final RocketTextView getAccountBalance() {
        return this.accountBalance;
    }

    public final int getPosition() {
        return this.position;
    }

    public final void setPosition(int i) {
        this.position = i;
    }
}
