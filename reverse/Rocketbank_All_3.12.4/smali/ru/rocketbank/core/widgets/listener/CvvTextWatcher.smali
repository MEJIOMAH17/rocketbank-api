.class public final Lru/rocketbank/core/widgets/listener/CvvTextWatcher;
.super Lru/rocketbank/core/widgets/SimpleTextWatcher;
.source "CvvTextWatcher.kt"


# instance fields
.field private final cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

.field private final editTextWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Lru/rocketbank/core/widgets/listener/CardNumberListener;)V
    .locals 1

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardNumberListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lru/rocketbank/core/widgets/SimpleTextWatcher;-><init>()V

    iput-object p2, p0, Lru/rocketbank/core/widgets/listener/CvvTextWatcher;->cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

    .line 12
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lru/rocketbank/core/widgets/listener/CvvTextWatcher;->editTextWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 9

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lru/rocketbank/core/widgets/listener/CvvTextWatcher;->editTextWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 18
    move-object v1, p0

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 19
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "val"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1032
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1034
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    if-ltz v4, :cond_2

    move v6, v5

    .line 1035
    :goto_0
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1036
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1037
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eq v6, v4, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1041
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "b.toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {p1, v5, v1, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    if-eqz v0, :cond_3

    .line 20
    move-object v1, p0

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 22
    :cond_3
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 23
    iget-object p1, p0, Lru/rocketbank/core/widgets/listener/CvvTextWatcher;->cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

    invoke-interface {p1}, Lru/rocketbank/core/widgets/listener/CardNumberListener;->cvvIsValid()V

    goto :goto_1

    .line 25
    :cond_4
    iget-object p1, p0, Lru/rocketbank/core/widgets/listener/CvvTextWatcher;->cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

    invoke-interface {p1}, Lru/rocketbank/core/widgets/listener/CardNumberListener;->cvvIsInvalid()V

    .line 28
    :goto_1
    iget-object p1, p0, Lru/rocketbank/core/widgets/listener/CvvTextWatcher;->cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

    invoke-interface {p1}, Lru/rocketbank/core/widgets/listener/CardNumberListener;->cardChanged()V

    return-void
.end method
