.class final Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$StatusListenerInternal;
.super Ljava/lang/Object;
.source "SamsungPay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatusListenerInternal"
.end annotation


# instance fields
.field countryAndMinimumVer:[[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 1014
    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "US"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "2300"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "PR"

    aput-object v3, v2, v4

    const-string v3, "2300"

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "KR"

    aput-object v3, v2, v4

    const-string v3, "2250"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "BR"

    aput-object v3, v2, v4

    const-string v3, "2400"

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "ES"

    aput-object v3, v2, v4

    const-string v3, "2400"

    aput-object v3, v2, v5

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "AU"

    aput-object v3, v2, v4

    const-string v3, "2400"

    aput-object v3, v2, v5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "SG"

    aput-object v2, v1, v4

    const-string v2, "2400"

    aput-object v2, v1, v5

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$StatusListenerInternal;->countryAndMinimumVer:[[Ljava/lang/String;

    return-void
.end method

.method private static convertVersionLevel(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "\\."

    .line 1068
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1073
    :try_start_0
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    .line 1074
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    shl-int/lit8 v0, v1, 0xc

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0

    :catch_0
    move-exception p0

    .line 1076
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method protected static isValidSdkApiLevel(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1049
    invoke-static {p1}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$StatusListenerInternal;->convertVersionLevel(Ljava/lang/String;)I

    move-result p1

    .line 1050
    invoke-static {p0}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$StatusListenerInternal;->convertVersionLevel(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "SPAYSDK:VersionChecker"

    const-string p1, "SDK API Level was not defined."

    .line 1053
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    if-eqz p1, :cond_2

    if-le p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const-string p0, "SPAYSDK:VersionChecker"

    const-string p1, "Currently defined SDK API Level is not supported."

    .line 1058
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method protected final isIncludeVersionCheckingRule(Ljava/lang/String;I)Z
    .locals 4

    .line 1037
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$StatusListenerInternal;->countryAndMinimumVer:[[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v0, v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1040
    iget-object v3, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$StatusListenerInternal;->countryAndMinimumVer:[[Ljava/lang/String;

    aget-object v3, v3, v2

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1041
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$StatusListenerInternal;->countryAndMinimumVer:[[Ljava/lang/String;

    aget-object p1, p1, v2

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-gt p1, p2, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
