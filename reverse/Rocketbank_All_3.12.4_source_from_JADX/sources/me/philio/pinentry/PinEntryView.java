package me.philio.pinentry;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.slf4j.Marker;
import ru.rocketbank.r2d2.C0859R;

public class PinEntryView extends ViewGroup {
    private int accentColor;
    private int accentType;
    private int accentWidth;
    private int digitBackground;
    private int digitElevation;
    private int digitHeight;
    private int digitSpacing;
    private int digitTextColor;
    private int digitTextSize;
    private int digitWidth;
    private int digits;
    private EditText editText;
    private int inputType;
    private String mask;
    private OnFocusChangeListener onFocusChangeListener;

    /* renamed from: me.philio.pinentry.PinEntryView$1 */
    class C07631 implements OnFocusChangeListener {
        C07631() {
        }

        public final void onFocusChange(View view, boolean z) {
            view = PinEntryView.this.editText.getText().length();
            for (int i = 0; i < PinEntryView.this.digits; i++) {
                View childAt = PinEntryView.this.getChildAt(i);
                boolean z2 = true;
                if (z) {
                    if (PinEntryView.this.accentType != 1) {
                        if (PinEntryView.this.accentType == 2) {
                            if (i != view) {
                                if (i == PinEntryView.this.digits - 1 && view == PinEntryView.this.digits) {
                                }
                            }
                        }
                    }
                    childAt.setSelected(z2);
                }
                z2 = false;
                childAt.setSelected(z2);
            }
            PinEntryView.this.editText.setSelection(view);
            if (PinEntryView.this.onFocusChangeListener != null) {
                PinEntryView.this.onFocusChangeListener.onFocusChange(PinEntryView.this, z);
            }
        }
    }

    /* renamed from: me.philio.pinentry.PinEntryView$2 */
    class C07642 implements TextWatcher {
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        C07642() {
        }

        public final void afterTextChanged(Editable editable) {
            int length = editable.length();
            for (int i = 0; i < PinEntryView.this.digits; i++) {
                if (editable.length() > i) {
                    CharSequence access$400;
                    if (PinEntryView.this.mask != null) {
                        if (PinEntryView.this.mask.length() != 0) {
                            access$400 = PinEntryView.this.mask;
                            ((TextView) PinEntryView.this.getChildAt(i)).setText(access$400);
                        }
                    }
                    access$400 = String.valueOf(editable.charAt(i));
                    ((TextView) PinEntryView.this.getChildAt(i)).setText(access$400);
                } else {
                    ((TextView) PinEntryView.this.getChildAt(i)).setText("");
                }
                if (PinEntryView.this.editText.hasFocus()) {
                    View childAt = PinEntryView.this.getChildAt(i);
                    boolean z = true;
                    if (PinEntryView.this.accentType != 1) {
                        if (PinEntryView.this.accentType == 2) {
                            if (i != length) {
                                if (i == PinEntryView.this.digits - 1 && length == PinEntryView.this.digits) {
                                }
                            }
                        }
                        z = false;
                    }
                    childAt.setSelected(z);
                }
            }
        }
    }

    private class DigitView extends TextView {
        private Paint paint;

        public DigitView(PinEntryView pinEntryView, Context context) {
            this(pinEntryView, context, (byte) 0);
        }

        private DigitView(PinEntryView pinEntryView, Context context, byte b) {
            this(context, (char) (byte) 0);
        }

        private DigitView(Context context, char c) {
            super(context, '\u0000', 0);
            this.paint = new Paint();
            this.paint.setStyle(Style.FILL);
            this.paint.setColor(PinEntryView.this.accentColor);
        }

        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            if (isSelected()) {
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, (float) (getHeight() - PinEntryView.this.accentWidth), (float) getWidth(), (float) getHeight(), this.paint);
            }
        }
    }

    static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new C07651();
        String editTextValue;

        /* renamed from: me.philio.pinentry.PinEntryView$SavedState$1 */
        static class C07651 implements Creator<SavedState> {
            C07651() {
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }

            public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.editTextValue = parcel.readString();
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.editTextValue);
        }
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public PinEntryView(Context context) {
        this(context, null);
    }

    public PinEntryView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PinEntryView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mask = Marker.ANY_MARKER;
        context = getContext().obtainStyledAttributes(attributeSet, C1292R.styleable.PinEntryView);
        this.digits = context.getInt(C1292R.styleable.PinEntryView_numDigits, 4);
        this.inputType = context.getInt(C1292R.styleable.PinEntryView_pinInputType, 2);
        this.accentType = context.getInt(C1292R.styleable.PinEntryView_accentType, 0);
        attributeSet = getResources().getDisplayMetrics();
        this.digitWidth = context.getDimensionPixelSize(C1292R.styleable.PinEntryView_digitWidth, (int) TypedValue.applyDimension(1, 50.0f, attributeSet));
        this.digitHeight = context.getDimensionPixelSize(C1292R.styleable.PinEntryView_digitHeight, (int) TypedValue.applyDimension(1, 50.0f, attributeSet));
        this.digitSpacing = context.getDimensionPixelSize(C1292R.styleable.PinEntryView_digitSpacing, (int) TypedValue.applyDimension(1, 20.0f, attributeSet));
        this.digitTextSize = context.getDimensionPixelSize(C1292R.styleable.PinEntryView_digitTextSize, (int) TypedValue.applyDimension(2, 15.0f, attributeSet));
        this.accentWidth = context.getDimensionPixelSize(C1292R.styleable.PinEntryView_accentWidth, (int) TypedValue.applyDimension(1, 3.0f, attributeSet));
        if (VERSION.SDK_INT >= 21) {
            this.digitElevation = context.getDimensionPixelSize(C1292R.styleable.PinEntryView_digitElevation, 0);
        }
        attributeSet = getContext().getTheme();
        i = new TypedValue();
        attributeSet.resolveAttribute(16842836, i, true);
        this.digitBackground = context.getResourceId(C1292R.styleable.PinEntryView_digitBackground, i.resourceId);
        i = new TypedValue();
        attributeSet.resolveAttribute(16842806, i, true);
        this.digitTextColor = context.getColor(C1292R.styleable.PinEntryView_digitTextColor, i.resourceId > 0 ? getResources().getColor(i.resourceId) : i.data);
        i = new TypedValue();
        attributeSet.resolveAttribute(C0859R.attr.colorAccent, i, true);
        this.accentColor = context.getColor(C1292R.styleable.PinEntryView_pinAccentColor, i.resourceId > 0 ? getResources().getColor(i.resourceId) : i.data);
        attributeSet = context.getString(C1292R.styleable.PinEntryView_mask);
        if (attributeSet != null) {
            this.mask = attributeSet;
        }
        context.recycle();
        addViews();
    }

    protected void onMeasure(int i, int i2) {
        i = (this.digitWidth * this.digits) + (this.digitSpacing * (this.digits - 1));
        setMeasuredDimension(((getPaddingLeft() + i) + getPaddingRight()) + (this.digitElevation << 1), ((this.digitHeight + getPaddingTop()) + getPaddingBottom()) + (this.digitElevation << 1));
        i2 = MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            getChildAt(i3).measure(i, i2);
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        i = 0;
        while (i < this.digits) {
            i3 = (this.digitWidth * i) + (i > 0 ? this.digitSpacing * i : 0);
            getChildAt(i).layout((getPaddingLeft() + i3) + this.digitElevation, getPaddingTop() + (this.digitElevation / 2), ((i3 + getPaddingLeft()) + this.digitElevation) + this.digitWidth, (getPaddingTop() + (this.digitElevation / 2)) + this.digitHeight);
            i++;
        }
        getChildAt(this.digits).layout(0, 0, 1, getMeasuredHeight());
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return super.onTouchEvent(motionEvent);
        }
        this.editText.requestFocus();
        ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this.editText, 0);
        return true;
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.editTextValue = this.editText.getText().toString();
        return savedState;
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.editText.setText(savedState.editTextValue);
        this.editText.setSelection(savedState.editTextValue.length());
    }

    public OnFocusChangeListener getOnFocusChangeListener() {
        return this.onFocusChangeListener;
    }

    public void setOnFocusChangeListener(OnFocusChangeListener onFocusChangeListener) {
        this.onFocusChangeListener = onFocusChangeListener;
    }

    public final void addTextChangedListener(TextWatcher textWatcher) {
        this.editText.addTextChangedListener(textWatcher);
    }

    public final void removeTextChangedListener(TextWatcher textWatcher) {
        this.editText.removeTextChangedListener(textWatcher);
    }

    public final Editable getText() {
        return this.editText.getText();
    }

    public final void clearText() {
        this.editText.setText("");
    }

    private void addViews() {
        for (int i = 0; i < this.digits; i++) {
            View digitView = new DigitView(this, getContext());
            digitView.setWidth(this.digitWidth);
            digitView.setHeight(this.digitHeight);
            digitView.setBackgroundResource(this.digitBackground);
            digitView.setTextColor(this.digitTextColor);
            digitView.setTextSize((float) this.digitTextSize);
            digitView.setGravity(17);
            if (VERSION.SDK_INT >= 21) {
                digitView.setElevation((float) this.digitElevation);
            }
            addView(digitView);
        }
        this.editText = new EditText(getContext());
        this.editText.setBackgroundColor(getResources().getColor(17170445));
        this.editText.setTextColor(getResources().getColor(17170445));
        this.editText.setCursorVisible(false);
        this.editText.setFilters(new InputFilter[]{new LengthFilter(this.digits)});
        this.editText.setInputType(this.inputType);
        this.editText.setImeOptions(268435456);
        this.editText.setOnFocusChangeListener(new C07631());
        this.editText.addTextChangedListener(new C07642());
        addView(this.editText);
    }
}
