package ru.rocketbank.r2d2.root.feed;

import android.databinding.ObservableInt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FeedModel.kt */
public class FeedModel {
    private int appBarHeight;
    private int headerHeight;
    private ObservableInt overlayBackground = new ObservableInt();

    public final int getHeaderHeight() {
        return this.headerHeight;
    }

    public final void setHeaderHeight(int i) {
        this.headerHeight = i;
    }

    public final int getAppBarHeight() {
        return this.appBarHeight;
    }

    public final void setAppBarHeight(int i) {
        this.appBarHeight = i;
    }

    public final ObservableInt getOverlayBackground() {
        return this.overlayBackground;
    }

    public final void setOverlayBackground(ObservableInt observableInt) {
        Intrinsics.checkParameterIsNotNull(observableInt, "<set-?>");
        this.overlayBackground = observableInt;
    }
}
