package ru.rocketbank.r2d2.data.binding.profile;

import android.databinding.ObservableField;
import android.graphics.drawable.Drawable;
import ru.rocketbank.r2d2.data.binding.parallax.ParallaxData;

/* compiled from: ProfileData.kt */
public final class ProfileData extends ParallaxData {
    private final ObservableField<Drawable> toolbarBackDrawable = new ObservableField();
    private final ObservableField<Drawable> toolbarWhiteBackDrawable = new ObservableField();
    private final ObservableField<String> userName = new ObservableField("");

    public final ObservableField<Drawable> getToolbarBackDrawable() {
        return this.toolbarBackDrawable;
    }

    public final ObservableField<Drawable> getToolbarWhiteBackDrawable() {
        return this.toolbarWhiteBackDrawable;
    }

    public final ObservableField<String> getUserName() {
        return this.userName;
    }
}
