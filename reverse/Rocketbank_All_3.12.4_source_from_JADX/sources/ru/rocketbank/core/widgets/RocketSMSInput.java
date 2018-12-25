package ru.rocketbank.core.widgets;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.ImageView;
import ru.rocketbank.core.C1328R;
import ru.rocketbank.r2d2.C0859R;

public class RocketSMSInput extends FrameLayout {
    private OnCodeInputListener _codeInputListener;
    private Drawable _drawableOff;
    private Drawable _drawableOn;
    private boolean _enabled = true;
    private int[] _resourceIds = new int[]{C0859R.id.smsnumber1, C0859R.id.smsnumber2, C0859R.id.smsnumber3, C0859R.id.smsnumber4};
    private String code = "";

    public interface OnCodeInputListener {
        void onCode(String str);
    }

    public RocketSMSInput(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        attributeSet = context.obtainStyledAttributes(attributeSet, C1328R.styleable.RocketSMSInput, 0, 0);
        boolean z = attributeSet.getBoolean(C1328R.styleable.RocketSMSInput_small, false);
        attributeSet.recycle();
        this._drawableOn = getResources().getDrawable(C0859R.drawable.round_loader_filled);
        this._drawableOff = getResources().getDrawable(C0859R.drawable.round_loader_stroke);
        LayoutInflater.from(context).inflate(z ? C0859R.layout.rocket_sms_input_small : C0859R.layout.rocket_sms_input, this, true);
    }

    private void updateImagesSources() {
        int i = 0;
        while (i < 4) {
            ((ImageView) findViewById(this._resourceIds[i])).setImageDrawable(i < this.code.length() ? this._drawableOn : this._drawableOff);
            i++;
        }
    }

    public final void setOnCodeInputListener(OnCodeInputListener onCodeInputListener) {
        this._codeInputListener = onCodeInputListener;
    }

    public final void appendNumber(int i) {
        if (this._enabled) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(this.code);
            stringBuilder.append(i);
            this.code = stringBuilder.toString();
            updateImagesSources();
            if (this.code.length() == 4 && this._codeInputListener != 0) {
                this._codeInputListener.onCode(this.code);
            }
        }
    }

    public final void setCode(String str) {
        if (this._enabled) {
            this.code = "";
            updateImagesSources();
            this.code = str;
            updateImagesSources();
            if (this.code.length() == 4 && this._codeInputListener != null) {
                this._codeInputListener.onCode(this.code);
            }
        }
    }

    public final void disableSmsInput() {
        this._enabled = false;
    }

    public final void regroup() {
        this._enabled = true;
        this.code = "";
        updateImagesSources();
    }
}
