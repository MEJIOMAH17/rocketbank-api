package ru.rocketbank.r2d2.widgets.recycler.parallax;

import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import com.github.ksoichiro.android.observablescrollview.ObservableScrollViewCallbacks;
import com.github.ksoichiro.android.observablescrollview.ScrollState;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import ru.rocketbank.r2d2.data.binding.parallax.ParallaxData;

/* compiled from: ObservableParallaxListener.kt */
public final class ObservableParallaxListener implements ObservableScrollViewCallbacks {
    public static final Companion Companion = new Companion();
    private static final String SAVE = "PLX_O_SCROLL";
    private static final String TAG = "ObParallax";
    private int fabMargin;
    private int flexibleSpaceImageHeight;
    private int flexibleSpaceShowFabOffset;
    private FloatingActionButton floatingActionButton;
    private int floatingActionButtonPaddingTop;
    private int floatingButtonHeight;
    private int floatingButtonPaddingRight;
    private int floatingButtonWidth;
    private int headerHeight;
    private ParallaxData parallaxData;
    private final int parallaxSize;
    private int scrollPosition;
    private final int toolbarSize;
    private int width;

    /* compiled from: ObservableParallaxListener.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getTAG() {
            return ObservableParallaxListener.TAG;
        }

        public final String getSAVE() {
            return ObservableParallaxListener.SAVE;
        }
    }

    public final void onDownMotionEvent() {
    }

    public final void onUpOrCancelMotionEvent(ScrollState scrollState) {
    }

    public ObservableParallaxListener(int i, int i2, int i3, ParallaxData parallaxData, int i4) {
        Intrinsics.checkParameterIsNotNull(parallaxData, "parallaxData");
        this.scrollPosition = i;
        this.headerHeight = i2;
        this.parallaxSize = i3;
        this.parallaxData = parallaxData;
        this.toolbarSize = i4;
    }

    public final int getScrollPosition() {
        return this.scrollPosition;
    }

    public final void setScrollPosition(int i) {
        this.scrollPosition = i;
    }

    public final int getHeaderHeight() {
        return this.headerHeight;
    }

    public final void setHeaderHeight(int i) {
        this.headerHeight = i;
    }

    public final int getParallaxSize() {
        return this.parallaxSize;
    }

    public final ParallaxData getParallaxData() {
        return this.parallaxData;
    }

    public final void setParallaxData(ParallaxData parallaxData) {
        Intrinsics.checkParameterIsNotNull(parallaxData, "<set-?>");
        this.parallaxData = parallaxData;
    }

    public /* synthetic */ ObservableParallaxListener(int i, int i2, int i3, ParallaxData parallaxData, int i4, int i5, Ref ref) {
        if ((i5 & 16) != 0) {
            i4 = 0;
        }
        this(i, i2, i3, parallaxData, i4);
    }

    public final int getToolbarSize() {
        return this.toolbarSize;
    }

    public final void onScrollChanged(int i, boolean z, boolean z2) {
        onScroll(i);
    }

    public final void setHeaderSize(int i) {
        this.headerHeight = i;
        onScroll(this.scrollPosition);
    }

    public final void onScroll(int i) {
        int i2 = (int) (((double) i) * 0.6d);
        if (i2 > this.parallaxSize) {
            i2 = this.parallaxSize;
        }
        this.parallaxData.getColor().set(((int) (128.0f * ((((float) i2) / ((float) (this.parallaxSize / 100))) / 100.0f))) << 24);
        this.parallaxData.getParallaxTranslation().set(-i2);
        i2 = this.headerHeight - i;
        if (i2 < 0) {
            i2 = 0;
        }
        this.parallaxData.getOverlayTranslation().set(i2);
        updateToolbarPosition(i);
        if (this.floatingActionButton != null) {
            moveFloatingButton(i);
        }
    }

    private final void updateToolbarPosition(int i) {
        int i2 = this.toolbarSize;
        i = i2 - i;
        if (i < 0) {
            i = 0;
        }
        float f = (float) this.toolbarSize;
        if (i2 >= i) {
            f = (float) i;
        }
        this.parallaxData.getToolbarTranslation().set(-((int) f));
    }

    public final void addFab(int i, FloatingActionButton floatingActionButton, int i2, int i3) {
        Intrinsics.checkParameterIsNotNull(floatingActionButton, "floatingActionButton");
        this.width = i;
        this.fabMargin = i3;
        this.flexibleSpaceShowFabOffset = i2;
        this.flexibleSpaceImageHeight = this.flexibleSpaceImageHeight;
        this.floatingActionButton = floatingActionButton;
        this.floatingActionButtonPaddingTop = floatingActionButton.getPaddingTop();
        this.floatingButtonHeight = floatingActionButton.getLayoutParams().height;
        this.floatingButtonWidth = floatingActionButton.getLayoutParams().width;
        this.floatingButtonPaddingRight = floatingActionButton.getPaddingRight();
    }

    private final void moveFloatingButton(int i) {
        i = Math.min((float) ((this.headerHeight - (this.floatingButtonHeight / 2)) - this.floatingActionButtonPaddingTop), Math.max(BitmapDescriptorFactory.HUE_RED, (float) (((this.headerHeight - i) - (this.floatingButtonHeight / 2)) - this.floatingActionButtonPaddingTop)));
        int i2 = ((this.width - this.fabMargin) - this.floatingButtonWidth) - this.floatingButtonPaddingRight;
        FloatingActionButton floatingActionButton = this.floatingActionButton;
        if (floatingActionButton == null) {
            Intrinsics.throwNpe();
        }
        floatingActionButton.setTranslationX((float) i2);
        FloatingActionButton floatingActionButton2 = this.floatingActionButton;
        if (floatingActionButton2 == null) {
            Intrinsics.throwNpe();
        }
        floatingActionButton2.setTranslationY(i);
        if (i < ((float) this.flexibleSpaceShowFabOffset)) {
            i = this.floatingActionButton;
            if (i == 0) {
                Intrinsics.throwNpe();
            }
            i.hide();
            return;
        }
        i = this.floatingActionButton;
        if (i == 0) {
            Intrinsics.throwNpe();
        }
        i.show();
    }

    public final void onRestore(Bundle bundle) {
        if (bundle != null) {
            this.scrollPosition = bundle.getInt(SAVE, 0);
        }
    }

    public final void onSaveInstanceState(Bundle bundle) {
        if (bundle != null) {
            bundle.putInt(SAVE, this.scrollPosition);
        }
    }

    public final void update(ParallaxData parallaxData) {
        Intrinsics.checkParameterIsNotNull(parallaxData, "parallaxData");
        this.parallaxData = parallaxData;
        onScroll(this.scrollPosition);
    }
}
