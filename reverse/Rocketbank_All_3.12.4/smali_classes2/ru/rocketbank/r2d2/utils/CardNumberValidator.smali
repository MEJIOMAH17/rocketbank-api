.class public Lru/rocketbank/r2d2/utils/CardNumberValidator;
.super Ljava/lang/Object;
.source "CardNumberValidator.java"


# static fields
.field private static allowedLengths:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 9
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lru/rocketbank/r2d2/utils/CardNumberValidator;->allowedLengths:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10
        0x12
        0x13
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validate(Ljava/lang/String;)Z
    .locals 6

    const-string v0, " "

    const-string v1, ""

    .line 12
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 14
    sget-object v0, Lru/rocketbank/r2d2/utils/CardNumberValidator;->allowedLengths:[I

    const/4 v1, 0x0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
