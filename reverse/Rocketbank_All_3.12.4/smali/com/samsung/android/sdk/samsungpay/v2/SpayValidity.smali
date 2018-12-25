.class public final Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;
.super Ljava/lang/Object;
.source "SpayValidity.java"


# instance fields
.field private final SPAY_SDK_API_LEVEL:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private mBrand:Ljava/lang/String;

.field private mManufacture:Ljava/lang/String;

.field protected mPartnerDefinedSdkApiLevel:Ljava/lang/String;

.field private mSpayPackageName:Ljava/lang/String;

.field private mSpayServiceName:Ljava/lang/String;

.field protected spayPackageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "spay_sdk_api_level"

    .line 43
    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->SPAY_SDK_API_LEVEL:Ljava/lang/String;

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->mPartnerDefinedSdkApiLevel:Ljava/lang/String;

    .line 56
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->spayPackageInfo:Landroid/content/pm/PackageInfo;

    .line 65
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->context:Landroid/content/Context;

    .line 66
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->mBrand:Ljava/lang/String;

    .line 67
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->mManufacture:Ljava/lang/String;

    const-string p1, "com.samsung.android.spay"

    .line 68
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->mSpayPackageName:Ljava/lang/String;

    const-string p1, "com.samsung.android.spay.sdk.v2.service.SPaySDKV2Service"

    .line 69
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->mSpayServiceName:Ljava/lang/String;

    .line 1369
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 1370
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x80

    .line 1371
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 1373
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "spay_sdk_api_level"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->mPartnerDefinedSdkApiLevel:Ljava/lang/String;

    const-string p1, "SPAYSDK:SpayValidity"

    .line 1374
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Partner defined SDK API Level : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->mPartnerDefinedSdkApiLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "SPAYSDK:SpayValidity"

    .line 1376
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to load SDK API Level, NameNotFound: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private canFindSdkService(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 247
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 249
    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0

    :catch_1
    const-string p1, "SPAYSDK:SpayValidity"

    const-string p2, "can not find spay app or service"

    .line 252
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private canFindSpayPackage(Ljava/lang/String;)Z
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 231
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 9058
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->spayPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const-string p1, "SPAYSDK:SpayValidity"

    const-string v0, "Unable to find Samsung Pay application on the device"

    .line 233
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method private getSpayLocalValidity()I
    .locals 3

    .line 7195
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->mBrand:Ljava/lang/String;

    .line 7202
    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->mManufacture:Ljava/lang/String;

    const-string v2, "Samsung"

    .line 6209
    invoke-virtual {v2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    const-string v0, "SPAYSDK:SpayValidity"

    const-string v1, "This is not Samsung device."

    .line 216
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x15e

    return v0

    .line 8075
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->mSpayPackageName:Ljava/lang/String;

    .line 220
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->canFindSpayPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x3e7

    return v0

    :cond_3
    const-string v0, "SPAYSDK:SpayValidity"

    const-string v1, "SamsungPay package is not exist."

    .line 223
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x15f

    return v0
.end method

.method private isValidPartnerSdkApiLevel()Z
    .locals 4

    const/4 v0, 0x0

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->mPartnerDefinedSdkApiLevel:Ljava/lang/String;

    const-string v2, "1.8.00"

    .line 333
    new-instance v3, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$StatusListenerInternal;

    invoke-direct {v3}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$StatusListenerInternal;-><init>()V

    .line 334
    invoke-static {v1, v2}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$StatusListenerInternal;->isValidSdkApiLevel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 338
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v1, "SPAYSDK:SpayValidity"

    const-string v2, "Fail to validate SDK API Level."

    .line 339
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static isValidPartnerServiceType(Landroid/os/Bundle;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "PartnerServiceType"

    const-string v2, ""

    .line 288
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "SPAYSDK:SpayValidity"

    const-string v2, "Partner defined Service Type : "

    .line 289
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$ServiceType;->values()[Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$ServiceType;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 291
    invoke-virtual {v4}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$ServiceType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "SPAYSDK:SpayValidity"

    const-string v1, "Partner service type is not valid. Refer SpaySdk.ServiceType enum."

    .line 295
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    .line 298
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string p0, "SPAYSDK:SpayValidity"

    const-string v1, "Fail to validate Partner service type."

    .line 299
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isValidUsingSdkApiLevel(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->mPartnerDefinedSdkApiLevel:Ljava/lang/String;

    .line 349
    new-instance v2, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$StatusListenerInternal;

    invoke-direct {v2}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$StatusListenerInternal;-><init>()V

    .line 350
    invoke-static {p1, v1}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$StatusListenerInternal;->isValidSdkApiLevel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 354
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string p1, "SPAYSDK:SpayValidity"

    const-string v1, "Fail to validate SDK API Level."

    .line 355
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method protected final errorCodeToReadyStatus(I)I
    .locals 3

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    const-string p1, "SPAYSDK:SpayValidity"

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sdk can not catch spay status. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->getSpayLocalValidity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x2

    :goto_0
    :sswitch_2
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x3e7 -> :sswitch_1
        -0x169 -> :sswitch_2
        -0x168 -> :sswitch_2
        -0x166 -> :sswitch_0
        -0x165 -> :sswitch_0
        -0x164 -> :sswitch_0
        -0x160 -> :sswitch_2
        -0x15f -> :sswitch_2
        -0x15e -> :sswitch_2
        -0xb -> :sswitch_0
        -0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public final getSpayValidity(Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;Ljava/lang/String;)I
    .locals 8

    const-string v0, "ro.csc.countryiso_code"

    .line 91
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2240
    invoke-direct {p0}, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->getSpayLocalValidity()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x3e7

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    const-string p1, "SPAYSDK:SpayValidity"

    const-string p2, "[FAIL] Spay Local validity check"

    .line 94
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->getSpayLocalValidity()I

    move-result p1

    return p1

    :cond_1
    const-string v1, "SPAYSDK:SpayValidity"

    const-string v4, "[PASS] Spay Local validity check"

    .line 97
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "android"

    const-string v5, "com.samsung.android.spay"

    .line 2277
    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-ne v1, v2, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    const-string v1, "SPAYSDK:SpayValidity"

    const-string v4, "Spay has no integrity."

    .line 2282
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    :goto_2
    if-nez v1, :cond_4

    const-string p1, "SPAYSDK:SpayValidity"

    const-string p2, "[FAIL] Spay integrity check"

    .line 100
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x168

    return p1

    :cond_4
    const-string v1, "SPAYSDK:SpayValidity"

    const-string v4, "[PASS] Spay integrity check"

    .line 103
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->mSpayPackageName:Ljava/lang/String;

    .line 3083
    iget-object v4, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->mSpayServiceName:Ljava/lang/String;

    .line 105
    invoke-direct {p0, v1, v4}, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->canFindSdkService(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string p1, "SPAYSDK:SpayValidity"

    const-string p2, "[FAIL] Spay SDK service check"

    .line 106
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x164

    return p1

    :cond_5
    const-string v1, "SPAYSDK:SpayValidity"

    const-string v4, "[PASS] Spay SDK service check"

    .line 109
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4061
    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->spayPackageInfo:Landroid/content/pm/PackageInfo;

    .line 111
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const v4, 0x186a0

    div-int/2addr v1, v4

    .line 4261
    new-instance v4, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$StatusListenerInternal;

    invoke-direct {v4}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$StatusListenerInternal;-><init>()V

    .line 5022
    iget-object v5, v4, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$StatusListenerInternal;->countryAndMinimumVer:[[Ljava/lang/String;

    array-length v5, v5

    .line 5024
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6

    .line 5025
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_6
    move v6, v3

    :goto_3
    if-ge v6, v5, :cond_8

    .line 5029
    iget-object v7, v4, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$StatusListenerInternal;->countryAndMinimumVer:[[Ljava/lang/String;

    aget-object v7, v7, v6

    aget-object v7, v7, v3

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v5, v2

    goto :goto_4

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    move v5, v3

    :goto_4
    if-nez v5, :cond_9

    :goto_5
    move v1, v3

    goto :goto_6

    .line 4266
    :cond_9
    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$StatusListenerInternal;->isIncludeVersionCheckingRule(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    const-string v1, "SPAYSDK:SpayValidity"

    const-string v4, "SamsungPay App is old version. SamsungPay App needs to be updated."

    .line 4269
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_6
    if-ne v1, v2, :cond_b

    const-string p1, "SPAYSDK:SpayValidity"

    const-string p2, "[FAIL] Minimum Spay app version check"

    .line 112
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x165

    return p1

    :cond_b
    const-string v1, "SPAYSDK:SpayValidity"

    const-string v4, "[PASS] Minimum Spay app version check"

    .line 115
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->isValidPartnerServiceType(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string p1, "SPAYSDK:SpayValidity"

    const-string p2, "[FAIL] Defined Service Type check"

    .line 118
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0xb

    return p1

    :cond_c
    const-string v1, "SPAYSDK:SpayValidity"

    const-string v4, "[PASS] Defined Service Type check"

    .line 121
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 5305
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v4, "PartnerServiceType"

    const-string v5, ""

    .line 5306
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "SPAYSDK:SpayValidity"

    const-string v5, "[isAndroidPlaformAvailable] Device country code : "

    .line 5307
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SPAYSDK:SpayValidity"

    const-string v5, "[isAndroidPlaformAvailable] Android Platform API Level : "

    .line 5308
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SPAYSDK:SpayValidity"

    const-string v5, "[isAndroidPlaformAvailable] Partner Service Type : "

    .line 5309
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "KR"

    .line 5312
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "CN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0x17

    if-ge v1, v0, :cond_d

    .line 5313
    sget-object v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$ServiceType;->INAPP_PAYMENT:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$ServiceType;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$ServiceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "SPAYSDK:SpayValidity"

    const-string v0, "Android Platform M is minimum for SamsungPay SDK."

    .line 5315
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_d
    const/16 p1, 0x15

    if-ge v1, p1, :cond_e

    const-string p1, "SPAYSDK:SpayValidity"

    const-string v0, "Android Platform L is minimum for SamsungPay SDK."

    .line 5322
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_e
    move v3, v2

    :goto_7
    if-nez v3, :cond_f

    const-string p1, "SPAYSDK:SpayValidity"

    const-string p2, "[FAIL] Minimum Android Platform version check"

    .line 124
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x169

    return p1

    :cond_f
    const-string p1, "SPAYSDK:SpayValidity"

    const-string v0, "[PASS] Minimum Android Platform version check"

    .line 127
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->isValidPartnerSdkApiLevel()Z

    move-result p1

    if-nez p1, :cond_10

    const-string p1, "SPAYSDK:SpayValidity"

    const-string p2, "[FAIL] Defined SDK API Level check"

    .line 130
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0xa

    return p1

    :cond_10
    const-string p1, "SPAYSDK:SpayValidity"

    const-string v0, "[PASS] Defined SDK API Level check"

    .line 133
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->isValidUsingSdkApiLevel(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11

    const-string p1, "SPAYSDK:SpayValidity"

    const-string p2, "[FAIL] Using SDK API Level check"

    .line 136
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x160

    return p1

    :cond_11
    const-string p1, "SPAYSDK:SpayValidity"

    const-string p2, "[PASS] Using SDK API Level check"

    .line 139
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x3e7

    return p1
.end method

.method public final setPartnerDefinedSdkApiLevel(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->mPartnerDefinedSdkApiLevel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PartnerSdkApiLevel"

    .line 363
    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpayValidity;->mPartnerDefinedSdkApiLevel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
