package ru.rocketbank.core.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.TextView;
import ru.rocketbank.core.C1328R;
import ru.rocketbank.r2d2.C0859R;

public class RocketNumpadButton extends FrameLayout implements OnClickListener {
    private int _number;
    private OnClickListener onClickListener;

    public RocketNumpadButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setClickable(true);
        LayoutInflater.from(context).inflate(C0859R.layout.rocket_numpad_button, this, true);
        ((RocketTextView) findViewById(C0859R.id.textview_number)).setOnClickListener(this);
        context = context.obtainStyledAttributes(attributeSet, C1328R.styleable.RocketNumpadButton, 0, 0);
        this._number = context.getInteger(C1328R.styleable.RocketNumpadButton_number, 0);
        context.recycle();
        ((TextView) findViewById(C0859R.id.textview_number)).setText(Integer.toString(this._number));
    }

    public final int getNumber() {
        return this._number;
    }

    public final void setOnPressed(OnClickListener onClickListener) {
        this.onClickListener = onClickListener;
    }

    public void onClick(View view) {
        if (this.onClickListener != null) {
            this.onClickListener.onClick(this);
        }
    }
}
