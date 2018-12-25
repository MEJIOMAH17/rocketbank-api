.class public abstract Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;
.super Ljava/lang/Object;
.source "AddCurrencyMainListener.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final TAG:Ljava/lang/String; = "AddCurrencyMainListener"


# instance fields
.field private currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

.field private currencySymbol:Ljava/lang/String;

.field private editTextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private formatMoney:Lru/rocketbank/core/utils/format/FormatMoney;

.field private prevString:Ljava/lang/String;

.field private replaceChar:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->editTextRef:Ljava/lang/ref/WeakReference;

    .line 32
    new-instance p1, Lru/rocketbank/core/utils/format/FormatMoney;

    invoke-direct {p1}, Lru/rocketbank/core/utils/format/FormatMoney;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->formatMoney:Lru/rocketbank/core/utils/format/FormatMoney;

    .line 33
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getRocketComponent()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    return-void
.end method

.method private formatText(Ljava/lang/CharSequence;III)V
    .locals 4

    const-string v0, "AddCurrencyMainListener"

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", before: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", count: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p2, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->getCurrency()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lru/rocketbank/core/manager/CurrencyManager;->getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->currencySymbol:Ljava/lang/String;

    .line 80
    iget-object p2, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->editTextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    if-nez p2, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p3

    .line 86
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_1

    if-gez p3, :cond_1

    move p3, v0

    .line 92
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->removeCurrency(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 95
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    :goto_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->formatMoney:Lru/rocketbank/core/utils/format/FormatMoney;

    iget-object v1, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->prevString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/utils/format/FormatMoney;->extractSeparatorInformation(Ljava/lang/String;)Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->formatMoney:Lru/rocketbank/core/utils/format/FormatMoney;

    invoke-virtual {v1, p1}, Lru/rocketbank/core/utils/format/FormatMoney;->extractSeparatorInformation(Ljava/lang/String;)Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;

    move-result-object v1

    .line 99
    iget-boolean v2, v0, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;->delimiter:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-boolean v1, v1, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;->delimiter:Z

    if-nez v1, :cond_3

    if-nez p4, :cond_3

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    const/4 v1, 0x3

    if-le p4, v1, :cond_3

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    add-int/lit8 p4, p4, -0x2

    invoke-virtual {p1, v3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 105
    :cond_3
    new-instance p4, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;

    invoke-direct {p4}, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;-><init>()V

    .line 106
    iget-object v1, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->formatMoney:Lru/rocketbank/core/utils/format/FormatMoney;

    invoke-virtual {v1, p1, p4}, Lru/rocketbank/core/utils/format/FormatMoney;->formatAsString(Ljava/lang/String;Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;)Ljava/lang/String;

    move-result-object p1

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget v1, p4, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;->grouping:I

    iget v0, v0, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;->grouping:I

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 112
    iget p4, p4, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;->trimmedZerosAtStart:I

    sub-int/2addr p3, p4

    add-int/2addr p3, v1

    if-gez p3, :cond_4

    goto :goto_1

    .line 117
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-le p3, p4, :cond_5

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_1

    :cond_5
    move v3, p3

    .line 121
    :goto_1
    invoke-virtual {p2, v3}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private removeCurrency(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 130
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->currencySymbol:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    const-string v1, ""

    .line 131
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 40
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->prevString:Ljava/lang/String;

    .line 41
    iget-object p1, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->prevString:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "0 "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    invoke-virtual {p3}, Lru/rocketbank/core/manager/CurrencyManager;->getCurrencySymbolRub()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    iget-object p1, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->editTextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 43
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    const-string p2, "0"

    .line 44
    iput-object p2, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->replaceChar:Ljava/lang/String;

    .line 45
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->replaceChar:Ljava/lang/String;

    return-void
.end method

.method protected abstract getCurrency()Ljava/lang/String;
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .line 51
    iget-object v0, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->editTextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 58
    iget-object v1, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->replaceChar:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 59
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->replaceChar:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 63
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->formatText(Ljava/lang/CharSequence;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AddCurrencyMainListener"

    const-string p3, "format has failed"

    .line 65
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :goto_0
    iget-object p1, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;->replaceChar:Ljava/lang/String;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 69
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 72
    :cond_2
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
