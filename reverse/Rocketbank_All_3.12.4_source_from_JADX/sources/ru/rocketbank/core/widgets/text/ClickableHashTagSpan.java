package ru.rocketbank.core.widgets.text;

import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;

public abstract class ClickableHashTagSpan extends ClickableSpan {
    private int color;

    public abstract void onClick(View view);

    public ClickableHashTagSpan(int i) {
        this.color = i;
    }

    public void updateDrawState(TextPaint textPaint) {
        textPaint.setColor(this.color);
        textPaint.setUnderlineText(false);
    }
}
