package ru.rocketbank.r2d2.fragments;

import android.view.View;
import android.view.View.OnClickListener;
import ru.rocketbank.r2d2.activities.MainActivity;

/* compiled from: RocketFragment.kt */
final class RocketFragment$navigationClick$1 implements OnClickListener {
    final /* synthetic */ RocketFragment this$0;

    RocketFragment$navigationClick$1(RocketFragment rocketFragment) {
        this.this$0 = rocketFragment;
    }

    public final void onClick(View view) {
        MainActivity mainActivity = (MainActivity) this.this$0.getActivity();
        if (mainActivity != null) {
            mainActivity.toggleDrawer();
        }
    }
}
