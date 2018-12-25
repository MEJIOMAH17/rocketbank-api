package ru.rocketbank.core.widgets;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.TypefaceManager;

/* compiled from: RocketIconView.kt */
public final class RocketIconView extends TextView {
    public RocketIconView(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        super(context);
        init$3194826f(context);
    }

    public RocketIconView(Context context, AttributeSet attributeSet) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet);
        init$3194826f(context);
    }

    public RocketIconView(Context context, AttributeSet attributeSet, int i) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i);
        init$3194826f(context);
    }

    @TargetApi(21)
    public RocketIconView(Context context, AttributeSet attributeSet, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i, i2);
        init$3194826f(context);
    }

    private final void init$3194826f(Context context) {
        if (!isInEditMode()) {
            setTypeface(TypefaceManager.getInstance().getTypeface(9, context));
            context = getPaint();
            Intrinsics.checkExpressionValueIsNotNull(context, "paint");
            context.setSubpixelText(true);
        }
    }
}
