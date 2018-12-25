package ru.rocketbank.core.widgets;

import android.annotation.TargetApi;
import android.content.Context;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.widget.EditText;
import java.util.HashSet;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.C1328R;
import ru.rocketbank.core.manager.TypefaceManager;

/* compiled from: RocketEditText.kt */
public class RocketEditText extends EditText {
    private final HashSet<TextWatcher> listeners = new HashSet();

    public RocketEditText(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        super(context);
    }

    public RocketEditText(Context context, AttributeSet attributeSet) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet);
        init(attributeSet, context);
    }

    public RocketEditText(Context context, AttributeSet attributeSet, int i) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i);
        init(attributeSet, context);
    }

    @TargetApi(21)
    public RocketEditText(Context context, AttributeSet attributeSet, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i, i2);
        init(attributeSet, context);
    }

    private final void init(AttributeSet attributeSet, Context context) {
        if (!isInEditMode()) {
            TypefaceManager.getInstance().setTypeface$6871d432(C1328R.styleable.RocketEditText_rocket_font, C1328R.styleable.RocketEditText, attributeSet, this);
            attributeSet = context.getTheme().obtainStyledAttributes(attributeSet, C1328R.styleable.RocketEditText, 0, 0);
            context = attributeSet.getInt(C1328R.styleable.RocketEditText_rawInputType, -1);
            if (context != -1) {
                setRawInputType(context);
            }
            attributeSet.recycle();
        }
    }
}
