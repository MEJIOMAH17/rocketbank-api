package ru.rocketbank.r2d2;

import android.support.v4.content.Loader.OnLoadCompleteListener;

/* compiled from: RocketApplication.kt */
public final class RocketApplication$onCreate$1 implements OnLoadCompleteListener {
    final /* synthetic */ RocketApplication this$0;

    RocketApplication$onCreate$1(RocketApplication rocketApplication) {
        this.this$0 = rocketApplication;
    }

    public final void onWidgetDataUpdate() {
        this.this$0.widgetUpdate();
    }
}
