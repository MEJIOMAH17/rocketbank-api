package ru.rocketbank.r2d2.activities;

import ru.rocketbank.core.widgets.RocketLoader.OnEndAnimationListener;

/* compiled from: StatusActivity.kt */
public final class StatusActivity$onError$1 implements OnEndAnimationListener {
    final /* synthetic */ StatusActivity this$0;

    StatusActivity$onError$1(StatusActivity statusActivity) {
        this.this$0 = statusActivity;
    }

    public final void animationEnd(boolean z) {
        this.this$0.onEndAnimation(z, null);
    }
}
