package ru.rocketbank.r2d2.fragments.delivery;

import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

/* compiled from: AbstractMapFragment.kt */
public final class AbstractMapFragment$onViewCreated$1 implements OnGlobalLayoutListener {
    final /* synthetic */ View $view;
    final /* synthetic */ AbstractMapFragment this$0;

    AbstractMapFragment$onViewCreated$1(AbstractMapFragment abstractMapFragment, View view) {
        this.this$0 = abstractMapFragment;
        this.$view = view;
    }

    public final void onGlobalLayout() {
        this.$view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        this.this$0.initMarkerCoordinates();
    }
}
