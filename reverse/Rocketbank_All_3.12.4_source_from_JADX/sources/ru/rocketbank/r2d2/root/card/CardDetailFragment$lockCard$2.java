package ru.rocketbank.r2d2.root.card;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.widgets.RocketSnackbar;

/* compiled from: CardDetailFragment.kt */
final class CardDetailFragment$lockCard$2 extends Lambda implements Function1<String, Unit> {
    final /* synthetic */ CardDetailFragment this$0;

    CardDetailFragment$lockCard$2(CardDetailFragment cardDetailFragment) {
        this.this$0 = cardDetailFragment;
        super(1);
    }

    public final void invoke(String str) {
        Intrinsics.checkParameterIsNotNull(str, "error");
        this.this$0.hideSpinner();
        View view = this.this$0.getView();
        if (view != null) {
            RocketSnackbar.make(view, str, -1).show();
        }
    }
}
