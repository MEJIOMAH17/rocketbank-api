package ru.rocketbank.r2d2.widgets.refill;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;

public class GooglePlayServiceNotAvailableView extends FrameLayout {
    public GooglePlayServiceNotAvailableView(Context context) {
        this(context, null);
    }

    public GooglePlayServiceNotAvailableView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public GooglePlayServiceNotAvailableView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(C0859R.layout.view_google_play_services_not_available, this, true);
        setBackgroundColor(Color.parseColor("#ffffff"));
        context = Utils.dpToPx(context, 13);
        setPadding(context, context, context, context);
    }
}
