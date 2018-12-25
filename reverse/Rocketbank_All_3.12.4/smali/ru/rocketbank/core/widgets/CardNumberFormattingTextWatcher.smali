.class public final Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;
.super Lru/rocketbank/core/widgets/SimpleTextWatcher;
.source "CardNumberFormattingTextWatcher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardNumberFormattingTextWatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardNumberFormattingTextWatcher.kt\nru/rocketbank/core/widgets/CardNumberFormattingTextWatcher\n*L\n1#1,177:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher$Companion;

.field private static final MAX_CARD_NUMBER_LENGTH:I = 0x17

.field private static final TAG:Ljava/lang/String; = "CardFormat"


# instance fields
.field private final cardNumberHint:Ljava/lang/String;

.field private final cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

.field private cardValid:Z

.field private lastCardLenght:I

.field private final longNumberTextSize:F

.field private final normalTextSize:F

.field private final weakEditText:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->Companion:Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;Lru/rocketbank/core/widgets/listener/CardNumberListener;)V
    .locals 1

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardNumberListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lru/rocketbank/core/widgets/SimpleTextWatcher;-><init>()V

    iput-object p2, p0, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

    const-string p2, ""

    .line 17
    iput-object p2, p0, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->cardNumberHint:Ljava/lang/String;

    .line 23
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->weakEditText:Ljava/lang/ref/WeakReference;

    .line 24
    invoke-virtual {p1}, Landroid/widget/EditText;->getTextSize()F

    move-result p2

    iput p2, p0, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->normalTextSize:F

    .line 25
    invoke-virtual {p1}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    const p2, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, p2

    iput p1, p0, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->longNumberTextSize:F

    return-void
.end method

.method private static luhnAlgorithm(Ljava/lang/String;)Z
    .locals 9

    const-string v0, "string"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const-string v0, "(this as java.lang.String).toCharArray()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 130
    array-length v1, p0

    new-array v1, v1, [I

    .line 131
    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 132
    aget-char v4, p0, v3

    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    const/4 v2, 0x1

    .line 134
    array-length v3, v1

    rem-int/2addr v3, p0

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v0

    .line 136
    :goto_1
    array-length v4, v1

    move v5, v0

    move v6, v5

    :goto_2
    if-ge v5, v4, :cond_7

    const/16 v7, 0x9

    if-eqz v3, :cond_4

    add-int/lit8 v8, v5, 0x1

    .line 138
    rem-int/2addr v8, p0

    if-eqz v8, :cond_3

    .line 139
    aget v8, v1, v5

    mul-int/2addr v8, p0

    if-le v8, v7, :cond_2

    add-int/lit8 v8, v8, -0x9

    :cond_2
    add-int/2addr v6, v8

    goto :goto_3

    .line 144
    :cond_3
    aget v7, v1, v5

    add-int/2addr v6, v7

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v5, 0x1

    .line 146
    rem-int/2addr v8, p0

    if-nez v8, :cond_6

    .line 147
    aget v8, v1, v5

    mul-int/2addr v8, p0

    if-le v8, v7, :cond_5

    add-int/lit8 v8, v8, -0x9

    :cond_5
    add-int/2addr v6, v8

    goto :goto_3

    .line 152
    :cond_6
    aget v7, v1, v5

    add-int/2addr v6, v7

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 155
    :cond_7
    rem-int/lit8 v6, v6, 0xa

    if-nez v6, :cond_8

    return v2

    :cond_8
    return v0
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "s"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v3, v1, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->weakEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    if-nez v3, :cond_0

    return-void

    .line 41
    :cond_0
    move-object v4, v1

    check-cast v4, Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    const-string v5, "editText"

    .line 42
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v5

    .line 44
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 45
    iget-object v13, v1, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->cardNumberHint:Ljava/lang/String;

    const-string v14, ""

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    move-object v12, v6

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "val"

    .line 46
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1159
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1161
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    const/4 v11, 0x0

    if-ltz v9, :cond_2

    move v12, v11

    .line 1162
    :goto_0
    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 1163
    invoke-static {v13}, Ljava/lang/Character;->isDigit(C)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1164
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eq v12, v9, :cond_2

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1168
    :cond_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "b.toString()"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, v1, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->cardNumberHint:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v8, v9, :cond_9

    iget-object v8, v1, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->cardNumberHint:Ljava/lang/String;

    const/4 v9, 0x2

    const/4 v12, 0x0

    invoke-static {v6, v8, v11, v9, v12}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_1

    .line 57
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v6, v1, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->cardNumberHint:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v8, 0x4

    const/16 v9, 0x20

    if-le v6, v8, :cond_4

    .line 62
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    if-lt v5, v8, :cond_4

    add-int/lit8 v5, v5, 0x1

    .line 69
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/16 v8, 0x9

    if-le v6, v8, :cond_5

    .line 70
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    if-lt v5, v8, :cond_5

    add-int/lit8 v5, v5, 0x1

    .line 76
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/16 v8, 0xe

    if-le v6, v8, :cond_6

    .line 77
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    if-lt v5, v8, :cond_6

    add-int/lit8 v5, v5, 0x1

    .line 83
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/16 v8, 0x17

    if-le v6, v8, :cond_7

    const/16 v6, 0x13

    .line 84
    invoke-virtual {v2, v6, v9}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    if-lt v5, v6, :cond_7

    add-int/lit8 v5, v5, 0x1

    .line 90
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    sget-object v6, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "len: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " pos: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v6

    if-le v5, v6, :cond_8

    .line 95
    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v5

    .line 98
    :cond_8
    sget-object v6, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "new len: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pos: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2

    .line 51
    :cond_9
    :goto_1
    move-object v5, v1

    check-cast v5, Landroid/text/TextWatcher;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 52
    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v5

    iget-object v6, v1, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->cardNumberHint:Ljava/lang/String;

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v2, v11, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 102
    :try_start_1
    sget-object v5, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->TAG:Ljava/lang/String;

    const-string v6, "Failed"

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 107
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_a

    invoke-static {v7}, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->luhnAlgorithm(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 108
    iget-object v2, v1, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

    invoke-interface {v2, v7}, Lru/rocketbank/core/widgets/listener/CardNumberListener;->cardNumberIsValid(Ljava/lang/String;)V

    .line 109
    iput-boolean v10, v1, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->cardValid:Z

    goto :goto_3

    .line 111
    :cond_a
    iget-object v2, v1, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

    invoke-interface {v2, v7}, Lru/rocketbank/core/widgets/listener/CardNumberListener;->cardNumberIsInvalid(Ljava/lang/String;)V

    .line 112
    iput-boolean v11, v1, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->cardValid:Z

    .line 115
    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_b

    iget v2, v1, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->lastCardLenght:I

    if-ne v2, v3, :cond_b

    .line 116
    iget-object v2, v1, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

    invoke-interface {v2}, Lru/rocketbank/core/widgets/listener/CardNumberListener;->cancelBin()V

    .line 119
    :cond_b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v3, :cond_c

    iget v2, v1, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->lastCardLenght:I

    if-ge v2, v3, :cond_d

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_d

    .line 120
    :cond_c
    iget-object v2, v1, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

    invoke-interface {v2, v7}, Lru/rocketbank/core/widgets/listener/CardNumberListener;->binReady(Ljava/lang/String;)V

    .line 123
    :cond_d
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, v1, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->lastCardLenght:I

    .line 125
    iget-object v2, v1, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

    invoke-interface {v2}, Lru/rocketbank/core/widgets/listener/CardNumberListener;->cardChanged()V

    return-void

    .line 104
    :goto_4
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    throw v2
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const-string p4, "s"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/16 p4, 0x17

    if-ne p2, p4, :cond_0

    if-nez p3, :cond_0

    .line 30
    iget-object p4, p0, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->weakEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/widget/EditText;

    if-eqz p4, :cond_0

    iget v0, p0, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->longNumberTextSize:F

    invoke-virtual {p4, p1, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    :cond_0
    const/16 p4, 0x18

    if-ne p2, p4, :cond_1

    const/4 p2, 0x1

    if-ne p3, p2, :cond_1

    .line 34
    iget-object p2, p0, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->weakEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    if-eqz p2, :cond_1

    iget p3, p0, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;->normalTextSize:F

    invoke-virtual {p2, p1, p3}, Landroid/widget/EditText;->setTextSize(IF)V

    return-void

    :cond_1
    return-void
.end method
