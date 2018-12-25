package io.card.payment;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.text.method.DateKeyListener;
import android.text.method.DigitsKeyListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import io.card.payment.i18n.LocalizedStrings;
import io.card.payment.i18n.StringKey;
import io.card.payment.ui.ActivityHelper;
import io.card.payment.ui.Appearance;
import io.card.payment.ui.ViewUtil;
import io.fabric.sdk.android.services.common.AbstractSpiCall;

public final class DataEntryActivity extends Activity implements TextWatcher {
    private static final String TAG = "DataEntryActivity";
    private TextView activityTitleTextView;
    private boolean autoAcceptDone;
    private Button cancelBtn;
    private CreditCard capture;
    private ImageView cardView;
    private EditText cardholderNameEdit;
    private Validator cardholderNameValidator;
    private EditText cvvEdit;
    private Validator cvvValidator;
    private int defaultTextColor;
    private Button doneBtn;
    private int editTextIdCounter = 100;
    private EditText expiryEdit;
    private Validator expiryValidator;
    private String labelLeftPadding;
    private EditText numberEdit;
    private Validator numberValidator;
    private EditText postalCodeEdit;
    private Validator postalCodeValidator;
    private boolean useApplicationTheme;
    private int viewIdCounter = 1;

    /* renamed from: io.card.payment.DataEntryActivity$1 */
    class C07361 implements OnClickListener {
        C07361() {
        }

        public final void onClick(View view) {
            DataEntryActivity.this.completed();
        }
    }

    /* renamed from: io.card.payment.DataEntryActivity$2 */
    class C07372 implements OnClickListener {
        C07372() {
        }

        public final void onClick(View view) {
            DataEntryActivity.this.onBackPressed();
        }
    }

    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    protected final void onCreate(Bundle bundle) {
        Context context = this;
        super.onCreate(bundle);
        if (getIntent().getExtras() == null) {
            onBackPressed();
            return;
        }
        View linearLayout;
        View view;
        LayoutParams layoutParams;
        View textView;
        context.useApplicationTheme = getIntent().getBooleanExtra(CardIOActivity.EXTRA_KEEP_APPLICATION_THEME, false);
        ActivityHelper.setActivityTheme(context, context.useApplicationTheme);
        context.defaultTextColor = new TextView(context).getTextColors().getDefaultColor();
        boolean z = true;
        context.labelLeftPadding = VERSION.SDK_INT >= 11 ? "12dip" : "2dip";
        LocalizedStrings.setLanguage(getIntent());
        int typedDimensionValueToPixelsInt = ViewUtil.typedDimensionValueToPixelsInt("4dip", context);
        View relativeLayout = new RelativeLayout(context);
        if (!context.useApplicationTheme) {
            relativeLayout.setBackgroundColor(Appearance.DEFAULT_BACKGROUND_COLOR);
        }
        View scrollView = new ScrollView(context);
        int i = context.viewIdCounter;
        context.viewIdCounter = i + 1;
        scrollView.setId(i);
        LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(10);
        relativeLayout.addView(scrollView, layoutParams2);
        View linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        scrollView.addView(linearLayout2, -1, -1);
        scrollView = new LinearLayout(context);
        scrollView.setOrientation(1);
        LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -1);
        context.capture = (CreditCard) getIntent().getParcelableExtra(CardIOActivity.EXTRA_SCAN_RESULT);
        context.autoAcceptDone = getIntent().getBooleanExtra("debug_autoAcceptResult", false);
        if (context.capture != null) {
            context.numberValidator = new CardNumberValidator(context.capture.cardNumber);
            context.cardView = new ImageView(context);
            LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
            context.cardView.setPadding(0, 0, 0, typedDimensionValueToPixelsInt);
            layoutParams4.weight = 1.0f;
            context.cardView.setImageBitmap(CardIOActivity.markedCardImage);
            scrollView.addView(context.cardView, layoutParams4);
            ViewUtil.setMargins(context.cardView, null, null, null, "8dip");
        } else {
            context.activityTitleTextView = new TextView(context);
            context.activityTitleTextView.setTextSize(24.0f);
            if (!context.useApplicationTheme) {
                context.activityTitleTextView.setTextColor(Appearance.PAY_BLUE_COLOR);
            }
            scrollView.addView(context.activityTitleTextView);
            ViewUtil.setPadding(context.activityTitleTextView, null, null, null, "8dip");
            ViewUtil.setDimensions$17e143a3$5359dc9a(context.activityTitleTextView);
            linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            ViewUtil.setPadding(linearLayout, null, "4dip", null, "4dip");
            View textView2 = new TextView(context);
            ViewUtil.setPadding(textView2, context.labelLeftPadding, null, null, null);
            textView2.setText(LocalizedStrings.getString(StringKey.ENTRY_CARD_NUMBER));
            if (!context.useApplicationTheme) {
                textView2.setTextColor(Appearance.TEXT_COLOR_LABEL);
            }
            linearLayout.addView(textView2, -2, -2);
            context.numberEdit = new EditText(context);
            EditText editText = context.numberEdit;
            int i2 = context.editTextIdCounter;
            context.editTextIdCounter = i2 + 1;
            editText.setId(i2);
            context.numberEdit.setMaxLines(1);
            context.numberEdit.setImeOptions(6);
            context.numberEdit.setTextAppearance(getApplicationContext(), 16842816);
            context.numberEdit.setInputType(3);
            context.numberEdit.setHint("1234 5678 1234 5678");
            if (!context.useApplicationTheme) {
                context.numberEdit.setHintTextColor(-3355444);
            }
            context.numberValidator = new CardNumberValidator();
            context.numberEdit.addTextChangedListener(context.numberValidator);
            context.numberEdit.addTextChangedListener(context);
            context.numberEdit.setFilters(new InputFilter[]{new DigitsKeyListener(), context.numberValidator});
            linearLayout.addView(context.numberEdit, -1, -2);
            scrollView.addView(linearLayout, -1, -1);
        }
        linearLayout = new LinearLayout(context);
        LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
        ViewUtil.setPadding(linearLayout, null, "4dip", null, "4dip");
        linearLayout.setOrientation(0);
        boolean booleanExtra = getIntent().getBooleanExtra(CardIOActivity.EXTRA_REQUIRE_EXPIRY, false);
        boolean booleanExtra2 = getIntent().getBooleanExtra(CardIOActivity.EXTRA_REQUIRE_CVV, false);
        boolean booleanExtra3 = getIntent().getBooleanExtra(CardIOActivity.EXTRA_REQUIRE_POSTAL_CODE, false);
        if (booleanExtra) {
            String str;
            View linearLayout3 = new LinearLayout(context);
            view = relativeLayout;
            layoutParams = layoutParams2;
            LayoutParams layoutParams6 = new LinearLayout.LayoutParams(0, -1, 1.0f);
            linearLayout3.setOrientation(1);
            textView = new TextView(context);
            if (!context.useApplicationTheme) {
                textView.setTextColor(Appearance.TEXT_COLOR_LABEL);
            }
            textView.setText(LocalizedStrings.getString(StringKey.ENTRY_EXPIRES));
            ViewUtil.setPadding(textView, context.labelLeftPadding, null, null, null);
            linearLayout3.addView(textView, -2, -2);
            context.expiryEdit = new EditText(context);
            EditText editText2 = context.expiryEdit;
            i = context.editTextIdCounter;
            context.editTextIdCounter = i + 1;
            editText2.setId(i);
            context.expiryEdit.setMaxLines(1);
            context.expiryEdit.setImeOptions(6);
            context.expiryEdit.setTextAppearance(getApplicationContext(), 16842816);
            context.expiryEdit.setInputType(3);
            context.expiryEdit.setHint(LocalizedStrings.getString(StringKey.EXPIRES_PLACEHOLDER));
            if (!context.useApplicationTheme) {
                context.expiryEdit.setHintTextColor(-3355444);
            }
            if (context.capture != null) {
                context.expiryValidator = new ExpiryValidator(context.capture.expiryMonth, context.capture.expiryYear);
            } else {
                context.expiryValidator = new ExpiryValidator();
            }
            if (context.expiryValidator.hasFullLength()) {
                context.expiryEdit.setText(context.expiryValidator.getValue());
            }
            context.expiryEdit.addTextChangedListener(context.expiryValidator);
            context.expiryEdit.addTextChangedListener(context);
            context.expiryEdit.setFilters(new InputFilter[]{new DateKeyListener(), context.expiryValidator});
            linearLayout3.addView(context.expiryEdit, -1, -2);
            linearLayout.addView(linearLayout3, layoutParams6);
            if (!booleanExtra2) {
                if (!booleanExtra3) {
                    str = null;
                    ViewUtil.setMargins(linearLayout3, null, null, str, null);
                }
            }
            str = "4dip";
            ViewUtil.setMargins(linearLayout3, null, null, str, null);
        } else {
            view = relativeLayout;
            layoutParams = layoutParams2;
            context.expiryValidator = new AlwaysValid();
        }
        if (booleanExtra2) {
            View linearLayout4 = new LinearLayout(context);
            layoutParams6 = new LinearLayout.LayoutParams(0, -1, 1.0f);
            linearLayout4.setOrientation(1);
            textView = new TextView(context);
            if (!context.useApplicationTheme) {
                textView.setTextColor(Appearance.TEXT_COLOR_LABEL);
            }
            ViewUtil.setPadding(textView, context.labelLeftPadding, null, null, null);
            textView.setText(LocalizedStrings.getString(StringKey.ENTRY_CVV));
            linearLayout4.addView(textView, -2, -2);
            context.cvvEdit = new EditText(context);
            EditText editText3 = context.cvvEdit;
            int i3 = context.editTextIdCounter;
            context.editTextIdCounter = i3 + 1;
            editText3.setId(i3);
            context.cvvEdit.setMaxLines(1);
            context.cvvEdit.setImeOptions(6);
            context.cvvEdit.setTextAppearance(getApplicationContext(), 16842816);
            context.cvvEdit.setInputType(3);
            context.cvvEdit.setHint("123");
            if (!context.useApplicationTheme) {
                context.cvvEdit.setHintTextColor(-3355444);
            }
            i = 4;
            if (context.capture != null) {
                i = CardType.fromCardNumber(context.numberValidator.getValue()).cvvLength();
            }
            context.cvvValidator = new FixedLengthValidator(i);
            context.cvvEdit.setFilters(new InputFilter[]{new DigitsKeyListener(), context.cvvValidator});
            context.cvvEdit.addTextChangedListener(context.cvvValidator);
            context.cvvEdit.addTextChangedListener(context);
            linearLayout4.addView(context.cvvEdit, -1, -2);
            linearLayout.addView(linearLayout4, layoutParams6);
            ViewUtil.setMargins(linearLayout4, booleanExtra ? "4dip" : null, null, booleanExtra3 ? "4dip" : null, null);
        } else {
            context.cvvValidator = new AlwaysValid();
        }
        if (booleanExtra3) {
            String str2;
            String str3;
            linearLayout4 = new LinearLayout(context);
            layoutParams6 = new LinearLayout.LayoutParams(0, -1, 1.0f);
            linearLayout4.setOrientation(1);
            textView = new TextView(context);
            if (!context.useApplicationTheme) {
                textView.setTextColor(Appearance.TEXT_COLOR_LABEL);
            }
            ViewUtil.setPadding(textView, context.labelLeftPadding, null, null, null);
            textView.setText(LocalizedStrings.getString(StringKey.ENTRY_POSTAL_CODE));
            linearLayout4.addView(textView, -2, -2);
            boolean booleanExtra4 = getIntent().getBooleanExtra(CardIOActivity.EXTRA_RESTRICT_POSTAL_CODE_TO_NUMERIC_ONLY, false);
            context.postalCodeEdit = new EditText(context);
            EditText editText4 = context.postalCodeEdit;
            i3 = context.editTextIdCounter;
            context.editTextIdCounter = i3 + 1;
            editText4.setId(i3);
            context.postalCodeEdit.setMaxLines(1);
            context.postalCodeEdit.setImeOptions(6);
            context.postalCodeEdit.setTextAppearance(getApplicationContext(), 16842816);
            if (booleanExtra4) {
                context.postalCodeEdit.setInputType(3);
            } else {
                context.postalCodeEdit.setInputType(1);
            }
            if (!context.useApplicationTheme) {
                context.postalCodeEdit.setHintTextColor(-3355444);
            }
            context.postalCodeValidator = new MaxLengthValidator(20);
            context.postalCodeEdit.addTextChangedListener(context.postalCodeValidator);
            context.postalCodeEdit.addTextChangedListener(context);
            linearLayout4.addView(context.postalCodeEdit, -1, -2);
            linearLayout.addView(linearLayout4, layoutParams6);
            if (!booleanExtra) {
                if (!booleanExtra2) {
                    str2 = null;
                    str3 = null;
                    ViewUtil.setMargins(linearLayout4, str3, str2, str2, str2);
                }
            }
            str3 = "4dip";
            str2 = null;
            ViewUtil.setMargins(linearLayout4, str3, str2, str2, str2);
        } else {
            context.postalCodeValidator = new AlwaysValid();
        }
        scrollView.addView(linearLayout, layoutParams5);
        if (getIntent().getBooleanExtra(CardIOActivity.EXTRA_REQUIRE_CARDHOLDER_NAME, false)) {
            linearLayout = new LinearLayout(context);
            ViewUtil.setPadding(linearLayout, null, "4dip", null, null);
            linearLayout.setOrientation(1);
            linearLayout4 = new TextView(context);
            if (!context.useApplicationTheme) {
                linearLayout4.setTextColor(Appearance.TEXT_COLOR_LABEL);
            }
            ViewUtil.setPadding(linearLayout4, context.labelLeftPadding, null, null, null);
            linearLayout4.setText(LocalizedStrings.getString(StringKey.ENTRY_CARDHOLDER_NAME));
            linearLayout.addView(linearLayout4, -2, -2);
            context.cardholderNameEdit = new EditText(context);
            editText2 = context.cardholderNameEdit;
            int i4 = context.editTextIdCounter;
            context.editTextIdCounter = i4 + 1;
            editText2.setId(i4);
            context.cardholderNameEdit.setMaxLines(1);
            context.cardholderNameEdit.setImeOptions(6);
            context.cardholderNameEdit.setTextAppearance(getApplicationContext(), 16842816);
            context.cardholderNameEdit.setInputType(1);
            if (!context.useApplicationTheme) {
                context.cardholderNameEdit.setHintTextColor(-3355444);
            }
            context.cardholderNameValidator = new MaxLengthValidator(175);
            context.cardholderNameEdit.addTextChangedListener(context.cardholderNameValidator);
            context.cardholderNameEdit.addTextChangedListener(context);
            linearLayout.addView(context.cardholderNameEdit, -1, -2);
            scrollView.addView(linearLayout, -1, -2);
        } else {
            context.cardholderNameValidator = new AlwaysValid();
        }
        linearLayout2.addView(scrollView, layoutParams3);
        ViewUtil.setMargins(scrollView, "16dip", "20dip", "16dip", "20dip");
        linearLayout = new LinearLayout(context);
        int i5 = context.viewIdCounter;
        context.viewIdCounter = i5 + 1;
        linearLayout.setId(i5);
        LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams7.addRule(12);
        linearLayout.setPadding(0, typedDimensionValueToPixelsInt, 0, 0);
        linearLayout.setBackgroundColor(0);
        layoutParams.addRule(2, linearLayout.getId());
        context.doneBtn = new Button(context);
        LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-1, -2, 1.0f);
        context.doneBtn.setText(LocalizedStrings.getString(StringKey.DONE));
        context.doneBtn.setOnClickListener(new C07361());
        context.doneBtn.setEnabled(false);
        linearLayout.addView(context.doneBtn, layoutParams8);
        ViewUtil.styleAsButton(context.doneBtn, true, context, context.useApplicationTheme);
        ViewUtil.setPadding(context.doneBtn, "5dip", null, "5dip", null);
        ViewUtil.setMargins(context.doneBtn, "8dip", "8dip", "8dip", "8dip");
        if (!context.useApplicationTheme) {
            context.doneBtn.setTextSize(16.0f);
        }
        context.cancelBtn = new Button(context);
        layoutParams8 = new LinearLayout.LayoutParams(-1, -2, 1.0f);
        context.cancelBtn.setText(LocalizedStrings.getString(StringKey.CANCEL));
        context.cancelBtn.setOnClickListener(new C07372());
        linearLayout.addView(context.cancelBtn, layoutParams8);
        ViewUtil.styleAsButton(context.cancelBtn, false, context, context.useApplicationTheme);
        ViewUtil.setPadding(context.cancelBtn, "5dip", null, "5dip", null);
        ViewUtil.setMargins(context.cancelBtn, "4dip", "8dip", "8dip", "8dip");
        if (!context.useApplicationTheme) {
            context.cancelBtn.setTextSize(16.0f);
        }
        View view2 = view;
        view2.addView(linearLayout, layoutParams7);
        if (VERSION.SDK_INT >= 11) {
            requestWindowFeature(8);
        }
        setContentView(view2);
        Drawable drawable = getIntent().getBooleanExtra(CardIOActivity.EXTRA_USE_PAYPAL_ACTIONBAR_ICON, true) ? getResources().getDrawable(C0738R.drawable.cio_ic_paypal_monogram) : null;
        if (booleanExtra && context.expiryValidator.isValid()) {
            afterTextChanged(context.expiryEdit.getEditableText());
        }
        TextView textView3 = context.activityTitleTextView;
        CharSequence string = LocalizedStrings.getString(StringKey.MANUAL_ENTRY_TITLE);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("card.io - ");
        stringBuilder.append(string);
        setTitle(stringBuilder.toString());
        if (VERSION.SDK_INT >= 11) {
            if (getActionBar() == null) {
                z = false;
            }
            if (z) {
                ActionBar actionBar = getActionBar();
                actionBar.setBackgroundDrawable(Appearance.ACTIONBAR_BACKGROUND);
                actionBar.setTitle(string);
                TextView textView4 = (TextView) findViewById(Resources.getSystem().getIdentifier("action_bar_title", "id", AbstractSpiCall.ANDROID_CLIENT_TYPE));
                if (textView4 != null) {
                    textView4.setTextColor(-1);
                }
                actionBar.setDisplayHomeAsUpEnabled(false);
                if (drawable == null || VERSION.SDK_INT < 14) {
                    actionBar.setDisplayShowHomeEnabled(false);
                } else {
                    actionBar.setIcon(drawable);
                }
                if (textView3 != null) {
                    textView3.setVisibility(8);
                    return;
                }
            }
        }
        if (textView3 != null) {
            textView3.setText(string);
        }
    }

    private void completed() {
        if (this.capture == null) {
            this.capture = new CreditCard();
        }
        if (this.expiryEdit != null) {
            this.capture.expiryMonth = ((ExpiryValidator) this.expiryValidator).month;
            this.capture.expiryYear = ((ExpiryValidator) this.expiryValidator).year;
        }
        Parcelable creditCard = new CreditCard(this.numberValidator.getValue(), this.capture.expiryMonth, this.capture.expiryYear, this.cvvValidator.getValue(), this.postalCodeValidator.getValue(), this.cardholderNameValidator.getValue());
        Intent intent = new Intent();
        intent.putExtra(CardIOActivity.EXTRA_SCAN_RESULT, creditCard);
        if (getIntent().hasExtra(CardIOActivity.EXTRA_CAPTURED_CARD_IMAGE)) {
            intent.putExtra(CardIOActivity.EXTRA_CAPTURED_CARD_IMAGE, getIntent().getByteArrayExtra(CardIOActivity.EXTRA_CAPTURED_CARD_IMAGE));
        }
        setResult(CardIOActivity.RESULT_CARD_INFO, intent);
        finish();
    }

    public final void onBackPressed() {
        setResult(CardIOActivity.RESULT_ENTRY_CANCELED);
        finish();
    }

    protected final void onResume() {
        super.onResume();
        getWindow().setFlags(0, 1024);
        if (VERSION.SDK_INT >= 11) {
            getWindow().addFlags(8192);
        }
        validateAndEnableDoneButtonIfValid();
        if (this.numberEdit != null || this.expiryEdit == null || this.expiryValidator.isValid()) {
            advanceToNextEmptyField();
        } else {
            this.expiryEdit.requestFocus();
        }
        if (this.numberEdit != null || this.expiryEdit != null || this.cvvEdit != null || this.postalCodeEdit != null || this.cardholderNameEdit != null) {
            getWindow().setSoftInputMode(5);
        }
    }

    private EditText advanceToNextEmptyField() {
        int i = 100;
        while (true) {
            int i2 = i + 1;
            EditText editText = (EditText) findViewById(i);
            if (editText == null) {
                return null;
            }
            if (editText.getText().length() == 0 && editText.requestFocus()) {
                return editText;
            }
            i = i2;
        }
    }

    private void validateAndEnableDoneButtonIfValid() {
        Button button = this.doneBtn;
        boolean z = this.numberValidator.isValid() && this.expiryValidator.isValid() && this.cvvValidator.isValid() && this.postalCodeValidator.isValid() && this.cardholderNameValidator.isValid();
        button.setEnabled(z);
        if (this.autoAcceptDone && this.numberValidator.isValid() && this.expiryValidator.isValid() && this.cvvValidator.isValid() && this.postalCodeValidator.isValid() && this.cardholderNameValidator.isValid()) {
            completed();
        }
    }

    public final void afterTextChanged(Editable editable) {
        if (this.numberEdit != null && editable == this.numberEdit.getText()) {
            if (this.numberValidator.hasFullLength() == null) {
                editable = this.numberEdit;
                if (this.useApplicationTheme) {
                    editable.setTextColor(this.defaultTextColor);
                } else {
                    editable.setTextColor(-12303292);
                }
            } else if (this.numberValidator.isValid() == null) {
                this.numberEdit.setTextColor(Appearance.TEXT_COLOR_ERROR);
            } else {
                editable = this.numberEdit;
                if (this.useApplicationTheme) {
                    editable.setTextColor(this.defaultTextColor);
                } else {
                    editable.setTextColor(-12303292);
                }
                advanceToNextEmptyField();
            }
            if (this.cvvEdit != null) {
                FixedLengthValidator fixedLengthValidator = (FixedLengthValidator) this.cvvValidator;
                editable = CardType.fromCardNumber(this.numberValidator.getValue().toString()).cvvLength();
                fixedLengthValidator.requiredLength = editable;
                this.cvvEdit.setHint(editable == 4 ? "1234" : "123");
            }
        } else if (this.expiryEdit == null || editable != this.expiryEdit.getText()) {
            if (this.cvvEdit == null || editable != this.cvvEdit.getText()) {
                if (this.postalCodeEdit == null || editable != this.postalCodeEdit.getText()) {
                    if (this.cardholderNameEdit != null && editable == this.cardholderNameEdit.getText()) {
                        if (this.cardholderNameValidator.hasFullLength() == null) {
                            editable = this.cardholderNameEdit;
                            if (this.useApplicationTheme) {
                                editable.setTextColor(this.defaultTextColor);
                            } else {
                                editable.setTextColor(-12303292);
                            }
                        } else if (this.cardholderNameValidator.isValid() == null) {
                            this.cardholderNameEdit.setTextColor(Appearance.TEXT_COLOR_ERROR);
                        } else {
                            editable = this.cardholderNameEdit;
                            if (this.useApplicationTheme) {
                                editable.setTextColor(this.defaultTextColor);
                            } else {
                                editable.setTextColor(-12303292);
                            }
                        }
                    }
                } else if (this.postalCodeValidator.hasFullLength() == null) {
                    editable = this.postalCodeEdit;
                    if (this.useApplicationTheme) {
                        editable.setTextColor(this.defaultTextColor);
                    } else {
                        editable.setTextColor(-12303292);
                    }
                } else if (this.postalCodeValidator.isValid() == null) {
                    this.postalCodeEdit.setTextColor(Appearance.TEXT_COLOR_ERROR);
                } else {
                    editable = this.postalCodeEdit;
                    if (this.useApplicationTheme) {
                        editable.setTextColor(this.defaultTextColor);
                    } else {
                        editable.setTextColor(-12303292);
                    }
                }
            } else if (this.cvvValidator.hasFullLength() == null) {
                editable = this.cvvEdit;
                if (this.useApplicationTheme) {
                    editable.setTextColor(this.defaultTextColor);
                } else {
                    editable.setTextColor(-12303292);
                }
            } else if (this.cvvValidator.isValid() == null) {
                this.cvvEdit.setTextColor(Appearance.TEXT_COLOR_ERROR);
            } else {
                editable = this.cvvEdit;
                if (this.useApplicationTheme) {
                    editable.setTextColor(this.defaultTextColor);
                } else {
                    editable.setTextColor(-12303292);
                }
                advanceToNextEmptyField();
            }
        } else if (this.expiryValidator.hasFullLength() == null) {
            editable = this.expiryEdit;
            if (this.useApplicationTheme) {
                editable.setTextColor(this.defaultTextColor);
            } else {
                editable.setTextColor(-12303292);
            }
        } else if (this.expiryValidator.isValid() == null) {
            this.expiryEdit.setTextColor(Appearance.TEXT_COLOR_ERROR);
        } else {
            editable = this.expiryEdit;
            if (this.useApplicationTheme) {
                editable.setTextColor(this.defaultTextColor);
            } else {
                editable.setTextColor(-12303292);
            }
            advanceToNextEmptyField();
        }
        validateAndEnableDoneButtonIfValid();
    }
}
