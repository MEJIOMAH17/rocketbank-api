package ru.rocketbank.r2d2.root.card;

import android.view.View;
import android.view.View.OnClickListener;
import kotlin.TypeCastException;
import ru.rocketbank.r2d2.activities.MainActivity;

/* compiled from: CardDetailFragment.kt */
final class CardDetailFragment$navigationOnClickListener$1 implements OnClickListener {
    final /* synthetic */ CardDetailFragment this$0;

    CardDetailFragment$navigationOnClickListener$1(CardDetailFragment cardDetailFragment) {
        this.this$0 = cardDetailFragment;
    }

    public final void onClick(View view) {
        view = this.this$0.getActivity();
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.activities.MainActivity");
        }
        ((MainActivity) view).toggleDrawer();
    }
}
