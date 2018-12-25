.class public abstract Lru/rocketbank/core/widgets/listener/AddCurrencyListener;
.super Ljava/lang/Object;
.source "AddCurrencyListener.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final TAG:Ljava/lang/String; = "\u0421AddFormatListener"


# instance fields
.field currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

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


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->editTextRef:Ljava/lang/ref/WeakReference;

    .line 29
    new-instance p1, Lru/rocketbank/core/utils/format/FormatMoney;

    invoke-direct {p1}, Lru/rocketbank/core/utils/format/FormatMoney;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->formatMoney:Lru/rocketbank/core/utils/format/FormatMoney;

    .line 30
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getRocketComponent()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    return-void
.end method

.method private formatText(Ljava/lang/CharSequence;III)V
    .locals 5

    const-string/jumbo v0, "\u0421AddFormatListener"

    .line 58
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

    .line 60
    iget-object p2, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->getCurrency()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lru/rocketbank/core/manager/CurrencyManager;->getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->currencySymbol:Ljava/lang/String;

    .line 62
    iget-object p2, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->editTextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    if-nez p2, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p3

    .line 68
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p4

    if-lez p4, :cond_1

    if-gez p3, :cond_1

    move p3, p4

    .line 74
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->currencySymbol:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 75
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->removeCurrency(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 77
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 79
    :goto_0
    iget-object p4, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->prevString:Ljava/lang/String;

    iget-object v0, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->currencySymbol:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    const/4 v0, 0x0

    const/16 v1, 0x20

    if-eqz p4, :cond_3

    iget-object p4, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->prevString:Ljava/lang/String;

    iget-object v2, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->prevString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    move-result p4

    if-ne p4, v1, :cond_3

    .line 80
    iget-object p4, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->prevString:Ljava/lang/String;

    iget-object v2, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->prevString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->prevString:Ljava/lang/String;

    .line 82
    :cond_3
    iget-object p4, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->formatMoney:Lru/rocketbank/core/utils/format/FormatMoney;

    iget-object v2, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->prevString:Ljava/lang/String;

    invoke-virtual {p4, v2}, Lru/rocketbank/core/utils/format/FormatMoney;->extractSeparatorInformation(Ljava/lang/String;)Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;

    move-result-object p4

    .line 85
    new-instance v2, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;

    invoke-direct {v2}, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;-><init>()V

    .line 86
    iget-object v3, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->formatMoney:Lru/rocketbank/core/utils/format/FormatMoney;

    invoke-virtual {v3, p1, v2}, Lru/rocketbank/core/utils/format/FormatMoney;->formatAsString(Ljava/lang/String;Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;)Ljava/lang/String;

    move-result-object p1

    .line 87
    iget-object v3, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->formatMoney:Lru/rocketbank/core/utils/format/FormatMoney;

    invoke-virtual {v3, p1}, Lru/rocketbank/core/utils/format/FormatMoney;->extractSeparatorInformation(Ljava/lang/String;)Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;

    move-result-object v3

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget v1, v3, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;->grouping:I

    iget p4, p4, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;->grouping:I

    sub-int/2addr v1, p4

    .line 93
    iget p4, v2, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;->trimmedZerosAtStart:I

    sub-int/2addr p3, p4

    add-int/2addr p3, v1

    if-gez p3, :cond_4

    goto :goto_1

    .line 99
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-le p3, p4, :cond_5

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    :cond_5
    move v0, p3

    .line 103
    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private removeCurrency(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 111
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->currencySymbol:Ljava/lang/String;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\\$"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->currencySymbol:Ljava/lang/String;

    :goto_0
    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    const-string v1, ""

    .line 112
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

    .line 35
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->prevString:Ljava/lang/String;

    return-void
.end method

.method protected abstract getCurrency()Ljava/lang/String;
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 40
    iget-object v0, p0, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->editTextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 48
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->formatText(Ljava/lang/CharSequence;III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo p2, "\u0421AddFormatListener"

    const-string p3, "format has failed"

    .line 50
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
