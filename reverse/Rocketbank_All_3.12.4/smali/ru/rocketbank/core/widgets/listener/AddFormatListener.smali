.class public final Lru/rocketbank/core/widgets/listener/AddFormatListener;
.super Ljava/lang/Object;
.source "AddFormatListener.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lru/rocketbank/core/utils/format/FormatMoney;

    invoke-direct {v0}, Lru/rocketbank/core/utils/format/FormatMoney;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/widgets/listener/AddFormatListener;->formatMoney:Lru/rocketbank/core/utils/format/FormatMoney;

    .line 22
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lru/rocketbank/core/widgets/listener/AddFormatListener;->editTextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 27
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/widgets/listener/AddFormatListener;->prevString:Ljava/lang/String;

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    .line 32
    iget-object v0, p0, Lru/rocketbank/core/widgets/listener/AddFormatListener;->editTextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :try_start_0
    const-string v1, "AddFormatListener"

    .line 1049
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", before: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", count: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-object p2, p0, Lru/rocketbank/core/widgets/listener/AddFormatListener;->editTextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    if-eqz p2, :cond_5

    .line 1056
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p3

    .line 1057
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_1

    if-gez p3, :cond_1

    move p3, v1

    .line 1062
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1064
    iget-object v1, p0, Lru/rocketbank/core/widgets/listener/AddFormatListener;->formatMoney:Lru/rocketbank/core/utils/format/FormatMoney;

    iget-object v2, p0, Lru/rocketbank/core/widgets/listener/AddFormatListener;->prevString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/utils/format/FormatMoney;->extractSeparatorInformation(Ljava/lang/String;)Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;

    move-result-object v1

    .line 1065
    iget-object v2, p0, Lru/rocketbank/core/widgets/listener/AddFormatListener;->formatMoney:Lru/rocketbank/core/utils/format/FormatMoney;

    invoke-virtual {v2, p1}, Lru/rocketbank/core/utils/format/FormatMoney;->extractSeparatorInformation(Ljava/lang/String;)Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;

    move-result-object v2

    .line 1066
    iget-boolean v3, v1, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;->delimiter:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-boolean v2, v2, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;->delimiter:Z

    if-nez v2, :cond_2

    if-nez p4, :cond_2

    .line 1067
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    const/4 v2, 0x3

    if-le p4, v2, :cond_2

    .line 1068
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    add-int/lit8 p4, p4, -0x2

    invoke-virtual {p1, v4, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1072
    :cond_2
    new-instance p4, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;

    invoke-direct {p4}, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;-><init>()V

    .line 1073
    iget-object v2, p0, Lru/rocketbank/core/widgets/listener/AddFormatListener;->formatMoney:Lru/rocketbank/core/utils/format/FormatMoney;

    invoke-virtual {v2, p1, p4}, Lru/rocketbank/core/utils/format/FormatMoney;->formatAsString(Ljava/lang/String;Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;)Ljava/lang/String;

    move-result-object p1

    .line 1075
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    iget v2, p4, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;->grouping:I

    iget v1, v1, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;->grouping:I

    sub-int/2addr v2, v1

    .line 1079
    iget p4, p4, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;->trimmedZerosAtStart:I

    sub-int/2addr p3, p4

    add-int/2addr p3, v2

    if-gez p3, :cond_3

    goto :goto_0

    .line 1084
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-le p3, p4, :cond_4

    .line 1085
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_0

    :cond_4
    move v4, p3

    .line 1088
    :goto_0
    invoke-virtual {p2, v4}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "AddFormatListener"

    const-string p3, "format has failed"

    .line 42
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    :cond_5
    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
