package ru.rocketbank.r2d2.activities;

import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import ru.rocketbank.core.widgets.RocketLoader.OnEndAnimationListener;

/* compiled from: StatusActivity.kt */
public final class StatusActivity$onNext$1 implements OnEndAnimationListener {
    final /* synthetic */ GenericRequestResponseData $genericRequestResponseData;
    final /* synthetic */ StatusActivity this$0;

    StatusActivity$onNext$1(StatusActivity statusActivity, GenericRequestResponseData genericRequestResponseData) {
        this.this$0 = statusActivity;
        this.$genericRequestResponseData = genericRequestResponseData;
    }

    public final void animationEnd(boolean z) {
        this.this$0.onEndAnimation(z, this.$genericRequestResponseData);
    }
}
