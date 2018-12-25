.class Lio/card/payment/ExpiryValidator;
.super Ljava/lang/Object;
.source "ExpiryValidator.java"

# interfaces
.implements Lio/card/payment/Validator;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExpiryValidator"


# instance fields
.field private fullLength:Z

.field public month:I

.field public year:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lio/card/payment/ExpiryValidator;->month:I

    .line 27
    iput p2, p0, Lio/card/payment/ExpiryValidator;->year:I

    .line 29
    iget p1, p0, Lio/card/payment/ExpiryValidator;->month:I

    if-lez p1, :cond_0

    iget p1, p0, Lio/card/payment/ExpiryValidator;->year:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lio/card/payment/ExpiryValidator;->fullLength:Z

    .line 32
    iget p1, p0, Lio/card/payment/ExpiryValidator;->year:I

    const/16 p2, 0x7d0

    if-ge p1, p2, :cond_1

    .line 33
    iget p1, p0, Lio/card/payment/ExpiryValidator;->year:I

    add-int/2addr p1, p2

    iput p1, p0, Lio/card/payment/ExpiryValidator;->year:I

    :cond_1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 39
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lio/card/payment/ExpiryValidator;->fullLength:Z

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 46
    :cond_1
    invoke-static {p1}, Lio/card/payment/Logo;->getDateForString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 51
    :cond_2
    invoke-virtual {p1}, Ljava/util/Date;->getMonth()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lio/card/payment/ExpiryValidator;->month:I

    .line 52
    invoke-virtual {p1}, Ljava/util/Date;->getYear()I

    move-result p1

    iput p1, p0, Lio/card/payment/ExpiryValidator;->year:I

    .line 54
    iget p1, p0, Lio/card/payment/ExpiryValidator;->year:I

    const/16 v0, 0x76c

    if-ge p1, v0, :cond_3

    .line 55
    iget p1, p0, Lio/card/payment/ExpiryValidator;->year:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/card/payment/ExpiryValidator;->year:I

    :cond_3
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lio/card/payment/ExpiryValidator;->month:I

    .line 62
    iput p1, p0, Lio/card/payment/ExpiryValidator;->year:I

    .line 63
    iput-boolean p1, p0, Lio/card/payment/ExpiryValidator;->fullLength:Z

    return-void
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9

    .line 109
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 p1, 0x31

    const/4 v7, 0x0

    if-nez p5, :cond_0

    .line 111
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 112
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    const-string v0, "0"

    .line 113
    invoke-virtual {v6, v7, v0}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 p3, p3, 0x1

    :cond_0
    sub-int v0, p6, p5

    sub-int v1, p5, v0

    const/4 v8, 0x2

    if-gt v1, v8, :cond_2

    add-int v1, p5, p3

    sub-int/2addr v1, v0

    if-lt v1, v8, :cond_2

    rsub-int/lit8 v0, p5, 0x2

    if-eq v0, p3, :cond_1

    if-ltz v0, :cond_2

    if-ge v0, p3, :cond_2

    .line 120
    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_2

    :cond_1
    const-string v1, "/"

    .line 121
    invoke-virtual {v6, v0, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 p3, p3, 0x1

    :cond_2
    move v5, p3

    .line 128
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move v1, p5

    move v2, p6

    move-object v3, v6

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 129
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 131
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/16 p4, 0x30

    if-lez p3, :cond_4

    .line 132
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result p3

    if-lt p3, p4, :cond_3

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result p3

    if-ge p1, p3, :cond_4

    :cond_3
    const-string p1, ""

    return-object p1

    .line 137
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v8, :cond_6

    .line 138
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/4 p3, 0x1

    if-eq p1, p4, :cond_5

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p5, 0x32

    if-le p1, p5, :cond_5

    const-string p1, ""

    return-object p1

    .line 141
    :cond_5
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, p4, :cond_6

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, p4, :cond_6

    const-string p1, ""

    return-object p1

    .line 146
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x5

    if-le p1, p2, :cond_7

    const-string p1, ""

    return-object p1

    :cond_7
    return-object v6
.end method

.method public final getValue()Ljava/lang/String;
    .locals 4

    const-string v0, "%02d/%02d"

    const/4 v1, 0x2

    .line 72
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lio/card/payment/ExpiryValidator;->month:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lio/card/payment/ExpiryValidator;->year:I

    rem-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hasFullLength()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lio/card/payment/ExpiryValidator;->fullLength:Z

    return v0
.end method

.method public final isValid()Z
    .locals 6

    .line 82
    iget v0, p0, Lio/card/payment/ExpiryValidator;->month:I

    const/4 v1, 0x0

    if-lez v0, :cond_4

    const/16 v0, 0xc

    iget v2, p0, Lio/card/payment/ExpiryValidator;->month:I

    if-ge v0, v2, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 88
    iget v2, p0, Lio/card/payment/ExpiryValidator;->year:I

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v3

    const/16 v4, 0x76c

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0xf

    if-le v2, v3, :cond_1

    return v1

    .line 92
    :cond_1
    iget v2, p0, Lio/card/payment/ExpiryValidator;->year:I

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v3

    add-int/2addr v3, v4

    const/4 v5, 0x1

    if-gt v2, v3, :cond_3

    iget v2, p0, Lio/card/payment/ExpiryValidator;->year:I

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v3

    add-int/2addr v4, v3

    if-ne v2, v4, :cond_2

    iget v2, p0, Lio/card/payment/ExpiryValidator;->month:I

    .line 93
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v0

    add-int/2addr v0, v5

    if-lt v2, v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v5

    :cond_4
    :goto_1
    return v1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
