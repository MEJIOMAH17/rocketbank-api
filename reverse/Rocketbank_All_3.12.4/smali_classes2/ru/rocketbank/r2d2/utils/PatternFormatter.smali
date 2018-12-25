.class public Lru/rocketbank/r2d2/utils/PatternFormatter;
.super Ljava/lang/Object;
.source "PatternFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;
    .locals 10

    if-eqz p1, :cond_a

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v0, ""

    const-string v1, ""

    const/4 v2, 0x0

    move-object v4, v0

    move-object v3, v1

    move v0, v2

    move v1, v0

    .line 31
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x44

    if-eq v6, v7, :cond_6

    const/16 v7, 0x53

    const/16 v8, 0x73

    if-eq v6, v7, :cond_3

    const/16 v7, 0x57

    const/16 v9, 0x77

    if-eq v6, v7, :cond_1

    const/16 v7, 0x64

    if-eq v6, v7, :cond_6

    if-eq v6, v8, :cond_3

    if-eq v6, v9, :cond_1

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_4

    .line 45
    :cond_1
    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_7

    if-ne v6, v9, :cond_2

    .line 48
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    goto :goto_1

    :cond_2
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 49
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 54
    :cond_3
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_4
    if-ne v6, v8, :cond_5

    .line 57
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    goto :goto_2

    :cond_5
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 58
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 37
    :cond_6
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 40
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 41
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    add-int/lit8 v0, v0, 0x1

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 71
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-le p0, v0, :cond_9

    .line 72
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "d"

    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    const-string v0, "w"

    .line 74
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "s"

    .line 75
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    .line 76
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v3, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 78
    :cond_9
    new-instance p0, Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;

    invoke-direct {p0, v3, v4}, Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 25
    :cond_a
    :goto_5
    new-instance p1, Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;

    invoke-direct {p1, p0, p0}, Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static setup(Lru/rocketbank/core/widgets/RocketEditText;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-static {p0, p1, v0}, Lru/rocketbank/r2d2/utils/PatternFormatter;->setup(Lru/rocketbank/core/widgets/RocketEditText;Ljava/lang/String;Lrx/functions/Action1;)V

    return-void
.end method

.method public static setup(Lru/rocketbank/core/widgets/RocketEditText;Ljava/lang/String;Lrx/functions/Action1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/widgets/RocketEditText;",
            "Ljava/lang/String;",
            "Lrx/functions/Action1<",
            "Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 91
    new-instance v0, Lru/rocketbank/r2d2/utils/PatternFormatter$1;

    invoke-direct {v0, p1}, Lru/rocketbank/r2d2/utils/PatternFormatter$1;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_1
    new-instance v0, Lru/rocketbank/r2d2/utils/PatternFormatter$2;

    invoke-direct {v0}, Lru/rocketbank/r2d2/utils/PatternFormatter$2;-><init>()V

    .line 105
    :goto_0
    new-instance p1, Lru/rocketbank/r2d2/utils/PatternFormatter$3;

    invoke-direct {p1, p0, v0, p2}, Lru/rocketbank/r2d2/utils/PatternFormatter$3;-><init>(Lru/rocketbank/core/widgets/RocketEditText;Lrx/functions/Func1;Lrx/functions/Action1;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
