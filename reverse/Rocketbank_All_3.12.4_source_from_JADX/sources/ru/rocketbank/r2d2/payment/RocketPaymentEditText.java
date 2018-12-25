package ru.rocketbank.r2d2.payment;

import android.content.Context;
import android.text.Editable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import com.jakewharton.rxbinding.view.RxView;
import java.util.regex.Pattern;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.helpers.KeyboardHelper;
import ru.rocketbank.r2d2.payment.IPaymentFieldWidget.OnPaymentFieldChangedListener;
import ru.rocketbank.r2d2.utils.PatternFormatter.FormattedString;
import ru.rocketbank.r2d2.utils.TextWatcherAbstract;
import rx.functions.Action1;
import rx.functions.Func1;

public class RocketPaymentEditText extends LinearLayout implements IPaymentFieldWidget {
    public static final int STATUS_FORMAT_CORRECT = 1;
    public static final int STATUS_FORMAT_WRONG = 2;
    private int _status;
    private RocketEditText editTextValue;
    private ProviderField field;
    private String formattedValue;
    private boolean hasFatalRegexpError;
    private OnPaymentFieldChangedListener listener;
    private View pickContact;
    private OnPickContactListener pickContactListener;
    private Pattern regexp;
    private RocketTextView textViewError;
    private RocketTextView textViewLabel;
    private RocketTextView textViewPrefix;
    private String value;

    public interface OnPickContactListener {
        void onPickContactRequested();
    }

    private class RegexpTextWatcher extends TextWatcherAbstract {
        private RegexpTextWatcher() {
        }

        public void afterTextChanged(Editable editable) {
            if (!(RocketPaymentEditText.this.regexp == null || RocketPaymentEditText.this.value == null)) {
                if (RocketPaymentEditText.this.regexp.matcher(RocketPaymentEditText.this.value).matches() != null) {
                    RocketPaymentEditText.this.setStatus(1);
                } else {
                    RocketPaymentEditText.this.setStatus(2);
                }
            }
            RocketPaymentEditText.this.update();
            if (RocketPaymentEditText.this.listener != null) {
                RocketPaymentEditText.this.listener.onPaymentFieldChanged(RocketPaymentEditText.this.field, RocketPaymentEditText.this);
            }
        }
    }

    /* renamed from: ru.rocketbank.r2d2.payment.RocketPaymentEditText$2 */
    class C18082 implements Func1<Void, Boolean> {
        C18082() {
        }

        public Boolean call(Void voidR) {
            return Boolean.valueOf(RocketPaymentEditText.this.pickContactListener != null ? true : null);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.payment.RocketPaymentEditText$4 */
    class C18104 implements Func1<String, FormattedString> {
        C18104() {
        }

        public FormattedString call(String str) {
            return new FormattedString(str, str);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.payment.RocketPaymentEditText$1 */
    class C20251 implements Action1<Void> {
        C20251() {
        }

        public void call(Void voidR) {
            RocketPaymentEditText.this.pickContactListener.onPickContactRequested();
        }
    }

    public RocketPaymentEditText(Context context) {
        this(context, null);
    }

    public RocketPaymentEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RocketPaymentEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this._status = 2;
        inflateLayout(context);
        findWidgets();
    }

    public void setValue(String str) {
        this.editTextValue.setText(str);
    }

    public void setError(String str) {
        if (str != null) {
            this.editTextValue.setBackgroundResource(C0859R.drawable.underline_red);
            this.textViewError.setVisibility(0);
            this.textViewError.setText(str);
            return;
        }
        this.textViewError.setVisibility(8);
        update();
    }

    public void clearError() {
        setError(null);
    }

    private void inflateLayout(Context context) {
        LayoutInflater.from(context).inflate(C0859R.layout.widget_rocket_payment_edittext, this, true);
    }

    private void findWidgets() {
        this.textViewPrefix = (RocketTextView) findViewById(C0859R.id.widget_payment_edit_prefix);
        this.textViewLabel = (RocketTextView) findViewById(C0859R.id.textViewLabel);
        this.editTextValue = (RocketEditText) findViewById(C0859R.id.widget_payment_edit_value);
        this.textViewError = (RocketTextView) findViewById(C0859R.id.textViewError);
        this.pickContact = findViewById(C0859R.id.pick_contact);
        RxView.clicks(this.pickContact).filter(new C18082()).subscribe(new C20251());
    }

    protected void setHint(String str) {
        this.editTextValue.setHint(str);
    }

    protected void setKeyboardKind(String str, String str2) {
        if ("phone".equalsIgnoreCase(str2) != null) {
            this.editTextValue.setRawInputType(3);
            this.pickContact.setVisibility(null);
        } else if (ProviderField.NUMBERS.equalsIgnoreCase(str) != null) {
            this.editTextValue.setRawInputType(2);
        } else {
            ProviderField.NUMBERSDOT.equalsIgnoreCase(str);
            this.editTextValue.setRawInputType(1);
        }
    }

    protected void setLabel(String str) {
        if (str != null && str.length() > 0) {
            this.textViewLabel.setText(str);
            this.textViewLabel.setVisibility(0);
        }
    }

    protected void setRegexp(String str) {
        if (str != null && str.length() > 0) {
            this.regexp = Pattern.compile(str);
        }
    }

    protected void setPrefix(String str) {
        if (str != null && !str.isEmpty()) {
            this.textViewPrefix.setText(str);
            this.textViewPrefix.setVisibility(0);
        }
    }

    private void setStatus(int i) {
        this._status = i;
    }

    private void update() {
        this.editTextValue.setBackgroundResource(isValid() ? C0859R.drawable.underline_orange : C0859R.drawable.underline_gray_dc);
    }

    public void setOnPaymentFieldChangedListener(OnPaymentFieldChangedListener onPaymentFieldChangedListener) {
        this.listener = onPaymentFieldChangedListener;
    }

    public boolean isValid() {
        boolean z;
        boolean z2;
        boolean z3 = (this.value == null || this.value.isEmpty()) ? false : true;
        if (this.regexp != null) {
            if (this._status != 1) {
                z = false;
                if (this.field.getPattern() != null) {
                    if (this.formattedValue != null || this.formattedValue.length() != this.field.getPattern().length()) {
                        z2 = false;
                        if (isMandatory()) {
                            if (z3 || !r3 || !r4) {
                                return false;
                            }
                        }
                        return true;
                    }
                }
                z2 = true;
                if (isMandatory()) {
                    if (z3) {
                    }
                    return false;
                }
                return true;
            }
        }
        z = true;
        if (this.field.getPattern() != null) {
            if (this.formattedValue != null) {
            }
            z2 = false;
            if (isMandatory()) {
                if (z3) {
                }
                return false;
            }
            return true;
        }
        z2 = true;
        if (isMandatory()) {
            if (z3) {
            }
            return false;
        }
        return true;
    }

    public String getParameterValue() {
        return this.value;
    }

    public void showKeyboard() {
        this.editTextValue.requestFocusFromTouch();
        KeyboardHelper.show(this.editTextValue);
    }

    public void setPickContactListener(OnPickContactListener onPickContactListener) {
        this.pickContactListener = onPickContactListener;
    }

    public void setField(final ru.rocketbank.core.model.provider.ProviderField r3) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
        /*
        r2 = this;
        r2.field = r3;
        r0 = r3.getLabel();
        r2.setLabel(r0);
        r0 = r3.getPlaceholder();
        r2.setHint(r0);
        r0 = r3.getKeyboard_kind();
        r1 = r3.getField_kind();
        r2.setKeyboardKind(r0, r1);
        r0 = r3.getDetail();
        r2.setPrefix(r0);
        r0 = 0;
        r2.hasFatalRegexpError = r0;	 Catch:{ Exception -> 0x002d }
        r0 = r3.getRegexp();	 Catch:{ Exception -> 0x002d }
        r2.setRegexp(r0);	 Catch:{ Exception -> 0x002d }
        goto L_0x0030;
    L_0x002d:
        r0 = 1;
        r2.hasFatalRegexpError = r0;
    L_0x0030:
        r0 = r3.getPattern();
        if (r0 == 0) goto L_0x003c;
    L_0x0036:
        r0 = new ru.rocketbank.r2d2.payment.RocketPaymentEditText$3;
        r0.<init>(r3);
        goto L_0x0041;
    L_0x003c:
        r0 = new ru.rocketbank.r2d2.payment.RocketPaymentEditText$4;
        r0.<init>();
    L_0x0041:
        r3 = r2.editTextValue;
        r1 = new ru.rocketbank.r2d2.payment.RocketPaymentEditText$5;
        r1.<init>(r0);
        r3.addTextChangedListener(r1);
        r3 = r2.editTextValue;
        r0 = new ru.rocketbank.r2d2.payment.RocketPaymentEditText$RegexpTextWatcher;
        r1 = 0;
        r0.<init>();
        r3.addTextChangedListener(r0);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.payment.RocketPaymentEditText.setField(ru.rocketbank.core.model.provider.ProviderField):void");
    }

    public boolean hasFatalRegexpError() {
        return this.hasFatalRegexpError;
    }

    public boolean isMandatory() {
        return this.field != null && this.field.isMandatory();
    }
}
