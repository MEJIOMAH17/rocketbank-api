.class public final Lru/rocketbank/core/widgets/CreditCardView;
.super Landroid/support/v7/widget/CardView;
.source "CreditCardView.kt"

# interfaces
.implements Lru/rocketbank/core/widgets/listener/CardNumberListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/widgets/CreditCardView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreditCardView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreditCardView.kt\nru/rocketbank/core/widgets/CreditCardView\n*L\n1#1,511:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/widgets/CreditCardView$Companion;

.field private static final MODE_REFILL:I = 0x1

.field private static final MODE_TRANSFER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CCardView"


# instance fields
.field private background:Landroid/widget/ImageView;

.field private binRequestSubscription:Lrx/Subscription;

.field private cardHolder:Lru/rocketbank/core/widgets/RocketTextView;

.field private cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

.field private cvvEdit:Lru/rocketbank/core/widgets/RocketEditText;

.field private cvvStatic:Lru/rocketbank/core/widgets/RocketTextView;

.field private cvvVisible:Z

.field private editTextCardNumber:Lru/rocketbank/core/widgets/RocketEditText;

.field private errorMessage:Lru/rocketbank/core/widgets/RocketTextView;

.field private expirationVisible:Z

.field private ignorePanImage:Z

.field private isCardWorks:Z

.field private isRefillMode:Z

.field private isTransferMode:Z

.field private logo:Landroid/widget/ImageView;

.field private logoUrl:Ljava/lang/String;

.field private needCheckBin:Z

.field public newCard:Lru/rocketbank/core/widgets/RocketTextView;

.field private panEditable:Z

.field private showName:Z

.field private showNewCard:Z

.field private tillDate:Lru/rocketbank/core/widgets/RocketEditText;

.field private tillStatic:Lru/rocketbank/core/widgets/RocketTextView;

.field private validCardNumber:Z

.field private validCvv:Z

.field private validThru:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/widgets/CreditCardView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/widgets/CreditCardView$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/widgets/CreditCardView;->Companion:Lru/rocketbank/core/widgets/CreditCardView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->cvvVisible:Z

    .line 56
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->expirationVisible:Z

    .line 58
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->panEditable:Z

    .line 61
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->isCardWorks:Z

    .line 66
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->needCheckBin:Z

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lru/rocketbank/core/widgets/CreditCardView;->init$23ad5828(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->cvvVisible:Z

    .line 56
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->expirationVisible:Z

    .line 58
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->panEditable:Z

    .line 61
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->isCardWorks:Z

    .line 66
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->needCheckBin:Z

    .line 76
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/widgets/CreditCardView;->init$23ad5828(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 55
    iput-boolean p3, p0, Lru/rocketbank/core/widgets/CreditCardView;->cvvVisible:Z

    .line 56
    iput-boolean p3, p0, Lru/rocketbank/core/widgets/CreditCardView;->expirationVisible:Z

    .line 58
    iput-boolean p3, p0, Lru/rocketbank/core/widgets/CreditCardView;->panEditable:Z

    .line 61
    iput-boolean p3, p0, Lru/rocketbank/core/widgets/CreditCardView;->isCardWorks:Z

    .line 66
    iput-boolean p3, p0, Lru/rocketbank/core/widgets/CreditCardView;->needCheckBin:Z

    .line 80
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/widgets/CreditCardView;->init$23ad5828(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$changeTextColor(Lru/rocketbank/core/widgets/CreditCardView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/CreditCardView;->changeTextColor(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final synthetic access$getEditTextCardNumber$p(Lru/rocketbank/core/widgets/CreditCardView;)Lru/rocketbank/core/widgets/RocketEditText;
    .locals 1

    .line 35
    iget-object p0, p0, Lru/rocketbank/core/widgets/CreditCardView;->editTextCardNumber:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez p0, :cond_0

    const-string v0, "editTextCardNumber"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getErrorMessage$p(Lru/rocketbank/core/widgets/CreditCardView;)Lru/rocketbank/core/widgets/RocketTextView;
    .locals 1

    .line 35
    iget-object p0, p0, Lru/rocketbank/core/widgets/CreditCardView;->errorMessage:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez p0, :cond_0

    const-string v0, "errorMessage"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getIgnorePanImage$p(Lru/rocketbank/core/widgets/CreditCardView;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lru/rocketbank/core/widgets/CreditCardView;->ignorePanImage:Z

    return p0
.end method

.method public static final synthetic access$getLogo$p(Lru/rocketbank/core/widgets/CreditCardView;)Landroid/widget/ImageView;
    .locals 1

    .line 35
    iget-object p0, p0, Lru/rocketbank/core/widgets/CreditCardView;->logo:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    const-string v0, "logo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lru/rocketbank/core/widgets/CreditCardView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$isRefillMode$p(Lru/rocketbank/core/widgets/CreditCardView;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lru/rocketbank/core/widgets/CreditCardView;->isRefillMode:Z

    return p0
.end method

.method public static final synthetic access$isTransferMode$p(Lru/rocketbank/core/widgets/CreditCardView;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lru/rocketbank/core/widgets/CreditCardView;->isTransferMode:Z

    return p0
.end method

.method public static final synthetic access$setBackground(Lru/rocketbank/core/widgets/CreditCardView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/widgets/CreditCardView;->setBackground(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setCardWorks$p(Lru/rocketbank/core/widgets/CreditCardView;Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->isCardWorks:Z

    return-void
.end method

.method public static final synthetic access$setLogoUrl$p(Lru/rocketbank/core/widgets/CreditCardView;Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->logoUrl:Ljava/lang/String;

    return-void
.end method

.method private final changeTextColor(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 396
    invoke-static {p1}, Landroid/support/v7/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object p1

    new-instance v0, Lru/rocketbank/core/widgets/CreditCardView$changeTextColor$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/widgets/CreditCardView$changeTextColor$1;-><init>(Lru/rocketbank/core/widgets/CreditCardView;)V

    check-cast v0, Landroid/support/v7/graphics/Palette$PaletteAsyncListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/graphics/Palette$Builder;->generate(Landroid/support/v7/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    move-result-object p1

    const-string v0, "Palette.from(bitmap).gen\u2026lette(it) }\n           })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 400
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/CreditCardView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060028

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 401
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->tillStatic:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v0, :cond_1

    const-string v1, "tillStatic"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    .line 402
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->cvvStatic:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v0, :cond_2

    const-string v1, "cvvStatic"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    .line 403
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->cardHolder:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v0, :cond_3

    const-string v1, "cardHolder"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    const/4 p1, -0x1

    .line 405
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/CreditCardView;->setCardBackgroundColor(I)V

    return-void
.end method

.method private static extractNumbers(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "val"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    const/4 v2, 0x0

    .line 494
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 495
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 496
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    if-eq v2, v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 500
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "b.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private init$23ad5828(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 86
    sget-object v1, Lru/rocketbank/core/R$styleable;->CreditCardView:[I

    const/4 v2, 0x0

    .line 85
    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string v0, "context.theme\n          \u2026                    0, 0)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 90
    :try_start_0
    sget v3, Lru/rocketbank/core/R$styleable;->CreditCardView_cvv_is_visible:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lru/rocketbank/core/widgets/CreditCardView;->cvvVisible:Z

    .line 91
    sget v3, Lru/rocketbank/core/R$styleable;->CreditCardView_expiration_is_visible:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lru/rocketbank/core/widgets/CreditCardView;->expirationVisible:Z

    .line 92
    sget v3, Lru/rocketbank/core/R$styleable;->CreditCardView_show_new_card:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lru/rocketbank/core/widgets/CreditCardView;->showNewCard:Z

    .line 93
    sget v3, Lru/rocketbank/core/R$styleable;->CreditCardView_pan_editable:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lru/rocketbank/core/widgets/CreditCardView;->panEditable:Z

    .line 95
    sget v3, Lru/rocketbank/core/R$styleable;->CreditCardView_show_name:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lru/rocketbank/core/widgets/CreditCardView;->showName:Z

    .line 97
    sget v3, Lru/rocketbank/core/R$styleable;->CreditCardView_mode:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-nez v3, :cond_0

    .line 1170
    iput-boolean v2, p0, Lru/rocketbank/core/widgets/CreditCardView;->isRefillMode:Z

    .line 1171
    iput-boolean v2, p0, Lru/rocketbank/core/widgets/CreditCardView;->isTransferMode:Z

    goto :goto_0

    :cond_0
    if-ne v3, v1, :cond_1

    .line 1175
    iput-boolean v1, p0, Lru/rocketbank/core/widgets/CreditCardView;->isRefillMode:Z

    .line 1176
    iput-boolean v2, p0, Lru/rocketbank/core/widgets/CreditCardView;->isTransferMode:Z

    goto :goto_0

    :cond_1
    if-ne v3, v0, :cond_2

    .line 1180
    iput-boolean v2, p0, Lru/rocketbank/core/widgets/CreditCardView;->isRefillMode:Z

    .line 1181
    iput-boolean v1, p0, Lru/rocketbank/core/widgets/CreditCardView;->isTransferMode:Z

    .line 100
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lru/rocketbank/core/widgets/CreditCardView;->showName:Z

    if-eqz v3, :cond_3

    .line 101
    iput-boolean v2, p0, Lru/rocketbank/core/widgets/CreditCardView;->expirationVisible:Z

    .line 102
    iput-boolean v2, p0, Lru/rocketbank/core/widgets/CreditCardView;->showNewCard:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception v3

    .line 106
    :try_start_1
    sget-object v4, Lru/rocketbank/core/widgets/CreditCardView;->TAG:Ljava/lang/String;

    const-string v5, "Read args failed"

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :cond_3
    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const-string p2, "layout_inflater"

    .line 111
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    check-cast p2, Landroid/view/LayoutInflater;

    const v3, 0x7f0c011c

    .line 112
    move-object v4, p0

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {p2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v3, 0x7f0900bd

    .line 114
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_5

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    check-cast v3, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v3, p0, Lru/rocketbank/core/widgets/CreditCardView;->cardHolder:Lru/rocketbank/core/widgets/RocketTextView;

    const v3, 0x7f09014c

    .line 116
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_6

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketEditText"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    check-cast v3, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v3, p0, Lru/rocketbank/core/widgets/CreditCardView;->editTextCardNumber:Lru/rocketbank/core/widgets/RocketEditText;

    .line 117
    iget-object v3, p0, Lru/rocketbank/core/widgets/CreditCardView;->editTextCardNumber:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v3, :cond_7

    const-string v4, "editTextCardNumber"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3}, Lme/grantland/widget/AutofitHelper;->create(Landroid/widget/TextView;)Lme/grantland/widget/AutofitHelper;

    .line 119
    iget-boolean v3, p0, Lru/rocketbank/core/widgets/CreditCardView;->panEditable:Z

    if-eqz v3, :cond_c

    .line 120
    iget-object v3, p0, Lru/rocketbank/core/widgets/CreditCardView;->editTextCardNumber:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v3, :cond_8

    const-string v4, "editTextCardNumber"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    new-instance v4, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;

    iget-object v5, p0, Lru/rocketbank/core/widgets/CreditCardView;->editTextCardNumber:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v5, :cond_9

    const-string v6, "editTextCardNumber"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    check-cast v5, Landroid/widget/EditText;

    move-object v6, p0

    check-cast v6, Lru/rocketbank/core/widgets/listener/CardNumberListener;

    invoke-direct {v4, v5, v6}, Lru/rocketbank/core/widgets/CardNumberFormattingTextWatcher;-><init>(Landroid/widget/EditText;Lru/rocketbank/core/widgets/listener/CardNumberListener;)V

    check-cast v4, Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string v3, "input_method"

    .line 121
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_a

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 122
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/CreditCardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 123
    iget-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->editTextCardNumber:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez p1, :cond_b

    const-string v3, "editTextCardNumber"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    new-instance v3, Lru/rocketbank/core/widgets/CreditCardView$init$1;

    invoke-direct {v3, p0}, Lru/rocketbank/core/widgets/CreditCardView$init$1;-><init>(Lru/rocketbank/core/widgets/CreditCardView;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {p1, v3}, Lru/rocketbank/core/widgets/RocketEditText;->post(Ljava/lang/Runnable;)Z

    :cond_c
    const p1, 0x7f0903c8

    .line 128
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_d

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketEditText"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    check-cast p1, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->tillDate:Lru/rocketbank/core/widgets/RocketEditText;

    .line 129
    iget-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->tillDate:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez p1, :cond_e

    const-string v3, "tillDate"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    new-instance v3, Lru/rocketbank/core/widgets/listener/CardYearMonthFormattingTextWatcher;

    iget-object v4, p0, Lru/rocketbank/core/widgets/CreditCardView;->tillDate:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v4, :cond_f

    const-string v5, "tillDate"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    check-cast v4, Landroid/widget/EditText;

    move-object v5, p0

    check-cast v5, Lru/rocketbank/core/widgets/listener/CardNumberListener;

    invoke-direct {v3, v4, v5}, Lru/rocketbank/core/widgets/listener/CardYearMonthFormattingTextWatcher;-><init>(Landroid/widget/EditText;Lru/rocketbank/core/widgets/listener/CardNumberListener;)V

    check-cast v3, Landroid/text/TextWatcher;

    invoke-virtual {p1, v3}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f09011c

    .line 131
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_10

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketEditText"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    check-cast p1, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->cvvEdit:Lru/rocketbank/core/widgets/RocketEditText;

    .line 132
    iget-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->cvvEdit:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez p1, :cond_11

    const-string v3, "cvvEdit"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    new-instance v3, Lru/rocketbank/core/widgets/listener/CvvTextWatcher;

    iget-object v4, p0, Lru/rocketbank/core/widgets/CreditCardView;->cvvEdit:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v4, :cond_12

    const-string v6, "cvvEdit"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_12
    check-cast v4, Landroid/widget/EditText;

    invoke-direct {v3, v4, v5}, Lru/rocketbank/core/widgets/listener/CvvTextWatcher;-><init>(Landroid/widget/EditText;Lru/rocketbank/core/widgets/listener/CardNumberListener;)V

    check-cast v3, Landroid/text/TextWatcher;

    invoke-virtual {p1, v3}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f090069

    .line 134
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_13

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->background:Landroid/widget/ImageView;

    const p1, 0x7f0903c9

    .line 136
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_14

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->tillStatic:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f09011d

    .line 137
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_15

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->cvvStatic:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f090226

    .line 139
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_16

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->logo:Landroid/widget/ImageView;

    const p1, 0x7f090273

    .line 141
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_17

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->newCard:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f090166

    .line 143
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_18

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->errorMessage:Lru/rocketbank/core/widgets/RocketTextView;

    .line 145
    iget-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->editTextCardNumber:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez p1, :cond_19

    const-string p2, "editTextCardNumber"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_19
    iget-boolean p2, p0, Lru/rocketbank/core/widgets/CreditCardView;->panEditable:Z

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketEditText;->setEnabled(Z)V

    .line 146
    iget-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->editTextCardNumber:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez p1, :cond_1a

    const-string p2, "editTextCardNumber"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1a
    iget-boolean p2, p0, Lru/rocketbank/core/widgets/CreditCardView;->panEditable:Z

    if-nez p2, :cond_1b

    move v0, v1

    :cond_1b
    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketEditText;->setInputType(I)V

    .line 148
    iget-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->cardHolder:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez p1, :cond_1c

    const-string p2, "cardHolder"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1c
    iget-boolean p2, p0, Lru/rocketbank/core/widgets/CreditCardView;->showName:Z

    const/16 v0, 0x8

    if-eqz p2, :cond_1d

    move p2, v2

    goto :goto_2

    :cond_1d
    move p2, v0

    :goto_2
    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 150
    iget-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->tillDate:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez p1, :cond_1e

    const-string p2, "tillDate"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1e
    iget-boolean p2, p0, Lru/rocketbank/core/widgets/CreditCardView;->expirationVisible:Z

    if-eqz p2, :cond_1f

    move p2, v2

    goto :goto_3

    :cond_1f
    move p2, v0

    :goto_3
    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketEditText;->setVisibility(I)V

    .line 151
    iget-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->tillStatic:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez p1, :cond_20

    const-string p2, "tillStatic"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_20
    iget-boolean p2, p0, Lru/rocketbank/core/widgets/CreditCardView;->expirationVisible:Z

    if-eqz p2, :cond_21

    move p2, v2

    goto :goto_4

    :cond_21
    move p2, v0

    :goto_4
    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 153
    iget-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->cvvEdit:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez p1, :cond_22

    const-string p2, "cvvEdit"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_22
    iget-boolean p2, p0, Lru/rocketbank/core/widgets/CreditCardView;->cvvVisible:Z

    if-eqz p2, :cond_23

    move p2, v2

    goto :goto_5

    :cond_23
    move p2, v0

    :goto_5
    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketEditText;->setVisibility(I)V

    .line 154
    iget-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->cvvStatic:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez p1, :cond_24

    const-string p2, "cvvStatic"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_24
    iget-boolean p2, p0, Lru/rocketbank/core/widgets/CreditCardView;->cvvVisible:Z

    if-eqz p2, :cond_25

    move p2, v2

    goto :goto_6

    :cond_25
    move p2, v0

    :goto_6
    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 155
    iget-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->newCard:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez p1, :cond_26

    const-string p2, "newCard"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_26
    iget-boolean p2, p0, Lru/rocketbank/core/widgets/CreditCardView;->showNewCard:Z

    if-eqz p2, :cond_27

    move v0, v2

    :cond_27
    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 157
    iget-boolean p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->cvvVisible:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->validCvv:Z

    .line 158
    iget-boolean p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->panEditable:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->validCardNumber:Z

    .line 159
    iget-boolean p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->expirationVisible:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->validThru:Z

    .line 161
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/CreditCardView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_28

    iget-boolean p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->showName:Z

    if-eqz p1, :cond_28

    const-string p1, "CARD HOLDER"

    .line 162
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/CreditCardView;->setCardHolder(Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string p2, "https://s3.amazonaws.com/s3.rocketbank.ru/uploads/card_card/banks/9790/icon/62137445-7417-4b6b-9d87-9db833bde950."

    .line 163
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/widgets/CreditCardView;->setBackground(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    return-void

    .line 108
    :goto_7
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private final setBackground(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_2

    .line 365
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 366
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/CreditCardView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 367
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    .line 368
    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object p1

    .line 369
    new-instance p2, Lru/rocketbank/core/widgets/CreditCardView$setBackground$1;

    invoke-direct {p2, p0}, Lru/rocketbank/core/widgets/CreditCardView$setBackground$1;-><init>(Lru/rocketbank/core/widgets/CreditCardView;)V

    check-cast p2, Lcom/bumptech/glide/request/RequestListener;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/BitmapTypeRequest;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    .line 381
    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/BitmapRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    .line 382
    iget-object p2, p0, Lru/rocketbank/core/widgets/CreditCardView;->background:Landroid/widget/ImageView;

    if-nez p2, :cond_1

    const-string v0, "background"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 386
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/CreditCardView;->setCardBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 388
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method private validateAll()V
    .locals 5

    .line 272
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

    .line 274
    iget-boolean v1, p0, Lru/rocketbank/core/widgets/CreditCardView;->validCvv:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lru/rocketbank/core/widgets/CreditCardView;->validCardNumber:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lru/rocketbank/core/widgets/CreditCardView;->validThru:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 1475
    iget-object v1, p0, Lru/rocketbank/core/widgets/CreditCardView;->editTextCardNumber:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v1, :cond_0

    const-string v2, "editTextCardNumber"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lru/rocketbank/core/widgets/CreditCardView;->extractNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1479
    iget-object v2, p0, Lru/rocketbank/core/widgets/CreditCardView;->tillDate:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v2, :cond_1

    const-string v3, "tillDate"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1483
    iget-object v3, p0, Lru/rocketbank/core/widgets/CreditCardView;->cvvEdit:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v3, :cond_2

    const-string v4, "cvvEdit"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 275
    invoke-interface {v0, v1, v2, v3}, Lru/rocketbank/core/widgets/listener/CardNumberListener;->allCardIsValid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    if-eqz v0, :cond_5

    .line 277
    invoke-interface {v0}, Lru/rocketbank/core/widgets/listener/CardNumberListener;->cardInvalid()V

    return-void

    :cond_5
    return-void
.end method


# virtual methods
.method public final allCardIsValid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "cardNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cvv"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lru/rocketbank/core/widgets/listener/CardNumberListener;->allCardIsValid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    return-void
.end method

.method public final binReady(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cardNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/CreditCardView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->needCheckBin:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getRocketComponent()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    .line 311
    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCardManager()Lru/rocketbank/core/manager/CardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/rocketbank/core/manager/CardManager;->getBin(Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    .line 312
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 313
    new-instance v0, Lru/rocketbank/core/widgets/CreditCardView$binReady$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/widgets/CreditCardView$binReady$1;-><init>(Lru/rocketbank/core/widgets/CreditCardView;)V

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->binRequestSubscription:Lrx/Subscription;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public final cancelBin()V
    .locals 3

    const/4 v0, 0x1

    .line 282
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->isCardWorks:Z

    .line 283
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->errorMessage:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v0, :cond_0

    const-string v1, "errorMessage"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 285
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->ignorePanImage:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->logoUrl:Ljava/lang/String;

    .line 291
    iget-object v1, p0, Lru/rocketbank/core/widgets/CreditCardView;->background:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    const-string v2, "background"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 292
    iget-object v1, p0, Lru/rocketbank/core/widgets/CreditCardView;->logo:Landroid/widget/ImageView;

    if-nez v1, :cond_3

    const-string v2, "logo"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 294
    invoke-direct {p0, v0}, Lru/rocketbank/core/widgets/CreditCardView;->changeTextColor(Landroid/graphics/Bitmap;)V

    .line 296
    iget-object v1, p0, Lru/rocketbank/core/widgets/CreditCardView;->background:Landroid/widget/ImageView;

    if-nez v1, :cond_4

    const-string v2, "background"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    iget-object v1, p0, Lru/rocketbank/core/widgets/CreditCardView;->logo:Landroid/widget/ImageView;

    if-nez v1, :cond_5

    const-string v2, "logo"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->binRequestSubscription:Lrx/Subscription;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->binRequestSubscription:Lrx/Subscription;

    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 300
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->binRequestSubscription:Lrx/Subscription;

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    :cond_8
    return-void
.end method

.method public final cardChanged()V
    .locals 3

    .line 252
    sget-object v0, Lru/rocketbank/core/widgets/CreditCardView;->TAG:Ljava/lang/String;

    const-string v1, "cardChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/core/widgets/listener/CardNumberListener;->cardChanged()V

    .line 256
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->editTextCardNumber:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v0, :cond_1

    const-string v1, "editTextCardNumber"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "editTextCardNumber.text"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    const/16 v2, 0x8

    if-eqz v0, :cond_4

    .line 257
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->newCard:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v0, :cond_3

    const-string v1, "newCard"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void

    .line 259
    :cond_4
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->showNewCard:Z

    if-eqz v0, :cond_6

    .line 260
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->newCard:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v0, :cond_5

    const-string v2, "newCard"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void

    .line 262
    :cond_6
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->newCard:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v0, :cond_7

    const-string v1, "newCard"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void
.end method

.method public final cardInvalid()V
    .locals 1

    .line 268
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/core/widgets/listener/CardNumberListener;->cardInvalid()V

    return-void

    :cond_0
    return-void
.end method

.method public final cardNumberIsInvalid(Ljava/lang/String;)V
    .locals 2

    const-string v0, "cardNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lru/rocketbank/core/widgets/listener/CardNumberListener;->cardNumberIsInvalid(Ljava/lang/String;)V

    .line 241
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x10

    if-lt p1, v0, :cond_2

    .line 242
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/CreditCardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f11009a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 243
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->editTextCardNumber:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v0, :cond_1

    const-string v1, "editTextCardNumber"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketEditText;->setError(Ljava/lang/CharSequence;)V

    .line 246
    :cond_2
    iget-boolean p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->panEditable:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->validCardNumber:Z

    .line 248
    invoke-direct {p0}, Lru/rocketbank/core/widgets/CreditCardView;->validateAll()V

    return-void
.end method

.method public final cardNumberIsValid(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cardNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lru/rocketbank/core/widgets/listener/CardNumberListener;->cardNumberIsValid(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    .line 202
    iput-boolean p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->validCardNumber:Z

    .line 203
    invoke-direct {p0}, Lru/rocketbank/core/widgets/CreditCardView;->validateAll()V

    return-void
.end method

.method public final cvvIsInvalid()V
    .locals 1

    .line 232
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/core/widgets/listener/CardNumberListener;->cvvIsInvalid()V

    .line 234
    :cond_0
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->cvvVisible:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->validCvv:Z

    .line 235
    invoke-direct {p0}, Lru/rocketbank/core/widgets/CreditCardView;->validateAll()V

    return-void
.end method

.method public final cvvIsValid()V
    .locals 1

    .line 214
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/core/widgets/listener/CardNumberListener;->cvvIsValid()V

    :cond_0
    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->validCvv:Z

    .line 217
    invoke-direct {p0}, Lru/rocketbank/core/widgets/CreditCardView;->validateAll()V

    return-void
.end method

.method public final dateIsInvalid()V
    .locals 1

    .line 225
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/core/widgets/listener/CardNumberListener;->dateIsInvalid()V

    .line 227
    :cond_0
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->expirationVisible:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->validThru:Z

    .line 228
    invoke-direct {p0}, Lru/rocketbank/core/widgets/CreditCardView;->validateAll()V

    return-void
.end method

.method public final dateIsValid()V
    .locals 1

    .line 207
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/core/widgets/listener/CardNumberListener;->dateIsValid()V

    :cond_0
    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->validThru:Z

    .line 210
    invoke-direct {p0}, Lru/rocketbank/core/widgets/CreditCardView;->validateAll()V

    return-void
.end method

.method public final getCardNumber()Ljava/lang/String;
    .locals 2

    .line 475
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->editTextCardNumber:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v0, :cond_0

    const-string v1, "editTextCardNumber"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/rocketbank/core/widgets/CreditCardView;->extractNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCvv()Ljava/lang/String;
    .locals 2

    .line 483
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->cvvEdit:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v0, :cond_0

    const-string v1, "cvvEdit"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getValidThru()Ljava/lang/String;
    .locals 2

    .line 479
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->tillDate:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v0, :cond_0

    const-string v1, "tillDate"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    .line 423
    invoke-super {p0}, Landroid/support/v7/widget/CardView;->onAttachedToWindow()V

    .line 425
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    .line 435
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/CreditCardView;->cancelBin()V

    .line 436
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 437
    invoke-super {p0}, Landroid/support/v7/widget/CardView;->onDetachedFromWindow()V

    return-void
.end method

.method public final onEvent(Lru/rocketbank/core/nfc/CardDataRaw;)V
    .locals 5

    const-string v0, "cardDataRaw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p1}, Lru/rocketbank/core/nfc/CardDataRaw;->getPan()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/core/widgets/CreditCardView;->setCardNumber(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p1}, Lru/rocketbank/core/nfc/CardDataRaw;->getMonth()I

    move-result v0

    invoke-virtual {p1}, Lru/rocketbank/core/nfc/CardDataRaw;->getYear()I

    move-result p1

    if-lez v0, :cond_1

    if-lez p1, :cond_1

    .line 2465
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v1, "%02d/%02d"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2466
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->tillDate:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v0, :cond_0

    const-string v1, "tillDate"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string p1, ""

    .line 2471
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->cvvEdit:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v0, :cond_2

    const-string v1, "cvvEdit"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onPalette(Landroid/support/v7/graphics/Palette;)V
    .locals 2

    const-string v0, "palette"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    .line 411
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object p1

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    .line 412
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getTitleTextColor()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 413
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v1

    .line 415
    :cond_1
    invoke-virtual {p0, v1}, Lru/rocketbank/core/widgets/CreditCardView;->setCardBackgroundColor(I)V

    .line 417
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->tillStatic:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v0, :cond_2

    const-string v1, "tillStatic"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    .line 418
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->cvvStatic:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v0, :cond_3

    const-string v1, "cvvStatic"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    .line 419
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->cardHolder:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v0, :cond_4

    const-string v1, "cardHolder"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    return-void
.end method

.method public final setCardBackground(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->ignorePanImage:Z

    const/4 v0, 0x0

    .line 196
    invoke-direct {p0, v0, p1}, Lru/rocketbank/core/widgets/CreditCardView;->setBackground(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setCardHolder(Ljava/lang/String;)V
    .locals 2

    const-string v0, "cardHolderName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->cardHolder:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v0, :cond_0

    const-string v1, "cardHolder"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.String).toUpperCase()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setCardNumber(Ljava/lang/String;)V
    .locals 3

    .line 445
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/CreditCardView;->cancelBin()V

    .line 447
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->panEditable:Z

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->editTextCardNumber:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v0, :cond_0

    const-string v1, "editTextCardNumber"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 452
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "\\s"

    .line 451
    new-instance v2, Lkotlin/text/Regex;

    invoke-direct {v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "(\\w{4})(\\w{4})(\\w{4})(\\w+)"

    .line 452
    new-instance v2, Lkotlin/text/Regex;

    invoke-direct {v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 453
    sget-object v1, Lru/rocketbank/core/widgets/CreditCardView$setCardNumber$formattedCardNumber$1;->INSTANCE:Lru/rocketbank/core/widgets/CreditCardView$setCardNumber$formattedCardNumber$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 452
    invoke-virtual {v2, v0, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, ""

    .line 455
    :cond_3
    iget-object v1, p0, Lru/rocketbank/core/widgets/CreditCardView;->editTextCardNumber:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v1, :cond_4

    const-string v2, "editTextCardNumber"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lru/rocketbank/core/widgets/RocketEditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-eqz p1, :cond_5

    .line 458
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_5

    const/4 v0, 0x0

    .line 459
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/CreditCardView;->binReady(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final setCardNumberHint(Ljava/lang/String;)V
    .locals 2

    const-string v0, "hint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->editTextCardNumber:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v0, :cond_0

    const-string v1, "editTextCardNumber"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketEditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setCardNumberListener(Lru/rocketbank/core/widgets/listener/CardNumberListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView;->cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

    return-void
.end method

.method public final setCvv(Ljava/lang/String;)V
    .locals 2

    .line 471
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->cvvEdit:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v0, :cond_0

    const-string v1, "cvvEdit"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setNeedCheckBin$1385ff()V
    .locals 1

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->needCheckBin:Z

    return-void
.end method

.method public final setRawValidThru(Ljava/lang/String;)V
    .locals 2

    const-string v0, "validThru"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView;->tillDate:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v0, :cond_0

    const-string v1, "tillDate"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
