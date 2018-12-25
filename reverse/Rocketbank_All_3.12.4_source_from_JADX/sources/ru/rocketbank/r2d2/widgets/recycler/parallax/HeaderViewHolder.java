package ru.rocketbank.r2d2.widgets.recycler.parallax;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.databinding.ParallaxHeaderBinding;

/* compiled from: HeaderViewHolder.kt */
public final class HeaderViewHolder extends GenericViewHolder implements OnTouchListener {
    private final ParallaxHeaderBinding binding;
    private final int headerHeight;
    private View targetLayout;

    public final View getTargetLayout() {
        return this.targetLayout;
    }

    public final void setTargetLayout(View view) {
        Intrinsics.checkParameterIsNotNull(view, "<set-?>");
        this.targetLayout = view;
    }

    public final int getHeaderHeight() {
        return this.headerHeight;
    }

    public final ParallaxHeaderBinding getBinding() {
        return this.binding;
    }

    public HeaderViewHolder(View view, View view2, int i, ParallaxHeaderBinding parallaxHeaderBinding) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        Intrinsics.checkParameterIsNotNull(view2, "targetLayout");
        Intrinsics.checkParameterIsNotNull(parallaxHeaderBinding, "binding");
        super(view);
        this.targetLayout = view2;
        this.headerHeight = i;
        this.binding = parallaxHeaderBinding;
        view.setOnTouchListener(this);
        view = view.findViewById(C0859R.id.stub);
        if (view != null) {
            view.getLayoutParams().height = this.headerHeight;
            view.requestLayout();
        }
    }

    public final boolean onTouch(View view, MotionEvent motionEvent) {
        return this.targetLayout.dispatchTouchEvent(motionEvent);
    }

    public final void onBind(View view) {
        Intrinsics.checkParameterIsNotNull(view, "targetLayout");
        this.targetLayout = view;
    }
}
