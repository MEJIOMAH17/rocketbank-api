package ru.rocketbank.r2d2.shop.feed;

import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;

/* compiled from: ShopFeedFragment.kt */
public class ShopFragmentData {
    private final ObservableBoolean cartButtonEnabled = new ObservableBoolean(false);
    private final ObservableField<String> cartSize = new ObservableField();
    private final ObservableBoolean hasItems = new ObservableBoolean(false);
    private final ObservableBoolean hasLoadingError = new ObservableBoolean(false);
    private final ObservableBoolean inProgress = new ObservableBoolean(false);
    private final ObservableBoolean isEmpty = new ObservableBoolean(false);

    public final ObservableBoolean getHasLoadingError() {
        return this.hasLoadingError;
    }

    public final ObservableBoolean getInProgress() {
        return this.inProgress;
    }

    public final ObservableBoolean isEmpty() {
        return this.isEmpty;
    }

    public final ObservableBoolean getHasItems() {
        return this.hasItems;
    }

    public final ObservableBoolean getCartButtonEnabled() {
        return this.cartButtonEnabled;
    }

    public final ObservableField<String> getCartSize() {
        return this.cartSize;
    }

    public static /* bridge */ /* synthetic */ void set$default(ShopFragmentData shopFragmentData, boolean z, boolean z2, boolean z3, boolean z4, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: set");
        }
        if ((i & 1) != null) {
            z = false;
        }
        if ((i & 2) != null) {
            z2 = false;
        }
        if ((i & 4) != null) {
            z3 = false;
        }
        if ((i & 8) != 0) {
            z4 = false;
        }
        shopFragmentData.set(z, z2, z3, z4);
    }

    public final void set(boolean z, boolean z2, boolean z3, boolean z4) {
        this.inProgress.set(z);
        this.hasLoadingError.set(z2);
        this.isEmpty.set(z3);
        this.hasItems.set(z4);
    }
}
