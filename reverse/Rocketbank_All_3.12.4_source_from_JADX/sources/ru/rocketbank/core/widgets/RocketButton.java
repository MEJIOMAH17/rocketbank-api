package ru.rocketbank.core.widgets;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.C1328R;
import ru.rocketbank.core.manager.TypefaceManager;

/* compiled from: RocketButton.kt */
public final class RocketButton extends Button {
    public RocketButton(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        super(context);
    }

    public RocketButton(Context context, AttributeSet attributeSet) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet);
        if (isInEditMode() == null) {
            TypefaceManager.getInstance().setTypeface$6871d432(C1328R.styleable.RocketButton_rocket_font, C1328R.styleable.RocketButton, attributeSet, this);
        }
    }

    public RocketButton(Context context, AttributeSet attributeSet, int i) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i);
        if (isInEditMode() == null) {
            TypefaceManager.getInstance().setTypeface$6871d432(C1328R.styleable.RocketButton_rocket_font, C1328R.styleable.RocketButton, attributeSet, this);
        }
    }

    @TargetApi(21)
    public RocketButton(Context context, AttributeSet attributeSet, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i, i2);
        if (isInEditMode() == null) {
            TypefaceManager.getInstance().setTypeface$6871d432(C1328R.styleable.RocketButton_rocket_font, C1328R.styleable.RocketButton, attributeSet, this);
        }
    }
}
