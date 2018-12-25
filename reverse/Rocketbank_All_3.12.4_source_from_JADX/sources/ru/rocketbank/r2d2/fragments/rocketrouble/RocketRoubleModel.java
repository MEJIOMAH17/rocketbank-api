package ru.rocketbank.r2d2.fragments.rocketrouble;

import android.widget.FrameLayout;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RocketRoubleModel.kt */
public final class RocketRoubleModel {
    private final FrameLayout appBarLayout;
    private int headerHeight;
    private boolean isFullMoneyMode;
    private boolean isFullMoneyModeList;

    public RocketRoubleModel(boolean z, FrameLayout frameLayout) {
        Intrinsics.checkParameterIsNotNull(frameLayout, "appBarLayout");
        this.isFullMoneyMode = z;
        this.appBarLayout = frameLayout;
    }

    public final FrameLayout getAppBarLayout() {
        return this.appBarLayout;
    }

    public final boolean isFullMoneyMode() {
        return this.isFullMoneyMode;
    }

    public final void setFullMoneyMode(boolean z) {
        this.isFullMoneyMode = z;
    }

    public final boolean isFullMoneyModeList() {
        return this.isFullMoneyModeList;
    }

    public final void setFullMoneyModeList(boolean z) {
        this.isFullMoneyModeList = z;
    }

    public final int getHeaderHeight() {
        return this.headerHeight;
    }

    public final void setHeaderHeight(int i) {
        this.headerHeight = i;
    }
}
