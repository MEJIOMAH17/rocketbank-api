.class public Lme/grantland/widget/AutofitHelper;
.super Ljava/lang/Object;
.source "AutofitHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/grantland/widget/AutofitHelper$OnTextSizeChangeListener;,
        Lme/grantland/widget/AutofitHelper$AutofitOnLayoutChangeListener;,
        Lme/grantland/widget/AutofitHelper$AutofitTextWatcher;
    }
.end annotation


# instance fields
.field private mEnabled:Z

.field private mIsAutofitting:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lme/grantland/widget/AutofitHelper$OnTextSizeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxLines:I

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPaint:Landroid/text/TextPaint;

.field private mPrecision:F

.field private mTextSize:F

.field private mTextView:Landroid/widget/TextView;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 4

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v0, Lme/grantland/widget/AutofitHelper$AutofitTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/grantland/widget/AutofitHelper$AutofitTextWatcher;-><init>(Lme/grantland/widget/AutofitHelper;B)V

    iput-object v0, p0, Lme/grantland/widget/AutofitHelper;->mTextWatcher:Landroid/text/TextWatcher;

    .line 242
    new-instance v0, Lme/grantland/widget/AutofitHelper$AutofitOnLayoutChangeListener;

    invoke-direct {v0, p0, v1}, Lme/grantland/widget/AutofitHelper$AutofitOnLayoutChangeListener;-><init>(Lme/grantland/widget/AutofitHelper;B)V

    iput-object v0, p0, Lme/grantland/widget/AutofitHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 246
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 249
    iput-object p1, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    .line 250
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lme/grantland/widget/AutofitHelper;->mPaint:Landroid/text/TextPaint;

    .line 251
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    .line 3489
    iget v2, p0, Lme/grantland/widget/AutofitHelper;->mTextSize:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    .line 3490
    iput v1, p0, Lme/grantland/widget/AutofitHelper;->mTextSize:F

    :cond_0
    const/4 v1, -0x1

    .line 4210
    invoke-virtual {p1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4211
    instance-of v2, v2, Landroid/text/method/SingleLineTransformationMethod;

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 4214
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 4216
    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    .line 253
    :cond_2
    :goto_0
    iput v1, p0, Lme/grantland/widget/AutofitHelper;->mMaxLines:I

    const/high16 p1, 0x41000000    # 8.0f

    mul-float/2addr v0, p1

    .line 254
    iput v0, p0, Lme/grantland/widget/AutofitHelper;->mMinTextSize:F

    .line 255
    iget p1, p0, Lme/grantland/widget/AutofitHelper;->mTextSize:F

    iput p1, p0, Lme/grantland/widget/AutofitHelper;->mMaxTextSize:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 256
    iput p1, p0, Lme/grantland/widget/AutofitHelper;->mPrecision:F

    return-void
.end method

.method static synthetic access$200(Lme/grantland/widget/AutofitHelper;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lme/grantland/widget/AutofitHelper;->autofit()V

    return-void
.end method

.method private autofit()V
    .locals 8

    .line 495
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    const/4 v1, 0x1

    .line 498
    iput-boolean v1, p0, Lme/grantland/widget/AutofitHelper;->mIsAutofitting:Z

    .line 499
    iget-object v2, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lme/grantland/widget/AutofitHelper;->mPaint:Landroid/text/TextPaint;

    iget v4, p0, Lme/grantland/widget/AutofitHelper;->mMinTextSize:F

    iget v5, p0, Lme/grantland/widget/AutofitHelper;->mMaxTextSize:F

    iget v6, p0, Lme/grantland/widget/AutofitHelper;->mMaxLines:I

    iget v7, p0, Lme/grantland/widget/AutofitHelper;->mPrecision:F

    invoke-static/range {v2 .. v7}, Lme/grantland/widget/AutofitHelper;->autofit(Landroid/widget/TextView;Landroid/text/TextPaint;FFIF)V

    const/4 v1, 0x0

    .line 500
    iput-boolean v1, p0, Lme/grantland/widget/AutofitHelper;->mIsAutofitting:Z

    .line 502
    iget-object v1, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    .line 504
    invoke-direct {p0}, Lme/grantland/widget/AutofitHelper;->sendTextSizeChange$2548a35()V

    :cond_0
    return-void
.end method

.method private static autofit(Landroid/widget/TextView;Landroid/text/TextPaint;FFIF)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    if-lez v11, :cond_8

    const v1, 0x7fffffff

    if-ne v11, v1, :cond_0

    goto/16 :goto_0

    .line 98
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    sub-int v12, v1, v2

    if-gtz v12, :cond_1

    return-void

    .line 103
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 106
    invoke-interface {v2, v1, v0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_2
    move-object v13, v1

    .line 109
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 110
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_3

    .line 118
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 120
    :cond_3
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 123
    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v1, 0x1

    const/4 v15, 0x0

    if-ne v11, v1, :cond_4

    .line 125
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v9, v13, v15, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    int-to-float v2, v12

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_5

    :cond_4
    int-to-float v1, v12

    .line 3200
    invoke-static {v15, v10, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v9, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3202
    new-instance v8, Landroid/text/StaticLayout;

    float-to-int v4, v1

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/16 v16, 0x1

    move-object v1, v8

    move-object v2, v13

    move-object v3, v9

    move-object v15, v8

    move/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 3204
    invoke-virtual {v15}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-le v1, v11, :cond_6

    :cond_5
    int-to-float v3, v12

    const/4 v5, 0x0

    move-object v1, v13

    move-object v2, v9

    move v4, v11

    move v6, v10

    move/from16 v7, p5

    move-object v8, v14

    .line 127
    invoke-static/range {v1 .. v8}, Lme/grantland/widget/AutofitHelper;->getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFFLandroid/util/DisplayMetrics;)F

    move-result v1

    move v10, v1

    :cond_6
    cmpg-float v2, v10, p2

    if-gez v2, :cond_7

    move/from16 v10, p2

    :cond_7
    const/4 v1, 0x0

    .line 135
    invoke-virtual {v0, v1, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    :cond_8
    :goto_0
    return-void
.end method

.method public static create(Landroid/widget/TextView;)Lme/grantland/widget/AutofitHelper;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-static {p0, v0, v1}, Lme/grantland/widget/AutofitHelper;->create(Landroid/widget/TextView;Landroid/util/AttributeSet;I)Lme/grantland/widget/AutofitHelper;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/widget/TextView;Landroid/util/AttributeSet;I)Lme/grantland/widget/AutofitHelper;
    .locals 6

    .line 62
    new-instance v0, Lme/grantland/widget/AutofitHelper;

    invoke-direct {v0, p0}, Lme/grantland/widget/AutofitHelper;-><init>(Landroid/widget/TextView;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 1309
    iget v2, v0, Lme/grantland/widget/AutofitHelper;->mMinTextSize:F

    float-to-int v2, v2

    .line 2287
    iget v3, v0, Lme/grantland/widget/AutofitHelper;->mPrecision:F

    .line 69
    sget-object v4, Lme/grantland/widget/R$styleable;->AutofitTextView:[I

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 74
    sget p1, Lme/grantland/widget/R$styleable;->AutofitTextView_sizeToFit:I

    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 75
    sget p1, Lme/grantland/widget/R$styleable;->AutofitTextView_minTextSize:I

    invoke-virtual {p0, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 77
    sget p2, Lme/grantland/widget/R$styleable;->AutofitTextView_precision:I

    invoke-virtual {p0, p2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 78
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    int-to-float p0, p1

    .line 80
    invoke-direct {v0, p0}, Lme/grantland/widget/AutofitHelper;->setMinTextSize$51e74ff(F)Lme/grantland/widget/AutofitHelper;

    move-result-object p0

    .line 2297
    iget p1, p0, Lme/grantland/widget/AutofitHelper;->mPrecision:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    .line 2298
    iput p2, p0, Lme/grantland/widget/AutofitHelper;->mPrecision:F

    .line 2300
    invoke-direct {p0}, Lme/grantland/widget/AutofitHelper;->autofit()V

    .line 83
    :cond_0
    invoke-virtual {v0, v1}, Lme/grantland/widget/AutofitHelper;->setEnabled(Z)Lme/grantland/widget/AutofitHelper;

    return-object v0
.end method

.method private static getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFFLandroid/util/DisplayMetrics;)F
    .locals 19

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    :goto_0
    add-float v0, v11, v12

    const/high16 v1, 0x40000000    # 2.0f

    div-float v13, v0, v1

    const/4 v0, 0x0

    const/4 v14, 0x0

    move-object/from16 v7, p7

    .line 148
    invoke-static {v14, v13, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v8, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v6, 0x1

    if-eq v10, v6, :cond_0

    .line 152
    new-instance v5, Landroid/text/StaticLayout;

    float-to-int v3, v9

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v14, v5

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 154
    invoke-virtual {v14}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    goto :goto_1

    :cond_0
    move-object v14, v0

    const/4 v6, 0x1

    :goto_1
    if-le v6, v10, :cond_2

    sub-float/2addr v12, v11

    cmpg-float v0, v12, p6

    if-gez v0, :cond_1

    return v11

    :cond_1
    move-object/from16 v1, p0

    goto :goto_4

    :cond_2
    if-ge v6, v10, :cond_3

    move-object/from16 v1, p0

    goto :goto_5

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v10, v1, :cond_4

    .line 175
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move-object/from16 v1, p0

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    goto :goto_3

    :cond_4
    move-object/from16 v1, p0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_6

    .line 178
    invoke-virtual {v14, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_5

    .line 179
    invoke-virtual {v14, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    sub-float v2, v12, v11

    cmpg-float v2, v2, p6

    if-gez v2, :cond_7

    return v11

    :cond_7
    cmpl-float v2, v0, v9

    if-lez v2, :cond_8

    :goto_4
    move v12, v13

    goto :goto_0

    :cond_8
    cmpg-float v0, v0, v9

    if-gez v0, :cond_9

    :goto_5
    move v11, v13

    goto :goto_0

    :cond_9
    return v13
.end method

.method private sendTextSizeChange$2548a35()V
    .locals 2

    .line 509
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 513
    :cond_0
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setMinTextSize$51e74ff(F)Lme/grantland/widget/AutofitHelper;
    .locals 2

    .line 334
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 335
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :cond_0
    const/4 v0, 0x0

    .line 341
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 4346
    iget v0, p0, Lme/grantland/widget/AutofitHelper;->mMinTextSize:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 4347
    iput p1, p0, Lme/grantland/widget/AutofitHelper;->mMinTextSize:F

    .line 4349
    invoke-direct {p0}, Lme/grantland/widget/AutofitHelper;->autofit()V

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final addOnTextSizeChangeListener(Lme/grantland/widget/AutofitHelper$OnTextSizeChangeListener;)Lme/grantland/widget/AutofitHelper;
    .locals 1

    .line 264
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/grantland/widget/AutofitHelper;->mListeners:Ljava/util/ArrayList;

    .line 267
    :cond_0
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final setEnabled(Z)Lme/grantland/widget/AutofitHelper;
    .locals 2

    .line 431
    iget-boolean v0, p0, Lme/grantland/widget/AutofitHelper;->mEnabled:Z

    if-eq v0, p1, :cond_1

    .line 432
    iput-boolean p1, p0, Lme/grantland/widget/AutofitHelper;->mEnabled:Z

    if-eqz p1, :cond_0

    .line 435
    iget-object p1, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 436
    iget-object p1, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 438
    invoke-direct {p0}, Lme/grantland/widget/AutofitHelper;->autofit()V

    goto :goto_0

    .line 440
    :cond_0
    iget-object p1, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 441
    iget-object p1, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 443
    iget-object p1, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    iget v1, p0, Lme/grantland/widget/AutofitHelper;->mTextSize:F

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final setMaxLines(I)Lme/grantland/widget/AutofitHelper;
    .locals 1

    .line 412
    iget v0, p0, Lme/grantland/widget/AutofitHelper;->mMaxLines:I

    if-eq v0, p1, :cond_0

    .line 413
    iput p1, p0, Lme/grantland/widget/AutofitHelper;->mMaxLines:I

    .line 415
    invoke-direct {p0}, Lme/grantland/widget/AutofitHelper;->autofit()V

    :cond_0
    return-object p0
.end method

.method public final setTextSize(IF)V
    .locals 2

    .line 473
    iget-boolean v0, p0, Lme/grantland/widget/AutofitHelper;->mIsAutofitting:Z

    if-eqz v0, :cond_0

    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 479
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 482
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 485
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 4489
    iget p2, p0, Lme/grantland/widget/AutofitHelper;->mTextSize:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_2

    .line 4490
    iput p1, p0, Lme/grantland/widget/AutofitHelper;->mTextSize:F

    :cond_2
    return-void
.end method
