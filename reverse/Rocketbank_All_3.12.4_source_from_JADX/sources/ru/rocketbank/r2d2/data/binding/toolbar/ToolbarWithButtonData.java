package ru.rocketbank.r2d2.data.binding.toolbar;

import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.databinding.ObservableInt;
import kotlin.jvm.internal.Ref;

/* compiled from: ToolbarWithButtonData.kt */
public class ToolbarWithButtonData {
    private final ObservableField<String> button;
    private final ObservableBoolean buttonEnabled;
    private final ObservableInt buttonVisibility;
    private final ObservableField<String> title;
    private final ObservableBoolean toolbarVisible;

    public ToolbarWithButtonData() {
        this(null, null, false, 0, 15, null);
    }

    public ToolbarWithButtonData(String str, String str2, boolean z, int i) {
        this.title = new ObservableField(str);
        this.button = new ObservableField(str2);
        this.buttonEnabled = new ObservableBoolean(z);
        this.buttonVisibility = new ObservableInt(i);
        this.toolbarVisible = new ObservableBoolean(true);
    }

    public /* synthetic */ ToolbarWithButtonData(String str, String str2, boolean z, int i, int i2, Ref ref) {
        if ((i2 & 1) != null) {
            str = null;
        }
        if ((i2 & 2) != null) {
            str2 = null;
        }
        if ((i2 & 4) != null) {
            z = false;
        }
        if ((i2 & 8) != 0) {
            i = 0;
        }
        this(str, str2, z, i);
    }

    public final ObservableField<String> getTitle() {
        return this.title;
    }

    public final ObservableField<String> getButton() {
        return this.button;
    }

    public final ObservableBoolean getButtonEnabled() {
        return this.buttonEnabled;
    }

    public final ObservableInt getButtonVisibility() {
        return this.buttonVisibility;
    }

    public final ObservableBoolean getToolbarVisible() {
        return this.toolbarVisible;
    }
}
