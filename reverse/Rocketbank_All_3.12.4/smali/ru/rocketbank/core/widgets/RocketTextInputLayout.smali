.class public Lru/rocketbank/core/widgets/RocketTextInputLayout;
.super Landroid/widget/LinearLayout;
.source "RocketTextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/widgets/RocketTextInputLayout$TextInputAccessibilityDelegate;
    }
.end annotation


# static fields
.field private static final APPCOMPAT_CHECK_ATTRS:[I

.field static final FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private isAnimationRunning:Z

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private final mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

.field private mCounterEnabled:Z

.field private mCounterMaxLength:I

.field private mCounterOverflowTextAppearance:I

.field private mCounterOverflowed:Z

.field private mCounterTextAppearance:I

.field private mCounterView:Landroid/widget/TextView;

.field private mDefaultTextColor:Landroid/content/res/ColorStateList;

.field private mEditText:Landroid/widget/EditText;

.field private mErrorEnabled:Z

.field private mErrorShown:Z

.field private mErrorTextAppearance:I

.field private mErrorTextView:Lru/rocketbank/core/widgets/RocketTextView;

.field private mErrorView:Landroid/view/View;

.field private mFocusedTextColor:Landroid/content/res/ColorStateList;

.field private mHasReconstructedEditTextBackground:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintAnimationEnabled:Z

.field private mIndicatorArea:Landroid/widget/LinearLayout;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mTmpPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 48
    new-array v0, v0, [I

    sget v1, Landroid/support/design/R$attr;->colorPrimary:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->APPCOMPAT_CHECK_ATTRS:[I

    .line 49
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 50
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, v0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 696
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->isAnimationRunning:Z

    .line 1157
    sget-object v1, Lru/rocketbank/core/widgets/RocketTextInputLayout;->APPCOMPAT_CHECK_ATTRS:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1158
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v1, :cond_0

    .line 1160
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    if-eqz v2, :cond_1

    .line 1163
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You need to use a Theme.AppCompat theme (or descendant) with the design library."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v1, "layout_inflater"

    .line 102
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 104
    sget-object v1, Lru/rocketbank/core/R$styleable;->RocketTextInputLayout:[I

    const v2, 0x7f12011d

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 108
    invoke-static {}, Lru/rocketbank/core/manager/TypefaceManager;->getInstance()Lru/rocketbank/core/manager/TypefaceManager;

    move-result-object p3

    .line 110
    sget v1, Lru/rocketbank/core/R$styleable;->RocketTextInputLayout_error_font:I

    invoke-virtual {p3, p1, p2, v1}, Lru/rocketbank/core/manager/TypefaceManager;->getTypeface(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/Typeface;

    .line 111
    sget v1, Lru/rocketbank/core/R$styleable;->RocketTextInputLayout_hint_font:I

    invoke-virtual {p3, p1, p2, v1}, Lru/rocketbank/core/manager/TypefaceManager;->getTypeface(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 113
    new-instance p3, Lru/rocketbank/core/widgets/CollapsingTextHelper;

    invoke-direct {p3, p0, p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;-><init>(Landroid/view/View;Landroid/graphics/Typeface;)V

    iput-object p3, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    .line 114
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    sget-object p3, Lru/rocketbank/core/widgets/RocketTextInputLayout;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p3}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    .line 115
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    new-instance p3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p3}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->setPositionInterpolator(Landroid/view/animation/Interpolator;)V

    .line 116
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->setCollapsedTextGravity$13462e()V

    .line 118
    sget p1, Lru/rocketbank/core/R$styleable;->RocketTextInputLayout_android_hint:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1308
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mHint:Ljava/lang/CharSequence;

    .line 1309
    iget-object p3, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    invoke-virtual {p3, p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x800

    .line 1311
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->sendAccessibilityEvent(I)V

    .line 119
    sget p1, Lru/rocketbank/core/R$styleable;->RocketTextInputLayout_hintAnimationEnabled:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mHintAnimationEnabled:Z

    .line 121
    sget p1, Lru/rocketbank/core/R$styleable;->RocketTextInputLayout_android_textColorHint:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 122
    sget p1, Lru/rocketbank/core/R$styleable;->RocketTextInputLayout_android_textColorHint:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 125
    :cond_2
    invoke-virtual {p0, v3}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->setOrientation(I)V

    .line 126
    invoke-virtual {p0, v0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->setWillNotDraw(Z)V

    .line 127
    invoke-virtual {p0, v3}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->setAddStatesFromChildren(Z)V

    .line 129
    sget p1, Lru/rocketbank/core/R$styleable;->RocketTextInputLayout_hintTextAppearance:I

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eq p1, p3, :cond_3

    .line 131
    sget p1, Lru/rocketbank/core/R$styleable;->RocketTextInputLayout_hintTextAppearance:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 1330
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    invoke-virtual {v1, p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 1331
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->getCollapsedTextColor()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    .line 1333
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_3

    .line 1334
    invoke-direct {p0, v0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->updateLabelVisibility(Z)V

    .line 1337
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->updateEditTextMargin(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    .line 1338
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1339
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestLayout()V

    .line 134
    :cond_3
    sget p1, Lru/rocketbank/core/R$styleable;->RocketTextInputLayout_errorTextAppearance:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorTextAppearance:I

    .line 135
    sget p1, Lru/rocketbank/core/R$styleable;->RocketTextInputLayout_errorEnabled:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 137
    sget v1, Lru/rocketbank/core/R$styleable;->RocketTextInputLayout_counterEnabled:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 138
    sget v2, Lru/rocketbank/core/R$styleable;->RocketTextInputLayout_counterMaxLength:I

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 1519
    iget v4, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterMaxLength:I

    if-eq v4, v2, :cond_6

    if-lez v2, :cond_4

    .line 1521
    iput v2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterMaxLength:I

    goto :goto_0

    .line 1523
    :cond_4
    iput p3, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterMaxLength:I

    .line 1525
    :goto_0
    iget-boolean v2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterEnabled:Z

    if-eqz v2, :cond_6

    .line 1526
    iget-object v2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v2, :cond_5

    move v2, v0

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    :goto_1
    invoke-direct {p0, v2}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->updateCounter(I)V

    .line 139
    :cond_6
    sget v2, Lru/rocketbank/core/R$styleable;->RocketTextInputLayout_counterTextAppearance:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterTextAppearance:I

    .line 140
    sget v2, Lru/rocketbank/core/R$styleable;->RocketTextInputLayout_counterOverflowTextAppearance:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterOverflowTextAppearance:I

    .line 141
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->setErrorEnabled(Z)V

    .line 2491
    iget-boolean p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterEnabled:Z

    if-eq p1, v1, :cond_9

    if-eqz v1, :cond_8

    .line 2493
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterView:Landroid/widget/TextView;

    .line 2494
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2495
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterTextAppearance:I

    invoke-virtual {p1, p2, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2497
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 2499
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-direct {p0, p1, p3}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->addIndicator(Landroid/view/View;I)V

    .line 2500
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez p1, :cond_7

    .line 2501
    invoke-direct {p0, v0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->updateCounter(I)V

    goto :goto_2

    .line 2503
    :cond_7
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->updateCounter(I)V

    goto :goto_2

    .line 2506
    :cond_8
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->removeIndicator(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 2507
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterView:Landroid/widget/TextView;

    .line 2509
    :goto_2
    iput-boolean v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterEnabled:Z

    .line 146
    :cond_9
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_a

    .line 149
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 153
    :cond_a
    new-instance p1, Lru/rocketbank/core/widgets/RocketTextInputLayout$TextInputAccessibilityDelegate;

    invoke-direct {p1, p0, v0}, Lru/rocketbank/core/widgets/RocketTextInputLayout$TextInputAccessibilityDelegate;-><init>(Lru/rocketbank/core/widgets/RocketTextInputLayout;B)V

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method static synthetic access$100$302e4a86(Lru/rocketbank/core/widgets/RocketTextInputLayout;)V
    .locals 1

    const/4 v0, 0x1

    .line 47
    invoke-direct {p0, v0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->updateLabelVisibility(Z)V

    return-void
.end method

.method static synthetic access$200(Lru/rocketbank/core/widgets/RocketTextInputLayout;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterEnabled:Z

    return p0
.end method

.method static synthetic access$300(Lru/rocketbank/core/widgets/RocketTextInputLayout;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->updateCounter(I)V

    return-void
.end method

.method static synthetic access$400(Lru/rocketbank/core/widgets/RocketTextInputLayout;)Lru/rocketbank/core/widgets/CollapsingTextHelper;
    .locals 0

    .line 47
    iget-object p0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    return-object p0
.end method

.method static synthetic access$502(Lru/rocketbank/core/widgets/RocketTextInputLayout;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->isAnimationRunning:Z

    return p1
.end method

.method static synthetic access$600(Lru/rocketbank/core/widgets/RocketTextInputLayout;)Landroid/widget/EditText;
    .locals 0

    .line 47
    iget-object p0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$700(Lru/rocketbank/core/widgets/RocketTextInputLayout;)Landroid/view/View;
    .locals 0

    .line 47
    iget-object p0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lru/rocketbank/core/widgets/RocketTextInputLayout;)Lru/rocketbank/core/widgets/RocketTextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorTextView:Lru/rocketbank/core/widgets/RocketTextView;

    return-object p0
.end method

.method private addIndicator(Landroid/view/View;I)V
    .locals 5

    .line 344
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    .line 346
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 347
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {p0, v0, v2, v3}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->addView(Landroid/view/View;II)V

    .line 352
    new-instance v0, Landroid/support/v4/widget/Space;

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/support/v4/widget/Space;-><init>(Landroid/content/Context;C)V

    .line 353
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 354
    iget-object v3, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 6366
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 6367
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    .line 6366
    invoke-static {v0, v2, v1, v3, v4}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 360
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private animateToExpansionFraction(F)V
    .locals 2

    .line 715
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->getExpansionFraction()F

    move-result v0

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    return-void

    .line 718
    :cond_0
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_1

    const/4 p1, 0x2

    .line 719
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    .line 721
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 723
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lru/rocketbank/core/widgets/RocketTextInputLayout$4;

    invoke-direct {v0, p0}, Lru/rocketbank/core/widgets/RocketTextInputLayout$4;-><init>(Lru/rocketbank/core/widgets/RocketTextInputLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 730
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lru/rocketbank/core/widgets/RocketTextInputLayout$5;

    invoke-direct {v0, p0}, Lru/rocketbank/core/widgets/RocketTextInputLayout$5;-><init>(Lru/rocketbank/core/widgets/RocketTextInputLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 753
    :cond_1
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    sget-object v0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->setPositionInterpolator(Landroid/view/animation/Interpolator;)V

    .line 759
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private ensureBackgroundDrawableStateWorkaround()V
    .locals 3

    .line 560
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 564
    :cond_0
    iget-boolean v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mHasReconstructedEditTextBackground:Z

    if-nez v1, :cond_2

    .line 568
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 569
    instance-of v2, v0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v2, :cond_1

    .line 572
    check-cast v0, Landroid/graphics/drawable/DrawableContainer;

    .line 573
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-static {v0, v2}, Lru/rocketbank/core/widgets/DrawableUtils;->setContainerConstantState(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v0

    iput-boolean v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mHasReconstructedEditTextBackground:Z

    .line 575
    :cond_1
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mHasReconstructedEditTextBackground:Z

    if-nez v0, :cond_2

    .line 580
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 581
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mHasReconstructedEditTextBackground:Z

    :cond_2
    return-void
.end method

.method private removeIndicator(Landroid/view/View;)V
    .locals 1

    .line 371
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 373
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 374
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateCounter(I)V
    .locals 7

    .line 539
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterOverflowed:Z

    .line 540
    iget v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterMaxLength:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 541
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iput-boolean v2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterOverflowed:Z

    goto :goto_2

    .line 544
    :cond_0
    iget v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterMaxLength:I

    const/4 v3, 0x1

    if-le p1, v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterOverflowed:Z

    .line 545
    iget-boolean v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterOverflowed:Z

    if-eq v0, v1, :cond_3

    .line 546
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v5, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterOverflowed:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterOverflowTextAppearance:I

    goto :goto_1

    :cond_2
    iget v5, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterTextAppearance:I

    :goto_1
    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 549
    :cond_3
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/design/R$string;->character_counter_pattern:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 550
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    iget p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterMaxLength:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    .line 549
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    :goto_2
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterOverflowed:Z

    if-eq v0, p1, :cond_4

    .line 553
    invoke-direct {p0, v2}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->updateLabelVisibility(Z)V

    .line 554
    invoke-direct {p0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->updateEditTextBackground()V

    :cond_4
    return-void
.end method

.method private updateEditTextBackground()V
    .locals 3

    .line 588
    invoke-direct {p0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->ensureBackgroundDrawableStateWorkaround()V

    .line 589
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 593
    :cond_0
    iget-boolean v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorShown:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 595
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorTextView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 597
    invoke-virtual {v1}, Lru/rocketbank/core/widgets/RocketTextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 596
    invoke-static {v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 595
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 598
    :cond_1
    iget-boolean v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterOverflowed:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 600
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterView:Landroid/widget/TextView;

    .line 602
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 601
    invoke-static {v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 600
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 606
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 607
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->refreshDrawableState()V

    return-void
.end method

.method private updateEditTextMargin(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 254
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object p1, v0

    .line 256
    :goto_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 257
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    .line 259
    :cond_1
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    invoke-virtual {v1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->getCollapsedTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 260
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    invoke-virtual {v1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->getCollapsedTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 261
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    return-object p1
.end method

.method private updateLabelVisibility(Z)V
    .locals 8

    .line 267
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 268
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->getDrawableState()[I

    move-result-object v3

    .line 3811
    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    const v7, 0x101009c

    if-ne v6, v7, :cond_1

    move v1, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4620
    :cond_2
    :goto_2
    iget-boolean v3, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorEnabled:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorView:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 4621
    iget-object v3, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorTextView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v3}, Lru/rocketbank/core/widgets/RocketTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 269
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v2, v3

    .line 271
    iget-object v3, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_4

    .line 272
    iget-object v3, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    iget-object v4, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->setExpandedTextColor(I)V

    .line 275
    :cond_4
    iget-boolean v3, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterOverflowed:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 276
    iget-object v3, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    iget-object v4, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->setCollapsedTextColor(I)V

    goto :goto_4

    :cond_5
    if-eqz v2, :cond_6

    .line 277
    iget-object v3, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorView:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 278
    iget-object v3, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    iget-object v4, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorTextView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v4}, Lru/rocketbank/core/widgets/RocketTextView;->getCurrentTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->setCollapsedTextColor(I)V

    goto :goto_4

    :cond_6
    if-eqz v1, :cond_7

    .line 279
    iget-object v3, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_7

    .line 280
    iget-object v3, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    iget-object v4, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->setCollapsedTextColor(I)V

    goto :goto_4

    .line 281
    :cond_7
    iget-object v3, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_8

    .line 282
    iget-object v3, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    iget-object v4, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->setCollapsedTextColor(I)V

    :cond_8
    :goto_4
    if-nez v0, :cond_c

    if-nez v1, :cond_c

    if-eqz v2, :cond_9

    goto :goto_5

    .line 4702
    :cond_9
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    .line 5698
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->isAnimationRunning:Z

    if-eqz v0, :cond_a

    .line 4703
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_a
    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 4706
    iget-boolean p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mHintAnimationEnabled:Z

    if-eqz p1, :cond_b

    .line 4707
    invoke-direct {p0, v0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->animateToExpansionFraction(F)V

    return-void

    .line 4709
    :cond_b
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->setExpansionFraction(F)V

    return-void

    .line 4684
    :cond_c
    :goto_5
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_d

    .line 4698
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->isAnimationRunning:Z

    if-eqz v0, :cond_d

    .line 4685
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_d
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_e

    .line 4688
    iget-boolean p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mHintAnimationEnabled:Z

    if-eqz p1, :cond_e

    .line 4689
    invoke-direct {p0, v0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->animateToExpansionFraction(F)V

    return-void

    .line 4691
    :cond_e
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->setExpansionFraction(F)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 170
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_5

    .line 171
    move-object p2, p1

    check-cast p2, Landroid/widget/EditText;

    .line 3199
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 3200
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "We already have an EditText, can only have one"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3203
    :cond_0
    iput-object p2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 3206
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 3207
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    invoke-virtual {p2, v0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->setExpandedTextSize(F)V

    .line 3208
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    invoke-virtual {p2, v0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 3211
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    new-instance v0, Lru/rocketbank/core/widgets/RocketTextInputLayout$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/widgets/RocketTextInputLayout$1;-><init>(Lru/rocketbank/core/widgets/RocketTextInputLayout;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3228
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_1

    .line 3229
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 3233
    :cond_1
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3234
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p2

    .line 3308
    iput-object p2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mHint:Ljava/lang/CharSequence;

    .line 3309
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    invoke-virtual {v0, p2}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x800

    .line 3311
    invoke-virtual {p0, p2}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->sendAccessibilityEvent(I)V

    .line 3236
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3239
    :cond_2
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    .line 3240
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-direct {p0, p2}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->updateCounter(I)V

    .line 3243
    :cond_3
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 3366
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 3367
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v3

    .line 3366
    invoke-static {p2, v1, v0, v2, v3}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 3248
    :cond_4
    invoke-direct {p0, v0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->updateLabelVisibility(Z)V

    .line 172
    invoke-direct {p0, p3}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->updateEditTextMargin(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 175
    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 653
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 654
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 659
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 661
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 662
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getLeft()I

    move-result p1

    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    .line 663
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getRight()I

    move-result p2

    iget-object p4, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result p4

    sub-int/2addr p2, p4

    .line 665
    iget-object p4, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 666
    invoke-virtual {v0}, Landroid/widget/EditText;->getTop()I

    move-result v0

    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 667
    invoke-virtual {v1}, Landroid/widget/EditText;->getBottom()I

    move-result v1

    iget-object v2, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 665
    invoke-virtual {p4, p1, v0, p2, v1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 671
    iget-object p4, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->getPaddingTop()I

    move-result v0

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p4, p1, v0, p2, p5}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 672
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public refreshDrawableState()V
    .locals 1

    .line 678
    invoke-super {p0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    .line 680
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    invoke-direct {p0, v0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->updateLabelVisibility(Z)V

    return-void
.end method

.method public final setError(Ljava/lang/CharSequence;)V
    .locals 5

    .line 434
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 435
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 441
    :cond_0
    invoke-virtual {p0, v1}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->setErrorEnabled(Z)V

    .line 444
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v2, 0xc8

    const/4 v4, 0x0

    if-nez v0, :cond_2

    .line 445
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorView:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 446
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorTextView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorView:Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 448
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 449
    invoke-virtual {p1, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    sget-object v0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 450
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance v0, Lru/rocketbank/core/widgets/RocketTextInputLayout$2;

    invoke-direct {v0, p0}, Lru/rocketbank/core/widgets/RocketTextInputLayout$2;-><init>(Lru/rocketbank/core/widgets/RocketTextInputLayout;)V

    .line 451
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 457
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 460
    iput-boolean v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorShown:Z

    .line 461
    invoke-direct {p0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->updateEditTextBackground()V

    .line 462
    invoke-direct {p0, v1}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->updateLabelVisibility(Z)V

    return-void

    .line 464
    :cond_2
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 465
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorView:Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 466
    invoke-virtual {p1, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 467
    invoke-virtual {p1, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    sget-object v0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 468
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance v0, Lru/rocketbank/core/widgets/RocketTextInputLayout$3;

    invoke-direct {v0, p0}, Lru/rocketbank/core/widgets/RocketTextInputLayout$3;-><init>(Lru/rocketbank/core/widgets/RocketTextInputLayout;)V

    .line 469
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 476
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    const/4 p1, 0x0

    .line 479
    iput-boolean p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorShown:Z

    .line 480
    invoke-direct {p0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->updateEditTextBackground()V

    :cond_3
    return-void
.end method

.method public final setErrorEnabled(Z)V
    .locals 4

    .line 387
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorEnabled:Z

    if-eq v0, p1, :cond_2

    .line 388
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 393
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c01b9

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorView:Landroid/view/View;

    .line 395
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorView:Landroid/view/View;

    const v2, 0x7f090167

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorTextView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 396
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorTextView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorTextAppearance:I

    invoke-virtual {v1, v2, v3}, Lru/rocketbank/core/widgets/RocketTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 397
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 399
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->addIndicator(Landroid/view/View;I)V

    goto :goto_0

    .line 401
    :cond_1
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorShown:Z

    .line 402
    invoke-direct {p0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->updateEditTextBackground()V

    .line 403
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorView:Landroid/view/View;

    invoke-direct {p0, v0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->removeIndicator(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 404
    iput-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorView:Landroid/view/View;

    .line 407
    :goto_0
    iput-boolean p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mErrorEnabled:Z

    :cond_2
    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 308
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mHint:Ljava/lang/CharSequence;

    .line 309
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout;->mCollapsingTextHelper:Lru/rocketbank/core/widgets/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x800

    .line 311
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->sendAccessibilityEvent(I)V

    return-void
.end method
