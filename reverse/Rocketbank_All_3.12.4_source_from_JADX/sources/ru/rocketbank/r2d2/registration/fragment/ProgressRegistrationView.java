package ru.rocketbank.r2d2.registration.fragment;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import ru.rocketbank.r2d2.C0859R;

public class ProgressRegistrationView extends LinearLayout {
    private LayoutInflater layoutInflater;
    private int step = null;

    private int getDrawable(int i, boolean z) {
        switch (i) {
            case 0:
                return z ? C0859R.drawable.ic_timeline_orange_1 : C0859R.drawable.ic_timeline_grey_1;
            case 1:
                return z ? C0859R.drawable.ic_timeline_orange_2 : C0859R.drawable.ic_timeline_grey_2;
            case 2:
                return z ? C0859R.drawable.ic_timeline_orange_3 : C0859R.drawable.ic_timeline_grey_3;
            case 3:
                return z ? C0859R.drawable.ic_timeline_orange_4 : C0859R.drawable.ic_timeline_grey_4;
            default:
                return z ? C0859R.drawable.ic_timeline_orange_1 : C0859R.drawable.ic_timeline_grey_1;
        }
    }

    public ProgressRegistrationView(Context context) {
        super(context);
        init();
    }

    public ProgressRegistrationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public ProgressRegistrationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    @TargetApi(21)
    public ProgressRegistrationView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init();
    }

    private void init() {
        this.layoutInflater = LayoutInflater.from(getContext());
        setOrientation(0);
        removeAllViews();
    }

    public void setStep(int i) {
        this.step = i;
        removeAllViews();
        int i2 = 0;
        while (i2 < 4) {
            View imageView = new ImageView(getContext());
            if (i2 < i) {
                imageView.setImageResource(C0859R.drawable.ic_timeline_check);
            }
            if (i2 == i) {
                imageView.setImageResource(getDrawable(i2, true));
            }
            if (i2 > i) {
                imageView.setImageResource(getDrawable(i2, false));
            }
            addView(imageView);
            if (i2 != 3) {
                imageView = this.layoutInflater.inflate(C0859R.layout.registration_line, this, false);
                imageView.setBackgroundColor(ContextCompat.getColor(getContext(), i2 < i ? C0859R.color.orange : C0859R.color.gray));
                addView(imageView);
            }
            i2++;
        }
        invalidate();
    }

    public int getStep() {
        return this.step;
    }
}
