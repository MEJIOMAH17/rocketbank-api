package ru.rocketbank.r2d2.registration.new_passport;

import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.graphics.drawable.Drawable;

/* compiled from: NewPassportStepData.kt */
public final class NewPassportStepData {
    private final ObservableField<String> bottomButtonText = new ObservableField();
    private final ObservableBoolean buttonsEnabled = new ObservableBoolean(true);
    private final ObservableField<String> helpText = new ObservableField();
    private final ObservableField<Drawable> image = new ObservableField();
    private final ObservableField<String> mainButtonText = new ObservableField();
    private final ObservableField<String> photoTitle = new ObservableField();

    public final ObservableField<Drawable> getImage() {
        return this.image;
    }

    public final ObservableField<String> getHelpText() {
        return this.helpText;
    }

    public final ObservableField<String> getPhotoTitle() {
        return this.photoTitle;
    }

    public final ObservableField<String> getMainButtonText() {
        return this.mainButtonText;
    }

    public final ObservableField<String> getBottomButtonText() {
        return this.bottomButtonText;
    }

    public final ObservableBoolean getButtonsEnabled() {
        return this.buttonsEnabled;
    }
}
