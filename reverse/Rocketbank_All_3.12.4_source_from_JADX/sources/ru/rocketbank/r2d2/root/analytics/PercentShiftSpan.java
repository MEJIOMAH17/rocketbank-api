package ru.rocketbank.r2d2.root.analytics;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;

public class PercentShiftSpan extends MetricAffectingSpan {
    private float _shift;

    public PercentShiftSpan(float f) {
        this._shift = f;
    }

    public void updateMeasureState(TextPaint textPaint) {
        textPaint.baselineShift = (int) (((float) textPaint.baselineShift) - this._shift);
    }

    public void updateDrawState(TextPaint textPaint) {
        textPaint.baselineShift = (int) (((float) textPaint.baselineShift) - this._shift);
    }
}
