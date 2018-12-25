package ru.rocketbank.core.widgets;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.support.v4.content.ContextCompat;
import android.support.v7.graphics.Palette;
import android.support.v7.graphics.Palette.Swatch;
import android.support.v7.widget.CardView;
import android.text.Editable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.RequestListener;
import de.greenrobot.event.EventBus;
import java.util.Arrays;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import me.grantland.widget.AutofitHelper;
import ru.rocketbank.core.BaseRocketApplication;
import ru.rocketbank.core.C1328R;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.core.nfc.CardDataRaw;
import ru.rocketbank.core.widgets.listener.CardNumberListener;
import ru.rocketbank.core.widgets.listener.CardYearMonthFormattingTextWatcher;
import ru.rocketbank.core.widgets.listener.CvvTextWatcher;
import ru.rocketbank.r2d2.C0859R;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;

/* compiled from: CreditCardView.kt */
public final class CreditCardView extends CardView implements CardNumberListener {
    public static final Companion Companion = new Companion();
    private static final int MODE_REFILL = 1;
    private static final int MODE_TRANSFER = 2;
    private static final String TAG = "CCardView";
    private ImageView background;
    private Subscription binRequestSubscription;
    private RocketTextView cardHolder;
    private CardNumberListener cardNumberListener;
    private RocketEditText cvvEdit;
    private RocketTextView cvvStatic;
    private boolean cvvVisible = true;
    private RocketEditText editTextCardNumber;
    private RocketTextView errorMessage;
    private boolean expirationVisible = true;
    private boolean ignorePanImage;
    private boolean isCardWorks = true;
    private boolean isRefillMode;
    private boolean isTransferMode;
    private ImageView logo;
    private String logoUrl;
    private boolean needCheckBin = true;
    public RocketTextView newCard;
    private boolean panEditable = true;
    private boolean showName;
    private boolean showNewCard;
    private RocketEditText tillDate;
    private RocketTextView tillStatic;
    private boolean validCardNumber;
    private boolean validCvv;
    private boolean validThru;

    /* compiled from: CreditCardView.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public static final /* synthetic */ RocketEditText access$getEditTextCardNumber$p(CreditCardView creditCardView) {
        creditCardView = creditCardView.editTextCardNumber;
        if (creditCardView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editTextCardNumber");
        }
        return creditCardView;
    }

    public static final /* synthetic */ RocketTextView access$getErrorMessage$p(CreditCardView creditCardView) {
        creditCardView = creditCardView.errorMessage;
        if (creditCardView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("errorMessage");
        }
        return creditCardView;
    }

    public static final /* synthetic */ ImageView access$getLogo$p(CreditCardView creditCardView) {
        creditCardView = creditCardView.logo;
        if (creditCardView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("logo");
        }
        return creditCardView;
    }

    public final void setNeedCheckBin$1385ff() {
        this.needCheckBin = false;
    }

    public final void setCardNumberListener(CardNumberListener cardNumberListener) {
        this.cardNumberListener = cardNumberListener;
    }

    public CreditCardView(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        super(context);
        init$23ad5828(context, null);
    }

    public CreditCardView(Context context, AttributeSet attributeSet) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet);
        init$23ad5828(context, attributeSet);
    }

    public CreditCardView(Context context, AttributeSet attributeSet, int i) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i);
        init$23ad5828(context, attributeSet);
    }

    private void init$23ad5828(Context context, AttributeSet attributeSet) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        attributeSet = context.getTheme().obtainStyledAttributes(attributeSet, C1328R.styleable.CreditCardView, 0, 0);
        Intrinsics.checkExpressionValueIsNotNull(attributeSet, "context.theme\n          …                    0, 0)");
        int i = 2;
        try {
            this.cvvVisible = attributeSet.getBoolean(C1328R.styleable.CreditCardView_cvv_is_visible, true);
            this.expirationVisible = attributeSet.getBoolean(C1328R.styleable.CreditCardView_expiration_is_visible, true);
            this.showNewCard = attributeSet.getBoolean(C1328R.styleable.CreditCardView_show_new_card, false);
            this.panEditable = attributeSet.getBoolean(C1328R.styleable.CreditCardView_pan_editable, true);
            this.showName = attributeSet.getBoolean(C1328R.styleable.CreditCardView_show_name, false);
            int i2 = attributeSet.getInt(C1328R.styleable.CreditCardView_mode, 0);
            if (i2 == 0) {
                this.isRefillMode = false;
                this.isTransferMode = false;
            } else if (i2 == 1) {
                this.isRefillMode = true;
                this.isTransferMode = false;
            } else if (i2 == 2) {
                this.isRefillMode = false;
                this.isTransferMode = true;
            }
            if (this.showName) {
                this.expirationVisible = false;
                this.showNewCard = false;
            }
        } catch (Exception e) {
            Log.e(TAG, "Read args failed", e);
        } catch (Throwable th) {
            attributeSet.recycle();
        }
        attributeSet.recycle();
        attributeSet = context.getSystemService("layout_inflater");
        if (attributeSet == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.LayoutInflater");
        }
        attributeSet = ((LayoutInflater) attributeSet).inflate(C0859R.layout.layout_credit_card, this, true);
        View findViewById = attributeSet.findViewById(C0859R.id.cardHolder);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.cardHolder = (RocketTextView) findViewById;
        findViewById = attributeSet.findViewById(C0859R.id.editTextCardNumber);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketEditText");
        }
        this.editTextCardNumber = (RocketEditText) findViewById;
        RocketEditText rocketEditText = this.editTextCardNumber;
        if (rocketEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editTextCardNumber");
        }
        AutofitHelper.create(rocketEditText);
        if (this.panEditable) {
            rocketEditText = this.editTextCardNumber;
            if (rocketEditText == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editTextCardNumber");
            }
            RocketEditText rocketEditText2 = this.editTextCardNumber;
            if (rocketEditText2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editTextCardNumber");
            }
            rocketEditText.addTextChangedListener(new CardNumberFormattingTextWatcher(rocketEditText2, this));
            context = context.getSystemService("input_method");
            if (context == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
            }
            ((InputMethodManager) context).hideSoftInputFromWindow(getWindowToken(), 0);
            context = this.editTextCardNumber;
            if (context == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editTextCardNumber");
            }
            context.post(new CreditCardView$init$1(this));
        }
        context = attributeSet.findViewById(C0859R.id.tillDate);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketEditText");
        }
        this.tillDate = (RocketEditText) context;
        context = this.tillDate;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tillDate");
        }
        RocketEditText rocketEditText3 = this.tillDate;
        if (rocketEditText3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tillDate");
        }
        CardNumberListener cardNumberListener = this;
        context.addTextChangedListener(new CardYearMonthFormattingTextWatcher(rocketEditText3, cardNumberListener));
        context = attributeSet.findViewById(C0859R.id.cvvEdit);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketEditText");
        }
        this.cvvEdit = (RocketEditText) context;
        context = this.cvvEdit;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cvvEdit");
        }
        rocketEditText3 = this.cvvEdit;
        if (rocketEditText3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cvvEdit");
        }
        context.addTextChangedListener(new CvvTextWatcher(rocketEditText3, cardNumberListener));
        context = attributeSet.findViewById(C0859R.id.background);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
        }
        this.background = (ImageView) context;
        context = attributeSet.findViewById(C0859R.id.tillStatic);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.tillStatic = (RocketTextView) context;
        context = attributeSet.findViewById(C0859R.id.cvvStatic);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.cvvStatic = (RocketTextView) context;
        context = attributeSet.findViewById(C0859R.id.logo);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
        }
        this.logo = (ImageView) context;
        context = attributeSet.findViewById(C0859R.id.newCard);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.newCard = (RocketTextView) context;
        context = attributeSet.findViewById(C0859R.id.errorMessage);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.errorMessage = (RocketTextView) context;
        context = this.editTextCardNumber;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editTextCardNumber");
        }
        context.setEnabled(this.panEditable);
        context = this.editTextCardNumber;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editTextCardNumber");
        }
        if (this.panEditable == null) {
            i = 1;
        }
        context.setInputType(i);
        context = this.cardHolder;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardHolder");
        }
        i = 8;
        context.setVisibility(this.showName != null ? null : 8);
        context = this.tillDate;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tillDate");
        }
        context.setVisibility(this.expirationVisible != null ? null : 8);
        context = this.tillStatic;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tillStatic");
        }
        context.setVisibility(this.expirationVisible != null ? null : 8);
        context = this.cvvEdit;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cvvEdit");
        }
        context.setVisibility(this.cvvVisible != null ? null : 8);
        context = this.cvvStatic;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cvvStatic");
        }
        context.setVisibility(this.cvvVisible != null ? null : 8);
        context = this.newCard;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("newCard");
        }
        if (this.showNewCard != null) {
            i = 0;
        }
        context.setVisibility(i);
        this.validCvv = this.cvvVisible ^ 1;
        this.validCardNumber = this.panEditable ^ 1;
        this.validThru = this.expirationVisible ^ 1;
        if (isInEditMode() != null && this.showName != null) {
            setCardHolder("CARD HOLDER");
            setBackground(null, "https://s3.amazonaws.com/s3.rocketbank.ru/uploads/card_card/banks/9790/icon/62137445-7417-4b6b-9d87-9db833bde950.");
        }
    }

    public final void setCardHolder(String str) {
        Intrinsics.checkParameterIsNotNull(str, "cardHolderName");
        RocketTextView rocketTextView = this.cardHolder;
        if (rocketTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardHolder");
        }
        str = str.toUpperCase();
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).toUpperCase()");
        rocketTextView.setText(str);
    }

    public final void setCardNumberHint(String str) {
        Intrinsics.checkParameterIsNotNull(str, "hint");
        RocketEditText rocketEditText = this.editTextCardNumber;
        if (rocketEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editTextCardNumber");
        }
        rocketEditText.setHint(str);
    }

    public final void setCardBackground(String str) {
        this.ignorePanImage = true;
        setBackground(null, str);
    }

    public final void cardNumberIsValid(String str) {
        Intrinsics.checkParameterIsNotNull(str, "cardNumber");
        CardNumberListener cardNumberListener = this.cardNumberListener;
        if (cardNumberListener != null) {
            cardNumberListener.cardNumberIsValid(str);
        }
        this.validCardNumber = true;
        validateAll();
    }

    public final void dateIsValid() {
        CardNumberListener cardNumberListener = this.cardNumberListener;
        if (cardNumberListener != null) {
            cardNumberListener.dateIsValid();
        }
        this.validThru = true;
        validateAll();
    }

    public final void cvvIsValid() {
        CardNumberListener cardNumberListener = this.cardNumberListener;
        if (cardNumberListener != null) {
            cardNumberListener.cvvIsValid();
        }
        this.validCvv = true;
        validateAll();
    }

    public final void allCardIsValid(String str, String str2, String str3) {
        Intrinsics.checkParameterIsNotNull(str, "cardNumber");
        Intrinsics.checkParameterIsNotNull(str2, ProviderField.DATE);
        Intrinsics.checkParameterIsNotNull(str3, "cvv");
        CardNumberListener cardNumberListener = this.cardNumberListener;
        if (cardNumberListener != null) {
            cardNumberListener.allCardIsValid(str, str2, str3);
        }
    }

    public final void dateIsInvalid() {
        CardNumberListener cardNumberListener = this.cardNumberListener;
        if (cardNumberListener != null) {
            cardNumberListener.dateIsInvalid();
        }
        this.validThru = this.expirationVisible ^ 1;
        validateAll();
    }

    public final void cvvIsInvalid() {
        CardNumberListener cardNumberListener = this.cardNumberListener;
        if (cardNumberListener != null) {
            cardNumberListener.cvvIsInvalid();
        }
        this.validCvv = this.cvvVisible ^ 1;
        validateAll();
    }

    public final void cardNumberIsInvalid(String str) {
        Intrinsics.checkParameterIsNotNull(str, "cardNumber");
        CardNumberListener cardNumberListener = this.cardNumberListener;
        if (cardNumberListener != null) {
            cardNumberListener.cardNumberIsInvalid(str);
        }
        if (str.length() >= 16) {
            str = getResources().getString(C0859R.string.card_number_invalid);
            RocketEditText rocketEditText = this.editTextCardNumber;
            if (rocketEditText == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editTextCardNumber");
            }
            rocketEditText.setError(str);
        }
        this.validCardNumber = this.panEditable ^ 1;
        validateAll();
    }

    public final void cardChanged() {
        Log.v(TAG, "cardChanged");
        CardNumberListener cardNumberListener = this.cardNumberListener;
        if (cardNumberListener != null) {
            cardNumberListener.cardChanged();
        }
        RocketEditText rocketEditText = this.editTextCardNumber;
        if (rocketEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editTextCardNumber");
        }
        Editable text = rocketEditText.getText();
        Intrinsics.checkExpressionValueIsNotNull(text, "editTextCardNumber.text");
        RocketTextView rocketTextView;
        if ((((CharSequence) text).length() > 0 ? 1 : 0) != 0) {
            rocketTextView = this.newCard;
            if (rocketTextView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("newCard");
            }
            rocketTextView.setVisibility(8);
        } else if (this.showNewCard) {
            rocketTextView = this.newCard;
            if (rocketTextView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("newCard");
            }
            rocketTextView.setVisibility(0);
        } else {
            rocketTextView = this.newCard;
            if (rocketTextView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("newCard");
            }
            rocketTextView.setVisibility(8);
        }
    }

    public final void cardInvalid() {
        CardNumberListener cardNumberListener = this.cardNumberListener;
        if (cardNumberListener != null) {
            cardNumberListener.cardInvalid();
        }
    }

    private void validateAll() {
        CardNumberListener cardNumberListener = this.cardNumberListener;
        if (this.validCvv && this.validCardNumber && this.validThru) {
            if (cardNumberListener != null) {
                RocketEditText rocketEditText = this.editTextCardNumber;
                if (rocketEditText == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editTextCardNumber");
                }
                String extractNumbers = extractNumbers(rocketEditText.getText().toString());
                RocketEditText rocketEditText2 = this.tillDate;
                if (rocketEditText2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tillDate");
                }
                String obj = rocketEditText2.getText().toString();
                RocketEditText rocketEditText3 = this.cvvEdit;
                if (rocketEditText3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("cvvEdit");
                }
                cardNumberListener.allCardIsValid(extractNumbers, obj, rocketEditText3.getText().toString());
            }
        } else if (cardNumberListener != null) {
            cardNumberListener.cardInvalid();
        }
    }

    public final void cancelBin() {
        this.isCardWorks = true;
        RocketTextView rocketTextView = this.errorMessage;
        if (rocketTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("errorMessage");
        }
        rocketTextView.setVisibility(8);
        if (!this.ignorePanImage) {
            this.logoUrl = null;
            ImageView imageView = this.background;
            if (imageView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("background");
            }
            Glide.clear((View) imageView);
            imageView = this.logo;
            if (imageView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("logo");
            }
            Glide.clear((View) imageView);
            changeTextColor(null);
            imageView = this.background;
            if (imageView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("background");
            }
            imageView.setImageDrawable(null);
            imageView = this.logo;
            if (imageView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("logo");
            }
            imageView.setImageDrawable(null);
            if (this.binRequestSubscription != null) {
                Subscription subscription = this.binRequestSubscription;
                if (subscription == null) {
                    Intrinsics.throwNpe();
                }
                if (!subscription.isUnsubscribed()) {
                    subscription = this.binRequestSubscription;
                    if (subscription == null) {
                        Intrinsics.throwNpe();
                    }
                    subscription.unsubscribe();
                }
            }
        }
    }

    public final void binReady(String str) {
        Intrinsics.checkParameterIsNotNull(str, "cardNumber");
        if (!isInEditMode()) {
            if (this.needCheckBin) {
                this.binRequestSubscription = BaseRocketApplication.getRocketComponent().getCardManager().getBin(str).observeOn(AndroidSchedulers.mainThread()).subscribe(new CreditCardView$binReady$1(this));
            }
        }
    }

    private final void setBackground(String str, String str2) {
        if (str2 != null) {
            if ((((CharSequence) str2).length() == 0 ? 1 : null) == null) {
                str = Glide.with(getContext()).load(str2).asBitmap().listener((RequestListener) new CreditCardView$setBackground$1(this)).diskCacheStrategy(DiskCacheStrategy.ALL);
                str2 = this.background;
                if (str2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("background");
                }
                str.into(str2);
                return;
            }
        }
        if (str != null) {
            try {
                setCardBackgroundColor((int) Color.parseColor(str));
            } catch (String str3) {
                AnalyticsManager.logException((Throwable) str3);
            }
        }
    }

    private final void changeTextColor(Bitmap bitmap) {
        if (bitmap != null) {
            Intrinsics.checkExpressionValueIsNotNull(Palette.from(bitmap).generate(new CreditCardView$changeTextColor$1(this)), "Palette.from(bitmap).gen…lette(it) }\n           })");
            return;
        }
        bitmap = ContextCompat.getColor(getContext(), C0859R.color.black_54);
        RocketTextView rocketTextView = this.tillStatic;
        if (rocketTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tillStatic");
        }
        rocketTextView.setTextColor(bitmap);
        rocketTextView = this.cvvStatic;
        if (rocketTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cvvStatic");
        }
        rocketTextView.setTextColor(bitmap);
        rocketTextView = this.cardHolder;
        if (rocketTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardHolder");
        }
        rocketTextView.setTextColor(bitmap);
        setCardBackgroundColor(-1);
    }

    public final void onPalette(Palette palette) {
        Intrinsics.checkParameterIsNotNull(palette, "palette");
        Swatch mutedSwatch = palette.getMutedSwatch();
        palette = palette.getVibrantSwatch();
        int i = -1;
        palette = palette != null ? palette.getTitleTextColor() : -1;
        if (mutedSwatch != null) {
            i = mutedSwatch.getPopulation();
        }
        setCardBackgroundColor(i);
        RocketTextView rocketTextView = this.tillStatic;
        if (rocketTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tillStatic");
        }
        rocketTextView.setTextColor(palette);
        rocketTextView = this.cvvStatic;
        if (rocketTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cvvStatic");
        }
        rocketTextView.setTextColor(palette);
        rocketTextView = this.cardHolder;
        if (rocketTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardHolder");
        }
        rocketTextView.setTextColor(palette);
    }

    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        EventBus.getDefault().register(this);
    }

    public final void onEvent(CardDataRaw cardDataRaw) {
        RocketEditText rocketEditText;
        Intrinsics.checkParameterIsNotNull(cardDataRaw, "cardDataRaw");
        setCardNumber(cardDataRaw.getPan());
        int month = cardDataRaw.getMonth();
        cardDataRaw = cardDataRaw.getYear();
        if (month > 0 && cardDataRaw > null) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            cardDataRaw = String.format("%02d/%02d", Arrays.copyOf(new Object[]{Integer.valueOf(month), Integer.valueOf(cardDataRaw)}, 2));
            Intrinsics.checkExpressionValueIsNotNull(cardDataRaw, "java.lang.String.format(format, *args)");
            rocketEditText = this.tillDate;
            if (rocketEditText == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tillDate");
            }
            rocketEditText.setText((CharSequence) cardDataRaw);
        }
        cardDataRaw = "";
        rocketEditText = this.cvvEdit;
        if (rocketEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cvvEdit");
        }
        rocketEditText.setText((CharSequence) cardDataRaw);
    }

    protected final void onDetachedFromWindow() {
        cancelBin();
        EventBus.getDefault().unregister(this);
        super.onDetachedFromWindow();
    }

    public final void setRawValidThru(String str) {
        Intrinsics.checkParameterIsNotNull(str, "validThru");
        RocketEditText rocketEditText = this.tillDate;
        if (rocketEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tillDate");
        }
        rocketEditText.setText(str);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void setCardNumber(java.lang.String r4) {
        /*
        r3 = this;
        r3.cancelBin();
        r0 = r3.panEditable;
        if (r0 == 0) goto L_0x0017;
    L_0x0007:
        r0 = r3.editTextCardNumber;
        if (r0 != 0) goto L_0x0010;
    L_0x000b:
        r1 = "editTextCardNumber";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1);
    L_0x0010:
        r1 = r4;
        r1 = (java.lang.CharSequence) r1;
        r0.setText(r1);
        goto L_0x004e;
    L_0x0017:
        if (r4 == 0) goto L_0x003e;
    L_0x0019:
        r0 = r4;
        r0 = (java.lang.CharSequence) r0;
        r1 = "\\s";
        r2 = new kotlin.text.Regex;
        r2.<init>(r1);
        r1 = "";
        r0 = r2.replace(r0, r1);
        if (r0 == 0) goto L_0x003e;
    L_0x002b:
        r0 = (java.lang.CharSequence) r0;
        r1 = "(\\w{4})(\\w{4})(\\w{4})(\\w+)";
        r2 = new kotlin.text.Regex;
        r2.<init>(r1);
        r1 = ru.rocketbank.core.widgets.CreditCardView$setCardNumber$formattedCardNumber$1.INSTANCE;
        r1 = (kotlin.jvm.functions.Function1) r1;
        r0 = r2.replace(r0, r1);
        if (r0 != 0) goto L_0x0040;
    L_0x003e:
        r0 = "";
    L_0x0040:
        r1 = r3.editTextCardNumber;
        if (r1 != 0) goto L_0x0049;
    L_0x0044:
        r2 = "editTextCardNumber";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2);
    L_0x0049:
        r0 = (java.lang.CharSequence) r0;
        r1.setText(r0);
    L_0x004e:
        if (r4 == 0) goto L_0x0064;
    L_0x0050:
        r0 = r4.length();
        r1 = 6;
        if (r0 < r1) goto L_0x0064;
    L_0x0057:
        r0 = 0;
        r4 = r4.substring(r0, r1);
        r0 = "(this as java.lang.Strin…ing(startIndex, endIndex)";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r4, r0);
        r3.binReady(r4);
    L_0x0064:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.widgets.CreditCardView.setCardNumber(java.lang.String):void");
    }

    public final void setCvv(String str) {
        RocketEditText rocketEditText = this.cvvEdit;
        if (rocketEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cvvEdit");
        }
        rocketEditText.setText(str);
    }

    public final String getCardNumber() {
        RocketEditText rocketEditText = this.editTextCardNumber;
        if (rocketEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editTextCardNumber");
        }
        return extractNumbers(rocketEditText.getText().toString());
    }

    public final String getValidThru() {
        RocketEditText rocketEditText = this.tillDate;
        if (rocketEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tillDate");
        }
        return rocketEditText.getText().toString();
    }

    public final String getCvv() {
        RocketEditText rocketEditText = this.cvvEdit;
        if (rocketEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cvvEdit");
        }
        return rocketEditText.getText().toString();
    }

    private static String extractNumbers(String str) {
        Intrinsics.checkParameterIsNotNull(str, "val");
        StringBuilder stringBuilder = new StringBuilder();
        int length = str.length() - 1;
        if (length >= 0) {
            int i = 0;
            while (true) {
                char charAt = str.charAt(i);
                if (Character.isDigit(charAt)) {
                    stringBuilder.append(charAt);
                }
                if (i == length) {
                    break;
                }
                i++;
            }
        }
        str = stringBuilder.toString();
        Intrinsics.checkExpressionValueIsNotNull(str, "b.toString()");
        return str;
    }
}
