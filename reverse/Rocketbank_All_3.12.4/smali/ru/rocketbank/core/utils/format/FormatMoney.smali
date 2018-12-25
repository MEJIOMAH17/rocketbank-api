.class public Lru/rocketbank/core/utils/format/FormatMoney;
.super Ljava/lang/Object;
.source "FormatMoney.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;
    }
.end annotation


# instance fields
.field private decimalFormatSymbols:Ljava/text/DecimalFormatSymbols;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0}, Ljava/text/DecimalFormatSymbols;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/utils/format/FormatMoney;->decimalFormatSymbols:Ljava/text/DecimalFormatSymbols;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0, p1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lru/rocketbank/core/utils/format/FormatMoney;->decimalFormatSymbols:Ljava/text/DecimalFormatSymbols;

    return-void
.end method

.method private formatAsStringCleaned(Ljava/lang/String;Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;)Ljava/lang/String;
    .locals 6

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    iget-object v1, p0, Lru/rocketbank/core/utils/format/FormatMoney;->decimalFormatSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v1

    const/16 v2, 0x2e

    .line 86
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    .line 91
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 97
    :goto_0
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/utils/format/FormatMoney;->prepareBeforeSeparator(Ljava/lang/String;Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;)Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    .line 101
    invoke-direct {p0, v2}, Lru/rocketbank/core/utils/format/FormatMoney;->prepareAfterSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    .line 106
    iput-boolean p1, p2, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;->delimiter:Z

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 110
    iput-boolean v3, p2, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;->delimiter:Z

    .line 114
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private prepareAfterSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "."

    const-string v1, ""

    .line 119
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 121
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 124
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private prepareBeforeSeparator(Ljava/lang/String;Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 129
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 130
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x30

    if-ne v3, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-eqz p2, :cond_0

    .line 135
    iget v3, p2, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;->trimmedZerosAtStart:I

    add-int/2addr v3, v4

    iput v3, p2, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;->trimmedZerosAtStart:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    .line 143
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 145
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "0"

    return-object p1

    .line 149
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_4

    return-object p1

    .line 167
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    rem-int/lit8 v3, v1, 0x3

    if-nez v3, :cond_5

    move v3, v0

    goto :goto_1

    :cond_5
    move v3, v4

    .line 171
    :goto_1
    div-int/lit8 v5, v1, 0x3

    add-int/2addr v5, v3

    move v3, v1

    move v1, v0

    :goto_2
    if-ge v1, v5, :cond_9

    const/4 v6, 0x3

    if-lt v3, v6, :cond_6

    add-int/lit8 v6, v3, -0x3

    goto :goto_3

    :cond_6
    move v6, v0

    .line 177
    :goto_3
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 178
    invoke-virtual {v2, v0, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v5, -0x1

    if-eq v1, v6, :cond_8

    if-eqz p2, :cond_7

    .line 182
    iget v6, p2, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;->grouping:I

    add-int/2addr v6, v4

    iput v6, p2, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;->grouping:I

    :cond_7
    const/16 v6, 0x20

    .line 185
    invoke-virtual {v2, v0, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v3, v3, -0x3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 190
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, " ,"

    const-string v0, ","

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public cleanFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 71
    iget-object v0, p0, Lru/rocketbank/core/utils/format/FormatMoney;->decimalFormatSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v0

    .line 72
    iget-object v1, p0, Lru/rocketbank/core/utils/format/FormatMoney;->decimalFormatSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v1

    const-string v2, " "

    const-string v3, ""

    .line 74
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x2e

    .line 75
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(\\s)"

    const-string v1, ""

    .line 78
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public extractSeparatorInformation(Ljava/lang/String;)Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;
    .locals 6

    .line 47
    new-instance v0, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;

    invoke-direct {v0}, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 53
    :cond_0
    iget-object v1, p0, Lru/rocketbank/core/utils/format/FormatMoney;->decimalFormatSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v1

    const/4 v2, 0x0

    .line 55
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 56
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    .line 58
    iget v4, v0, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;->grouping:I

    add-int/2addr v4, v5

    iput v4, v0, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;->grouping:I

    :cond_1
    if-ne v3, v1, :cond_2

    .line 62
    iput-boolean v5, v0, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;->delimiter:Z

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public formatAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, p1, v0}, Lru/rocketbank/core/utils/format/FormatMoney;->formatAsString(Ljava/lang/String;Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatAsString(Ljava/lang/String;Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 32
    iput v0, p2, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;->grouping:I

    .line 33
    iput v0, p2, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;->trimmedZerosAtStart:I

    .line 34
    iput-boolean v0, p2, Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;->delimiter:Z

    :cond_0
    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0, p1}, Lru/rocketbank/core/utils/format/FormatMoney;->cleanFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/utils/format/FormatMoney;->formatAsStringCleaned(Ljava/lang/String;Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object p1
.end method
