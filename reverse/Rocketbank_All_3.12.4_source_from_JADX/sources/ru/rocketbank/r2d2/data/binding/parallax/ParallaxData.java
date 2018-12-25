package ru.rocketbank.r2d2.data.binding.parallax;

import android.databinding.ObservableInt;

/* compiled from: ParallaxData.kt */
public class ParallaxData extends HeaderData {
    private final ObservableInt floatingButtonTranslation = new ObservableInt();
    private final ObservableInt overlayTranslation = new ObservableInt();
    private final ObservableInt parallaxTranslation = new ObservableInt();
    private final ObservableInt toolbarTranslation = new ObservableInt();

    public final ObservableInt getOverlayTranslation() {
        return this.overlayTranslation;
    }

    public final ObservableInt getParallaxTranslation() {
        return this.parallaxTranslation;
    }

    public final ObservableInt getToolbarTranslation() {
        return this.toolbarTranslation;
    }

    public final ObservableInt getFloatingButtonTranslation() {
        return this.floatingButtonTranslation;
    }
}
