package me.grantland.widget;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.text.Editable;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextWatcher;
import android.text.method.SingleLineTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnLayoutChangeListener;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;

public class AutofitHelper {
    private boolean mEnabled;
    private boolean mIsAutofitting;
    private ArrayList<OnTextSizeChangeListener> mListeners;
    private int mMaxLines;
    private float mMaxTextSize;
    private float mMinTextSize;
    private OnLayoutChangeListener mOnLayoutChangeListener = new AutofitOnLayoutChangeListener();
    private TextPaint mPaint;
    private float mPrecision;
    private float mTextSize;
    private TextView mTextView;
    private TextWatcher mTextWatcher = new AutofitTextWatcher();

    class AutofitOnLayoutChangeListener implements OnLayoutChangeListener {
        private AutofitOnLayoutChangeListener() {
        }

        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            AutofitHelper.this.autofit();
        }
    }

    class AutofitTextWatcher implements TextWatcher {
        public final void afterTextChanged(Editable editable) {
        }

        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        private AutofitTextWatcher() {
        }

        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            AutofitHelper.this.autofit();
        }
    }

    public interface OnTextSizeChangeListener {
    }

    public static AutofitHelper create(TextView textView) {
        return create(textView, null, 0);
    }

    public static AutofitHelper create(TextView textView, AttributeSet attributeSet, int i) {
        AutofitHelper autofitHelper = new AutofitHelper(textView);
        boolean z = true;
        if (attributeSet != null) {
            textView = textView.getContext();
            int i2 = (int) autofitHelper.mMinTextSize;
            float f = autofitHelper.mPrecision;
            textView = textView.obtainStyledAttributes(attributeSet, C1291R.styleable.AutofitTextView, i, 0);
            z = textView.getBoolean(C1291R.styleable.AutofitTextView_sizeToFit, true);
            attributeSet = textView.getDimensionPixelSize(C1291R.styleable.AutofitTextView_minTextSize, i2);
            i = textView.getFloat(C1291R.styleable.AutofitTextView_precision, f);
            textView.recycle();
            textView = autofitHelper.setMinTextSize$51e74ff((float) attributeSet);
            if (textView.mPrecision != i) {
                textView.mPrecision = i;
                textView.autofit();
            }
        }
        autofitHelper.setEnabled(z);
        return autofitHelper;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void autofit(android.widget.TextView r18, android.text.TextPaint r19, float r20, float r21, int r22, float r23) {
        /*
        r0 = r18;
        r9 = r19;
        r10 = r21;
        r11 = r22;
        if (r11 <= 0) goto L_0x0099;
    L_0x000a:
        r1 = 2147483647; // 0x7fffffff float:NaN double:1.060997895E-314;
        if (r11 != r1) goto L_0x0011;
    L_0x000f:
        goto L_0x0099;
    L_0x0011:
        r1 = r18.getWidth();
        r2 = r18.getPaddingLeft();
        r1 = r1 - r2;
        r2 = r18.getPaddingRight();
        r12 = r1 - r2;
        if (r12 > 0) goto L_0x0023;
    L_0x0022:
        return;
    L_0x0023:
        r1 = r18.getText();
        r2 = r18.getTransformationMethod();
        if (r2 == 0) goto L_0x0031;
    L_0x002d:
        r1 = r2.getTransformation(r1, r0);
    L_0x0031:
        r13 = r1;
        r1 = r18.getContext();
        r2 = android.content.res.Resources.getSystem();
        if (r1 == 0) goto L_0x0040;
    L_0x003c:
        r2 = r1.getResources();
    L_0x0040:
        r14 = r2.getDisplayMetrics();
        r1 = r18.getPaint();
        r9.set(r1);
        r9.setTextSize(r10);
        r1 = 1;
        r15 = 0;
        if (r11 != r1) goto L_0x005f;
    L_0x0052:
        r1 = r13.length();
        r1 = r9.measureText(r13, r15, r1);
        r2 = (float) r12;
        r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1));
        if (r1 > 0) goto L_0x0080;
    L_0x005f:
        r1 = (float) r12;
        r2 = android.util.TypedValue.applyDimension(r15, r10, r14);
        r9.setTextSize(r2);
        r8 = new android.text.StaticLayout;
        r4 = (int) r1;
        r5 = android.text.Layout.Alignment.ALIGN_NORMAL;
        r6 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r7 = 0;
        r16 = 1;
        r1 = r8;
        r2 = r13;
        r3 = r9;
        r15 = r8;
        r8 = r16;
        r1.<init>(r2, r3, r4, r5, r6, r7, r8);
        r1 = r15.getLineCount();
        if (r1 <= r11) goto L_0x008e;
    L_0x0080:
        r3 = (float) r12;
        r5 = 0;
        r1 = r13;
        r2 = r9;
        r4 = r11;
        r6 = r10;
        r7 = r23;
        r8 = r14;
        r1 = getAutofitTextSize(r1, r2, r3, r4, r5, r6, r7, r8);
        r10 = r1;
    L_0x008e:
        r2 = (r10 > r20 ? 1 : (r10 == r20 ? 0 : -1));
        if (r2 >= 0) goto L_0x0094;
    L_0x0092:
        r10 = r20;
    L_0x0094:
        r1 = 0;
        r0.setTextSize(r1, r10);
        return;
    L_0x0099:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: me.grantland.widget.AutofitHelper.autofit(android.widget.TextView, android.text.TextPaint, float, float, int, float):void");
    }

    private static float getAutofitTextSize(CharSequence charSequence, TextPaint textPaint, float f, int i, float f2, float f3, float f4, DisplayMetrics displayMetrics) {
        TextPaint textPaint2 = textPaint;
        float f5 = f;
        int i2 = i;
        float f6 = f2;
        float f7 = f3;
        while (true) {
            StaticLayout staticLayout;
            int lineCount;
            float f8 = (f6 + f7) / 2.0f;
            textPaint2.setTextSize(TypedValue.applyDimension(0, f8, displayMetrics));
            if (i2 != 1) {
                staticLayout = r0;
                StaticLayout staticLayout2 = new StaticLayout(charSequence, textPaint2, (int) f5, Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, true);
                lineCount = staticLayout.getLineCount();
            } else {
                staticLayout = null;
                lineCount = 1;
            }
            CharSequence charSequence2;
            if (lineCount <= i2) {
                if (lineCount < i2) {
                    charSequence2 = charSequence;
                } else {
                    float f9 = BitmapDescriptorFactory.HUE_RED;
                    if (i2 == 1) {
                        f9 = textPaint2.measureText(charSequence, 0, charSequence.length());
                    } else {
                        charSequence2 = charSequence;
                        for (int i3 = 0; i3 < lineCount; i3++) {
                            if (staticLayout.getLineWidth(i3) > f9) {
                                f9 = staticLayout.getLineWidth(i3);
                            }
                        }
                    }
                    if (f7 - f6 < f4) {
                        return f6;
                    }
                    if (f9 <= f5) {
                        if (f9 >= f5) {
                            return f8;
                        }
                    }
                }
                f6 = f8;
            } else if (f7 - f6 < f4) {
                return f6;
            } else {
                charSequence2 = charSequence;
            }
            f7 = f8;
        }
    }

    private AutofitHelper(TextView textView) {
        float f = textView.getContext().getResources().getDisplayMetrics().scaledDensity;
        this.mTextView = textView;
        this.mPaint = new TextPaint();
        float textSize = textView.getTextSize();
        if (this.mTextSize != textSize) {
            this.mTextSize = textSize;
        }
        int i = -1;
        TransformationMethod transformationMethod = textView.getTransformationMethod();
        if (transformationMethod != null && (transformationMethod instanceof SingleLineTransformationMethod)) {
            i = 1;
        } else if (VERSION.SDK_INT >= 16) {
            i = textView.getMaxLines();
        }
        this.mMaxLines = i;
        this.mMinTextSize = f * 8.0f;
        this.mMaxTextSize = this.mTextSize;
        this.mPrecision = 0.5f;
    }

    public final AutofitHelper addOnTextSizeChangeListener(OnTextSizeChangeListener onTextSizeChangeListener) {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList();
        }
        this.mListeners.add(onTextSizeChangeListener);
        return this;
    }

    private AutofitHelper setMinTextSize$51e74ff(float f) {
        Context context = this.mTextView.getContext();
        Resources system = Resources.getSystem();
        if (context != null) {
            system = context.getResources();
        }
        f = TypedValue.applyDimension(0, f, system.getDisplayMetrics());
        if (f != this.mMinTextSize) {
            this.mMinTextSize = f;
            autofit();
        }
        return this;
    }

    public final AutofitHelper setMaxLines(int i) {
        if (this.mMaxLines != i) {
            this.mMaxLines = i;
            autofit();
        }
        return this;
    }

    public final AutofitHelper setEnabled(boolean z) {
        if (this.mEnabled != z) {
            this.mEnabled = z;
            if (z) {
                this.mTextView.addTextChangedListener(this.mTextWatcher);
                this.mTextView.addOnLayoutChangeListener(this.mOnLayoutChangeListener);
                autofit();
            } else {
                this.mTextView.removeTextChangedListener(this.mTextWatcher);
                this.mTextView.removeOnLayoutChangeListener(this.mOnLayoutChangeListener);
                this.mTextView.setTextSize(0, this.mTextSize);
            }
        }
        return this;
    }

    public final void setTextSize(int i, float f) {
        if (!this.mIsAutofitting) {
            Context context = this.mTextView.getContext();
            Resources system = Resources.getSystem();
            if (context != null) {
                system = context.getResources();
            }
            i = TypedValue.applyDimension(i, f, system.getDisplayMetrics());
            if (this.mTextSize != i) {
                this.mTextSize = i;
            }
        }
    }

    private void autofit() {
        float textSize = this.mTextView.getTextSize();
        this.mIsAutofitting = true;
        autofit(this.mTextView, this.mPaint, this.mMinTextSize, this.mMaxTextSize, this.mMaxLines, this.mPrecision);
        this.mIsAutofitting = false;
        if (this.mTextView.getTextSize() != textSize) {
            sendTextSizeChange$2548a35();
        }
    }

    private void sendTextSizeChange$2548a35() {
        if (this.mListeners != null) {
            Iterator it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
    }
}
