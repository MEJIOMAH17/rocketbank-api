package ru.rocketbank.r2d2.fragments.safe;

import android.view.View;
import android.view.View.OnClickListener;
import kotlin.TypeCastException;
import ru.rocketbank.r2d2.activities.MainActivity;

/* compiled from: NewSafeFragment.kt */
final class NewSafeFragment$setupToolbar$1 implements OnClickListener {
    final /* synthetic */ NewSafeFragment this$0;

    NewSafeFragment$setupToolbar$1(NewSafeFragment newSafeFragment) {
        this.this$0 = newSafeFragment;
    }

    public final void onClick(View view) {
        view = this.this$0.getActivity();
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.activities.MainActivity");
        }
        ((MainActivity) view).toggleDrawer();
    }
}
