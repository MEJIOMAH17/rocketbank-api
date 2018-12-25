package android.support.transition;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

final class ViewGroupOverlayApi14 extends ViewOverlayApi14 implements ViewGroupOverlayImpl {
    ViewGroupOverlayApi14(Context context, ViewGroup viewGroup, View view) {
        super(context, viewGroup, view);
    }

    public final void add(View view) {
        this.mOverlayViewGroup.add(view);
    }

    public final void remove(View view) {
        this.mOverlayViewGroup.remove(view);
    }
}
