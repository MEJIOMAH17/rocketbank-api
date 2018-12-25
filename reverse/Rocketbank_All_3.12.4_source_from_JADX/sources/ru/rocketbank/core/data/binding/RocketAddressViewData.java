package ru.rocketbank.core.data.binding;

import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.graphics.drawable.ColorDrawable;

/* compiled from: RocketAddressViewData.kt */
public final class RocketAddressViewData {
    private final ObservableField<String> addressTextHint = new ObservableField();
    private final ObservableField<ColorDrawable> backButtonColor = new ObservableField();
    private final ObservableBoolean backButtonEnabled = new ObservableBoolean(false);
    private final ObservableBoolean backButtonVisible = new ObservableBoolean(false);
    private final ObservableBoolean errorVisible = new ObservableBoolean(false);
    private boolean isAddress = true;
    private final ObservableField<ColorDrawable> nextButtonColor = new ObservableField();
    private final ObservableBoolean nextButtonEnabled = new ObservableBoolean(false);
    private final ObservableBoolean nextButtonVisible = new ObservableBoolean(false);

    public final ObservableBoolean getBackButtonEnabled() {
        return this.backButtonEnabled;
    }

    public final ObservableBoolean getBackButtonVisible() {
        return this.backButtonVisible;
    }

    public final ObservableField<ColorDrawable> getBackButtonColor() {
        return this.backButtonColor;
    }

    public final ObservableField<String> getAddressTextHint() {
        return this.addressTextHint;
    }

    public final ObservableBoolean getNextButtonEnabled() {
        return this.nextButtonEnabled;
    }

    public final ObservableBoolean getNextButtonVisible() {
        return this.nextButtonVisible;
    }

    public final ObservableField<ColorDrawable> getNextButtonColor() {
        return this.nextButtonColor;
    }

    public final ObservableBoolean getErrorVisible() {
        return this.errorVisible;
    }

    public final boolean isAddress() {
        return this.isAddress;
    }

    public final void setAddress(boolean z) {
        this.isAddress = z;
    }
}
