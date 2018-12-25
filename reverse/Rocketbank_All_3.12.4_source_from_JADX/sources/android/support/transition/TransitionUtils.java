package android.support.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;

final class TransitionUtils implements ViewGroupOverlayImpl {
    private final ViewGroupOverlay mViewGroupOverlay;

    TransitionUtils(ViewGroup viewGroup) {
        this.mViewGroupOverlay = viewGroup.getOverlay();
    }

    public final void add(View view) {
        this.mViewGroupOverlay.add(view);
    }

    public final void remove(View view) {
        this.mViewGroupOverlay.remove(view);
    }
}
