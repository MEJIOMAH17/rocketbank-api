package ru.rocketbank.r2d2.fragments.rocketrouble;

import android.support.v4.app.NotificationCompat;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: HeaderViewHolder.kt */
public final class HeaderViewHolder extends RocketViewHolder implements OnTouchListener {
    private final RocketRoubleModel rocketRoubleModel;

    public HeaderViewHolder(RocketRoubleModel rocketRoubleModel, View view) {
        Intrinsics.checkParameterIsNotNull(rocketRoubleModel, "rocketRoubleModel");
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        this.rocketRoubleModel = rocketRoubleModel;
        view.setOnTouchListener(this);
        rocketRoubleModel = view.findViewById(C0859R.id.stub);
        rocketRoubleModel.getLayoutParams().height = this.rocketRoubleModel.getHeaderHeight();
        rocketRoubleModel.requestLayout();
    }

    public final boolean onTouch(View view, MotionEvent motionEvent) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        Intrinsics.checkParameterIsNotNull(motionEvent, NotificationCompat.CATEGORY_EVENT);
        return this.rocketRoubleModel.getAppBarLayout().dispatchTouchEvent(motionEvent);
    }
}
