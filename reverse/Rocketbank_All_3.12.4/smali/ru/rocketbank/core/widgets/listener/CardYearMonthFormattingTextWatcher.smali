.class public final Lru/rocketbank/core/widgets/listener/CardYearMonthFormattingTextWatcher;
.super Lru/rocketbank/core/widgets/SimpleTextWatcher;
.source "CardYearMonthFormattingTextWatcher.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardYearMonthFormattingTextWatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardYearMonthFormattingTextWatcher.kt\nru/rocketbank/core/widgets/listener/CardYearMonthFormattingTextWatcher\n*L\n1#1,72:1\n*E\n"
.end annotation


# instance fields
.field private final _editText:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private final cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Lru/rocketbank/core/widgets/listener/CardNumberListener;)V
    .locals 1

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardNumberListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lru/rocketbank/core/widgets/SimpleTextWatcher;-><init>()V

    iput-object p2, p0, Lru/rocketbank/core/widgets/listener/CardYearMonthFormattingTextWatcher;->cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

    .line 14
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lru/rocketbank/core/widgets/listener/CardYearMonthFormattingTextWatcher;->_editText:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 8

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lru/rocketbank/core/widgets/listener/CardYearMonthFormattingTextWatcher;->_editText:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 33
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "val"

    .line 35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1018
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1020
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    if-ltz v2, :cond_2

    move v5, v4

    .line 1021
    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1022
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1023
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eq v5, v2, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1027
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "b.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_3

    const/16 v0, 0x2f

    .line 40
    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 43
    :cond_3
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {p1, v4, v0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 45
    iget-object v0, p0, Lru/rocketbank/core/widgets/listener/CardYearMonthFormattingTextWatcher;->_editText:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_4

    move-object v1, p0

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 47
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1058
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    if-nez p1, :cond_5

    .line 1059
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez p1, :cond_6

    .line 1060
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1062
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    rem-int/lit8 v1, v1, 0x64

    if-lez v0, :cond_7

    const/16 v2, 0xd

    if-ge v0, v2, :cond_7

    if-lt p1, v1, :cond_7

    goto :goto_1

    :cond_7
    move v3, v4

    :goto_1
    if-eqz v3, :cond_8

    .line 49
    iget-object p1, p0, Lru/rocketbank/core/widgets/listener/CardYearMonthFormattingTextWatcher;->cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

    invoke-interface {p1}, Lru/rocketbank/core/widgets/listener/CardNumberListener;->dateIsValid()V

    goto :goto_2

    .line 51
    :cond_8
    iget-object p1, p0, Lru/rocketbank/core/widgets/listener/CardYearMonthFormattingTextWatcher;->cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

    invoke-interface {p1}, Lru/rocketbank/core/widgets/listener/CardNumberListener;->dateIsInvalid()V

    .line 54
    :goto_2
    iget-object p1, p0, Lru/rocketbank/core/widgets/listener/CardYearMonthFormattingTextWatcher;->cardNumberListener:Lru/rocketbank/core/widgets/listener/CardNumberListener;

    invoke-interface {p1}, Lru/rocketbank/core/widgets/listener/CardNumberListener;->cardChanged()V

    return-void
.end method
