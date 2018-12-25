.class public abstract Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk;
.super Ljava/lang/Object;
.source "SpaySdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$Brand;,
        Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;,
        Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$ServiceType;
    }
.end annotation


# instance fields
.field protected context:Landroid/content/Context;

.field protected partnerInfo:Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;)V
    .locals 1

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 588
    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk;->context:Landroid/content/Context;

    .line 592
    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk;->partnerInfo:Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    .line 598
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk;->context:Landroid/content/Context;

    .line 599
    iput-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk;->partnerInfo:Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    return-void
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 5

    const-string v0, "%d.%d.%02d"

    const/4 v1, 0x3

    .line 582
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final getPartnerInfo()Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk;->partnerInfo:Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    return-object v0
.end method

.method protected final isValidContextAndServiceId(Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;)Z
    .locals 3

    .line 1693
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 2687
    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;->getServiceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;->getServiceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method
