package ru.rocketbank.core.widgets;

import android.content.Context;
import android.util.AttributeSet;
import kotlin.jvm.internal.Intrinsics;
import me.grantland.widget.AutofitTextView;
import ru.rocketbank.core.C1328R;
import ru.rocketbank.core.manager.TypefaceManager;

/* compiled from: RocketAutofitTextView.kt */
public final class RocketAutofitTextView extends AutofitTextView {
    public RocketAutofitTextView(Context context, AttributeSet attributeSet) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet);
        if (isInEditMode() == null) {
            TypefaceManager.getInstance().setTypeface$6871d432(C1328R.styleable.RocketAutofitTextView_rocket_font, C1328R.styleable.RocketAutofitTextView, attributeSet, this);
        }
    }
}
